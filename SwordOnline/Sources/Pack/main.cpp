//This is the SPR file packing tool

//SPR header file definitions - standalone copy for portability
#include "KWin32.h"
#include <stdio.h>
#include <stdlib.h>
#include <io.h>
#include <direct.h>

#include "ZPackFile.h"

// SPRHEAD and SPROFFS definitions for standalone Pack tool.
// These mirror the definitions in KSprite.h but are kept here
// to avoid pulling in heavy engine dependencies (KMemClass, KPalette, etc.)
#ifndef KSprite_H
typedef struct
{
	BYTE	Comment[4];	// comment flag (SPR\0)
	WORD	Width;		// image width
	WORD	Height;		// image height
	WORD	CenterX;	// center X
	WORD	CenterY;	// center Y
	WORD	Frames;		// frame count
	WORD	Colors;		// color count
	WORD	Directions;	// direction count
	WORD	Interval;	// interval per frame
	WORD	Reserved[6];// reserved
} SPRHEAD;

typedef struct
{
	DWORD	Offset;		// offset of each frame
	DWORD	Length;		// length of each frame
} SPROFFS;
#endif

// frame_info used for per-frame compression of SPR files
typedef struct {
	long compress_size;
	long size;
} frame_info;


//macro definitions
#define FRAME_SIZE			800 * 1024			//800K+ SPR files use per-frame compression
int root_length = 0;

#define MAX_FILE					2004800			//max 20M files

index_info index_list[MAX_FILE];
char *temp_buffer[MAX_FILE * sizeof(index_info)];
int file_count;										//current file count

unsigned long offset;								//current offset
#define COMPRESS_BUF_SIZE	10240000
char compress_buffer[COMPRESS_BUF_SIZE];			//10M compression buffer

#include <ucl/ucl.h>
bool bCheck = false;
#include <conio.h>

//add a file to the pack, update offset
bool addFile(FILE *output, const char *file_name) {
	char full_name[MAX_PATH];
	getcwd(full_name, MAX_PATH);
	strcat(full_name, "\\");
	strcat(full_name, file_name);
	char *ptr = full_name;
	while(*ptr) {
		if(*ptr >= 'A' && *ptr <= 'Z') *ptr += 'a' - 'A';
		ptr++;
	}

	unsigned long id = hash(full_name + root_length);
	int index;
	for(index = 0; index < file_count; index++) {
		if(id < index_list[index].id) {
			memmove(temp_buffer, (char *)&index_list[index], (file_count - index) * sizeof(index_info));
			memmove((char *)&index_list[index + 1], temp_buffer, (file_count - index) * sizeof(index_info));
			break;
		}
		else if(id == index_list[index].id) {
			printf("error %s has the same id %d\n", full_name + root_length, id);

			if(!bCheck) exit(0);
			else getch();
		}
	}
	file_count++;
	if(bCheck) {
		printf("check %s ok\n", full_name + root_length);
		return true;
	}

	ZMapFile map(file_name);
	int compress_size = 0;

	unsigned long compress_type = TYPE_UCL;				//use UCL compression

	bool bSPR = false;									//is SPR file?
	const char *ext = file_name + strlen(file_name) - 3;
	if(*ext == 's' && *(ext + 1) == 'p' && *(ext + 2) == 'r') bSPR = true;

	int r;
	unsigned int size = 0;
	map.map();
	if(map.m_Ptr) {

		index_list[index].id = id;
		index_list[index].offset = offset;
		index_list[index].size = map.m_Size;

		ptr = compress_buffer;
		if(!bSPR || map.m_Size < FRAME_SIZE) {
			if(compress_type == TYPE_UCL) {
				r = ucl_nrv2b_99_compress((BYTE *)map.m_Ptr, map.m_Size, (BYTE *)ptr, (unsigned int *)&index_list[index].compress_size, NULL, 5, NULL, NULL);
			}
			else if(compress_type == TYPE_BZIP2) {
//				index_list[index].compress_size = COMPRESS_BUF_SIZE;
//				r = BZ2_bzBuffToBuffCompress(ptr, (unsigned int *)&index_list[index].compress_size, map.m_Ptr, map.m_Size, 9, 0, 30);
			}
			if(r) return false;
			fwrite(compress_buffer, 1, index_list[index].compress_size, output);
			offset += index_list[index].compress_size;
			printf("%s [%d]->[%d]\n", full_name + root_length, map.m_Size, index_list[index].compress_size);
			index_list[index].compress_size |= (compress_type << 24);
		}
		else {								//per-frame compression
			SPRHEAD *head;
			head = (SPRHEAD *)map.m_Ptr;
			memmove(ptr, head, sizeof(SPRHEAD) + head->Colors * 3);			//header data not compressed
			ptr += sizeof(SPRHEAD) + head->Colors * 3;
			frame_info *compress_frame_info = (frame_info *)ptr;					//compressed per-frame info
			ptr += head->Frames * sizeof(SPROFFS);

			SPROFFS *frame_info = (SPROFFS *)(map.m_Ptr + sizeof(SPRHEAD) + head->Colors * 3);		//original per-frame info
			char *frame_data = (char *)frame_info + head->Frames * sizeof(SPROFFS);
			int frame_index;

			int frame_offset = 0;
			for(frame_index = 0; frame_index < head->Frames; frame_index++) {
//compress each frame
				if(frame_info[frame_index].Length >= 256) {				//don't compress if < 256 bytes
					if(compress_type == TYPE_UCL) {
						r = ucl_nrv2b_99_compress((BYTE *)frame_data + frame_info[frame_index].Offset, frame_info[frame_index].Length, (BYTE *)ptr, &size, NULL, 10, NULL, NULL);
					}
					else if(compress_type == TYPE_BZIP2) {
//						size = COMPRESS_BUF_SIZE;
//						r = BZ2_bzBuffToBuffCompress(ptr, &size, frame_data + frame_info[frame_index].Offset, frame_info[frame_index].Length, 9, 0, 30);
					}
					if(r) return false;
					compress_frame_info[frame_index].size = frame_info[frame_index].Length;		//record original size
				}
				else {
					size = frame_info[frame_index].Length;
					memmove(ptr, (BYTE *)frame_data + frame_info[frame_index].Offset, size);
					compress_frame_info[frame_index].size = -(long)frame_info[frame_index].Length;		//record original size
				}
				compress_size += size;
				compress_frame_info[frame_index].compress_size = size;
				frame_offset += size;
				ptr += size;
			}
			fwrite(compress_buffer, 1, ptr - compress_buffer, output);
			offset += ptr - compress_buffer;
			printf("[frame] %s old size = %d, compressed size = %d\n", full_name + root_length, map.m_Size, compress_size);
			index_list[index].compress_size = (ptr - compress_buffer) | ((compress_type | TYPE_FRAME) << 24);
		}
	}
	return false;
}

void addDirectory(FILE *output, const char *rootDir, const char *subDir = NULL) {
	char			szRealDir[MAX_PATH];
	if(subDir) sprintf(szRealDir, "%s\\%s", rootDir, subDir);
	else {
		strcpy(szRealDir, rootDir);
		root_length = strlen(rootDir);
		while(rootDir[root_length] != '\\') root_length--;
	}
	if(chdir(szRealDir)) return;
	_finddata_t FindData;
	long dir = _findfirst("*.*", &FindData);
	while(dir != -1) {
		if(strcmp(FindData.name, ".") == 0 || strcmp(FindData.name, "..") == 0)	{
			if(_findnext(dir, &FindData)) break;
			continue;
		}
		if(FindData.attrib & _A_SUBDIR)
		{
			addDirectory(output, szRealDir, FindData.name);
		}
		else
		{
			if(!addFile(output, FindData.name)) return;
		}
		if(_findnext(dir, &FindData)) break;
	}
	_findclose(dir);
	chdir(rootDir);
}

bool pack(const char *dir, const char *pack_name = 0) {
	char name_buffer[MAX_PATH];
	file_count = 0;
	offset = 0;
	if(!pack_name) {
		strcpy(name_buffer, dir);
		strcat(name_buffer, ".pak");
		pack_name = name_buffer;
	}
	FILE * output = NULL;
	z_pack_header header;
	if(!bCheck) {
		output = fopen(pack_name, "wb");
		memset(&header, 0, sizeof(header));
		fwrite(&header, 1, sizeof(header), output);
		offset += sizeof(header);
	}
	addDirectory(output, dir);					//compress specified directory
	if(!bCheck) {
		memset(&header, 0, sizeof(header));
		memcpy(header.signature, " PACK", 4);
		header.index_offset = offset;
		header.data_offset = sizeof(header);
		header.count = file_count;
		int result = fwrite(&index_list[0], 1, file_count * sizeof(index_info), output);
		fseek(output, 0, SEEK_SET);
		fwrite(&header, 1, sizeof(header), output);
		fclose(output);
	}
	return true;
}

int main(int argc, char **argv) {
	if(argc < 2) {
		printf("usage: pack [pack directory] [pack file name] [/c]\nwithout [pack file name], the pack file name will be the same of directory name\n/c to check the same id\n");
		return 0;
	}
	if (ucl_init() != UCL_E_OK) return 0;

	if(argc > 2) {
		if(!stricmp(argv[2], "/c")) {
			bCheck = true;
			pack(argv[1]);
		}
		else {
			if(argc > 3) {
				if(!stricmp(argv[3], "/c")) bCheck = true;
			}
			pack(argv[1], argv[2]);
		}
	}
	else pack(argv[1]);
/*	pack("d:\\resource\\font");
	pack("d:\\resource\\ui");
	pack("d:\\resource\\settings", "d:\\resource\\setting.pak");
	pack("d:\\resource\\spr");
	pack("d:\\resource\\script");
	pack("d:\\resource\\sound");
	pack("d:\\resource\\maps", "d:\\resource\\map.pak");*/
	return 0;
}
