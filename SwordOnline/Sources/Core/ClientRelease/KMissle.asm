	TITLE	D:\swrod3\SwordOnline\Sources\Core\Src\KMissle.cpp
	.386P
include listing.inc
if @Version gt 510
.model FLAT
else
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
_BSS	SEGMENT PARA USE32 PUBLIC 'BSS'
_BSS	ENDS
$$SYMBOLS	SEGMENT BYTE USE32 'DEBSYM'
$$SYMBOLS	ENDS
$$TYPES	SEGMENT BYTE USE32 'DEBTYP'
$$TYPES	ENDS
_TLS	SEGMENT DWORD USE32 PUBLIC 'TLS'
_TLS	ENDS
;	COMDAT ??_C@_00A@?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0L@MDID@MissleName?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0N@IMPH@MissleHeight?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_08CLHE@LifeTime?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_05PDDA@Speed?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0O@CEMO@ResponseSkill?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0M@IPHD@CollidRange?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_09LLHA@ColVanish?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0N@MOFP@CanColFriend?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_07ICPB@CanSlow?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0L@DOMN@IsRangeDmg?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_08EKOK@DmgRange?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_08MKEC@MoveKind?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0L@ICBE@FollowKind?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_04LIGI@Zacc?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_06EDNA@Zspeed?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_06DMFP@Param1?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_06MDOG@Param2?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_06GJHB@Param3?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0M@CDCB@AutoExplode?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0M@MLLA@DmgInterval?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_06PIMC@RedLum?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_08KOFB@GreenLum?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_07BJEB@BlueLum?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0M@HJOL@LightRadius?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_09PDKK@MultiShow?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0L@EKAK@AnimFile?$CFd?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_09CDAF@SndFile?$CFd?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0P@EKPH@AnimFileInfo?$CFd?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0M@LCCH@AnimFileB?$CFd?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0L@HHEO@SndFileB?$CFd?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BA@BPCH@AnimFileInfoB?$CFd?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_08OBCD@LoopPlay?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_07MAEH@SubLoop?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_08CAJJ@SubStart?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_07CKM@SubStop?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BA@PAFJ@ColFollowTarget?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
CRT$XCA	SEGMENT DWORD USE32 PUBLIC 'DATA'
CRT$XCA	ENDS
CRT$XCU	SEGMENT DWORD USE32 PUBLIC 'DATA'
CRT$XCU	ENDS
CRT$XCL	SEGMENT DWORD USE32 PUBLIC 'DATA'
CRT$XCL	ENDS
CRT$XCC	SEGMENT DWORD USE32 PUBLIC 'DATA'
CRT$XCC	ENDS
CRT$XCZ	SEGMENT DWORD USE32 PUBLIC 'DATA'
CRT$XCZ	ENDS
xdata$x	SEGMENT DWORD USE32 PUBLIC 'CONST'
xdata$x	ENDS
;	COMDAT ??4KMapMusic@@QAEAAV0@ABV0@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?GetGameTime@KSubWorldSet@@QAEHXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?GetGameVersion@KSubWorldSet@@QAEHXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?SetPing@KSubWorldSet@@QAEXK@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?GetPing@KSubWorldSet@@QAEKXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??4KSubWorldSet@@QAEAAV0@ABV0@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??1KSubWorldSet@@QAE@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?g_GetDistance@@YAHHHHH@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?g_GetDirIndex@@YAHHHHH@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?g_DirIndex2Dir@@YAHHH@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?g_DirSin@@YAHHH@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?g_DirCos@@YAHHH@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??0KSkillSpecialNode@@QAE@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??1KSkillSpecialNode@@UAE@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??_GKSkillSpecialNode@@UAEPAXI@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT _wmemchr
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT _wmemcmp
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT _wmemcpy
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT _wmemmove
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT _wmemset
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT __imp_?eof@?$char_traits@G@std@@SAGXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT __imp_?assign@?$char_traits@D@std@@SAXAADABD@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT __imp_?length@?$char_traits@D@std@@SAIPBD@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT __imp_?copy@?$char_traits@D@std@@SAPADPADPBDI@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT __imp_?move@?$char_traits@D@std@@SAPADPADPBDI@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT __imp_?eof@?$char_traits@D@std@@SAHXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT __imp_??1bad_exception@std@@UAE@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT __imp_??0bad_exception@std@@QAE@ABV01@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT __imp_??1bad_alloc@std@@UAE@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT __imp_??0bad_alloc@std@@QAE@ABV01@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT __imp_??0logic_error@std@@QAE@ABV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT __imp_??1logic_error@std@@UAE@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT __imp_?what@logic_error@std@@UBEPBDXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT __imp_??0logic_error@std@@QAE@ABV01@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT __imp_??1domain_error@std@@UAE@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT __imp_??0domain_error@std@@QAE@ABV01@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??1invalid_argument@std@@UAE@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?_Doraise@invalid_argument@std@@MBEXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??_Ginvalid_argument@std@@UAEPAXI@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??0invalid_argument@std@@QAE@ABV01@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT __imp_??1length_error@std@@UAE@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT __imp_??0length_error@std@@QAE@ABV01@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT __imp_??1out_of_range@std@@UAE@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT __imp_??0out_of_range@std@@QAE@ABV01@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT __imp_??0runtime_error@std@@QAE@ABV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT __imp_??1runtime_error@std@@UAE@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT __imp_??0runtime_error@std@@QAE@ABV01@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT __imp_??1overflow_error@std@@UAE@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT __imp_??0overflow_error@std@@QAE@ABV01@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT __imp_??1underflow_error@std@@UAE@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT __imp_??0underflow_error@std@@QAE@ABV01@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT __imp_??1range_error@std@@UAE@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT __imp_??0range_error@std@@QAE@ABV01@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT _$E7
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT _$E8
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT _$E9
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT _$E10
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT _$E12
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT _$E13
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT _$E14
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT _$E15
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??0KMissle@@QAE@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??_GKMissle@@UAEPAXI@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?Release@KMissle@@AAEXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??1KMissle@@UAE@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?GetInfoFromTabFile@KMissle@@QAEHH@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?GetInfoFromTabFile@KMissle@@QAEHPAVKITabFile@@H@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?Init@KMissle@@AAEHHHHHH@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?Activate@KMissle@@QAEHXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?OnWait@KMissle@@AAEXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?OnCollision@KMissle@@AAEXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?CheckCollision@KMissle@@AAEHXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?OnFly@KMissle@@AAEXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?OnVanish@KMissle@@AAEXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?Paint@KMissle@@QAEXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?CheckBeyondRegion@KMissle@@AAEHHH@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??4KMissle@@AAEAAV0@AAV0@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?ProcessDamage@KMissle@@AAEHH@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?DoVanish@KMissle@@AAEXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?DoCollision@KMissle@@AAEXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?DoFly@KMissle@@AAEXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?GetOffsetAxis@KMissle@@SAHHHHHHHAAH00@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?ProcessCollision@KMissle@@AAEHHHHHHH@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?ProcessCollision@KMissle@@AAEHXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?CreateSpecialEffect@KMissle@@QAEHW4eMissleStatus@@HHHH@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?GetLightInfo@KMissle@@QAEXPAUKLightInfo@@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?DoWait@KMissle@@AAEXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?PrePareFly@KMissle@@AAEHXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?CheckNearestCollision@KMissle@@AAEHXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?GetMpsPos@KMissle@@QAEXPAH0@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT __imp_??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAE@ABV01@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT __imp_??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAE@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT __imp_?c_str@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QBEPBDXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT __imp_?assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAEAAV12@ABV12@II@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT __imp_?_Nullstr@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CAPBDXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT __imp_?_Tidy@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AAEX_N@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT __imp_?erase@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAEAAV12@II@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT __imp_?size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QBEIXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT __imp_?capacity@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QBEIXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT __imp_?_Eos@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AAEXI@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT __imp_?_Grow@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AAE_NI_N@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT __imp_?_Refcnt@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AAEAAEPBD@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?deallocate@?$allocator@D@std@@QAEXPAXI@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT __imp_?max_size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QBEIXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT __imp_?_Copy@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AAEXI@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT __imp_?_Split@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AAEXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT __imp_?assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAEAAV12@PBD@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?allocate@?$allocator@D@std@@QAEPADIPBX@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?max_size@?$allocator@D@std@@QBEIXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT __imp_?assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAEAAV12@PBDI@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??8std@@YA_NABV?$allocator@D@0@0@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?_Allocate@std@@YAPADHPAD@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??_GKWorldMsgNode@@UAEPAXI@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??1KWorldMsgNode@@UAE@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??_GZFile@@UAEPAXI@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??1ZFile@@UAE@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??_7ZFile@@6B@
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
;	COMDAT ??_GKNode@@UAEPAXI@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT __imp_?SetName@KStrNode@@UAEXPAD@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT __imp_?GetName@KStrNode@@UAEPADXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??_GKCacheNode@@UAEPAXI@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??1KCacheNode@@UAE@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT __imp_??1KStrNode@@UAE@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??_GKIndexNode@@UAEPAXI@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?AddTail@KList@@QAEXPAVKNode@@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?InsertBefore@KNode@@QAEXPAV1@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?GetNext@KNode@@QAEPAV1@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?GetHead@KList@@QAEPAVKNode@@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?SpecialMovieIsAllEnd@KMissleRes@@QAEHXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?Send@KWorldMsg@@QAEHKHHH@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??0KWorldMsgNode@@QAE@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??_7KWorldMsgNode@@6B@
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
;	COMDAT ?ZAxisMove@KMissle@@AAEXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?TestBarrier@KMissle@@AAEHXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?FindNpc@KRegion@@QAEHHHHH@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?GetSkill@KSkillManager@@QAEPAVISkill@@HH@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?IsMatch@KNpc@@QAEHK@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??_7KMissle@@6B@
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
;	COMDAT ??1KIndexNode@@UAE@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??0KIndexNode@@QAE@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??_7KIndexNode@@6B@
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
;	COMDAT __CTA3?AVrange_error@std@@
xdata$x	SEGMENT DWORD USE32 PUBLIC 'CONST'
xdata$x	ENDS
;	COMDAT __CT??_R0?AVrange_error@std@@@8??0range_error@std@@QAE@ABV01@@Z28
xdata$x	SEGMENT DWORD USE32 PUBLIC 'CONST'
xdata$x	ENDS
;	COMDAT ??_R0?AVrange_error@std@@@8
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT __TI3?AVrange_error@std@@
xdata$x	SEGMENT DWORD USE32 PUBLIC 'CONST'
xdata$x	ENDS
;	COMDAT __CTA3?AVunderflow_error@std@@
xdata$x	SEGMENT DWORD USE32 PUBLIC 'CONST'
xdata$x	ENDS
;	COMDAT __CT??_R0?AVunderflow_error@std@@@8??0underflow_error@std@@QAE@ABV01@@Z28
xdata$x	SEGMENT DWORD USE32 PUBLIC 'CONST'
xdata$x	ENDS
;	COMDAT ??_R0?AVunderflow_error@std@@@8
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT __TI3?AVunderflow_error@std@@
xdata$x	SEGMENT DWORD USE32 PUBLIC 'CONST'
xdata$x	ENDS
;	COMDAT __CTA3?AVoverflow_error@std@@
xdata$x	SEGMENT DWORD USE32 PUBLIC 'CONST'
xdata$x	ENDS
;	COMDAT __CT??_R0?AVoverflow_error@std@@@8??0overflow_error@std@@QAE@ABV01@@Z28
xdata$x	SEGMENT DWORD USE32 PUBLIC 'CONST'
xdata$x	ENDS
;	COMDAT ??_R0?AVoverflow_error@std@@@8
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT __TI3?AVoverflow_error@std@@
xdata$x	SEGMENT DWORD USE32 PUBLIC 'CONST'
xdata$x	ENDS
;	COMDAT __CTA2?AVruntime_error@std@@
xdata$x	SEGMENT DWORD USE32 PUBLIC 'CONST'
xdata$x	ENDS
;	COMDAT __CT??_R0?AVruntime_error@std@@@8??0runtime_error@std@@QAE@ABV01@@Z28
xdata$x	SEGMENT DWORD USE32 PUBLIC 'CONST'
xdata$x	ENDS
;	COMDAT ??_R0?AVruntime_error@std@@@8
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT __TI2?AVruntime_error@std@@
xdata$x	SEGMENT DWORD USE32 PUBLIC 'CONST'
xdata$x	ENDS
;	COMDAT __CTA3?AVout_of_range@std@@
xdata$x	SEGMENT DWORD USE32 PUBLIC 'CONST'
xdata$x	ENDS
;	COMDAT __CT??_R0?AVout_of_range@std@@@8??0out_of_range@std@@QAE@ABV01@@Z28
xdata$x	SEGMENT DWORD USE32 PUBLIC 'CONST'
xdata$x	ENDS
;	COMDAT ??_R0?AVout_of_range@std@@@8
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT __TI3?AVout_of_range@std@@
xdata$x	SEGMENT DWORD USE32 PUBLIC 'CONST'
xdata$x	ENDS
;	COMDAT __CTA3?AVlength_error@std@@
xdata$x	SEGMENT DWORD USE32 PUBLIC 'CONST'
xdata$x	ENDS
;	COMDAT __CT??_R0?AVlength_error@std@@@8??0length_error@std@@QAE@ABV01@@Z28
xdata$x	SEGMENT DWORD USE32 PUBLIC 'CONST'
xdata$x	ENDS
;	COMDAT ??_R0?AVlength_error@std@@@8
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT __TI3?AVlength_error@std@@
xdata$x	SEGMENT DWORD USE32 PUBLIC 'CONST'
xdata$x	ENDS
;	COMDAT __CTA3?AVinvalid_argument@std@@
xdata$x	SEGMENT DWORD USE32 PUBLIC 'CONST'
xdata$x	ENDS
;	COMDAT __CT??_R0?AVinvalid_argument@std@@@8??0invalid_argument@std@@QAE@ABV01@@Z28
xdata$x	SEGMENT DWORD USE32 PUBLIC 'CONST'
xdata$x	ENDS
;	COMDAT ??_R0?AVinvalid_argument@std@@@8
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT __TI3?AVinvalid_argument@std@@
xdata$x	SEGMENT DWORD USE32 PUBLIC 'CONST'
xdata$x	ENDS
;	COMDAT ??_7invalid_argument@std@@6B@
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
;	COMDAT __CTA3?AVdomain_error@std@@
xdata$x	SEGMENT DWORD USE32 PUBLIC 'CONST'
xdata$x	ENDS
;	COMDAT __CT??_R0?AVdomain_error@std@@@8??0domain_error@std@@QAE@ABV01@@Z28
xdata$x	SEGMENT DWORD USE32 PUBLIC 'CONST'
xdata$x	ENDS
;	COMDAT ??_R0?AVdomain_error@std@@@8
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT __TI3?AVdomain_error@std@@
xdata$x	SEGMENT DWORD USE32 PUBLIC 'CONST'
xdata$x	ENDS
;	COMDAT __CTA2?AVlogic_error@std@@
xdata$x	SEGMENT DWORD USE32 PUBLIC 'CONST'
xdata$x	ENDS
;	COMDAT __CT??_R0?AVlogic_error@std@@@8??0logic_error@std@@QAE@ABV01@@Z28
xdata$x	SEGMENT DWORD USE32 PUBLIC 'CONST'
xdata$x	ENDS
;	COMDAT ??_R0?AVlogic_error@std@@@8
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT __TI2?AVlogic_error@std@@
xdata$x	SEGMENT DWORD USE32 PUBLIC 'CONST'
xdata$x	ENDS
;	COMDAT __CTA2?AVbad_alloc@std@@
xdata$x	SEGMENT DWORD USE32 PUBLIC 'CONST'
xdata$x	ENDS
;	COMDAT __CT??_R0?AVbad_alloc@std@@@8??0bad_alloc@std@@QAE@ABV01@@Z12
xdata$x	SEGMENT DWORD USE32 PUBLIC 'CONST'
xdata$x	ENDS
;	COMDAT ??_R0?AVbad_alloc@std@@@8
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT __TI2?AVbad_alloc@std@@
xdata$x	SEGMENT DWORD USE32 PUBLIC 'CONST'
xdata$x	ENDS
;	COMDAT __CTA2?AVbad_exception@std@@
xdata$x	SEGMENT DWORD USE32 PUBLIC 'CONST'
xdata$x	ENDS
;	COMDAT __CT??_R0?AVexception@@@8??0exception@@QAE@ABV0@@Z12
xdata$x	SEGMENT DWORD USE32 PUBLIC 'CONST'
xdata$x	ENDS
;	COMDAT __CT??_R0?AVbad_exception@std@@@8??0bad_exception@std@@QAE@ABV01@@Z12
xdata$x	SEGMENT DWORD USE32 PUBLIC 'CONST'
xdata$x	ENDS
;	COMDAT ??_R0?AVexception@@@8
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_R0?AVbad_exception@std@@@8
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT __TI2?AVbad_exception@std@@
xdata$x	SEGMENT DWORD USE32 PUBLIC 'CONST'
xdata$x	ENDS
;	COMDAT ??_7KSkillSpecialNode@@6B@
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
;	COMDAT ??1KNode@@UAE@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??_7KNode@@6B@
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
;	COMDAT ??0KNode@@QAE@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
FLAT	GROUP _DATA, CONST, _BSS, CRT$XCA, CRT$XCU, CRT$XCL, CRT$XCC, CRT$XCZ, xdata$x
	ASSUME	CS: FLAT, DS: FLAT, SS: FLAT
endif
PUBLIC	?g_nRandMissleTab@@3PAHA			; g_nRandMissleTab
PUBLIC	?Missle@@3PAVKMissle@@A				; Missle
PUBLIC	?g_MisslesLib@@3PAVKMissle@@A			; g_MisslesLib
PUBLIC	?g_CollisionMatrix@@3PAUTCollisionMatrix@@A	; g_CollisionMatrix
_BSS	SEGMENT
?g_nRandMissleTab@@3PAHA DD 064H DUP (?)		; g_nRandMissleTab
?Missle@@3PAVKMissle@@A DB 0166660H DUP (?)		; Missle
?g_MisslesLib@@3PAVKMissle@@A DB 08f5c0H DUP (?)	; g_MisslesLib
_BSS	ENDS
_DATA	SEGMENT
?g_CollisionMatrix@@3PAUTCollisionMatrix@@A DD 00H	; g_CollisionMatrix
	DD	00H
	DD	0ffffffffH
	DD	01H
	DD	00H
	DD	01H
	DD	01H
	DD	01H
	DD	00H
	DD	00H
	DD	0ffffffffH
	DD	01H
	DD	00H
	DD	01H
	DD	01H
	DD	01H
	DD	00H
	DD	00H
	DD	0ffffffffH
	DD	01H
	DD	00H
	DD	01H
	DD	01H
	DD	01H
	DD	00H
	DD	00H
	DD	0ffffffffH
	DD	01H
	DD	00H
	DD	01H
	DD	01H
	DD	01H
	DD	00H
	DD	00H
	DD	0ffffffffH
	DD	00H
	DD	0ffffffffH
	DD	01H
	DD	00H
	DD	01H
	DD	00H
	DD	00H
	DD	0ffffffffH
	DD	00H
	DD	0ffffffffH
	DD	01H
	DD	00H
	DD	01H
	DD	00H
	DD	00H
	DD	0ffffffffH
	DD	00H
	DD	0ffffffffH
	DD	01H
	DD	00H
	DD	01H
	DD	00H
	DD	00H
	DD	0ffffffffH
	DD	00H
	DD	0ffffffffH
	DD	01H
	DD	00H
	DD	01H
	DD	00H
	DD	00H
	DD	0ffffffffH
	DD	00H
	DD	0ffffffffH
	DD	01H
	DD	00H
	DD	01H
	DD	00H
	DD	00H
	DD	0ffffffffH
	DD	00H
	DD	0ffffffffH
	DD	01H
	DD	00H
	DD	01H
	DD	00H
	DD	00H
	DD	0ffffffffH
	DD	00H
	DD	0ffffffffH
	DD	01H
	DD	00H
	DD	01H
	DD	00H
	DD	00H
	DD	0ffffffffH
	DD	00H
	DD	0ffffffffH
	DD	01H
	DD	00H
	DD	01H
	DD	00H
	DD	00H
	DD	0ffffffffH
	DD	0ffffffffH
	DD	0ffffffffH
	DD	00H
	DD	0ffffffffH
	DD	01H
	DD	00H
	DD	00H
	DD	0ffffffffH
	DD	0ffffffffH
	DD	0ffffffffH
	DD	00H
	DD	0ffffffffH
	DD	01H
	DD	00H
	DD	00H
	DD	0ffffffffH
	DD	0ffffffffH
	DD	0ffffffffH
	DD	00H
	DD	0ffffffffH
	DD	01H
	DD	00H
	DD	00H
	DD	0ffffffffH
	DD	0ffffffffH
	DD	0ffffffffH
	DD	00H
	DD	0ffffffffH
	DD	01H
	DD	00H
	DD	00H
	DD	0ffffffffH
	DD	0ffffffffH
	DD	0ffffffffH
	DD	00H
	DD	0ffffffffH
	DD	01H
	DD	00H
	DD	00H
	DD	0ffffffffH
	DD	0ffffffffH
	DD	0ffffffffH
	DD	00H
	DD	0ffffffffH
	DD	01H
	DD	00H
	DD	00H
	DD	0ffffffffH
	DD	0ffffffffH
	DD	0ffffffffH
	DD	00H
	DD	0ffffffffH
	DD	01H
	DD	00H
	DD	00H
	DD	0ffffffffH
	DD	0ffffffffH
	DD	0ffffffffH
	DD	00H
	DD	0ffffffffH
	DD	01H
	DD	00H
	DD	00H
	DD	00H
	DD	0ffffffffH
	DD	0ffffffffH
	DD	0ffffffffH
	DD	0ffffffffH
	DD	00H
	DD	00H
	DD	00H
	DD	00H
	DD	0ffffffffH
	DD	0ffffffffH
	DD	0ffffffffH
	DD	0ffffffffH
	DD	00H
	DD	00H
	DD	00H
	DD	00H
	DD	0ffffffffH
	DD	0ffffffffH
	DD	0ffffffffH
	DD	0ffffffffH
	DD	00H
	DD	00H
	DD	00H
	DD	00H
	DD	0ffffffffH
	DD	0ffffffffH
	DD	0ffffffffH
	DD	0ffffffffH
	DD	00H
	DD	00H
	DD	00H
	DD	00H
	DD	0ffffffffH
	DD	0ffffffffH
	DD	0ffffffffH
	DD	0ffffffffH
	DD	00H
	DD	00H
	DD	00H
	DD	00H
	DD	0ffffffffH
	DD	0ffffffffH
	DD	0ffffffffH
	DD	0ffffffffH
	DD	00H
	DD	00H
	DD	00H
	DD	00H
	DD	0ffffffffH
	DD	0ffffffffH
	DD	0ffffffffH
	DD	0ffffffffH
	DD	00H
	DD	00H
	DD	00H
	DD	00H
	DD	0ffffffffH
	DD	0ffffffffH
	DD	0ffffffffH
	DD	0ffffffffH
	DD	00H
	DD	00H
	DD	00H
	DD	0ffffffffH
	DD	0ffffffffH
	DD	00H
	DD	0ffffffffH
	DD	01H
	DD	0ffffffffH
	DD	00H
	DD	00H
	DD	0ffffffffH
	DD	0ffffffffH
	DD	00H
	DD	0ffffffffH
	DD	01H
	DD	0ffffffffH
	DD	00H
	DD	00H
	DD	0ffffffffH
	DD	0ffffffffH
	DD	00H
	DD	0ffffffffH
	DD	01H
	DD	0ffffffffH
	DD	00H
	DD	00H
	DD	0ffffffffH
	DD	0ffffffffH
	DD	00H
	DD	0ffffffffH
	DD	01H
	DD	0ffffffffH
	DD	00H
	DD	00H
	DD	0ffffffffH
	DD	0ffffffffH
	DD	00H
	DD	0ffffffffH
	DD	01H
	DD	0ffffffffH
	DD	00H
	DD	00H
	DD	0ffffffffH
	DD	0ffffffffH
	DD	00H
	DD	0ffffffffH
	DD	01H
	DD	0ffffffffH
	DD	00H
	DD	00H
	DD	0ffffffffH
	DD	0ffffffffH
	DD	00H
	DD	0ffffffffH
	DD	01H
	DD	0ffffffffH
	DD	00H
	DD	00H
	DD	0ffffffffH
	DD	0ffffffffH
	DD	00H
	DD	0ffffffffH
	DD	01H
	DD	0ffffffffH
	DD	00H
	DD	00H
	DD	00H
	DD	0ffffffffH
	DD	01H
	DD	0ffffffffH
	DD	01H
	DD	00H
	DD	00H
	DD	00H
	DD	00H
	DD	0ffffffffH
	DD	01H
	DD	0ffffffffH
	DD	01H
	DD	00H
	DD	00H
	DD	00H
	DD	00H
	DD	0ffffffffH
	DD	01H
	DD	0ffffffffH
	DD	01H
	DD	00H
	DD	00H
	DD	00H
	DD	00H
	DD	0ffffffffH
	DD	01H
	DD	0ffffffffH
	DD	01H
	DD	00H
	DD	00H
	DD	00H
	DD	00H
	DD	0ffffffffH
	DD	01H
	DD	0ffffffffH
	DD	01H
	DD	00H
	DD	00H
	DD	00H
	DD	00H
	DD	0ffffffffH
	DD	01H
	DD	0ffffffffH
	DD	01H
	DD	00H
	DD	00H
	DD	00H
	DD	00H
	DD	0ffffffffH
	DD	01H
	DD	0ffffffffH
	DD	01H
	DD	00H
	DD	00H
	DD	00H
	DD	00H
	DD	0ffffffffH
	DD	01H
	DD	0ffffffffH
	DD	01H
	DD	00H
	DD	00H
	DD	00H
	DD	01H
	DD	0ffffffffH
	DD	01H
	DD	00H
	DD	01H
	DD	01H
	DD	00H
	DD	00H
	DD	01H
	DD	0ffffffffH
	DD	01H
	DD	00H
	DD	01H
	DD	01H
	DD	00H
	DD	00H
	DD	01H
	DD	0ffffffffH
	DD	01H
	DD	00H
	DD	01H
	DD	01H
	DD	00H
	DD	00H
	DD	01H
	DD	0ffffffffH
	DD	01H
	DD	00H
	DD	01H
	DD	01H
	DD	00H
	DD	00H
	DD	01H
	DD	0ffffffffH
	DD	01H
	DD	00H
	DD	01H
	DD	01H
	DD	00H
	DD	00H
	DD	01H
	DD	0ffffffffH
	DD	01H
	DD	00H
	DD	01H
	DD	01H
	DD	00H
	DD	00H
	DD	01H
	DD	0ffffffffH
	DD	01H
	DD	00H
	DD	01H
	DD	01H
	DD	00H
	DD	00H
	DD	01H
	DD	0ffffffffH
	DD	01H
	DD	00H
	DD	01H
	DD	01H
	DD	00H
	DD	00H
	DD	01H
	DD	00H
	DD	01H
	DD	01H
	DD	00H
	DD	01H
	DD	00H
	DD	00H
	DD	01H
	DD	00H
	DD	01H
	DD	01H
	DD	00H
	DD	01H
	DD	00H
	DD	00H
	DD	01H
	DD	00H
	DD	01H
	DD	01H
	DD	00H
	DD	01H
	DD	00H
	DD	00H
	DD	01H
	DD	00H
	DD	01H
	DD	01H
	DD	00H
	DD	01H
	DD	00H
	DD	00H
	DD	01H
	DD	00H
	DD	01H
	DD	01H
	DD	00H
	DD	01H
	DD	00H
	DD	00H
	DD	01H
	DD	00H
	DD	01H
	DD	01H
	DD	00H
	DD	01H
	DD	00H
	DD	00H
	DD	01H
	DD	00H
	DD	01H
	DD	01H
	DD	00H
	DD	01H
	DD	00H
	DD	00H
	DD	01H
	DD	00H
	DD	01H
	DD	01H
	DD	00H
	DD	01H
	DD	00H
	DD	00H
	DD	0ffffffffH
	DD	01H
	DD	00H
	DD	01H
	DD	01H
	DD	01H
	DD	00H
	DD	00H
	DD	0ffffffffH
	DD	01H
	DD	00H
	DD	01H
	DD	01H
	DD	01H
	DD	00H
	DD	00H
	DD	0ffffffffH
	DD	01H
	DD	00H
	DD	01H
	DD	01H
	DD	01H
	DD	00H
	DD	00H
	DD	0ffffffffH
	DD	01H
	DD	00H
	DD	01H
	DD	01H
	DD	01H
_DATA	ENDS
CRT$XCU	SEGMENT
_$S11	DD	FLAT:_$E10
_$S16	DD	FLAT:_$E15
CRT$XCU	ENDS
PUBLIC	??4KMapMusic@@QAEAAV0@ABV0@@Z			; KMapMusic::operator=
;	COMDAT ??4KMapMusic@@QAEAAV0@ABV0@@Z
_TEXT	SEGMENT
___that$ = 8
??4KMapMusic@@QAEAAV0@ABV0@@Z PROC NEAR			; KMapMusic::operator=, COMDAT
	push	esi
	mov	esi, DWORD PTR ___that$[esp]
	mov	eax, ecx
	push	edi
	mov	ecx, 12350				; 0000303eH
	mov	edi, eax
	rep movsd
	pop	edi
	pop	esi
	ret	4
??4KMapMusic@@QAEAAV0@ABV0@@Z ENDP			; KMapMusic::operator=
_TEXT	ENDS
PUBLIC	?GetGameTime@KSubWorldSet@@QAEHXZ		; KSubWorldSet::GetGameTime
;	COMDAT ?GetGameTime@KSubWorldSet@@QAEHXZ
_TEXT	SEGMENT
?GetGameTime@KSubWorldSet@@QAEHXZ PROC NEAR		; KSubWorldSet::GetGameTime, COMDAT

; 33   : 	int		GetGameTime(){return m_nLoopRate;};

	mov	eax, DWORD PTR [ecx]
	ret	0
?GetGameTime@KSubWorldSet@@QAEHXZ ENDP			; KSubWorldSet::GetGameTime
_TEXT	ENDS
PUBLIC	?GetGameVersion@KSubWorldSet@@QAEHXZ		; KSubWorldSet::GetGameVersion
;	COMDAT ?GetGameVersion@KSubWorldSet@@QAEHXZ
_TEXT	SEGMENT
?GetGameVersion@KSubWorldSet@@QAEHXZ PROC NEAR		; KSubWorldSet::GetGameVersion, COMDAT

; 34   : 	int		GetGameVersion() { return m_nGameVersion; }

	mov	eax, DWORD PTR [ecx+49440]
	ret	0
?GetGameVersion@KSubWorldSet@@QAEHXZ ENDP		; KSubWorldSet::GetGameVersion
_TEXT	ENDS
PUBLIC	?SetPing@KSubWorldSet@@QAEXK@Z			; KSubWorldSet::SetPing
;	COMDAT ?SetPing@KSubWorldSet@@QAEXK@Z
_TEXT	SEGMENT
_dwTimer$ = 8
?SetPing@KSubWorldSet@@QAEXK@Z PROC NEAR		; KSubWorldSet::SetPing, COMDAT

; 42   : 	void	SetPing(DWORD dwTimer) { m_dwPing = dwTimer; }

	mov	eax, DWORD PTR _dwTimer$[esp-4]
	mov	DWORD PTR [ecx+49444], eax
	ret	4
?SetPing@KSubWorldSet@@QAEXK@Z ENDP			; KSubWorldSet::SetPing
_TEXT	ENDS
PUBLIC	?GetPing@KSubWorldSet@@QAEKXZ			; KSubWorldSet::GetPing
;	COMDAT ?GetPing@KSubWorldSet@@QAEKXZ
_TEXT	SEGMENT
?GetPing@KSubWorldSet@@QAEKXZ PROC NEAR			; KSubWorldSet::GetPing, COMDAT

; 43   : 	DWORD	GetPing() { return m_dwPing; }

	mov	eax, DWORD PTR [ecx+49444]
	ret	0
?GetPing@KSubWorldSet@@QAEKXZ ENDP			; KSubWorldSet::GetPing
_TEXT	ENDS
PUBLIC	??4KSubWorldSet@@QAEAAV0@ABV0@@Z		; KSubWorldSet::operator=
;	COMDAT ??4KSubWorldSet@@QAEAAV0@ABV0@@Z
_TEXT	SEGMENT
___that$ = 8
??4KSubWorldSet@@QAEAAV0@ABV0@@Z PROC NEAR		; KSubWorldSet::operator=, COMDAT
	push	esi
	mov	esi, DWORD PTR ___that$[esp]
	mov	eax, ecx
	push	edi
	mov	ecx, 12362				; 0000304aH
	mov	edi, eax
	rep movsd
	pop	edi
	pop	esi
	ret	4
??4KSubWorldSet@@QAEAAV0@ABV0@@Z ENDP			; KSubWorldSet::operator=
_TEXT	ENDS
PUBLIC	??1KSubWorldSet@@QAE@XZ				; KSubWorldSet::~KSubWorldSet
EXTRN	??1KMapMusic@@QAE@XZ:NEAR			; KMapMusic::~KMapMusic
;	COMDAT ??1KSubWorldSet@@QAE@XZ
_TEXT	SEGMENT
??1KSubWorldSet@@QAE@XZ PROC NEAR			; KSubWorldSet::~KSubWorldSet, COMDAT
	add	ecx, 4
	jmp	??1KMapMusic@@QAE@XZ			; KMapMusic::~KMapMusic
??1KSubWorldSet@@QAE@XZ ENDP				; KSubWorldSet::~KSubWorldSet
_TEXT	ENDS
;	COMDAT _$E10
_TEXT	SEGMENT
_$E10	PROC NEAR					; COMDAT
	call	_$E7
	jmp	_$E9
_$E10	ENDP
_TEXT	ENDS
PUBLIC	??0KMissle@@QAE@XZ				; KMissle::KMissle
PUBLIC	??1KMissle@@UAE@XZ				; KMissle::~KMissle
EXTRN	??_L@YGXPAXIHP6EX0@Z1@Z:NEAR			; `eh vector constructor iterator'
;	COMDAT _$E7
_TEXT	SEGMENT
_$E7	PROC NEAR					; COMDAT

; 109  : KMissle g_MisslesLib[MAX_MISSLESTYLE];

	push	OFFSET FLAT:??1KMissle@@UAE@XZ		; KMissle::~KMissle
	push	OFFSET FLAT:??0KMissle@@QAE@XZ		; KMissle::KMissle
	push	200					; 000000c8H
	push	2936					; 00000b78H
	push	OFFSET FLAT:?g_MisslesLib@@3PAVKMissle@@A ; g_MisslesLib
	call	??_L@YGXPAXIHP6EX0@Z1@Z			; `eh vector constructor iterator'
	ret	0
_$E7	ENDP
_TEXT	ENDS
EXTRN	_atexit:NEAR
;	COMDAT _$E9
_TEXT	SEGMENT
_$E9	PROC NEAR					; COMDAT
	push	OFFSET FLAT:_$E8
	call	_atexit
	pop	ecx
	ret	0
_$E9	ENDP
_TEXT	ENDS
EXTRN	??_M@YGXPAXIHP6EX0@Z@Z:NEAR			; `eh vector destructor iterator'
;	COMDAT _$E8
_TEXT	SEGMENT
_$E8	PROC NEAR					; COMDAT
	push	OFFSET FLAT:??1KMissle@@UAE@XZ		; KMissle::~KMissle
	push	200					; 000000c8H
	push	2936					; 00000b78H
	push	OFFSET FLAT:?g_MisslesLib@@3PAVKMissle@@A ; g_MisslesLib
	call	??_M@YGXPAXIHP6EX0@Z@Z			; `eh vector destructor iterator'
	ret	0
_$E8	ENDP
_TEXT	ENDS
;	COMDAT _$E15
_TEXT	SEGMENT
_$E15	PROC NEAR					; COMDAT
	call	_$E12
	jmp	_$E14
_$E15	ENDP
_TEXT	ENDS
;	COMDAT _$E12
_TEXT	SEGMENT
_$E12	PROC NEAR					; COMDAT

; 130  : CORE_API KMissle Missle[MAX_MISSLE];

	push	OFFSET FLAT:??1KMissle@@UAE@XZ		; KMissle::~KMissle
	push	OFFSET FLAT:??0KMissle@@QAE@XZ		; KMissle::KMissle
	push	500					; 000001f4H
	push	2936					; 00000b78H
	push	OFFSET FLAT:?Missle@@3PAVKMissle@@A	; Missle
	call	??_L@YGXPAXIHP6EX0@Z1@Z			; `eh vector constructor iterator'
	ret	0
_$E12	ENDP
_TEXT	ENDS
;	COMDAT _$E14
_TEXT	SEGMENT
_$E14	PROC NEAR					; COMDAT
	push	OFFSET FLAT:_$E13
	call	_atexit
	pop	ecx
	ret	0
_$E14	ENDP
_TEXT	ENDS
;	COMDAT _$E13
_TEXT	SEGMENT
_$E13	PROC NEAR					; COMDAT
	push	OFFSET FLAT:??1KMissle@@UAE@XZ		; KMissle::~KMissle
	push	500					; 000001f4H
	push	2936					; 00000b78H
	push	OFFSET FLAT:?Missle@@3PAVKMissle@@A	; Missle
	call	??_M@YGXPAXIHP6EX0@Z@Z			; `eh vector destructor iterator'
	ret	0
_$E13	ENDP
_TEXT	ENDS
PUBLIC	??1KIndexNode@@UAE@XZ				; KIndexNode::~KIndexNode
PUBLIC	??_7KIndexNode@@6B@				; KIndexNode::`vftable'
PUBLIC	??_GKIndexNode@@UAEPAXI@Z			; KIndexNode::`scalar deleting destructor'
PUBLIC	??_EKIndexNode@@UAEPAXI@Z			; KIndexNode::`vector deleting destructor'
PUBLIC	??_7KMissle@@6B@				; KMissle::`vftable'
PUBLIC	??_GKMissle@@UAEPAXI@Z				; KMissle::`scalar deleting destructor'
PUBLIC	??_EKMissle@@UAEPAXI@Z				; KMissle::`vector deleting destructor'
EXTRN	__except_list:DWORD
EXTRN	___CxxFrameHandler:NEAR
EXTRN	??0KMissleRes@@QAE@XZ:NEAR			; KMissleRes::KMissleRes
;	COMDAT ??_7KIndexNode@@6B@
; File ..\engine\src\KNode.h
CONST	SEGMENT
??_7KIndexNode@@6B@ DD FLAT:??_EKIndexNode@@UAEPAXI@Z	; KIndexNode::`vftable'
CONST	ENDS
;	COMDAT ??_7KMissle@@6B@
CONST	SEGMENT
??_7KMissle@@6B@ DD FLAT:??_EKMissle@@UAEPAXI@Z		; KMissle::`vftable'
CONST	ENDS
;	COMDAT xdata$x
xdata$x	SEGMENT
$T87179	DD	019930520H
	DD	01H
	DD	FLAT:$T87182
	DD	2 DUP(00H)
	DD	2 DUP(00H)
	ORG $+4
$T87182	DD	0ffffffffH
	DD	FLAT:$L87164
xdata$x	ENDS
;	COMDAT ??0KMissle@@QAE@XZ
_TEXT	SEGMENT
_this$ = -16
__$EHRec$ = -12
??0KMissle@@QAE@XZ PROC NEAR				; KMissle::KMissle, COMDAT

; 136  : {

	push	-1
	push	$L87180
	mov	eax, DWORD PTR fs:__except_list
	push	eax
	mov	DWORD PTR fs:__except_list, esp
	push	ecx
	push	esi
	push	edi
	mov	esi, ecx
	xor	edi, edi
	mov	DWORD PTR _this$[esp+24], esi
	mov	DWORD PTR [esi+8], edi
	mov	DWORD PTR [esi+12], edi
	mov	DWORD PTR [esi+4], OFFSET FLAT:??_7KIndexNode@@6B@ ; KIndexNode::`vftable'
	mov	DWORD PTR [esi+16], edi
	mov	DWORD PTR [esi+20], edi
	lea	ecx, DWORD PTR [esi+464]
	mov	DWORD PTR __$EHRec$[esp+32], edi
	call	??0KMissleRes@@QAE@XZ			; KMissleRes::KMissleRes

; 137  : 	m_nMissleId = -1;
; 138  : 	m_nCollideOrVanishTime = 0;
; 139  : 	m_ulDamageInterval = 0;
; 140  : 	m_nTempParam1 = 0;
; 141  : 	m_nTempParam2 = 0;
; 142  : 	m_nFirstReclaimTime = 0;
; 143  : 	m_nEndReclaimTime = 0;
; 144  : 	
; 145  : #ifdef _SERVER
; 146  : 	m_pMagicAttribsData = NULL;
; 147  : 	m_ulNextCalDamageTime = 0;
; 148  : #else
; 149  : 	m_bFollowNpcWhenCollid = 1;
; 150  : 	m_bRemoving	= FALSE;
; 151  : 	m_btRedLum = m_btGreenLum = m_btBlueLum = 0xff;
; 152  : 	m_usLightRadius = 50;
; 153  : #endif
; 154  : }

	mov	ecx, DWORD PTR __$EHRec$[esp+24]
	mov	eax, 255				; 000000ffH
	mov	DWORD PTR [esi+212], edi
	mov	DWORD PTR [esi+196], edi
	mov	DWORD PTR [esi+412], edi
	mov	DWORD PTR [esi+416], edi
	mov	DWORD PTR [esi+404], edi
	mov	DWORD PTR [esi+408], edi
	mov	DWORD PTR [esi+68], edi
	mov	DWORD PTR [esi+456], eax
	mov	DWORD PTR [esi+452], eax
	mov	DWORD PTR [esi+448], eax
	mov	DWORD PTR [esi], OFFSET FLAT:??_7KMissle@@6B@ ; KMissle::`vftable'
	mov	DWORD PTR [esi+356], -1
	mov	DWORD PTR [esi+444], 1
	mov	WORD PTR [esi+460], 50			; 00000032H
	mov	eax, esi
	pop	edi
	pop	esi
	mov	DWORD PTR fs:__except_list, ecx
	add	esp, 16					; 00000010H
	ret	0
_TEXT	ENDS
;	COMDAT text$x
text$x	SEGMENT
$L87164:
	mov	ecx, DWORD PTR _this$[ebp]
	add	ecx, 4
	jmp	??1KIndexNode@@UAE@XZ			; KIndexNode::~KIndexNode
$L87180:
	mov	eax, OFFSET FLAT:$T87179
	jmp	___CxxFrameHandler
text$x	ENDS
??0KMissle@@QAE@XZ ENDP					; KMissle::KMissle
EXTRN	??3@YAXPAX@Z:NEAR				; operator delete
;	COMDAT ??_GKMissle@@UAEPAXI@Z
_TEXT	SEGMENT
___flags$ = 8
??_GKMissle@@UAEPAXI@Z PROC NEAR			; KMissle::`scalar deleting destructor', COMDAT
	push	esi
	mov	esi, ecx
	call	??1KMissle@@UAE@XZ			; KMissle::~KMissle
	test	BYTE PTR ___flags$[esp], 1
	je	SHORT $L87189
	push	esi
	call	??3@YAXPAX@Z				; operator delete
	add	esp, 4
$L87189:
	mov	eax, esi
	pop	esi
	ret	4
??_GKMissle@@UAEPAXI@Z ENDP				; KMissle::`scalar deleting destructor'
_TEXT	ENDS
PUBLIC	?Release@KMissle@@AAEXXZ			; KMissle::Release
EXTRN	?g_ScenePlace@@3VKScenePlaceC@@A:BYTE		; g_ScenePlace
EXTRN	?Clear@KMissleRes@@QAEXXZ:NEAR			; KMissleRes::Clear
EXTRN	?RemoveObject@KScenePlaceC@@QAEXIHAAI@Z:NEAR	; KScenePlaceC::RemoveObject
;	COMDAT ?Release@KMissle@@AAEXXZ
_TEXT	SEGMENT
?Release@KMissle@@AAEXXZ PROC NEAR			; KMissle::Release, COMDAT

; 157  : {

	push	esi
	mov	esi, ecx

; 158  : ///#pragma	message(ATTENTION("子弹消亡时，需更新发送者使用该技能时的当前使用次数，使之减一"))
; 159  : #ifndef _SERVER	
; 160  : 	g_ScenePlace.RemoveObject(CGOG_MISSLE, m_nMissleId, m_SceneID);

	mov	ecx, DWORD PTR [esi+356]
	lea	eax, DWORD PTR [esi+2932]
	push	eax
	push	ecx
	push	9
	mov	ecx, OFFSET FLAT:?g_ScenePlace@@3VKScenePlaceC@@A
	call	?RemoveObject@KScenePlaceC@@QAEXIHAAI@Z	; KScenePlaceC::RemoveObject

; 161  : 	m_MissleRes.Clear();

	lea	ecx, DWORD PTR [esi+464]
	call	?Clear@KMissleRes@@QAEXXZ		; KMissleRes::Clear

; 162  : 	m_nMissleId = -1;

	mov	DWORD PTR [esi+356], -1

; 163  : 	m_nFollowNpcIdx = 0;

	mov	DWORD PTR [esi+324], 0
	pop	esi

; 164  : #endif
; 165  : #ifdef _SERVER
; 166  : 	if (m_pMagicAttribsData)
; 167  : 		if (m_pMagicAttribsData->DelRef() == 0)
; 168  : 			delete m_pMagicAttribsData;
; 169  : 		m_pMagicAttribsData = NULL;
; 170  : #endif
; 171  : }

	ret	0
?Release@KMissle@@AAEXXZ ENDP				; KMissle::Release
_TEXT	ENDS
PUBLIC	??_7KNode@@6B@					; KNode::`vftable'
PUBLIC	??_GKNode@@UAEPAXI@Z				; KNode::`scalar deleting destructor'
PUBLIC	??_EKNode@@UAEPAXI@Z				; KNode::`vector deleting destructor'
EXTRN	??1KMissleRes@@QAE@XZ:NEAR			; KMissleRes::~KMissleRes
;	COMDAT ??_7KNode@@6B@
; File ..\engine\src\KNode.h
CONST	SEGMENT
??_7KNode@@6B@ DD FLAT:??_EKNode@@UAEPAXI@Z		; KNode::`vftable'
CONST	ENDS
;	COMDAT xdata$x
xdata$x	SEGMENT
$T87209	DD	019930520H
	DD	01H
	DD	FLAT:$T87211
	DD	2 DUP(00H)
	DD	2 DUP(00H)
	ORG $+4
$T87211	DD	0ffffffffH
	DD	FLAT:$L87196
xdata$x	ENDS
;	COMDAT ??1KMissle@@UAE@XZ
_TEXT	SEGMENT
_this$ = -16
__$EHRec$ = -12
??1KMissle@@UAE@XZ PROC NEAR				; KMissle::~KMissle, COMDAT

; 174  : {

	push	-1
	push	$L87210
	mov	eax, DWORD PTR fs:__except_list
	push	eax
	mov	DWORD PTR fs:__except_list, esp
	push	ecx
	push	esi
	mov	esi, ecx
	mov	DWORD PTR _this$[esp+20], esi
	mov	DWORD PTR [esi], OFFSET FLAT:??_7KMissle@@6B@ ; KMissle::`vftable'

; 175  : 	
; 176  : }

	lea	ecx, DWORD PTR [esi+464]
	mov	DWORD PTR __$EHRec$[esp+28], 0
	call	??1KMissleRes@@QAE@XZ			; KMissleRes::~KMissleRes
	mov	ecx, DWORD PTR __$EHRec$[esp+20]
	mov	DWORD PTR [esi+4], OFFSET FLAT:??_7KNode@@6B@ ; KNode::`vftable'
	pop	esi
	mov	DWORD PTR fs:__except_list, ecx
	add	esp, 16					; 00000010H
	ret	0
_TEXT	ENDS
;	COMDAT text$x
text$x	SEGMENT
$L87196:
	mov	ecx, DWORD PTR _this$[ebp]
	add	ecx, 4
	jmp	??1KIndexNode@@UAE@XZ			; KIndexNode::~KIndexNode
$L87210:
	mov	eax, OFFSET FLAT:$T87209
	jmp	___CxxFrameHandler
text$x	ENDS
??1KMissle@@UAE@XZ ENDP					; KMissle::~KMissle
;	COMDAT ??_GKNode@@UAEPAXI@Z
_TEXT	SEGMENT
___flags$ = 8
??_GKNode@@UAEPAXI@Z PROC NEAR				; KNode::`scalar deleting destructor', COMDAT
	mov	al, BYTE PTR ___flags$[esp-4]
	push	esi
	mov	esi, ecx
	test	al, 1
	mov	DWORD PTR [esi], OFFSET FLAT:??_7KNode@@6B@ ; KNode::`vftable'
	je	SHORT $L87220
	push	esi
	call	??3@YAXPAX@Z				; operator delete
	add	esp, 4
$L87220:
	mov	eax, esi
	pop	esi
	ret	4
??_GKNode@@UAEPAXI@Z ENDP				; KNode::`scalar deleting destructor'
_TEXT	ENDS
PUBLIC	?GetInfoFromTabFile@KMissle@@QAEHH@Z		; KMissle::GetInfoFromTabFile
PUBLIC	?GetInfoFromTabFile@KMissle@@QAEHPAVKITabFile@@H@Z ; KMissle::GetInfoFromTabFile
EXTRN	?g_MisslesSetting@@3VKTabFile@@A:BYTE		; g_MisslesSetting
;	COMDAT ?GetInfoFromTabFile@KMissle@@QAEHH@Z
_TEXT	SEGMENT
_nMissleId$ = 8
?GetInfoFromTabFile@KMissle@@QAEHH@Z PROC NEAR		; KMissle::GetInfoFromTabFile, COMDAT

; 187  : 	if (nMissleId <= 0 ) return FALSE;

	mov	eax, DWORD PTR _nMissleId$[esp-4]
	test	eax, eax
	jg	SHORT $L86164
	xor	eax, eax

; 190  : }

	ret	4
$L86164:

; 188  : 	KITabFile * pITabFile = &g_MisslesSetting;
; 189  : 	return GetInfoFromTabFile(pITabFile, nMissleId);

	push	eax
	push	OFFSET FLAT:?g_MisslesSetting@@3VKTabFile@@A ; g_MisslesSetting
	call	?GetInfoFromTabFile@KMissle@@QAEHPAVKITabFile@@H@Z ; KMissle::GetInfoFromTabFile

; 190  : }

	ret	4
?GetInfoFromTabFile@KMissle@@QAEHH@Z ENDP		; KMissle::GetInfoFromTabFile
_TEXT	ENDS
PUBLIC	??_C@_0L@MDID@MissleName?$AA@			; `string'
PUBLIC	??_C@_0N@IMPH@MissleHeight?$AA@			; `string'
PUBLIC	??_C@_08CLHE@LifeTime?$AA@			; `string'
PUBLIC	??_C@_05PDDA@Speed?$AA@				; `string'
PUBLIC	??_C@_0O@CEMO@ResponseSkill?$AA@		; `string'
PUBLIC	??_C@_0M@IPHD@CollidRange?$AA@			; `string'
PUBLIC	??_C@_09LLHA@ColVanish?$AA@			; `string'
PUBLIC	??_C@_0N@MOFP@CanColFriend?$AA@			; `string'
PUBLIC	??_C@_07ICPB@CanSlow?$AA@			; `string'
PUBLIC	??_C@_0L@DOMN@IsRangeDmg?$AA@			; `string'
PUBLIC	??_C@_08EKOK@DmgRange?$AA@			; `string'
PUBLIC	??_C@_08MKEC@MoveKind?$AA@			; `string'
PUBLIC	??_C@_0L@ICBE@FollowKind?$AA@			; `string'
PUBLIC	??_C@_04LIGI@Zacc?$AA@				; `string'
PUBLIC	??_C@_06EDNA@Zspeed?$AA@			; `string'
PUBLIC	??_C@_06DMFP@Param1?$AA@			; `string'
PUBLIC	??_C@_06MDOG@Param2?$AA@			; `string'
PUBLIC	??_C@_06GJHB@Param3?$AA@			; `string'
PUBLIC	??_C@_0M@CDCB@AutoExplode?$AA@			; `string'
PUBLIC	??_C@_0M@MLLA@DmgInterval?$AA@			; `string'
PUBLIC	??_C@_06PIMC@RedLum?$AA@			; `string'
PUBLIC	??_C@_08KOFB@GreenLum?$AA@			; `string'
PUBLIC	??_C@_07BJEB@BlueLum?$AA@			; `string'
PUBLIC	??_C@_0M@HJOL@LightRadius?$AA@			; `string'
PUBLIC	??_C@_09PDKK@MultiShow?$AA@			; `string'
PUBLIC	??_C@_0L@EKAK@AnimFile?$CFd?$AA@		; `string'
PUBLIC	??_C@_09CDAF@SndFile?$CFd?$AA@			; `string'
PUBLIC	??_C@_0P@EKPH@AnimFileInfo?$CFd?$AA@		; `string'
PUBLIC	??_C@_0M@LCCH@AnimFileB?$CFd?$AA@		; `string'
PUBLIC	??_C@_0L@HHEO@SndFileB?$CFd?$AA@		; `string'
PUBLIC	??_C@_0BA@BPCH@AnimFileInfoB?$CFd?$AA@		; `string'
PUBLIC	??_C@_08OBCD@LoopPlay?$AA@			; `string'
PUBLIC	??_C@_07MAEH@SubLoop?$AA@			; `string'
PUBLIC	??_C@_08CAJJ@SubStart?$AA@			; `string'
PUBLIC	??_C@_07CKM@SubStop?$AA@			; `string'
PUBLIC	??_C@_0BA@PAFJ@ColFollowTarget?$AA@		; `string'
PUBLIC	??_C@_00A@?$AA@					; `string'
EXTRN	__imp_?KSG_StringGetInt@@YAHPAPBDH@Z:NEAR
EXTRN	__imp_?KSG_StringSkipSymbol@@YA_NPAPBDH@Z:NEAR
EXTRN	__imp__sprintf:NEAR
;	COMDAT ??_C@_00A@?$AA@
; File D:\swrod3\SwordOnline\Sources\Core\Src\KMissle.cpp
_BSS	SEGMENT
??_C@_00A@?$AA@ DB 01H DUP (?)				; `string'
_BSS	ENDS
;	COMDAT ??_C@_0L@MDID@MissleName?$AA@
_DATA	SEGMENT
??_C@_0L@MDID@MissleName?$AA@ DB 'MissleName', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_0N@IMPH@MissleHeight?$AA@
_DATA	SEGMENT
??_C@_0N@IMPH@MissleHeight?$AA@ DB 'MissleHeight', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_08CLHE@LifeTime?$AA@
_DATA	SEGMENT
??_C@_08CLHE@LifeTime?$AA@ DB 'LifeTime', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_05PDDA@Speed?$AA@
_DATA	SEGMENT
??_C@_05PDDA@Speed?$AA@ DB 'Speed', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_0O@CEMO@ResponseSkill?$AA@
_DATA	SEGMENT
??_C@_0O@CEMO@ResponseSkill?$AA@ DB 'ResponseSkill', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0M@IPHD@CollidRange?$AA@
_DATA	SEGMENT
??_C@_0M@IPHD@CollidRange?$AA@ DB 'CollidRange', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_09LLHA@ColVanish?$AA@
_DATA	SEGMENT
??_C@_09LLHA@ColVanish?$AA@ DB 'ColVanish', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0N@MOFP@CanColFriend?$AA@
_DATA	SEGMENT
??_C@_0N@MOFP@CanColFriend?$AA@ DB 'CanColFriend', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_07ICPB@CanSlow?$AA@
_DATA	SEGMENT
??_C@_07ICPB@CanSlow?$AA@ DB 'CanSlow', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0L@DOMN@IsRangeDmg?$AA@
_DATA	SEGMENT
??_C@_0L@DOMN@IsRangeDmg?$AA@ DB 'IsRangeDmg', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_08EKOK@DmgRange?$AA@
_DATA	SEGMENT
??_C@_08EKOK@DmgRange?$AA@ DB 'DmgRange', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_08MKEC@MoveKind?$AA@
_DATA	SEGMENT
??_C@_08MKEC@MoveKind?$AA@ DB 'MoveKind', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0L@ICBE@FollowKind?$AA@
_DATA	SEGMENT
??_C@_0L@ICBE@FollowKind?$AA@ DB 'FollowKind', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_04LIGI@Zacc?$AA@
_DATA	SEGMENT
??_C@_04LIGI@Zacc?$AA@ DB 'Zacc', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_06EDNA@Zspeed?$AA@
_DATA	SEGMENT
??_C@_06EDNA@Zspeed?$AA@ DB 'Zspeed', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_06DMFP@Param1?$AA@
_DATA	SEGMENT
??_C@_06DMFP@Param1?$AA@ DB 'Param1', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_06MDOG@Param2?$AA@
_DATA	SEGMENT
??_C@_06MDOG@Param2?$AA@ DB 'Param2', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_06GJHB@Param3?$AA@
_DATA	SEGMENT
??_C@_06GJHB@Param3?$AA@ DB 'Param3', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0M@CDCB@AutoExplode?$AA@
_DATA	SEGMENT
??_C@_0M@CDCB@AutoExplode?$AA@ DB 'AutoExplode', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_0M@MLLA@DmgInterval?$AA@
_DATA	SEGMENT
??_C@_0M@MLLA@DmgInterval?$AA@ DB 'DmgInterval', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_06PIMC@RedLum?$AA@
_DATA	SEGMENT
??_C@_06PIMC@RedLum?$AA@ DB 'RedLum', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_08KOFB@GreenLum?$AA@
_DATA	SEGMENT
??_C@_08KOFB@GreenLum?$AA@ DB 'GreenLum', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_07BJEB@BlueLum?$AA@
_DATA	SEGMENT
??_C@_07BJEB@BlueLum?$AA@ DB 'BlueLum', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0M@HJOL@LightRadius?$AA@
_DATA	SEGMENT
??_C@_0M@HJOL@LightRadius?$AA@ DB 'LightRadius', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_09PDKK@MultiShow?$AA@
_DATA	SEGMENT
??_C@_09PDKK@MultiShow?$AA@ DB 'MultiShow', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0L@EKAK@AnimFile?$CFd?$AA@
_DATA	SEGMENT
??_C@_0L@EKAK@AnimFile?$CFd?$AA@ DB 'AnimFile%d', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_09CDAF@SndFile?$CFd?$AA@
_DATA	SEGMENT
??_C@_09CDAF@SndFile?$CFd?$AA@ DB 'SndFile%d', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_0P@EKPH@AnimFileInfo?$CFd?$AA@
_DATA	SEGMENT
??_C@_0P@EKPH@AnimFileInfo?$CFd?$AA@ DB 'AnimFileInfo%d', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0M@LCCH@AnimFileB?$CFd?$AA@
_DATA	SEGMENT
??_C@_0M@LCCH@AnimFileB?$CFd?$AA@ DB 'AnimFileB%d', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_0L@HHEO@SndFileB?$CFd?$AA@
_DATA	SEGMENT
??_C@_0L@HHEO@SndFileB?$CFd?$AA@ DB 'SndFileB%d', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BA@BPCH@AnimFileInfoB?$CFd?$AA@
_DATA	SEGMENT
??_C@_0BA@BPCH@AnimFileInfoB?$CFd?$AA@ DB 'AnimFileInfoB%d', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_08OBCD@LoopPlay?$AA@
_DATA	SEGMENT
??_C@_08OBCD@LoopPlay?$AA@ DB 'LoopPlay', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_07MAEH@SubLoop?$AA@
_DATA	SEGMENT
??_C@_07MAEH@SubLoop?$AA@ DB 'SubLoop', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_08CAJJ@SubStart?$AA@
_DATA	SEGMENT
??_C@_08CAJJ@SubStart?$AA@ DB 'SubStart', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_07CKM@SubStop?$AA@
_DATA	SEGMENT
??_C@_07CKM@SubStop?$AA@ DB 'SubStop', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BA@PAFJ@ColFollowTarget?$AA@
_DATA	SEGMENT
??_C@_0BA@PAFJ@ColFollowTarget?$AA@ DB 'ColFollowTarget', 00H ; `string'
_DATA	ENDS
;	COMDAT ?GetInfoFromTabFile@KMissle@@QAEHPAVKITabFile@@H@Z
_TEXT	SEGMENT
_pMisslesSetting$ = 8
_nMissleId$ = 12
_this$ = -336
_nHeightOld$ = -332
_bAutoExplode$ = -344
_AnimFileCol$ = -264
_SndFileCol$ = -328
_AnimFileInfoCol$ = -200
_szAnimFileInfo$ = -100
_pcszTemp$ = -348
_nLightRadius$ = -340
?GetInfoFromTabFile@KMissle@@QAEHPAVKITabFile@@H@Z PROC NEAR ; KMissle::GetInfoFromTabFile, COMDAT

; 193  : {

	sub	esp, 348				; 0000015cH
	push	ebx
	push	ebp
	push	edi

; 194  : 	if (nMissleId <= 0 ) return FALSE;

	mov	edi, DWORD PTR _nMissleId$[esp+356]
	xor	ebp, ebp
	mov	ebx, ecx
	cmp	edi, ebp
	mov	DWORD PTR _this$[esp+360], ebx
	jg	SHORT $L86171
	pop	edi
	pop	ebp
	xor	eax, eax
	pop	ebx

; 304  : }

	add	esp, 348				; 0000015cH
	ret	8
$L86171:
	push	esi

; 195  : 	m_nMissleId		= nMissleId;
; 196  : 	int nRow = nMissleId;
; 197  : 	
; 198  : 	pMisslesSetting->GetString(nRow, "MissleName",		   "", m_szMissleName,30, TRUE);

	mov	esi, DWORD PTR _pMisslesSetting$[esp+360]
	push	1
	lea	ecx, DWORD PTR [ebx+24]
	push	30					; 0000001eH
	push	ecx
	mov	DWORD PTR [ebx+356], edi
	mov	eax, DWORD PTR [esi]
	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0L@MDID@MissleName?$AA@ ; `string'
	push	edi
	mov	ecx, esi
	call	DWORD PTR [eax+36]

; 199  : 	
; 200  : 	int nHeightOld ;
; 201  : 	pMisslesSetting->GetInteger(nRow, "MissleHeight",		0, &nHeightOld, TRUE);

	mov	edx, DWORD PTR [esi]
	lea	eax, DWORD PTR _nHeightOld$[esp+364]
	push	1
	push	eax
	push	ebp
	push	OFFSET FLAT:??_C@_0N@IMPH@MissleHeight?$AA@ ; `string'
	push	edi
	mov	ecx, esi
	call	DWORD PTR [edx+48]

; 202  : 	m_nHeight = nHeightOld << 10;

	mov	ecx, DWORD PTR _nHeightOld$[esp+364]

; 203  : 	
; 204  : 	pMisslesSetting->GetInteger(nRow, "LifeTime",			0, &m_nLifeTime, TRUE);

	lea	eax, DWORD PTR [ebx+92]
	shl	ecx, 10					; 0000000aH
	push	1
	push	eax
	mov	DWORD PTR [ebx+84], ecx
	mov	edx, DWORD PTR [esi]
	push	ebp
	push	OFFSET FLAT:??_C@_08CLHE@LifeTime?$AA@	; `string'
	push	edi
	mov	ecx, esi
	call	DWORD PTR [edx+48]

; 205  : 	pMisslesSetting->GetInteger(nRow, "Speed",				0, &m_nSpeed, TRUE);

	mov	edx, DWORD PTR [esi]
	lea	eax, DWORD PTR [ebx+96]
	push	1
	push	eax
	push	ebp
	push	OFFSET FLAT:??_C@_05PDDA@Speed?$AA@	; `string'
	push	edi
	mov	ecx, esi
	call	DWORD PTR [edx+48]

; 206  : 	pMisslesSetting->GetInteger(nRow, "ResponseSkill",		0, &m_nSkillId, TRUE);

	mov	edx, DWORD PTR [esi]
	lea	eax, DWORD PTR [ebx+100]
	push	1
	push	eax
	push	ebp
	push	OFFSET FLAT:??_C@_0O@CEMO@ResponseSkill?$AA@ ; `string'
	push	edi
	mov	ecx, esi
	call	DWORD PTR [edx+48]

; 207  : 	pMisslesSetting->GetInteger(nRow, "CollidRange",		0, &m_nCollideRange, TRUE);

	mov	edx, DWORD PTR [esi]
	lea	eax, DWORD PTR [ebx+144]
	push	1
	push	eax
	push	ebp
	push	OFFSET FLAT:??_C@_0M@IPHD@CollidRange?$AA@ ; `string'
	push	edi
	mov	ecx, esi
	call	DWORD PTR [edx+48]

; 208  : 	pMisslesSetting->GetInteger(nRow, "ColVanish",			0, &m_bCollideVanish, TRUE);

	mov	edx, DWORD PTR [esi]
	lea	eax, DWORD PTR [ebx+152]
	push	1
	push	eax
	push	ebp
	push	OFFSET FLAT:??_C@_09LLHA@ColVanish?$AA@	; `string'
	push	edi
	mov	ecx, esi
	call	DWORD PTR [edx+48]

; 209  : 	pMisslesSetting->GetInteger(nRow, "CanColFriend",		0, &m_bCollideFriend, TRUE);

	mov	edx, DWORD PTR [esi]
	lea	eax, DWORD PTR [ebx+156]
	push	1
	push	eax
	push	ebp
	push	OFFSET FLAT:??_C@_0N@MOFP@CanColFriend?$AA@ ; `string'
	push	edi
	mov	ecx, esi
	call	DWORD PTR [edx+48]

; 210  : 	pMisslesSetting->GetInteger(nRow, "CanSlow",			0, &m_bCanSlow, TRUE);

	mov	edx, DWORD PTR [esi]
	push	1
	lea	eax, DWORD PTR [ebx+160]
	mov	ecx, esi
	push	eax
	push	ebp
	push	OFFSET FLAT:??_C@_07ICPB@CanSlow?$AA@	; `string'
	push	edi
	call	DWORD PTR [edx+48]

; 211  : 	pMisslesSetting->GetInteger(nRow, "IsRangeDmg",		0, &m_bRangeDamage, TRUE);

	mov	edx, DWORD PTR [esi]
	lea	eax, DWORD PTR [ebx+104]
	push	1
	push	eax
	push	ebp
	push	OFFSET FLAT:??_C@_0L@DOMN@IsRangeDmg?$AA@ ; `string'
	push	edi
	mov	ecx, esi
	call	DWORD PTR [edx+48]

; 212  : 	pMisslesSetting->GetInteger(nRow, "DmgRange",			0, &m_nDamageRange, TRUE);

	mov	edx, DWORD PTR [esi]
	lea	eax, DWORD PTR [ebx+148]
	push	1
	push	eax
	push	ebp
	push	OFFSET FLAT:??_C@_08EKOK@DmgRange?$AA@	; `string'
	push	edi
	mov	ecx, esi
	call	DWORD PTR [edx+48]

; 213  : 	pMisslesSetting->GetInteger(nRow, "MoveKind",			0, (int*)&m_eMoveKind, TRUE);

	mov	edx, DWORD PTR [esi]
	lea	eax, DWORD PTR [ebx+76]
	push	1
	push	eax
	push	ebp
	push	OFFSET FLAT:??_C@_08MKEC@MoveKind?$AA@	; `string'
	push	edi
	mov	ecx, esi
	call	DWORD PTR [edx+48]

; 214  : 	pMisslesSetting->GetInteger(nRow, "FollowKind",		0, (int*)&m_eFollowKind, TRUE);

	mov	edx, DWORD PTR [esi]
	lea	eax, DWORD PTR [ebx+80]
	push	1
	push	eax
	push	ebp
	push	OFFSET FLAT:??_C@_0L@ICBE@FollowKind?$AA@ ; `string'
	push	edi
	mov	ecx, esi
	call	DWORD PTR [edx+48]

; 215  : 	pMisslesSetting->GetInteger(nRow, "Zacc",				0,(int*)&m_nZAcceleration, TRUE);

	mov	edx, DWORD PTR [esi]
	lea	eax, DWORD PTR [ebx+348]
	push	1
	push	eax
	push	ebp
	push	OFFSET FLAT:??_C@_04LIGI@Zacc?$AA@	; `string'
	push	edi
	mov	ecx, esi
	call	DWORD PTR [edx+48]

; 216  : 	pMisslesSetting->GetInteger(nRow, "Zspeed",				0,(int*)&m_nHeightSpeed, TRUE);

	mov	edx, DWORD PTR [esi]
	lea	eax, DWORD PTR [ebx+88]
	push	1
	push	eax
	push	ebp
	push	OFFSET FLAT:??_C@_06EDNA@Zspeed?$AA@	; `string'
	push	edi
	mov	ecx, esi
	call	DWORD PTR [edx+48]

; 217  : 	pMisslesSetting->GetInteger(nRow, "Param1",			0, &m_nParam1, TRUE);

	mov	edx, DWORD PTR [esi]
	lea	eax, DWORD PTR [ebx+392]
	push	1
	push	eax
	push	ebp
	push	OFFSET FLAT:??_C@_06DMFP@Param1?$AA@	; `string'
	push	edi
	mov	ecx, esi
	call	DWORD PTR [edx+48]

; 218  : 	pMisslesSetting->GetInteger(nRow, "Param2",			0, &m_nParam2, TRUE);

	mov	edx, DWORD PTR [esi]
	lea	eax, DWORD PTR [ebx+396]
	push	1
	push	eax
	push	ebp
	push	OFFSET FLAT:??_C@_06MDOG@Param2?$AA@	; `string'
	push	edi
	mov	ecx, esi
	call	DWORD PTR [edx+48]

; 219  : 	pMisslesSetting->GetInteger(nRow, "Param3",			0, &m_nParam3, TRUE);

	mov	edx, DWORD PTR [esi]
	push	1
	lea	eax, DWORD PTR [ebx+400]
	mov	ecx, esi
	push	eax
	push	ebp
	push	OFFSET FLAT:??_C@_06GJHB@Param3?$AA@	; `string'
	push	edi
	call	DWORD PTR [edx+48]

; 220  : 	
; 221  : 	BOOL bAutoExplode = 0;
; 222  : 	pMisslesSetting->GetInteger(nRow, "AutoExplode",	0, (int*)&bAutoExplode, TRUE);

	mov	edx, DWORD PTR [esi]
	lea	eax, DWORD PTR _bAutoExplode$[esp+364]
	push	1
	push	eax
	push	ebp
	push	OFFSET FLAT:??_C@_0M@CDCB@AutoExplode?$AA@ ; `string'
	push	edi
	mov	ecx, esi
	mov	DWORD PTR _bAutoExplode$[esp+384], ebp
	call	DWORD PTR [edx+48]

; 223  : 	m_bAutoExplode = bAutoExplode;

	mov	ecx, DWORD PTR _bAutoExplode$[esp+364]

; 224  : 	
; 225  : 	pMisslesSetting->GetInteger(nRow, "DmgInterval",	0, (int*)&m_ulDamageInterval, TRUE);

	lea	eax, DWORD PTR [ebx+196]
	push	1
	push	eax
	mov	DWORD PTR [ebx+112], ecx
	mov	edx, DWORD PTR [esi]
	push	ebp
	push	OFFSET FLAT:??_C@_0M@MLLA@DmgInterval?$AA@ ; `string'
	push	edi
	mov	ecx, esi
	call	DWORD PTR [edx+48]

; 226  : 	
; 227  : #ifndef _SERVER	
; 228  : 	char AnimFileCol[64];
; 229  : 	char SndFileCol[64];
; 230  : 	char AnimFileInfoCol[100];
; 231  : 	char szAnimFileInfo[100];
; 232  : 
; 233  :     const char *pcszTemp = NULL;
; 234  : 	
; 235  : 	pMisslesSetting->GetInteger(nRow, "RedLum",	    255, (int*)&m_btRedLum, TRUE);

	mov	edx, DWORD PTR [esi]
	lea	eax, DWORD PTR [ebx+448]
	push	1
	push	eax
	push	255					; 000000ffH
	push	OFFSET FLAT:??_C@_06PIMC@RedLum?$AA@	; `string'
	push	edi
	mov	ecx, esi
	mov	DWORD PTR _pcszTemp$[esp+384], ebp
	call	DWORD PTR [edx+48]

; 236  : 	pMisslesSetting->GetInteger(nRow, "GreenLum",	255, (int*)&m_btGreenLum, TRUE);

	mov	edx, DWORD PTR [esi]
	lea	eax, DWORD PTR [ebx+452]
	push	1
	push	eax
	push	255					; 000000ffH
	push	OFFSET FLAT:??_C@_08KOFB@GreenLum?$AA@	; `string'
	push	edi
	mov	ecx, esi
	call	DWORD PTR [edx+48]

; 237  : 	pMisslesSetting->GetInteger(nRow, "BlueLum",	255, (int*)&m_btBlueLum, TRUE);

	mov	edx, DWORD PTR [esi]
	lea	eax, DWORD PTR [ebx+456]
	push	1
	push	eax
	push	255					; 000000ffH
	push	OFFSET FLAT:??_C@_07BJEB@BlueLum?$AA@	; `string'
	push	edi
	mov	ecx, esi
	call	DWORD PTR [edx+48]

; 238  : 	
; 239  : 	int nLightRadius = 0;
; 240  : 	pMisslesSetting->GetInteger(nRow, "LightRadius", 50, (int*)&nLightRadius, TRUE);

	mov	edx, DWORD PTR [esi]
	lea	eax, DWORD PTR _nLightRadius$[esp+364]
	push	1
	push	eax
	push	50					; 00000032H
	push	OFFSET FLAT:??_C@_0M@HJOL@LightRadius?$AA@ ; `string'
	push	edi
	mov	ecx, esi
	mov	DWORD PTR _nLightRadius$[esp+384], ebp
	call	DWORD PTR [edx+48]

; 241  : 	m_usLightRadius = nLightRadius;

	mov	cx, WORD PTR _nLightRadius$[esp+364]

; 242  : 	
; 243  : 	pMisslesSetting->GetInteger(nRow, "MultiShow",		0, &m_bMultiShow, TRUE);

	lea	eax, DWORD PTR [ebx+440]
	push	1
	push	eax
	mov	WORD PTR [ebx+460], cx
	mov	edx, DWORD PTR [esi]
	push	ebp
	push	OFFSET FLAT:??_C@_09PDKK@MultiShow?$AA@	; `string'
	push	edi
	mov	ecx, esi
	call	DWORD PTR [edx+48]
	mov	ebp, 1
	add	ebx, 608				; 00000260H
$L86217:

; 244  : 	for (int i  = 0; i < MAX_MISSLE_STATUS; i++)
; 245  : 	{
; 246  : 		sprintf(AnimFileCol, "AnimFile%d", i + 1);

	push	ebp
	lea	ecx, DWORD PTR _AnimFileCol$[esp+368]
	push	OFFSET FLAT:??_C@_0L@EKAK@AnimFile?$CFd?$AA@ ; `string'
	push	ecx
	call	DWORD PTR __imp__sprintf

; 247  : 		sprintf(SndFileCol,  "SndFile%d", i + 1);

	push	ebp
	lea	edx, DWORD PTR _SndFileCol$[esp+380]
	push	OFFSET FLAT:??_C@_09CDAF@SndFile?$CFd?$AA@ ; `string'
	push	edx
	call	DWORD PTR __imp__sprintf

; 248  : 		sprintf(AnimFileInfoCol, "AnimFileInfo%d", i + 1);

	push	ebp
	lea	eax, DWORD PTR _AnimFileInfoCol$[esp+392]
	push	OFFSET FLAT:??_C@_0P@EKPH@AnimFileInfo?$CFd?$AA@ ; `string'
	push	eax
	call	DWORD PTR __imp__sprintf

; 249  : 		
; 250  : 		pMisslesSetting->GetString(nRow, AnimFileCol,			"", m_MissleRes.m_MissleRes[i].AnimFileName, 64, TRUE);

	mov	edx, DWORD PTR [esi]
	add	esp, 36					; 00000024H
	lea	eax, DWORD PTR [ebx-112]
	lea	ecx, DWORD PTR _AnimFileCol$[esp+364]
	push	1
	push	64					; 00000040H
	push	eax
	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	ecx
	push	edi
	mov	ecx, esi
	call	DWORD PTR [edx+36]

; 251  : 		pMisslesSetting->GetString(nRow, SndFileCol,			"", m_MissleRes.m_MissleRes[i].SndFileName, 64, TRUE);

	mov	edx, DWORD PTR [esi]
	push	1
	push	64					; 00000040H
	push	ebx
	lea	eax, DWORD PTR _SndFileCol$[esp+376]
	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	eax
	push	edi
	mov	ecx, esi
	call	DWORD PTR [edx+36]

; 252  : 		pMisslesSetting->GetString(nRow, AnimFileInfoCol,		"", szAnimFileInfo, 100, TRUE);

	mov	edx, DWORD PTR [esi]
	push	1
	lea	eax, DWORD PTR _szAnimFileInfo$[esp+368]
	push	100					; 00000064H
	push	eax
	lea	ecx, DWORD PTR _AnimFileInfoCol$[esp+376]
	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	ecx
	push	edi
	mov	ecx, esi
	call	DWORD PTR [edx+36]

; 253  : 		
; 254  : 		//m_MissleRes.m_MissleRes[i].nInterval = 1;
; 255  : 		//m_MissleRes.m_MissleRes[i].nDir = 16;
; 256  : 		//m_MissleRes.m_MissleRes[i].nTotalFrame = 100;
; 257  : 
; 258  :         pcszTemp = szAnimFileInfo;
; 259  :         m_MissleRes.m_MissleRes[i].nTotalFrame = KSG_StringGetInt(&pcszTemp, 100);

	lea	eax, DWORD PTR _pcszTemp$[esp+364]
	lea	edx, DWORD PTR _szAnimFileInfo$[esp+364]
	push	100					; 00000064H
	push	eax
	mov	DWORD PTR _pcszTemp$[esp+372], edx
	call	DWORD PTR __imp_?KSG_StringGetInt@@YAHPAPBDH@Z

; 260  :         KSG_StringSkipSymbol(&pcszTemp, ',');

	lea	ecx, DWORD PTR _pcszTemp$[esp+372]
	push	44					; 0000002cH
	push	ecx
	mov	DWORD PTR [ebx-12], eax
	call	DWORD PTR __imp_?KSG_StringSkipSymbol@@YA_NPAPBDH@Z

; 261  :         m_MissleRes.m_MissleRes[i].nDir = KSG_StringGetInt(&pcszTemp, 16);

	lea	edx, DWORD PTR _pcszTemp$[esp+380]
	push	16					; 00000010H
	push	edx
	call	DWORD PTR __imp_?KSG_StringGetInt@@YAHPAPBDH@Z
	mov	DWORD PTR [ebx-4], eax

; 262  :         KSG_StringSkipSymbol(&pcszTemp, ',');

	lea	eax, DWORD PTR _pcszTemp$[esp+388]
	push	44					; 0000002cH
	push	eax
	call	DWORD PTR __imp_?KSG_StringSkipSymbol@@YA_NPAPBDH@Z

; 263  :         m_MissleRes.m_MissleRes[i].nInterval = KSG_StringGetInt(&pcszTemp, 1);

	lea	ecx, DWORD PTR _pcszTemp$[esp+396]
	push	1
	push	ecx
	call	DWORD PTR __imp_?KSG_StringGetInt@@YAHPAPBDH@Z

; 264  : 		//sscanf(szAnimFileInfo, "%d,%d,%d", 
; 265  : 		//	&m_MissleRes.m_MissleRes[i].nTotalFrame,
; 266  : 		//	&m_MissleRes.m_MissleRes[i].nDir,
; 267  : 		//	&m_MissleRes.m_MissleRes[i].nInterval
; 268  :         //);
; 269  : 
; 270  : 		
; 271  : 		sprintf(AnimFileCol, "AnimFileB%d", i + 1);

	push	ebp
	lea	edx, DWORD PTR _AnimFileCol$[esp+408]
	push	OFFSET FLAT:??_C@_0M@LCCH@AnimFileB?$CFd?$AA@ ; `string'
	push	edx
	mov	DWORD PTR [ebx-8], eax
	call	DWORD PTR __imp__sprintf

; 272  : 		sprintf(SndFileCol,  "SndFileB%d", i + 1);

	push	ebp
	push	OFFSET FLAT:??_C@_0L@HHEO@SndFileB?$CFd?$AA@ ; `string'
	lea	eax, DWORD PTR _SndFileCol$[esp+424]
	push	eax
	call	DWORD PTR __imp__sprintf
	add	esp, 64					; 00000040H

; 273  : 		sprintf(AnimFileInfoCol, "AnimFileInfoB%d", i + 1);

	lea	ecx, DWORD PTR _AnimFileInfoCol$[esp+364]
	push	ebp
	push	OFFSET FLAT:??_C@_0BA@BPCH@AnimFileInfoB?$CFd?$AA@ ; `string'
	push	ecx
	call	DWORD PTR __imp__sprintf

; 274  : 		
; 275  : 		pMisslesSetting->GetString(nRow, AnimFileCol,			"", m_MissleRes.m_MissleRes[i + MAX_MISSLE_STATUS].AnimFileName, 64, TRUE);

	mov	edx, DWORD PTR [esi]
	add	esp, 12					; 0000000cH
	lea	eax, DWORD PTR [ebx+736]
	lea	ecx, DWORD PTR _AnimFileCol$[esp+364]
	push	1
	push	64					; 00000040H
	push	eax
	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	ecx
	push	edi
	mov	ecx, esi
	call	DWORD PTR [edx+36]

; 276  : 		pMisslesSetting->GetString(nRow, SndFileCol,			"", m_MissleRes.m_MissleRes[i + MAX_MISSLE_STATUS].SndFileName, 64, TRUE);

	mov	edx, DWORD PTR [esi]
	push	1
	lea	eax, DWORD PTR [ebx+848]
	push	64					; 00000040H
	push	eax
	lea	ecx, DWORD PTR _SndFileCol$[esp+376]
	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	ecx
	push	edi
	mov	ecx, esi
	call	DWORD PTR [edx+36]

; 277  : 		pMisslesSetting->GetString(nRow, AnimFileInfoCol,		"", szAnimFileInfo, 100, TRUE);

	mov	edx, DWORD PTR [esi]
	push	1
	lea	eax, DWORD PTR _szAnimFileInfo$[esp+368]
	push	100					; 00000064H
	push	eax
	lea	ecx, DWORD PTR _AnimFileInfoCol$[esp+376]
	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	ecx
	push	edi
	mov	ecx, esi
	call	DWORD PTR [edx+36]

; 278  : 		
; 279  : 		//m_MissleRes.m_MissleRes[i + MAX_MISSLE_STATUS].nInterval = 1;
; 280  : 		//m_MissleRes.m_MissleRes[i + MAX_MISSLE_STATUS].nDir = 16;
; 281  : 		//m_MissleRes.m_MissleRes[i + MAX_MISSLE_STATUS].nTotalFrame = 100;
; 282  : 		
; 283  :         pcszTemp = szAnimFileInfo;
; 284  :         m_MissleRes.m_MissleRes[i + MAX_MISSLE_STATUS].nTotalFrame = KSG_StringGetInt(&pcszTemp, 100);

	lea	eax, DWORD PTR _pcszTemp$[esp+364]
	lea	edx, DWORD PTR _szAnimFileInfo$[esp+364]
	push	100					; 00000064H
	push	eax
	mov	DWORD PTR _pcszTemp$[esp+372], edx
	call	DWORD PTR __imp_?KSG_StringGetInt@@YAHPAPBDH@Z

; 285  :         KSG_StringSkipSymbol(&pcszTemp, ',');

	lea	ecx, DWORD PTR _pcszTemp$[esp+372]
	push	44					; 0000002cH
	push	ecx
	mov	DWORD PTR [ebx+836], eax
	call	DWORD PTR __imp_?KSG_StringSkipSymbol@@YA_NPAPBDH@Z

; 286  :         m_MissleRes.m_MissleRes[i + MAX_MISSLE_STATUS].nDir = KSG_StringGetInt(&pcszTemp, 16);

	lea	edx, DWORD PTR _pcszTemp$[esp+380]
	push	16					; 00000010H
	push	edx
	call	DWORD PTR __imp_?KSG_StringGetInt@@YAHPAPBDH@Z
	mov	DWORD PTR [ebx+844], eax

; 287  :         KSG_StringSkipSymbol(&pcszTemp, ',');

	lea	eax, DWORD PTR _pcszTemp$[esp+388]
	push	44					; 0000002cH
	push	eax
	call	DWORD PTR __imp_?KSG_StringSkipSymbol@@YA_NPAPBDH@Z

; 288  :         m_MissleRes.m_MissleRes[i + MAX_MISSLE_STATUS].nInterval = KSG_StringGetInt(&pcszTemp, 1);

	lea	ecx, DWORD PTR _pcszTemp$[esp+396]
	push	1
	push	ecx
	call	DWORD PTR __imp_?KSG_StringGetInt@@YAHPAPBDH@Z
	add	esp, 40					; 00000028H
	inc	ebp
	mov	DWORD PTR [ebx+840], eax
	add	ebx, 212				; 000000d4H
	lea	edx, DWORD PTR [ebp-1]
	cmp	edx, 4
	jl	$L86217

; 289  : 
; 290  : 		//sscanf(szAnimFileInfo, "%d,%d,%d", 
; 291  : 		//	&m_MissleRes.m_MissleRes[i + MAX_MISSLE_STATUS].nTotalFrame,
; 292  : 		//	&m_MissleRes.m_MissleRes[i + MAX_MISSLE_STATUS].nDir,
; 293  : 		//	&m_MissleRes.m_MissleRes[i + MAX_MISSLE_STATUS].nInterval
; 294  :         //);
; 295  : 		
; 296  : 	}
; 297  : 	pMisslesSetting->GetInteger(nRow, "LoopPlay",			0, &m_MissleRes.m_bLoopAnim, TRUE);

	mov	ebx, DWORD PTR _this$[esp+364]
	mov	eax, DWORD PTR [esi]
	push	1
	lea	ecx, DWORD PTR [ebx+492]
	push	ecx
	push	0
	push	OFFSET FLAT:??_C@_08OBCD@LoopPlay?$AA@	; `string'
	push	edi
	mov	ecx, esi
	call	DWORD PTR [eax+48]

; 298  : 	pMisslesSetting->GetInteger(nRow, "SubLoop",		0, &m_MissleRes.m_bSubLoop, TRUE);

	mov	edx, DWORD PTR [esi]
	lea	eax, DWORD PTR [ebx+2244]
	push	1
	push	eax
	push	0
	push	OFFSET FLAT:??_C@_07MAEH@SubLoop?$AA@	; `string'
	push	edi
	mov	ecx, esi
	call	DWORD PTR [edx+48]

; 299  : 	pMisslesSetting->GetInteger(nRow, "SubStart",		0, &m_MissleRes.m_nSubStart, TRUE);

	mov	edx, DWORD PTR [esi]
	lea	eax, DWORD PTR [ebx+2248]
	push	1
	push	eax
	push	0
	push	OFFSET FLAT:??_C@_08CAJJ@SubStart?$AA@	; `string'
	push	edi
	mov	ecx, esi
	call	DWORD PTR [edx+48]

; 300  : 	pMisslesSetting->GetInteger(nRow, "SubStop",		0, &m_MissleRes.m_nSubStop, TRUE);

	mov	edx, DWORD PTR [esi]
	lea	eax, DWORD PTR [ebx+2252]
	push	1
	push	eax
	push	0
	push	OFFSET FLAT:??_C@_07CKM@SubStop?$AA@	; `string'
	push	edi
	mov	ecx, esi
	call	DWORD PTR [edx+48]

; 301  : 	pMisslesSetting->GetInteger(nRow, "ColFollowTarget",0, (int *)&m_bFollowNpcWhenCollid, TRUE);

	mov	edx, DWORD PTR [esi]
	add	ebx, 444				; 000001bcH
	push	1
	push	ebx
	push	0
	push	OFFSET FLAT:??_C@_0BA@PAFJ@ColFollowTarget?$AA@ ; `string'
	push	edi
	mov	ecx, esi
	call	DWORD PTR [edx+48]
	pop	esi
	pop	edi
	pop	ebp

; 302  : #endif
; 303  : 	return TRUE;

	mov	eax, 1
	pop	ebx

; 304  : }

	add	esp, 348				; 0000015cH
	ret	8
?GetInfoFromTabFile@KMissle@@QAEHPAVKITabFile@@H@Z ENDP	; KMissle::GetInfoFromTabFile
_TEXT	ENDS
;	COMDAT ??_GKIndexNode@@UAEPAXI@Z
_TEXT	SEGMENT
___flags$ = 8
??_GKIndexNode@@UAEPAXI@Z PROC NEAR			; KIndexNode::`scalar deleting destructor', COMDAT
	push	esi
	mov	esi, ecx
	call	??1KIndexNode@@UAE@XZ			; KIndexNode::~KIndexNode
	test	BYTE PTR ___flags$[esp], 1
	je	SHORT $L87233
	push	esi
	call	??3@YAXPAX@Z				; operator delete
	add	esp, 4
$L87233:
	mov	eax, esi
	pop	esi
	ret	4
??_GKIndexNode@@UAEPAXI@Z ENDP				; KIndexNode::`scalar deleting destructor'
_TEXT	ENDS
;	COMDAT ??1KIndexNode@@UAE@XZ
_TEXT	SEGMENT
??1KIndexNode@@UAE@XZ PROC NEAR				; KIndexNode::~KIndexNode, COMDAT
	mov	DWORD PTR [ecx], OFFSET FLAT:??_7KNode@@6B@ ; KNode::`vftable'
	ret	0
??1KIndexNode@@UAE@XZ ENDP				; KIndexNode::~KIndexNode
_TEXT	ENDS
PUBLIC	?Init@KMissle@@AAEHHHHHH@Z			; KMissle::Init
EXTRN	?Init@KMissleRes@@QAEHXZ:NEAR			; KMissleRes::Init
;	COMDAT ?Init@KMissle@@AAEHHHHHH@Z
_TEXT	SEGMENT
?Init@KMissle@@AAEHHHHHH@Z PROC NEAR			; KMissle::Init, COMDAT

; 308  : #ifndef _SERVER
; 309  : 	m_MissleRes.Init();

	add	ecx, 464				; 000001d0H
	call	?Init@KMissleRes@@QAEHXZ		; KMissleRes::Init

; 310  : #endif
; 311  : 	return	TRUE;

	mov	eax, 1

; 312  : }

	ret	20					; 00000014H
?Init@KMissle@@AAEHHHHHH@Z ENDP				; KMissle::Init
_TEXT	ENDS
PUBLIC	?OnVanish@KMissle@@AAEXXZ			; KMissle::OnVanish
PUBLIC	?OnCollision@KMissle@@AAEXXZ			; KMissle::OnCollision
PUBLIC	?OnFly@KMissle@@AAEXXZ				; KMissle::OnFly
PUBLIC	?OnWait@KMissle@@AAEXXZ				; KMissle::OnWait
PUBLIC	?DoFly@KMissle@@AAEXXZ				; KMissle::DoFly
PUBLIC	?PrePareFly@KMissle@@AAEHXZ			; KMissle::PrePareFly
PUBLIC	?DoVanish@KMissle@@AAEXXZ			; KMissle::DoVanish
PUBLIC	?ProcessCollision@KMissle@@AAEHXZ		; KMissle::ProcessCollision
PUBLIC	?Activate@KMissle@@QAEHXZ			; KMissle::Activate
EXTRN	?Map2Mps@KSubWorld@@QAEXHHHHHPAH0@Z:NEAR	; KSubWorld::Map2Mps
EXTRN	?SubWorld@@3PAVKSubWorld@@A:BYTE		; SubWorld
EXTRN	?Npc@@3PAVKNpc@@A:BYTE				; Npc
EXTRN	?FlyEvent@KSkill@@ABEXPAVKMissle@@@Z:NEAR	; KSkill::FlyEvent
EXTRN	?PlaySoundA@KMissleRes@@QAEXHHHH@Z:NEAR		; KMissleRes::PlaySoundA
EXTRN	?InstanceSkill@KSkillManager@@AAEPAVISkill@@KK@Z:NEAR ; KSkillManager::InstanceSkill
EXTRN	?g_SkillManager@@3VKSkillManager@@A:BYTE	; g_SkillManager
EXTRN	?MoveObject@KScenePlaceC@@QAEIIHHHHAAIH@Z:NEAR	; KScenePlaceC::MoveObject
;	COMDAT ?Activate@KMissle@@QAEHXZ
_TEXT	SEGMENT
_nSrcX2$86257 = -4
_nSrcY2$86258 = -8
_nSrcX$86276 = -8
_nSrcY$86277 = -4
?Activate@KMissle@@QAEHXZ PROC NEAR			; KMissle::Activate, COMDAT

; 323  : {	

	sub	esp, 8
	push	esi
	mov	esi, ecx

; 324  : 	if (m_nMissleId <= 0 || m_nRegionId < 0)

	mov	eax, DWORD PTR [esi+356]
	test	eax, eax
	jle	$L86244
	mov	eax, DWORD PTR [esi+364]
	test	eax, eax
	jl	$L86244

; 327  : 	}
; 328  : 	
; 329  : 	_ASSERT(m_nLauncher > 0);
; 330  : 	if (m_nLauncher <= 0)

	mov	eax, DWORD PTR [esi+332]
	test	eax, eax

; 331  : 		return 0;

	jle	$L86244

; 332  : 	
; 333  : 	//子弹的主人已经离开，So 子弹消亡
; 334  : 	if (!Npc[m_nLauncher].IsMatch(m_dwLauncherId) || Npc[m_nLauncher].m_SubWorldIndex != m_nSubWorldId || Npc[m_nLauncher].m_RegionIndex < 0)

	lea	ecx, DWORD PTR [eax+eax*2]
	shl	ecx, 5
	sub	ecx, eax
	lea	ecx, DWORD PTR [ecx+ecx*4]
	lea	edx, DWORD PTR [eax+ecx*8]
	mov	ecx, DWORD PTR [esi+336]
	lea	eax, DWORD PTR [eax+edx*2]
	shl	eax, 2
	cmp	ecx, DWORD PTR ?Npc@@3PAVKNpc@@A[eax]
	jne	$L86248
	mov	edx, DWORD PTR [esi+360]
	mov	ecx, DWORD PTR ?Npc@@3PAVKNpc@@A[eax+2380]
	cmp	ecx, edx
	jne	$L86248
	mov	ecx, DWORD PTR ?Npc@@3PAVKNpc@@A[eax+2384]
	test	ecx, ecx
	jl	$L86248

; 337  : 		return 0;	
; 338  : 	}
; 339  : 	
; 340  : 	//跟踪的目标人物已经不在该地图上时，自动清空
; 341  : 	if (m_nFollowNpcIdx > 0)

	mov	eax, DWORD PTR [esi+324]
	test	eax, eax
	jle	SHORT $L86250

; 342  : 	{
; 343  : 		if (!Npc[m_nFollowNpcIdx].IsMatch(m_dwFollowNpcID) || Npc[m_nFollowNpcIdx].m_SubWorldIndex != m_nSubWorldId)

	lea	ecx, DWORD PTR [eax+eax*2]
	push	ebx
	shl	ecx, 5
	sub	ecx, eax
	lea	ecx, DWORD PTR [ecx+ecx*4]
	lea	ecx, DWORD PTR [eax+ecx*8]
	lea	eax, DWORD PTR [eax+ecx*2]
	mov	ecx, DWORD PTR [esi+328]
	shl	eax, 2
	mov	ebx, DWORD PTR ?Npc@@3PAVKNpc@@A[eax]
	cmp	ecx, ebx
	pop	ebx
	jne	SHORT $L86251
	cmp	DWORD PTR ?Npc@@3PAVKNpc@@A[eax+2380], edx
	je	SHORT $L86250
$L86251:

; 344  : 		{
; 345  : 			m_nFollowNpcIdx = 0;

	mov	DWORD PTR [esi+324], 0
$L86250:

; 346  : 		}
; 347  : 	}
; 348  : 	
; 349  : 	eMissleStatus eLastStatus = m_eMissleStatus;
; 350  : 	
; 351  : 	//如果当前状态是子弹生命正常结束正准备消亡状态时，而不是消亡中或者已碰撞中
; 352  : 	if (
; 353  : 		m_nCurrentLife >= m_nLifeTime 
; 354  : 		&& m_eMissleStatus != MS_DoVanish 
; 355  : 		&& m_eMissleStatus != MS_DoCollision
; 356  : 		)

	mov	edx, DWORD PTR [esi+204]
	mov	eax, DWORD PTR [esi+92]
	cmp	edx, eax
	jl	SHORT $L86253
	mov	eax, DWORD PTR [esi+352]
	cmp	eax, 2
	je	SHORT $L86253
	cmp	eax, 3
	je	SHORT $L86253

; 357  : 	{
; 358  : 		if (m_bAutoExplode)

	mov	eax, DWORD PTR [esi+112]
	test	eax, eax
	je	SHORT $L86254

; 359  : 		{
; 360  : 			ProcessCollision();//处理碰撞

	mov	ecx, esi
	call	?ProcessCollision@KMissle@@AAEHXZ	; KMissle::ProcessCollision
$L86254:

; 361  : 		}
; 362  : 		DoVanish();

	mov	ecx, esi
	call	?DoVanish@KMissle@@AAEXXZ		; KMissle::DoVanish
$L86253:

; 363  : #ifdef _SERVER
; 364  : 		m_nCurrentLife ++;
; 365  : 		return 1;
; 366  : #endif
; 367  : 	}
; 368  : 	
; 369  : 	if (m_nCurrentLife == m_nStartLifeTime && m_eMissleStatus != MS_DoVanish)	

	mov	eax, DWORD PTR [esi+204]
	mov	ecx, DWORD PTR [esi+208]
	cmp	eax, ecx
	jne	$L86259
	cmp	DWORD PTR [esi+352], 2
	je	SHORT $L86259

; 370  : 	{
; 371  : 		if (PrePareFly())

	mov	ecx, esi
	call	?PrePareFly@KMissle@@AAEHXZ		; KMissle::PrePareFly
	test	eax, eax
	je	SHORT $L86256

; 372  : 		{
; 373  : #ifndef _SERVER
; 374  : 			int nSrcX2 = 0 ;
; 375  : 			int nSrcY2 = 0 ;
; 376  : 			SubWorld[0].Map2Mps(m_nRegionId, m_nCurrentMapX, m_nCurrentMapY,m_nXOffset, m_nYOffset, &nSrcX2, &nSrcY2);

	mov	eax, DWORD PTR [esi+232]
	lea	ecx, DWORD PTR _nSrcY2$86258[esp+12]
	lea	edx, DWORD PTR _nSrcX2$86257[esp+12]
	push	ecx
	mov	ecx, DWORD PTR [esi+228]
	push	edx
	mov	edx, DWORD PTR [esi+220]
	push	eax
	mov	eax, DWORD PTR [esi+216]
	push	ecx
	mov	ecx, DWORD PTR [esi+364]
	push	edx
	push	eax
	push	ecx
	mov	ecx, OFFSET FLAT:?SubWorld@@3PAVKSubWorld@@A
	mov	DWORD PTR _nSrcX2$86257[esp+40], 0
	mov	DWORD PTR _nSrcY2$86258[esp+40], 0
	call	?Map2Mps@KSubWorld@@QAEXHHHHHPAH0@Z	; KSubWorld::Map2Mps

; 377  : 			m_MissleRes.PlaySound(MS_DoFly, nSrcX2, nSrcY2, 0);

	mov	edx, DWORD PTR _nSrcY2$86258[esp+12]
	mov	eax, DWORD PTR _nSrcX2$86257[esp+12]
	push	0
	push	edx
	push	eax
	push	1
	lea	ecx, DWORD PTR [esi+464]
	call	?PlaySoundA@KMissleRes@@QAEXHHHH@Z	; KMissleRes::PlaySoundA

; 378  : 			//CreateSpecialEffect(MS_DoFly, nSrcX2, nSrcY2, m_nCurrentMapZ);
; 379  : #endif
; 380  : 			
; 381  : 			DoFly();

	mov	ecx, esi
	call	?DoFly@KMissle@@AAEXXZ			; KMissle::DoFly

; 382  : 		}
; 383  : 		else

	jmp	SHORT $L86259
$L86256:

; 384  : 			DoVanish();

	mov	ecx, esi
	call	?DoVanish@KMissle@@AAEXXZ		; KMissle::DoVanish
$L86259:

; 385  : 	}
; 386  : 	
; 387  : 	switch(m_eMissleStatus)
; 388  : 	{

	mov	eax, DWORD PTR [esi+352]
	cmp	eax, 3
	ja	$L86261
	jmp	DWORD PTR $L87264[eax*4]
$L86264:

; 389  : 	case MS_DoWait:
; 390  : 		{
; 391  : 			OnWait();

	mov	ecx, esi
	call	?OnWait@KMissle@@AAEXXZ			; KMissle::OnWait

; 392  : 		}
; 393  : 		break;

	jmp	$L86261
$L86265:

; 394  : 	case MS_DoFly:
; 395  : 		{
; 396  : 			OnFly();

	mov	ecx, esi
	call	?OnFly@KMissle@@AAEXXZ			; KMissle::OnFly

; 397  : 			if (m_bFlyEvent)

	mov	eax, DWORD PTR [esi+172]
	test	eax, eax
	je	SHORT $L86261

; 398  : 			{
; 399  : 				if ( (m_nCurrentLife - m_nStartLifeTime) % m_nFlyEventTime == 0 )

	mov	eax, DWORD PTR [esi+204]
	mov	ecx, DWORD PTR [esi+208]
	sub	eax, ecx
	cdq
	idiv	DWORD PTR [esi+176]
	test	edx, edx
	jne	SHORT $L86261

; 400  : 				{
; 401  : 					_ASSERT(m_nSkillId < MAX_SKILL && m_nLevel < MAX_SKILLLEVEL);
; 402  : 					if (m_nLevel  <= 0 ) return 0;

	mov	eax, DWORD PTR [esi+320]
	test	eax, eax
	jle	$L86244

; 403  : 					KSkill * pOrdinSkill = (KSkill *) g_SkillManager.GetSkill(m_nSkillId , m_nLevel);

	mov	ecx, DWORD PTR [esi+100]
	cmp	ecx, 500				; 000001f4H
	jg	SHORT $L86261
	test	ecx, ecx
	jle	SHORT $L86261
	test	eax, eax
	jle	SHORT $L86261
	cmp	eax, 64					; 00000040H
	jg	SHORT $L86261
	mov	edx, ecx
	shl	edx, 6
	add	edx, eax
	mov	edx, DWORD PTR ?g_SkillManager@@3VKSkillManager@@A[edx*4+7740]
	test	edx, edx
	je	SHORT $L87260
	mov	eax, edx
	jmp	SHORT $L87255
$L87260:
	push	eax
	push	ecx
	mov	ecx, OFFSET FLAT:?g_SkillManager@@3VKSkillManager@@A
	call	?InstanceSkill@KSkillManager@@AAEPAVISkill@@KK@Z ; KSkillManager::InstanceSkill
$L87255:

; 404  : 					if (pOrdinSkill)

	test	eax, eax
	je	SHORT $L86261

; 405  : 					{
; 406  : 						pOrdinSkill->FlyEvent(this);

	push	esi
	mov	ecx, eax
	call	?FlyEvent@KSkill@@ABEXPAVKMissle@@@Z	; KSkill::FlyEvent

; 407  : 					}
; 408  : 				}
; 409  : 			}
; 410  : 		}
; 411  : 		break;

	jmp	SHORT $L86261
$L86273:

; 412  : 	case MS_DoCollision:
; 413  : 		{
; 414  : 			OnCollision();

	mov	ecx, esi
	call	?OnCollision@KMissle@@AAEXXZ		; KMissle::OnCollision

; 415  : 		}
; 416  : 		break;

	jmp	SHORT $L86261
$L86274:

; 417  : 	case MS_DoVanish:
; 418  : 		{
; 419  : 			OnVanish();

	mov	ecx, esi
	call	?OnVanish@KMissle@@AAEXXZ		; KMissle::OnVanish
$L86261:

; 420  : 		}
; 421  : 		break;
; 422  : 	}
; 423  : 	
; 424  : #ifndef _SERVER
; 425  : 	//子弹未消亡掉
; 426  : 	if (m_nMissleId > 0)

	mov	eax, DWORD PTR [esi+356]
	test	eax, eax
	jle	$L86279

; 427  : 	{
; 428  : 		int nSrcX;
; 429  : 		int nSrcY;
; 430  : 		
; 431  : 		SubWorld[0].Map2Mps(m_nRegionId, m_nCurrentMapX, m_nCurrentMapY,m_nXOffset, m_nYOffset, &nSrcX, &nSrcY);

	mov	edx, DWORD PTR [esi+232]
	lea	eax, DWORD PTR _nSrcY$86277[esp+12]
	lea	ecx, DWORD PTR _nSrcX$86276[esp+12]
	push	eax
	mov	eax, DWORD PTR [esi+228]
	push	ecx
	mov	ecx, DWORD PTR [esi+220]
	push	edx
	mov	edx, DWORD PTR [esi+216]
	push	eax
	mov	eax, DWORD PTR [esi+364]
	push	ecx
	push	edx
	push	eax
	mov	ecx, OFFSET FLAT:?SubWorld@@3PAVKSubWorld@@A
	call	?Map2Mps@KSubWorld@@QAEXHHHHHPAH0@Z	; KSubWorld::Map2Mps

; 432  : 		if (m_usLightRadius && m_eMissleStatus != MS_DoWait)

	cmp	WORD PTR [esi+460], 0
	je	SHORT $L86278
	mov	eax, DWORD PTR [esi+352]
	test	eax, eax
	je	SHORT $L86278

; 433  : 			g_ScenePlace.MoveObject(CGOG_MISSLE, m_nMissleId, nSrcX, nSrcY, m_nCurrentMapZ, m_SceneID, IPOT_RL_OBJECT | IPOT_RL_LIGHT_PROP );

	mov	edx, DWORD PTR [esi+224]
	mov	eax, DWORD PTR _nSrcY$86277[esp+12]
	lea	ecx, DWORD PTR [esi+2932]
	push	10					; 0000000aH
	push	ecx
	mov	ecx, DWORD PTR _nSrcX$86276[esp+20]
	push	edx
	mov	edx, DWORD PTR [esi+356]
	push	eax
	push	ecx
	push	edx

; 434  : 		else

	jmp	SHORT $L87263
$L86278:

; 435  : 			g_ScenePlace.MoveObject(CGOG_MISSLE, m_nMissleId, nSrcX, nSrcY, m_nCurrentMapZ, m_SceneID, IPOT_RL_OBJECT);

	mov	ecx, DWORD PTR [esi+224]
	mov	edx, DWORD PTR _nSrcY$86277[esp+12]
	lea	eax, DWORD PTR [esi+2932]
	push	2
	push	eax
	mov	eax, DWORD PTR _nSrcX$86276[esp+20]
	push	ecx
	mov	ecx, DWORD PTR [esi+356]
	push	edx
	push	eax
	push	ecx
$L87263:
	push	9
	mov	ecx, OFFSET FLAT:?g_ScenePlace@@3VKScenePlaceC@@A
	call	?MoveObject@KScenePlaceC@@QAEIIHHHHAAIH@Z ; KScenePlaceC::MoveObject
$L86279:

; 436  : 	}
; 437  : 	
; 438  : #endif
; 439  : 	m_nCurrentLife ++;

	mov	eax, DWORD PTR [esi+204]
	inc	eax
	mov	DWORD PTR [esi+204], eax

; 440  : 	return 1;

	mov	eax, 1
	pop	esi

; 441  : }

	add	esp, 8
	ret	0
$L86248:

; 335  : 	{
; 336  : 		DoVanish();

	mov	ecx, esi
	call	?DoVanish@KMissle@@AAEXXZ		; KMissle::DoVanish
$L86244:

; 325  : 	{
; 326  : 		return  0 ;

	xor	eax, eax
	pop	esi

; 441  : }

	add	esp, 8
	ret	0
$L87264:
	DD	$L86264
	DD	$L86265
	DD	$L86274
	DD	$L86273
?Activate@KMissle@@QAEHXZ ENDP				; KMissle::Activate
_TEXT	ENDS
;	COMDAT ?OnWait@KMissle@@AAEXXZ
_TEXT	SEGMENT
?OnWait@KMissle@@AAEXXZ PROC NEAR			; KMissle::OnWait, COMDAT

; 452  : 	return;
; 453  : }

	ret	0
?OnWait@KMissle@@AAEXXZ ENDP				; KMissle::OnWait
_TEXT	ENDS
;	COMDAT ?OnCollision@KMissle@@AAEXXZ
_TEXT	SEGMENT
?OnCollision@KMissle@@AAEXXZ PROC NEAR			; KMissle::OnCollision, COMDAT

; 463  : 	return;	
; 464  : }

	ret	0
?OnCollision@KMissle@@AAEXXZ ENDP			; KMissle::OnCollision
_TEXT	ENDS
PUBLIC	?DoCollision@KMissle@@AAEXXZ			; KMissle::DoCollision
PUBLIC	?CheckNearestCollision@KMissle@@AAEHXZ		; KMissle::CheckNearestCollision
PUBLIC	?CheckCollision@KMissle@@AAEHXZ			; KMissle::CheckCollision
PUBLIC	?ProcessCollision@KMissle@@AAEHHHHHHH@Z		; KMissle::ProcessCollision
PUBLIC	?GetOffsetAxis@KMissle@@SAHHHHHHHAAH00@Z	; KMissle::GetOffsetAxis
EXTRN	?GetRelation@KNpcSet@@QAE?AW4NPC_RELATION@@HH@Z:NEAR ; KNpcSet::GetRelation
EXTRN	?NpcSet@@3VKNpcSet@@A:BYTE			; NpcSet
;	COMDAT ?CheckCollision@KMissle@@AAEHXZ
_TEXT	SEGMENT
$T87308 = -28
_nRMx$ = -16
_nRMy$ = -20
_nSearchRegion$ = -12
_nColMapY$ = -24
_i$86317 = -24
$T87345 = -8
_j$86321 = -28
$T87346 = -4
?CheckCollision@KMissle@@AAEHXZ PROC NEAR		; KMissle::CheckCollision, COMDAT

; 468  : {

	sub	esp, 28					; 0000001cH

; 469  : #ifdef TOOLVERSION
; 470  : 	return FALSE;
; 471  : #endif
; 472  : 	
; 473  : 	if (m_nCurrentMapZ <= MISSLE_MIN_COLLISION_ZHEIGHT) 

	xor	edx, edx
	push	ebx
	push	ebp
	push	esi
	push	edi
	mov	edi, ecx
	mov	eax, DWORD PTR [edi+224]
	cmp	eax, edx
	jg	SHORT $L86289
	pop	edi
	pop	esi
	pop	ebp

; 474  : 	{
; 475  : 		return -1;

	or	eax, -1
	pop	ebx

; 548  : }

	add	esp, 28					; 0000001cH
	ret	0
$L86289:

; 476  : 	}
; 477  : 	
; 478  : 	//子弹在高于一定高度时，不处理越界碰撞问题
; 479  : 	if (m_nCurrentMapZ > MISSLE_MAX_COLLISION_ZHEIGHT) return 0;

	cmp	eax, 20					; 00000014H
	jg	$L86320

; 480  : 	
; 481  : 	if (m_nRegionId < 0) 

	mov	ecx, DWORD PTR [edi+364]
	cmp	ecx, edx
	jge	SHORT $L86291
	pop	edi
	pop	esi
	pop	ebp

; 482  : 	{
; 483  : 		return -1;

	or	eax, -1
	pop	ebx

; 548  : }

	add	esp, 28					; 0000001cH
	ret	0
$L86291:

; 484  : 	}
; 485  : 
; 486  : 	int nAbsX = 0;
; 487  : 	int nAbsY = 0;
; 488  : 	int nCellWidth = CellWidth;
; 489  : 	int nCellHeight = CellHeight;
; 490  : 	_ASSERT(nCellWidth > 0 && nCellHeight > 0);
; 491  : 	int nRMx = 0;
; 492  : 	int nRMy = 0;
; 493  : 	int nSearchRegion = 0;
; 494  : 	int nNpcIdx = 0;
; 495  : 	int nDX = 0;
; 496  : 	int nDY = 0;
; 497  : 	int nNpcOffsetX = 0;
; 498  : 	int nNpcOffsetY = 0;
; 499  : 	BOOL bCollision = FALSE;
; 500  : 	
; 501  : 	int nColRegion = m_nRegionId;
; 502  : 	int nColMapX = m_nCurrentMapX;
; 503  : 	int nColMapY = m_nCurrentMapY;

	mov	eax, DWORD PTR [edi+220]
	mov	ebx, DWORD PTR [edi+216]
	mov	DWORD PTR _nColMapY$[esp+44], eax

; 504  : 		
; 505  : 	if (m_nCollideRange == 1)

	mov	eax, DWORD PTR [edi+144]
	cmp	eax, 1
	mov	DWORD PTR _nRMx$[esp+44], edx
	mov	DWORD PTR _nRMy$[esp+44], edx
	mov	DWORD PTR _nSearchRegion$[esp+44], edx
	jne	$L86309

; 506  : 	{
; 507  : 		if (m_bNeedReclaim && m_nCurrentLife >= m_nFirstReclaimTime && m_nCurrentLife <= m_nEndReclaimTime)

	cmp	DWORD PTR [edi+256], edx
	je	SHORT $L86310
	mov	eax, DWORD PTR [edi+204]
	mov	edx, DWORD PTR [edi+404]
	cmp	eax, edx
	jl	SHORT $L86310
	mov	edx, DWORD PTR [edi+408]
	cmp	eax, edx
	jg	SHORT $L86310

; 508  : 		{
; 509  : 			if (m_nCurrentLife == m_nEndReclaimTime) 

	jne	SHORT $L86311

; 510  : 				m_bNeedReclaim = FALSE;

	mov	DWORD PTR [edi+256], 0
$L86311:

; 511  : 			nNpcIdx = 	CheckNearestCollision();

	mov	ecx, edi
	call	?CheckNearestCollision@KMissle@@AAEHXZ	; KMissle::CheckNearestCollision

; 512  : 		}
; 513  : 		else

	jmp	$L87300
$L86310:

; 514  : 		{
; 515  : 			nNpcIdx = SubWorld[m_nSubWorldId].m_Region[nColRegion].FindNpc(nColMapX, nColMapY, m_nLauncher, m_eRelation);

	mov	edx, DWORD PTR [edi+332]
	mov	eax, DWORD PTR [edi+360]
	mov	DWORD PTR $T87308[esp+44], edx
	mov	edx, eax
	shl	edx, 6
	imul	ecx, 208				; 000000d0H
	add	edx, eax
	mov	ebp, DWORD PTR [edi+108]
	lea	edx, DWORD PTR [eax+edx*8]
	lea	edx, DWORD PTR [eax+edx*2]
	lea	eax, DWORD PTR [eax+edx*2]
	mov	eax, DWORD PTR ?SubWorld@@3PAVKSubWorld@@A[eax*4+8]
	add	eax, ecx
	mov	ecx, DWORD PTR [eax+176]
	mov	esi, DWORD PTR [eax+196]
	imul	ecx, DWORD PTR _nColMapY$[esp+44]
	add	ecx, esi
	cmp	BYTE PTR [ecx+ebx], 0
	je	SHORT $L86320
	mov	eax, DWORD PTR [eax+12]
	mov	esi, DWORD PTR [eax+4]
	neg	esi
	sbb	esi, esi
	and	esi, eax
	test	esi, esi
	je	SHORT $L86320
$L87303:
	mov	eax, DWORD PTR [esi+12]
	lea	ecx, DWORD PTR [eax+eax*2]
	shl	ecx, 5
	sub	ecx, eax
	lea	edx, DWORD PTR [ecx+ecx*4]
	lea	ecx, DWORD PTR [eax+edx*8]
	lea	ecx, DWORD PTR [eax+ecx*2]
	shl	ecx, 2
	cmp	DWORD PTR ?Npc@@3PAVKNpc@@A[ecx+2744], ebx
	jne	SHORT $L87306
	mov	edx, DWORD PTR _nColMapY$[esp+44]
	cmp	DWORD PTR ?Npc@@3PAVKNpc@@A[ecx+2748], edx
	jne	SHORT $L87306
	push	eax
	mov	eax, DWORD PTR $T87308[esp+48]
	push	eax
	mov	ecx, OFFSET FLAT:?NpcSet@@3VKNpcSet@@A
	call	?GetRelation@KNpcSet@@QAE?AW4NPC_RELATION@@HH@Z ; KNpcSet::GetRelation
	test	eax, ebp
	jne	SHORT $L87352
$L87306:
	mov	esi, DWORD PTR [esi+4]
	mov	eax, DWORD PTR [esi+4]
	test	eax, eax
	je	SHORT $L86320
	test	esi, esi
	jne	SHORT $L87303
$L86320:
	pop	edi
	pop	esi
	pop	ebp

; 543  : 				}
; 544  : 			}
; 545  : 	}
; 546  : 	
; 547  : 	return 0;

	xor	eax, eax
	pop	ebx

; 548  : }

	add	esp, 28					; 0000001cH
	ret	0
$L87352:

; 514  : 		{
; 515  : 			nNpcIdx = SubWorld[m_nSubWorldId].m_Region[nColRegion].FindNpc(nColMapX, nColMapY, m_nLauncher, m_eRelation);

	mov	eax, DWORD PTR [esi+12]
$L87300:

; 516  : 		}
; 517  : 
; 518  : 		if (nNpcIdx > 0)

	test	eax, eax
	jle	SHORT $L86320

; 519  : 		{ 
; 520  : 			if (m_nDamageRange == 1)//在目标Npc处碰撞

	cmp	DWORD PTR [edi+148], 1
	jne	$L86314

; 521  : 				ProcessCollision(m_nLauncher, Npc[nNpcIdx].m_RegionIndex , Npc[nNpcIdx].m_MapX, Npc[nNpcIdx].m_MapY, m_nDamageRange , m_eRelation);

	lea	ecx, DWORD PTR [eax+eax*2]
	shl	ecx, 5
	sub	ecx, eax
	lea	ecx, DWORD PTR [ecx+ecx*4]
	lea	edx, DWORD PTR [eax+ecx*8]
	mov	ecx, DWORD PTR [edi+108]
	push	ecx
	push	1
	lea	eax, DWORD PTR [eax+edx*2]
	shl	eax, 2
	mov	edx, DWORD PTR ?Npc@@3PAVKNpc@@A[eax+2748]
	mov	ecx, DWORD PTR ?Npc@@3PAVKNpc@@A[eax+2744]
	push	edx
	mov	edx, DWORD PTR ?Npc@@3PAVKNpc@@A[eax+2384]
	mov	eax, DWORD PTR [edi+332]
	push	ecx
	push	edx
	push	eax
	mov	ecx, edi
	call	?ProcessCollision@KMissle@@AAEHHHHHHH@Z	; KMissle::ProcessCollision

; 541  : 					DoCollision();//子弹作碰撞后的效果

	mov	ecx, edi
	call	?DoCollision@KMissle@@AAEXXZ		; KMissle::DoCollision
	pop	edi
	pop	esi
	pop	ebp

; 542  : 					return 1;

	mov	eax, 1
	pop	ebx

; 548  : }

	add	esp, 28					; 0000001cH
	ret	0
$L86309:

; 522  : 			else
; 523  : 				ProcessCollision();//在子弹位置处理碰撞
; 524  : 			DoCollision();//子弹作碰撞后的效果
; 525  : 			return 1;
; 526  : 		}
; 527  : 	}
; 528  : 	else
; 529  : 	{
; 530  : 		for (int i = -m_nCollideRange; i <= m_nCollideRange; i ++)

	mov	ebx, eax
	neg	ebx
	cmp	ebx, eax
	mov	DWORD PTR _i$86317[esp+44], ebx
	jg	SHORT $L86320
$L86318:

; 531  : 			for (int j = -m_nCollideRange; j <= m_nCollideRange; j ++)

	mov	esi, eax
	neg	esi
	cmp	esi, eax
	mov	DWORD PTR _j$86321[esp+44], esi
	jg	$L86319
$L86322:

; 532  : 			{
; 533  : 				if (!GetOffsetAxis(m_nSubWorldId, m_nRegionId, m_nCurrentMapX, m_nCurrentMapY, i , j , nSearchRegion, nRMx, nRMy))

	lea	ecx, DWORD PTR _nRMy$[esp+44]
	lea	edx, DWORD PTR _nRMx$[esp+44]
	push	ecx
	mov	ecx, DWORD PTR [edi+220]
	lea	eax, DWORD PTR _nSearchRegion$[esp+48]
	push	edx
	mov	edx, DWORD PTR [edi+216]
	push	eax
	mov	eax, DWORD PTR [edi+364]
	push	esi
	push	ebx
	push	ecx
	mov	ecx, DWORD PTR [edi+360]
	push	edx
	push	eax
	push	ecx
	call	?GetOffsetAxis@KMissle@@SAHHHHHHHAAH00@Z ; KMissle::GetOffsetAxis
	add	esp, 36					; 00000024H
	test	eax, eax
	je	$L86323

; 534  : 					continue;
; 535  : 				
; 536  : 				_ASSERT(nSearchRegion >= 0);
; 537  : 				nNpcIdx = SubWorld[m_nSubWorldId].m_Region[nSearchRegion].FindNpc(nRMx, nRMy, m_nLauncher, m_eRelation);

	mov	eax, DWORD PTR [edi+360]
	mov	ecx, DWORD PTR _nRMy$[esp+44]
	mov	esi, eax
	mov	edx, DWORD PTR [edi+332]
	shl	esi, 6
	add	esi, eax
	mov	DWORD PTR $T87345[esp+44], ecx
	mov	ebx, DWORD PTR [edi+108]
	mov	DWORD PTR $T87346[esp+44], edx
	lea	esi, DWORD PTR [eax+esi*8]
	mov	edx, DWORD PTR _nRMx$[esp+44]
	mov	ebp, edx
	lea	esi, DWORD PTR [eax+esi*2]
	lea	eax, DWORD PTR [eax+esi*2]
	mov	esi, DWORD PTR _nSearchRegion$[esp+44]
	imul	esi, 208				; 000000d0H
	mov	eax, DWORD PTR ?SubWorld@@3PAVKSubWorld@@A[eax*4+8]
	add	eax, esi
	mov	esi, DWORD PTR [eax+176]
	imul	esi, ecx
	add	esi, DWORD PTR [eax+196]
	cmp	BYTE PTR [esi+edx], 0
	je	SHORT $L87359
	mov	eax, DWORD PTR [eax+12]
	mov	esi, DWORD PTR [eax+4]
	neg	esi
	sbb	esi, esi
	and	esi, eax
	test	esi, esi
	je	SHORT $L87359
$L87339:
	mov	eax, DWORD PTR [esi+12]
	lea	ecx, DWORD PTR [eax+eax*2]
	shl	ecx, 5
	sub	ecx, eax
	lea	ecx, DWORD PTR [ecx+ecx*4]
	lea	edx, DWORD PTR [eax+ecx*8]
	lea	ecx, DWORD PTR [eax+edx*2]
	shl	ecx, 2
	cmp	DWORD PTR ?Npc@@3PAVKNpc@@A[ecx+2744], ebp
	jne	SHORT $L87342
	mov	edx, DWORD PTR $T87345[esp+44]
	cmp	DWORD PTR ?Npc@@3PAVKNpc@@A[ecx+2748], edx
	jne	SHORT $L87342
	push	eax
	mov	eax, DWORD PTR $T87346[esp+48]
	push	eax
	mov	ecx, OFFSET FLAT:?NpcSet@@3VKNpcSet@@A
	call	?GetRelation@KNpcSet@@QAE?AW4NPC_RELATION@@HH@Z ; KNpcSet::GetRelation
	test	eax, ebx
	jne	SHORT $L87353
$L87342:
	mov	esi, DWORD PTR [esi+4]
	mov	eax, DWORD PTR [esi+4]
	test	eax, eax
	je	SHORT $L87359
	test	esi, esi
	jne	SHORT $L87339

; 538  : 				if (nNpcIdx > 0)

	jmp	SHORT $L87359
$L87353:
	mov	eax, DWORD PTR [esi+12]
	test	eax, eax
	jg	SHORT $L86314
$L87359:
	mov	esi, DWORD PTR _j$86321[esp+44]
	mov	ebx, DWORD PTR _i$86317[esp+44]
$L86323:
	mov	eax, DWORD PTR [edi+144]
	inc	esi
	cmp	esi, eax
	mov	DWORD PTR _j$86321[esp+44], esi
	jle	$L86322
$L86319:

; 522  : 			else
; 523  : 				ProcessCollision();//在子弹位置处理碰撞
; 524  : 			DoCollision();//子弹作碰撞后的效果
; 525  : 			return 1;
; 526  : 		}
; 527  : 	}
; 528  : 	else
; 529  : 	{
; 530  : 		for (int i = -m_nCollideRange; i <= m_nCollideRange; i ++)

	mov	eax, DWORD PTR [edi+144]
	inc	ebx
	cmp	ebx, eax
	mov	DWORD PTR _i$86317[esp+44], ebx
	jle	$L86318
	pop	edi
	pop	esi
	pop	ebp

; 543  : 				}
; 544  : 			}
; 545  : 	}
; 546  : 	
; 547  : 	return 0;

	xor	eax, eax
	pop	ebx

; 548  : }

	add	esp, 28					; 0000001cH
	ret	0
$L86314:

; 539  : 				{
; 540  : 					ProcessCollision();//处理碰撞

	mov	ecx, edi
	call	?ProcessCollision@KMissle@@AAEHXZ	; KMissle::ProcessCollision

; 541  : 					DoCollision();//子弹作碰撞后的效果

	mov	ecx, edi
	call	?DoCollision@KMissle@@AAEXXZ		; KMissle::DoCollision
	pop	edi
	pop	esi
	pop	ebp

; 542  : 					return 1;

	mov	eax, 1
	pop	ebx

; 548  : }

	add	esp, 28					; 0000001cH
	ret	0
?CheckCollision@KMissle@@AAEHXZ ENDP			; KMissle::CheckCollision
_TEXT	ENDS
PUBLIC	?CheckBeyondRegion@KMissle@@AAEHHH@Z		; KMissle::CheckBeyondRegion
PUBLIC	?CreateSpecialEffect@KMissle@@QAEHW4eMissleStatus@@HHHH@Z ; KMissle::CreateSpecialEffect
PUBLIC	?Send@KWorldMsg@@QAEHKHHH@Z			; KWorldMsg::Send
EXTRN	?GetDistance@KSubWorld@@QAEHHHHH@Z:NEAR		; KSubWorld::GetDistance
EXTRN	?TestBarrier@KSubWorld@@QAEEHHHHHHH@Z:NEAR	; KSubWorld::TestBarrier
EXTRN	?GetMpsPos@KNpc@@QAEXPAH0@Z:NEAR		; KNpc::GetMpsPos
EXTRN	?g_nSin@@3PAHA:BYTE				; g_nSin
EXTRN	?g_nCos@@3PAHA:BYTE				; g_nCos
EXTRN	?AddRef@KRegion@@QAEHHHW4MOVE_OBJ_KIND@@@Z:NEAR	; KRegion::AddRef
EXTRN	?DecRef@KRegion@@QAEHHHW4MOVE_OBJ_KIND@@@Z:NEAR	; KRegion::DecRef
;	COMDAT ?OnFly@KMissle@@AAEXXZ
_TEXT	SEGMENT
_nPX$86336 = -4
_nPY$86337 = -16
_nSrcX2$86340 = -12
_nSrcY2$86341 = -8
_nSrcX3$86343 = -12
_nSrcY3$86344 = -8
_dx$86362 = -8
_dx$86376 = -8
_nSrcMpsX$86388 = -4
_nSrcMpsY$86389 = -12
_nDesMpsX$86390 = -16
_nDesMpsY$86391 = -8
_nSrcX4$86408 = -8
_nSrcY4$86409 = -4
?OnFly@KMissle@@AAEXXZ PROC NEAR			; KMissle::OnFly, COMDAT

; 556  : {

	sub	esp, 16					; 00000010H
	push	ebp
	push	esi
	mov	esi, ecx

; 557  : 	if (m_nInteruptTypeWhenMove)

	xor	ebp, ebp
	mov	eax, DWORD PTR [esi+128]
	cmp	eax, ebp
	je	$L86338

; 558  : 	{
; 559  : 		//当发送者位置移动了，不仅正从do_wait状态到do_fly状态的新子弹被消失掉
; 560  : 		//而且已进入dofly状态的旧的所属子弹也要强制消失掉
; 561  : 		if (m_nInteruptTypeWhenMove == Interupt_EndOldMissleLifeWhenMove)

	cmp	eax, 2
	jne	$L86338

; 562  : 		{
; 563  : 			int nPX, nPY;
; 564  : 			Npc[m_nLauncher].GetMpsPos(&nPX, &nPY);

	lea	eax, DWORD PTR _nPY$86337[esp+24]
	lea	ecx, DWORD PTR _nPX$86336[esp+24]
	push	eax
	mov	eax, DWORD PTR [esi+332]
	push	ecx
	lea	ecx, DWORD PTR [eax+eax*2]
	shl	ecx, 5
	sub	ecx, eax
	lea	edx, DWORD PTR [ecx+ecx*4]
	lea	ecx, DWORD PTR [eax+edx*8]
	lea	edx, DWORD PTR [eax+ecx*2]
	lea	ecx, DWORD PTR ?Npc@@3PAVKNpc@@A[edx*4]
	call	?GetMpsPos@KNpc@@QAEXPAH0@Z		; KNpc::GetMpsPos

; 565  : 			if (nPX != m_nLauncherSrcPX || nPY != m_nLauncherSrcPY)

	mov	eax, DWORD PTR _nPX$86336[esp+24]
	mov	ecx, DWORD PTR [esi+136]
	cmp	eax, ecx
	jne	SHORT $L86339
	mov	ecx, DWORD PTR _nPY$86337[esp+24]
	mov	eax, DWORD PTR [esi+140]
	cmp	ecx, eax
	je	SHORT $L86338
$L86339:

; 566  : 			{
; 567  : 				
; 568  : #ifndef _SERVER 
; 569  : 				int nSrcX2 = 0 ;
; 570  : 				int nSrcY2 = 0 ;
; 571  : 				SubWorld[0].Map2Mps(m_nRegionId, m_nCurrentMapX, m_nCurrentMapY,m_nXOffset, m_nYOffset, &nSrcX2, &nSrcY2);

	mov	ecx, DWORD PTR [esi+232]
	lea	edx, DWORD PTR _nSrcY2$86341[esp+24]
	lea	eax, DWORD PTR _nSrcX2$86340[esp+24]
	push	edx
	mov	edx, DWORD PTR [esi+228]
	push	eax
	mov	eax, DWORD PTR [esi+220]
	push	ecx
	mov	ecx, DWORD PTR [esi+216]
	push	edx
	mov	edx, DWORD PTR [esi+364]
	push	eax
	push	ecx
	push	edx
	mov	ecx, OFFSET FLAT:?SubWorld@@3PAVKSubWorld@@A
	mov	DWORD PTR _nSrcX2$86340[esp+52], ebp
	mov	DWORD PTR _nSrcY2$86341[esp+52], ebp
	call	?Map2Mps@KSubWorld@@QAEXHHHHHPAH0@Z	; KSubWorld::Map2Mps

; 572  : 				CreateSpecialEffect(MS_DoVanish, nSrcX2, nSrcY2, m_nCurrentMapZ);

	mov	eax, DWORD PTR [esi+224]
	mov	ecx, DWORD PTR _nSrcY2$86341[esp+24]
	mov	edx, DWORD PTR _nSrcX2$86340[esp+24]
	push	ebp
	push	eax
	push	ecx
	push	edx

; 573  : #endif
; 574  : 				
; 575  : 				DoVanish();
; 576  : 				return ;

	jmp	$L87450
$L86338:

; 577  : 			}
; 578  : 		}
; 579  : 	}
; 580  : 	
; 581  : 	//检测当前位置是否有障碍
; 582  : 	if (TestBarrier()) 

	mov	eax, DWORD PTR [esi+232]
	mov	ecx, DWORD PTR [esi+228]
	mov	edx, DWORD PTR [esi+220]
	push	ebp
	push	ebp
	push	eax
	mov	eax, DWORD PTR [esi+216]
	push	ecx
	push	edx
	mov	ecx, DWORD PTR [esi+364]
	push	eax
	mov	eax, DWORD PTR [esi+360]
	mov	edx, eax
	push	ecx
	shl	edx, 6
	add	edx, eax
	lea	ecx, DWORD PTR [eax+edx*8]
	lea	edx, DWORD PTR [eax+ecx*2]
	lea	eax, DWORD PTR [eax+edx*2]
	lea	ecx, DWORD PTR ?SubWorld@@3PAVKSubWorld@@A[eax*4]
	call	?TestBarrier@KSubWorld@@QAEEHHHHHHH@Z	; KSubWorld::TestBarrier
	and	eax, 255				; 000000ffH
	cmp	eax, 1
	je	SHORT $L87373
	cmp	eax, 3
	jne	SHORT $L86342
$L87373:

; 583  : 	{
; 584  : #ifndef _SERVER 
; 585  : 		int nSrcX3 = 0 ;
; 586  : 		int nSrcY3 = 0 ;
; 587  : 		SubWorld[0].Map2Mps(m_nRegionId, m_nCurrentMapX, m_nCurrentMapY,m_nXOffset, m_nYOffset, &nSrcX3, &nSrcY3);

	mov	eax, DWORD PTR [esi+232]
	lea	ecx, DWORD PTR _nSrcY3$86344[esp+24]
	lea	edx, DWORD PTR _nSrcX3$86343[esp+24]
	push	ecx
	mov	ecx, DWORD PTR [esi+228]
	push	edx
	mov	edx, DWORD PTR [esi+220]
	push	eax
	mov	eax, DWORD PTR [esi+216]
	push	ecx
	mov	ecx, DWORD PTR [esi+364]
	push	edx
	push	eax
	push	ecx
	mov	ecx, OFFSET FLAT:?SubWorld@@3PAVKSubWorld@@A
	mov	DWORD PTR _nSrcX3$86343[esp+52], ebp
	mov	DWORD PTR _nSrcY3$86344[esp+52], ebp
	call	?Map2Mps@KSubWorld@@QAEXHHHHHPAH0@Z	; KSubWorld::Map2Mps

; 588  : 		CreateSpecialEffect(MS_DoVanish, nSrcX3, nSrcY3, m_nCurrentMapZ);

	mov	edx, DWORD PTR [esi+224]
	mov	eax, DWORD PTR _nSrcY3$86344[esp+24]
	mov	ecx, DWORD PTR _nSrcX3$86343[esp+24]
	push	ebp
	push	edx
	push	eax
	push	ecx

; 589  : #endif
; 590  : 		DoVanish();
; 591  : 		return;

	jmp	$L87450
$L86342:

; 592  : 	}
; 593  : 	
; 594  : 	int nDOffsetX = 0;
; 595  : 	int nDOffsetY = 0;
; 596  : 	
; 597  : 	ZAxisMove();			

	mov	ecx, DWORD PTR [esi+348]
	push	ebx
	push	edi
	xor	edi, edi
	xor	ebx, ebx
	cmp	ecx, ebp
	je	SHORT $L87378
	mov	eax, DWORD PTR [esi+88]
	mov	edx, DWORD PTR [esi+84]
	add	edx, eax
	mov	DWORD PTR [esi+84], edx
	jns	SHORT $L87379
	mov	DWORD PTR [esi+84], ebp
$L87379:
	mov	edx, DWORD PTR [esi+84]
	sub	eax, ecx
	sar	edx, 10					; 0000000aH
	mov	DWORD PTR [esi+88], eax
	mov	DWORD PTR [esi+224], edx
$L87378:

; 598  : 	switch(this->m_eMoveKind)
; 599  : 	{

	mov	eax, DWORD PTR [esi+76]
	dec	eax
	cmp	eax, 99					; 00000063H
	ja	$L86403
	xor	ecx, ecx
	mov	cl, BYTE PTR $L87451[eax]
	jmp	DWORD PTR $L87452[ecx*4]
$L86353:

; 600  : 	case	MISSLE_MMK_Stand:							//	原地
; 601  : 		{
; 602  : 			
; 603  : 		}
; 604  : 		break;
; 605  : 	case	MISSLE_MMK_Parabola:						//	抛物线
; 606  : 	case	MISSLE_MMK_Line:							//	直线飞行
; 607  : 		{
; 608  : 			nDOffsetX    = (m_nSpeed * m_nXFactor);
; 609  : 			nDOffsetY	 = (m_nSpeed * m_nYFactor);
; 610  : 		}
; 611  : 		break;
; 612  : 	case MISSLE_MMK_RollBack:
; 613  : 		{
; 614  : 			if (!m_nTempParam1)	

	cmp	DWORD PTR [esi+412], ebp
	jne	SHORT $L86398

; 615  : 			{
; 616  : 				if (m_nTempParam2 <= m_nCurrentLife)

	mov	edx, DWORD PTR [esi+416]
	mov	eax, DWORD PTR [esi+204]
	cmp	edx, eax
	jg	SHORT $L86398

; 617  : 				{
; 618  : 					m_nXFactor = -m_nXFactor;

	mov	eax, DWORD PTR [esi+312]

; 619  : 					m_nYFactor = -m_nYFactor;

	mov	ecx, DWORD PTR [esi+316]
	neg	eax
	mov	DWORD PTR [esi+312], eax

; 620  : 					m_nTempParam1 = 1;
; 621  : 					m_nDir = m_nDir - MaxMissleDir / 2;

	mov	eax, DWORD PTR [esi+424]
	neg	ecx
	add	eax, -32				; ffffffe0H
	mov	DWORD PTR [esi+316], ecx
	mov	DWORD PTR [esi+412], 1
	mov	DWORD PTR [esi+424], eax

; 622  : 					if (m_nDir < 0) m_nDir += MaxMissleDir;

	jns	SHORT $L86398
	add	eax, 64					; 00000040H
	mov	DWORD PTR [esi+424], eax
$L86398:

; 623  : 				}
; 624  : 			}
; 625  : 
; 626  : 			nDOffsetX = (m_nSpeed * m_nXFactor);

	mov	eax, DWORD PTR [esi+96]
	mov	edi, DWORD PTR [esi+312]

; 627  : 			nDOffsetY = (m_nSpeed * m_nYFactor);

	mov	ebx, DWORD PTR [esi+316]
	imul	edi, eax
	imul	ebx, eax

; 628  : 		}break;

	jmp	$L86403
$L86358:

; 629  : 		//按照设计方案，随机飞行无法达到客服两端的同步
; 630  : 	case	MISSLE_MMK_Random:							//	随机飞行（暗黑二女巫的Charged Bolt）
; 631  : 		{
; 632  : 			
; 633  : 		}break;
; 634  : 		//参数一表示顺时针还是逆时针转动
; 635  : 		//参数二表示固定原心还是围饶发动者
; 636  : 		//dx = SinA * R
; 637  : 		//dy = Ctg(90-A/2).R = SinA*SinA / (1 + CosA) * R
; 638  : 	case	MISSLE_MMK_Circle:							//	环行飞行（围绕在身边，暗黑二刺客的集气）
; 639  : 		{
; 640  : 			int nPreAngle = m_nAngle - 1;

	mov	ebx, DWORD PTR [esi+428]
	lea	ebp, DWORD PTR [ebx-1]

; 641  : 			if (nPreAngle < 0) nPreAngle = MaxMissleDir - 1;

	test	ebp, ebp
	jge	SHORT $L86360
	mov	ebp, 63					; 0000003fH
$L86360:

; 642  : 			m_nDir = m_nAngle + (MaxMissleDir / 4);

	lea	eax, DWORD PTR [ebx+16]

; 643  : 			if (m_nDir >= MaxMissleDir) m_nDir = m_nDir - MaxMissleDir;

	cmp	eax, 64					; 00000040H
	mov	DWORD PTR [esi+424], eax
	jl	SHORT $L86361
	add	eax, -64				; ffffffc0H
	mov	DWORD PTR [esi+424], eax
$L86361:

; 644  : 			int dx = (m_nSpeed + 50)  * (g_DirCos(m_nAngle,MaxMissleDir) - g_DirCos(nPreAngle,MaxMissleDir)) ;

	test	ebx, ebx
	jl	SHORT $L87384
	cmp	ebx, 64					; 00000040H
	jge	SHORT $L87384
	mov	eax, ebx
	shl	eax, 6
	cdq
	and	edx, 63					; 0000003fH
	add	eax, edx
	sar	eax, 6
	mov	ecx, DWORD PTR ?g_nCos@@3PAHA[eax*4]
	jmp	SHORT $L87382
$L87384:
	or	ecx, -1
$L87382:
	test	ebp, ebp
	jl	SHORT $L87392
	cmp	ebp, 64					; 00000040H
	jge	SHORT $L87392
	mov	eax, ebp
	shl	eax, 6
	cdq
	and	edx, 63					; 0000003fH
	add	eax, edx
	sar	eax, 6
	mov	edx, DWORD PTR ?g_nCos@@3PAHA[eax*4]
	jmp	SHORT $L87390
$L87392:
	or	edx, -1
$L87390:
	mov	eax, DWORD PTR [esi+96]
	sub	ecx, edx
	lea	edi, DWORD PTR [eax+50]
	imul	ecx, edi

; 645  : 			int dy = (m_nSpeed + 50)  * (g_DirSin(m_nAngle,MaxMissleDir) - g_DirSin(nPreAngle, MaxMissleDir)) ; 

	test	ebx, ebx
	mov	DWORD PTR _dx$86362[esp+32], ecx
	jl	SHORT $L87399
	cmp	ebx, 64					; 00000040H
	jge	SHORT $L87399
	mov	eax, ebx
	shl	eax, 6
	cdq
	and	edx, 63					; 0000003fH
	add	eax, edx
	sar	eax, 6
	mov	ecx, DWORD PTR ?g_nSin@@3PAHA[eax*4]
	jmp	SHORT $L87397
$L87399:
	or	ecx, -1
$L87397:
	test	ebp, ebp
	jl	SHORT $L87407
	cmp	ebp, 64					; 00000040H
	jge	SHORT $L87407
	mov	eax, ebp
	shl	eax, 6
	cdq
	and	edx, 63					; 0000003fH
	add	eax, edx
	sar	eax, 6
	mov	eax, DWORD PTR ?g_nSin@@3PAHA[eax*4]
	jmp	SHORT $L87405
$L87407:
	or	eax, -1
$L87405:
	sub	ecx, eax

; 646  : 			
; 647  : 			if (m_nParam2) //原地转

	mov	eax, DWORD PTR [esi+396]
	imul	ecx, edi
	test	eax, eax
	mov	ebx, ecx

; 648  : 			{
; 649  : 				nDOffsetX = dx;
; 650  : 				nDOffsetY = dy;
; 651  : 			}
; 652  : 			else			// 围绕着发送者转

	jne	$L86367

; 653  : 			{
; 654  : 				int nOldRegion = m_nRegionId;
; 655  : 				CurRegion.DecRef(m_nCurrentMapX, m_nCurrentMapY, obj_missle);

	mov	edx, DWORD PTR [esi+220]
	mov	eax, DWORD PTR [esi+216]
	push	2
	push	edx
	push	eax
	mov	eax, DWORD PTR [esi+360]
	mov	edx, eax
	mov	ecx, DWORD PTR [esi+364]
	shl	edx, 6
	add	edx, eax
	mov	edi, ecx
	lea	edx, DWORD PTR [eax+edx*8]
	lea	edx, DWORD PTR [eax+edx*2]
	lea	eax, DWORD PTR [eax+edx*2]
	lea	edx, DWORD PTR [ecx+ecx*2]
	lea	edx, DWORD PTR [ecx+edx*4]
	mov	ecx, DWORD PTR ?SubWorld@@3PAVKSubWorld@@A[eax*4+8]
	shl	edx, 4
	add	ecx, edx
	call	?DecRef@KRegion@@QAEHHHW4MOVE_OBJ_KIND@@@Z ; KRegion::DecRef

; 656  : 				m_nRegionId		= Npc[m_nLauncher].m_RegionIndex;

	mov	eax, DWORD PTR [esi+332]

; 657  : 				m_nCurrentMapX	= Npc[m_nLauncher].m_MapX;
; 658  : 				m_nCurrentMapY	= Npc[m_nLauncher].m_MapY;
; 659  : 				m_nXOffset		= Npc[m_nLauncher].m_OffX;
; 660  : 				m_nYOffset		= Npc[m_nLauncher].m_OffY;
; 661  : 				CurRegion.AddRef(m_nCurrentMapX, m_nCurrentMapY, obj_missle);

	push	2
	lea	ecx, DWORD PTR [eax+eax*2]
	shl	ecx, 5
	sub	ecx, eax
	lea	ecx, DWORD PTR [ecx+ecx*4]
	lea	edx, DWORD PTR [eax+ecx*8]
	lea	eax, DWORD PTR [eax+edx*2]
	shl	eax, 2
	mov	ecx, DWORD PTR ?Npc@@3PAVKNpc@@A[eax+2384]
	mov	DWORD PTR [esi+364], ecx
	mov	edx, DWORD PTR ?Npc@@3PAVKNpc@@A[eax+2744]
	mov	DWORD PTR [esi+216], edx
	mov	ecx, DWORD PTR ?Npc@@3PAVKNpc@@A[eax+2748]
	mov	DWORD PTR [esi+220], ecx
	mov	edx, DWORD PTR ?Npc@@3PAVKNpc@@A[eax+2756]
	mov	DWORD PTR [esi+228], edx
	mov	eax, DWORD PTR ?Npc@@3PAVKNpc@@A[eax+2760]
	mov	edx, DWORD PTR [esi+216]
	mov	DWORD PTR [esi+232], eax
	mov	eax, DWORD PTR [esi+360]
	push	ecx
	mov	ecx, eax
	push	edx
	shl	ecx, 6
	add	ecx, eax
	lea	edx, DWORD PTR [eax+ecx*8]
	lea	ecx, DWORD PTR [eax+edx*2]
	lea	edx, DWORD PTR [eax+ecx*2]
	mov	eax, DWORD PTR [esi+364]
	lea	ecx, DWORD PTR [eax+eax*2]
	lea	eax, DWORD PTR [eax+ecx*4]
	mov	ecx, DWORD PTR ?SubWorld@@3PAVKSubWorld@@A[edx*4+8]
	shl	eax, 4
	add	ecx, eax
	call	?AddRef@KRegion@@QAEHHHW4MOVE_OBJ_KIND@@@Z ; KRegion::AddRef

; 662  : 				
; 663  : 				if (nOldRegion != m_nRegionId)

	mov	eax, DWORD PTR [esi+364]
	cmp	edi, eax
	je	SHORT $L86367

; 664  : 				{
; 665  : 					SubWorld[m_nSubWorldId].m_WorldMessage.Send(GWM_MISSLE_CHANGE_REGION, nOldRegion, m_nRegionId, m_nMissleId);

	mov	ecx, DWORD PTR [esi+356]
	push	ecx
	push	eax
	mov	eax, DWORD PTR [esi+360]
	push	edi
	mov	edx, eax
	push	4002					; 00000fa2H
	shl	edx, 6
	add	edx, eax
	lea	ecx, DWORD PTR [eax+edx*8]
	lea	edx, DWORD PTR [eax+ecx*2]
	lea	eax, DWORD PTR [eax+edx*2]
	lea	ecx, DWORD PTR ?SubWorld@@3PAVKSubWorld@@A[eax*4+8300]
	call	?Send@KWorldMsg@@QAEHKHHH@Z		; KWorldMsg::Send
$L86367:

; 666  : 				}  
; 667  : 				nDOffsetX = dx;
; 668  : 				nDOffsetY = dy;
; 669  : 			}
; 670  : 			
; 671  : 			//顺时针还是逆时针
; 672  : 			if (m_nParam1)

	mov	eax, DWORD PTR [esi+392]
	mov	edi, DWORD PTR _dx$86362[esp+32]
	test	eax, eax
	je	SHORT $L86382
$L87449:

; 673  : 			{
; 674  : 				m_nAngle ++;

	mov	ecx, DWORD PTR [esi+428]
	inc	ecx

; 675  : 				if (m_nAngle >= MaxMissleDir)

	mov	eax, ecx
	mov	DWORD PTR [esi+428], ecx
	cmp	eax, 64					; 00000040H
	jl	$L87446

; 676  : 					m_nAngle = 0;

	mov	DWORD PTR [esi+428], 0

; 677  : 			}
; 678  : 			else

	jmp	$L87446
$L86382:

; 679  : 			{
; 680  : 				m_nAngle --;

	mov	eax, DWORD PTR [esi+428]
	dec	eax
	mov	DWORD PTR [esi+428], eax

; 681  : 				if (m_nAngle < 0 )

	jns	$L87446

; 682  : 					m_nAngle = MaxMissleDir - 1;

	mov	DWORD PTR [esi+428], 63			; 0000003fH

; 683  : 			}
; 684  : 			
; 685  : 		}
; 686  : 		break;

	jmp	$L87446
$L86372:

; 687  : 		
; 688  : 		//参数一表示顺时针还是逆时针转动
; 689  : 		//参数二表示固定原心还是围饶发动者
; 690  : 	case	MISSLE_MMK_Helix:							//	阿基米德螺旋线（暗黑二游侠的Bless Hammer）
; 691  : 		{
; 692  : 			int nPreAngle = m_nAngle - 1;

	mov	edi, DWORD PTR [esi+428]
	lea	ebp, DWORD PTR [edi-1]

; 693  : 			if (nPreAngle < 0) 

	test	ebp, ebp
	jge	SHORT $L86374

; 694  : 			{
; 695  : 				nPreAngle = MaxMissleDir -1;

	mov	ebp, 63					; 0000003fH
$L86374:

; 696  : 			}
; 697  : 			m_nDir = m_nAngle + (MaxMissleDir / 4);

	lea	eax, DWORD PTR [edi+16]

; 698  : 			if (m_nDir >= MaxMissleDir) m_nDir = m_nDir - MaxMissleDir;

	cmp	eax, 64					; 00000040H
	mov	DWORD PTR [esi+424], eax
	jl	SHORT $L86375
	add	eax, -64				; ffffffc0H
	mov	DWORD PTR [esi+424], eax
$L86375:

; 699  : 			
; 700  : 			int dx = (m_nSpeed + m_nCurrentLife + 50)  * (g_DirCos(m_nAngle,MaxMissleDir) - g_DirCos(nPreAngle, MaxMissleDir)) ;

	test	edi, edi
	jl	SHORT $L87414
	cmp	edi, 64					; 00000040H
	jge	SHORT $L87414
	mov	eax, edi
	shl	eax, 6
	cdq
	and	edx, 63					; 0000003fH
	add	eax, edx
	sar	eax, 6
	mov	ecx, DWORD PTR ?g_nCos@@3PAHA[eax*4]
	jmp	SHORT $L87412
$L87414:
	or	ecx, -1
$L87412:
	test	ebp, ebp
	jl	SHORT $L87422
	cmp	ebp, 64					; 00000040H
	jge	SHORT $L87422
	mov	eax, ebp
	shl	eax, 6
	cdq
	and	edx, 63					; 0000003fH
	add	eax, edx
	sar	eax, 6
	mov	eax, DWORD PTR ?g_nCos@@3PAHA[eax*4]
	jmp	SHORT $L87420
$L87422:
	or	eax, -1
$L87420:
	mov	edx, DWORD PTR [esi+204]
	mov	ebx, DWORD PTR [esi+96]
	sub	ecx, eax
	lea	ebx, DWORD PTR [edx+ebx+50]
	imul	ecx, ebx

; 701  : 			int dy = (m_nSpeed + m_nCurrentLife + 50)  * (g_DirSin(m_nAngle,MaxMissleDir) - g_DirSin(nPreAngle,MaxMissleDir)) ; 

	test	edi, edi
	mov	DWORD PTR _dx$86376[esp+32], ecx
	jl	SHORT $L87429
	cmp	edi, 64					; 00000040H
	jge	SHORT $L87429
	mov	eax, edi
	shl	eax, 6
	cdq
	and	edx, 63					; 0000003fH
	add	eax, edx
	sar	eax, 6
	mov	ecx, DWORD PTR ?g_nSin@@3PAHA[eax*4]
	jmp	SHORT $L87427
$L87429:
	or	ecx, -1
$L87427:
	test	ebp, ebp
	jl	SHORT $L87437
	cmp	ebp, 64					; 00000040H
	jge	SHORT $L87437
	mov	eax, ebp
	shl	eax, 6
	cdq
	and	edx, 63					; 0000003fH
	add	eax, edx
	sar	eax, 6
	mov	eax, DWORD PTR ?g_nSin@@3PAHA[eax*4]
	jmp	SHORT $L87435
$L87437:
	or	eax, -1
$L87435:
	sub	ecx, eax

; 702  : 			
; 703  : 			if (m_nParam2) //原地转

	mov	eax, DWORD PTR [esi+396]
	imul	ecx, ebx
	test	eax, eax
	mov	ebx, ecx

; 704  : 			{
; 705  : 				nDOffsetX = dx;
; 706  : 				nDOffsetY = dy;
; 707  : 			}
; 708  : 			else			// 围绕着发送者转

	jne	$L86381

; 709  : 			{
; 710  : 				int nOldRegion = m_nRegionId;
; 711  : 				CurRegion.DecRef(m_nCurrentMapX, m_nCurrentMapY, obj_missle);

	mov	eax, DWORD PTR [esi+220]
	mov	edx, DWORD PTR [esi+216]
	push	2
	push	eax
	mov	eax, DWORD PTR [esi+360]
	push	edx
	mov	edx, eax
	mov	ecx, DWORD PTR [esi+364]
	shl	edx, 6
	add	edx, eax
	mov	edi, ecx
	lea	edx, DWORD PTR [eax+edx*8]
	lea	edx, DWORD PTR [eax+edx*2]
	lea	eax, DWORD PTR [eax+edx*2]
	lea	edx, DWORD PTR [ecx+ecx*2]
	lea	edx, DWORD PTR [ecx+edx*4]
	mov	ecx, DWORD PTR ?SubWorld@@3PAVKSubWorld@@A[eax*4+8]
	shl	edx, 4
	add	ecx, edx
	call	?DecRef@KRegion@@QAEHHHW4MOVE_OBJ_KIND@@@Z ; KRegion::DecRef

; 712  : 				m_nRegionId		= Npc[m_nLauncher].m_RegionIndex;

	mov	eax, DWORD PTR [esi+332]

; 713  : 				m_nCurrentMapX	= Npc[m_nLauncher].m_MapX;
; 714  : 				m_nCurrentMapY	= Npc[m_nLauncher].m_MapY;
; 715  : 				m_nXOffset		= Npc[m_nLauncher].m_OffX;
; 716  : 				m_nYOffset		= Npc[m_nLauncher].m_OffY;
; 717  : 				CurRegion.AddRef(m_nCurrentMapX, m_nCurrentMapY, obj_missle);

	push	2
	lea	ecx, DWORD PTR [eax+eax*2]
	shl	ecx, 5
	sub	ecx, eax
	lea	ecx, DWORD PTR [ecx+ecx*4]
	lea	edx, DWORD PTR [eax+ecx*8]
	lea	eax, DWORD PTR [eax+edx*2]
	shl	eax, 2
	mov	ecx, DWORD PTR ?Npc@@3PAVKNpc@@A[eax+2384]
	mov	DWORD PTR [esi+364], ecx
	mov	edx, DWORD PTR ?Npc@@3PAVKNpc@@A[eax+2744]
	mov	DWORD PTR [esi+216], edx
	mov	ecx, DWORD PTR ?Npc@@3PAVKNpc@@A[eax+2748]
	mov	DWORD PTR [esi+220], ecx
	mov	edx, DWORD PTR ?Npc@@3PAVKNpc@@A[eax+2756]
	mov	DWORD PTR [esi+228], edx
	mov	eax, DWORD PTR ?Npc@@3PAVKNpc@@A[eax+2760]
	mov	edx, DWORD PTR [esi+216]
	mov	DWORD PTR [esi+232], eax
	mov	eax, DWORD PTR [esi+360]
	push	ecx
	mov	ecx, eax
	push	edx
	shl	ecx, 6
	add	ecx, eax
	lea	edx, DWORD PTR [eax+ecx*8]
	lea	ecx, DWORD PTR [eax+edx*2]
	lea	edx, DWORD PTR [eax+ecx*2]
	mov	eax, DWORD PTR [esi+364]
	lea	ecx, DWORD PTR [eax+eax*2]
	lea	eax, DWORD PTR [eax+ecx*4]
	mov	ecx, DWORD PTR ?SubWorld@@3PAVKSubWorld@@A[edx*4+8]
	shl	eax, 4
	add	ecx, eax
	call	?AddRef@KRegion@@QAEHHHW4MOVE_OBJ_KIND@@@Z ; KRegion::AddRef

; 718  : 				
; 719  : 				if (nOldRegion != m_nRegionId)

	mov	eax, DWORD PTR [esi+364]
	cmp	edi, eax
	je	SHORT $L86381

; 720  : 				{
; 721  : 					SubWorld[m_nSubWorldId].m_WorldMessage.Send(GWM_MISSLE_CHANGE_REGION, nOldRegion, m_nRegionId, m_nMissleId);

	mov	ecx, DWORD PTR [esi+356]
	push	ecx
	push	eax
	mov	eax, DWORD PTR [esi+360]
	push	edi
	mov	edx, eax
	push	4002					; 00000fa2H
	shl	edx, 6
	add	edx, eax
	lea	ecx, DWORD PTR [eax+edx*8]
	lea	edx, DWORD PTR [eax+ecx*2]
	lea	eax, DWORD PTR [eax+edx*2]
	lea	ecx, DWORD PTR ?SubWorld@@3PAVKSubWorld@@A[eax*4+8300]
	call	?Send@KWorldMsg@@QAEHKHHH@Z		; KWorldMsg::Send
$L86381:

; 722  : 				}  
; 723  : 				nDOffsetX = dx;
; 724  : 				nDOffsetY = dy;
; 725  : 			}
; 726  : 			
; 727  : 			if (m_nParam1)

	mov	eax, DWORD PTR [esi+392]
	mov	edi, DWORD PTR _dx$86376[esp+32]
	test	eax, eax
	je	$L86382

; 728  : 			{
; 729  : 				m_nAngle ++;
; 730  : 				if (m_nAngle >= MaxMissleDir)
; 731  : 					m_nAngle = 0;
; 732  : 			}
; 733  : 			else

	jmp	$L87449
$L86386:

; 734  : 			{
; 735  : 				m_nAngle --;
; 736  : 				if (m_nAngle < 0 )
; 737  : 					m_nAngle = MaxMissleDir - 1;
; 738  : 			}
; 739  : 		}
; 740  : 		break; 
; 741  : 	case	MISSLE_MMK_Follow:							//	跟踪目标飞行
; 742  : 		{
; 743  : 			int nDistance = 0;
; 744  : 			int nSrcMpsX = 0;
; 745  : 			int nSrcMpsY = 0;
; 746  : 			int nDesMpsX = 0;
; 747  : 			int nDesMpsY = 0;
; 748  : 			
; 749  : 			SubWorld[m_nSubWorldId].Map2Mps(m_nRegionId, m_nCurrentMapX, m_nCurrentMapY, m_nXOffset, m_nYOffset, &nSrcMpsX, &nSrcMpsY);

	mov	eax, DWORD PTR [esi+232]
	lea	ecx, DWORD PTR _nSrcMpsY$86389[esp+32]
	lea	edx, DWORD PTR _nSrcMpsX$86388[esp+32]
	push	ecx
	mov	ecx, DWORD PTR [esi+228]
	push	edx
	mov	edx, DWORD PTR [esi+220]
	push	eax
	mov	eax, DWORD PTR [esi+216]
	push	ecx
	push	edx
	mov	ecx, DWORD PTR [esi+364]
	push	eax
	mov	eax, DWORD PTR [esi+360]
	mov	edx, eax
	push	ecx
	shl	edx, 6
	add	edx, eax
	mov	DWORD PTR _nSrcMpsX$86388[esp+60], ebp
	mov	DWORD PTR _nSrcMpsY$86389[esp+60], ebp
	mov	DWORD PTR _nDesMpsX$86390[esp+60], ebp
	lea	ecx, DWORD PTR [eax+edx*8]
	mov	DWORD PTR _nDesMpsY$86391[esp+60], ebp
	lea	edx, DWORD PTR [eax+ecx*2]
	lea	eax, DWORD PTR [eax+edx*2]
	lea	ecx, DWORD PTR ?SubWorld@@3PAVKSubWorld@@A[eax*4]
	call	?Map2Mps@KSubWorld@@QAEXHHHHHPAH0@Z	; KSubWorld::Map2Mps

; 750  : 			SubWorld[m_nSubWorldId].Map2Mps(Npc[m_nFollowNpcIdx].m_RegionIndex, Npc[m_nFollowNpcIdx].m_MapX, Npc[m_nFollowNpcIdx].m_MapY, Npc[m_nFollowNpcIdx].m_OffX, Npc[m_nFollowNpcIdx].m_OffY, &nDesMpsX, &nDesMpsY);

	mov	eax, DWORD PTR [esi+324]
	lea	ecx, DWORD PTR [eax+eax*2]
	shl	ecx, 5
	sub	ecx, eax
	lea	ecx, DWORD PTR [ecx+ecx*4]
	lea	edx, DWORD PTR [eax+ecx*8]
	lea	ecx, DWORD PTR _nDesMpsY$86391[esp+32]
	push	ecx
	lea	eax, DWORD PTR [eax+edx*2]
	lea	edx, DWORD PTR _nDesMpsX$86390[esp+36]
	shl	eax, 2
	push	edx
	mov	ecx, DWORD PTR ?Npc@@3PAVKNpc@@A[eax+2760]
	mov	edx, DWORD PTR ?Npc@@3PAVKNpc@@A[eax+2756]
	push	ecx
	mov	ecx, DWORD PTR ?Npc@@3PAVKNpc@@A[eax+2748]
	push	edx
	mov	edx, DWORD PTR ?Npc@@3PAVKNpc@@A[eax+2744]
	mov	eax, DWORD PTR ?Npc@@3PAVKNpc@@A[eax+2384]
	push	ecx
	push	edx
	push	eax
	mov	eax, DWORD PTR [esi+360]
	mov	ecx, eax
	shl	ecx, 6
	add	ecx, eax
	lea	edx, DWORD PTR [eax+ecx*8]
	lea	ecx, DWORD PTR [eax+edx*2]
	lea	edx, DWORD PTR [eax+ecx*2]
	lea	ecx, DWORD PTR ?SubWorld@@3PAVKSubWorld@@A[edx*4]
	call	?Map2Mps@KSubWorld@@QAEXHHHHHPAH0@Z	; KSubWorld::Map2Mps

; 751  : 			nDistance = SubWorld[m_nSubWorldId].GetDistance(nSrcMpsX, nSrcMpsY, nDesMpsX, nDesMpsY);

	mov	eax, DWORD PTR _nDesMpsY$86391[esp+32]
	mov	ecx, DWORD PTR _nDesMpsX$86390[esp+32]
	mov	edx, DWORD PTR _nSrcMpsY$86389[esp+32]
	push	eax
	mov	eax, DWORD PTR _nSrcMpsX$86388[esp+36]
	push	ecx
	push	edx
	push	eax
	mov	eax, DWORD PTR [esi+360]
	mov	ecx, eax
	shl	ecx, 6
	add	ecx, eax
	lea	edx, DWORD PTR [eax+ecx*8]
	lea	ecx, DWORD PTR [eax+edx*2]
	lea	edx, DWORD PTR [eax+ecx*2]
	lea	ecx, DWORD PTR ?SubWorld@@3PAVKSubWorld@@A[edx*4]
	call	?GetDistance@KSubWorld@@QAEHHHHH@Z	; KSubWorld::GetDistance
	mov	ecx, eax

; 752  : 			
; 753  : 			if (nDistance != 0)

	cmp	ecx, ebp
	je	SHORT $L86403

; 754  : 			{
; 755  : 				int nXFactor = ((nDesMpsX - nSrcMpsY ) << 10) / nDistance;
; 756  : 				int nYFactor = ((nDesMpsY - nSrcMpsY ) << 10) / nDistance;
; 757  : 				int dx		 = nXFactor * m_nSpeed;
; 758  : 				int dy		 = nYFactor * m_nSpeed;	
; 759  : 				nDOffsetX	 = dx;

	mov	eax, DWORD PTR _nDesMpsX$86390[esp+32]
	mov	ebx, DWORD PTR _nSrcMpsY$86389[esp+32]
	sub	eax, ebx
	mov	ebp, DWORD PTR [esi+96]
	shl	eax, 10					; 0000000aH
	cdq
	idiv	ecx
	mov	edi, eax

; 760  : 				nDOffsetY	 = dy;

	mov	eax, DWORD PTR _nDesMpsY$86391[esp+32]
	sub	eax, ebx
	imul	edi, ebp
	shl	eax, 10					; 0000000aH
	cdq
	idiv	ecx
	mov	ebx, eax
	imul	ebx, ebp
$L87446:

; 761  : 			}
; 762  : 			
; 763  : 		}break;

	xor	ebp, ebp
$L86403:

; 764  : 		
; 765  : 	case	MISSLE_MMK_Motion:							//	玩家动作类
; 766  : 		{
; 767  : 			
; 768  : 		}break;
; 769  : 		
; 770  : 	case MISSLE_MMK_SingleLine:						//	必中的单一直线飞行魔法
; 771  : 		{
; 772  : 			//单一必中类子弹，类式于传奇以及其它的同类网络游戏中的基本直线魔法			
; 773  : #ifdef _SERVER
; 774  : 			
; 775  : #else
; 776  : 			int x = m_nXOffset;
; 777  : 			int y = m_nYOffset;
; 778  : 			int dx = (m_nSpeed * m_nXFactor);
; 779  : 			int dy = (m_nSpeed * m_nYFactor);
; 780  : 			nDOffsetX	=  dx;//* m_nCurrentLife;
; 781  : 			nDOffsetY	=  dy;//* m_nCurrentLife;
; 782  : 			
; 783  : #endif
; 784  : 		}
; 785  : 		break;
; 786  : 	default:
; 787  : 		_ASSERT(0);
; 788  : 		
; 789  : 	}
; 790  : 	
; 791  : 	//
; 792  : 	if (CheckBeyondRegion(nDOffsetX, nDOffsetY))

	push	ebx
	push	edi
	mov	ecx, esi
	call	?CheckBeyondRegion@KMissle@@AAEHHH@Z	; KMissle::CheckBeyondRegion
	pop	edi
	pop	ebx
	test	eax, eax
	je	SHORT $L86405

; 793  : 	{
; 794  : 		if (CheckCollision() == -1) 

	mov	ecx, esi
	call	?CheckCollision@KMissle@@AAEHXZ		; KMissle::CheckCollision
	cmp	eax, -1
	jne	SHORT $L86410

; 795  : 		{
; 796  : 			if (m_bAutoExplode)

	cmp	DWORD PTR [esi+112], ebp
	je	SHORT $L86407

; 797  : 			{
; 798  : 				ProcessCollision();//处理碰撞

	mov	ecx, esi
	call	?ProcessCollision@KMissle@@AAEHXZ	; KMissle::ProcessCollision
$L86407:

; 799  : 			}
; 800  : #ifndef _SERVER 
; 801  : 			int nSrcX4 = 0 ;
; 802  : 			int nSrcY4 = 0 ;
; 803  : 			SubWorld[0].Map2Mps(m_nRegionId, m_nCurrentMapX, m_nCurrentMapY,m_nXOffset, m_nYOffset, &nSrcX4, &nSrcY4);

	mov	edx, DWORD PTR [esi+232]
	lea	eax, DWORD PTR _nSrcY4$86409[esp+24]
	lea	ecx, DWORD PTR _nSrcX4$86408[esp+24]
	push	eax
	mov	eax, DWORD PTR [esi+228]
	push	ecx
	mov	ecx, DWORD PTR [esi+220]
	push	edx
	mov	edx, DWORD PTR [esi+216]
	push	eax
	mov	eax, DWORD PTR [esi+364]
	push	ecx
	push	edx
	push	eax
	mov	ecx, OFFSET FLAT:?SubWorld@@3PAVKSubWorld@@A
	mov	DWORD PTR _nSrcX4$86408[esp+52], ebp
	mov	DWORD PTR _nSrcY4$86409[esp+52], ebp
	call	?Map2Mps@KSubWorld@@QAEXHHHHHPAH0@Z	; KSubWorld::Map2Mps

; 804  : 			CreateSpecialEffect(MS_DoVanish, nSrcX4, nSrcY4, m_nCurrentMapZ);

	mov	ecx, DWORD PTR [esi+224]
	mov	edx, DWORD PTR _nSrcY4$86409[esp+24]
	mov	eax, DWORD PTR _nSrcX4$86408[esp+24]
	push	ebp
	push	ecx
	push	edx
	push	eax
$L87450:
	push	2
	mov	ecx, esi
	call	?CreateSpecialEffect@KMissle@@QAEHW4eMissleStatus@@HHHH@Z ; KMissle::CreateSpecialEffect
$L86405:

; 805  : #endif
; 806  : 			DoVanish();
; 807  : 			return;
; 808  : 		}
; 809  : 	}
; 810  : 	else//如果子弹飞行过程中进入了一个无效的Region则子弹自动消亡
; 811  : 	{
; 812  : 		DoVanish();

	mov	ecx, esi
	call	?DoVanish@KMissle@@AAEXXZ		; KMissle::DoVanish
$L86410:
	pop	esi
	pop	ebp

; 813  : 	}
; 814  : }

	add	esp, 16					; 00000010H
	ret	0
	npad	2
$L87452:
	DD	$L86398
	DD	$L86358
	DD	$L86372
	DD	$L86386
	DD	$L86353
	DD	$L86403
$L87451:
	DB	0
	DB	5
	DB	1
	DB	2
	DB	3
	DB	5
	DB	0
	DB	0
	DB	5
	DB	5
	DB	5
	DB	5
	DB	5
	DB	5
	DB	5
	DB	5
	DB	5
	DB	5
	DB	5
	DB	5
	DB	5
	DB	5
	DB	5
	DB	5
	DB	5
	DB	5
	DB	5
	DB	5
	DB	5
	DB	5
	DB	5
	DB	5
	DB	5
	DB	5
	DB	5
	DB	5
	DB	5
	DB	5
	DB	5
	DB	5
	DB	5
	DB	5
	DB	5
	DB	5
	DB	5
	DB	5
	DB	5
	DB	5
	DB	5
	DB	5
	DB	5
	DB	5
	DB	5
	DB	5
	DB	5
	DB	5
	DB	5
	DB	5
	DB	5
	DB	5
	DB	5
	DB	5
	DB	5
	DB	5
	DB	5
	DB	5
	DB	5
	DB	5
	DB	5
	DB	5
	DB	5
	DB	5
	DB	5
	DB	5
	DB	5
	DB	5
	DB	5
	DB	5
	DB	5
	DB	5
	DB	5
	DB	5
	DB	5
	DB	5
	DB	5
	DB	5
	DB	5
	DB	5
	DB	5
	DB	5
	DB	5
	DB	5
	DB	5
	DB	5
	DB	5
	DB	5
	DB	5
	DB	5
	DB	5
	DB	4
?OnFly@KMissle@@AAEXXZ ENDP				; KMissle::OnFly
_TEXT	ENDS
PUBLIC	??_7KWorldMsgNode@@6B@				; KWorldMsgNode::`vftable'
PUBLIC	??_GKWorldMsgNode@@UAEPAXI@Z			; KWorldMsgNode::`scalar deleting destructor'
PUBLIC	??_EKWorldMsgNode@@UAEPAXI@Z			; KWorldMsgNode::`vector deleting destructor'
EXTRN	??2@YAPAXI@Z:NEAR				; operator new
;	COMDAT ??_7KWorldMsgNode@@6B@
; File ..\engine\src\KNode.h
CONST	SEGMENT
??_7KWorldMsgNode@@6B@ DD FLAT:??_EKWorldMsgNode@@UAEPAXI@Z ; KWorldMsgNode::`vftable'
CONST	ENDS
;	COMDAT ?Send@KWorldMsg@@QAEHKHHH@Z
_TEXT	SEGMENT
_dwMsgType$ = 8
_nParam1$ = 12
_nParam2$ = 16
_nParam3$ = 20
?Send@KWorldMsg@@QAEHKHHH@Z PROC NEAR			; KWorldMsg::Send, COMDAT

; 71   : {

	push	esi
	mov	esi, ecx

; 72   : 	KWorldMsgNode *pNode = NULL;
; 73   : 
; 74   : 	pNode = new KWorldMsgNode;

	push	28					; 0000001cH
	call	??2@YAPAXI@Z				; operator new
	add	esp, 4
	test	eax, eax
	je	SHORT $L87483

; 77   : 
; 78   : 	pNode->m_dwMsgType	= dwMsgType;

	mov	ecx, DWORD PTR _dwMsgType$[esp]

; 79   : 	pNode->m_nParam[0]	= nParam1;

	mov	edx, DWORD PTR _nParam1$[esp]
	mov	DWORD PTR [eax+4], 0
	mov	DWORD PTR [eax+8], 0
	mov	DWORD PTR [eax], OFFSET FLAT:??_7KWorldMsgNode@@6B@ ; KWorldMsgNode::`vftable'
	mov	DWORD PTR [eax+12], ecx

; 80   : 	pNode->m_nParam[1]	= nParam2;

	mov	ecx, DWORD PTR _nParam2$[esp]
	mov	DWORD PTR [eax+16], edx

; 81   : 	pNode->m_nParam[2]	= nParam3;

	mov	edx, DWORD PTR _nParam3$[esp]
	mov	DWORD PTR [eax+20], ecx

; 82   : 
; 83   : 	m_LocalMsgQueue.AddTail(pNode);

	lea	ecx, DWORD PTR [esi+12]
	mov	DWORD PTR [eax+24], edx
	mov	edx, DWORD PTR [ecx+8]
	test	edx, edx
	je	SHORT $L87482
	mov	DWORD PTR [eax+8], edx
	mov	DWORD PTR [eax+4], ecx
	mov	edx, DWORD PTR [ecx+8]
	mov	DWORD PTR [edx+4], eax
	mov	DWORD PTR [ecx+8], eax
$L87482:

; 84   : 	return TRUE;

	mov	eax, 1
	pop	esi

; 85   : }

	ret	16					; 00000010H
$L87483:

; 75   : 	if (!pNode)
; 76   : 		return FALSE;

	xor	eax, eax
	pop	esi

; 85   : }

	ret	16					; 00000010H
?Send@KWorldMsg@@QAEHKHHH@Z ENDP			; KWorldMsg::Send
_TEXT	ENDS
PUBLIC	??1KWorldMsgNode@@UAE@XZ			; KWorldMsgNode::~KWorldMsgNode
;	COMDAT ??_GKWorldMsgNode@@UAEPAXI@Z
_TEXT	SEGMENT
___flags$ = 8
??_GKWorldMsgNode@@UAEPAXI@Z PROC NEAR			; KWorldMsgNode::`scalar deleting destructor', COMDAT
	push	esi
	mov	esi, ecx
	call	??1KWorldMsgNode@@UAE@XZ		; KWorldMsgNode::~KWorldMsgNode
	test	BYTE PTR ___flags$[esp], 1
	je	SHORT $L87487
	push	esi
	call	??3@YAXPAX@Z				; operator delete
	add	esp, 4
$L87487:
	mov	eax, esi
	pop	esi
	ret	4
??_GKWorldMsgNode@@UAEPAXI@Z ENDP			; KWorldMsgNode::`scalar deleting destructor'
_TEXT	ENDS
;	COMDAT ??1KWorldMsgNode@@UAE@XZ
_TEXT	SEGMENT
??1KWorldMsgNode@@UAE@XZ PROC NEAR			; KWorldMsgNode::~KWorldMsgNode, COMDAT
	mov	DWORD PTR [ecx], OFFSET FLAT:??_7KNode@@6B@ ; KNode::`vftable'
	ret	0
??1KWorldMsgNode@@UAE@XZ ENDP				; KWorldMsgNode::~KWorldMsgNode
_TEXT	ENDS
;	COMDAT ?OnVanish@KMissle@@AAEXXZ
_TEXT	SEGMENT
?OnVanish@KMissle@@AAEXXZ PROC NEAR			; KMissle::OnVanish, COMDAT

; 824  : 	
; 825  : }

	ret	0
?OnVanish@KMissle@@AAEXXZ ENDP				; KMissle::OnVanish
_TEXT	ENDS
PUBLIC	?Paint@KMissle@@QAEXXZ				; KMissle::Paint
EXTRN	__ftol:NEAR
EXTRN	__fltused:NEAR
EXTRN	?Draw@KMissleRes@@QAEHHHHHHHH@Z:NEAR		; KMissleRes::Draw
;	COMDAT ?Paint@KMissle@@QAEXXZ
_TEXT	SEGMENT
_nSrcX$ = -8
_nSrcY$ = -12
?Paint@KMissle@@QAEXXZ PROC NEAR			; KMissle::Paint, COMDAT

; 829  : {

	sub	esp, 12					; 0000000cH
	push	esi
	mov	esi, ecx
	push	edi

; 830  : 	if (m_nMissleId <= 0 ) return;

	mov	eax, DWORD PTR [esi+356]
	test	eax, eax
	jle	$L86424

; 831  : 	int nSrcX;
; 832  : 	int nSrcY;
; 833  : 	SubWorld[0].Map2Mps(m_nRegionId, m_nCurrentMapX, m_nCurrentMapY,m_nXOffset, m_nYOffset, &nSrcX, &nSrcY);

	mov	edx, DWORD PTR [esi+232]
	lea	eax, DWORD PTR _nSrcY$[esp+20]
	lea	ecx, DWORD PTR _nSrcX$[esp+20]
	push	eax
	mov	eax, DWORD PTR [esi+228]
	push	ecx
	mov	ecx, DWORD PTR [esi+220]
	push	edx
	mov	edx, DWORD PTR [esi+216]
	push	eax
	mov	eax, DWORD PTR [esi+364]
	push	ecx
	push	edx
	push	eax
	mov	ecx, OFFSET FLAT:?SubWorld@@3PAVKSubWorld@@A
	call	?Map2Mps@KSubWorld@@QAEXHHHHHPAH0@Z	; KSubWorld::Map2Mps

; 834  : 	
; 835  : 	if (!m_nZAcceleration)

	mov	eax, DWORD PTR [esi+348]
	test	eax, eax
	jne	SHORT $L86420

; 836  : 	{
; 837  : 		m_MissleRes.Draw(m_eMissleStatus, nSrcX, nSrcY, m_nCurrentMapZ, m_nDir,m_nLifeTime - m_nStartLifeTime,  m_nCurrentLife - m_nStartLifeTime );

	mov	eax, DWORD PTR [esi+208]
	mov	ecx, DWORD PTR [esi+204]
	mov	edx, DWORD PTR [esi+92]
	sub	ecx, eax
	sub	edx, eax
	mov	eax, DWORD PTR [esi+424]
	push	ecx
	mov	ecx, DWORD PTR [esi+224]
	push	edx
	mov	edx, DWORD PTR _nSrcY$[esp+28]
	push	eax
	mov	eax, DWORD PTR _nSrcX$[esp+32]
	push	ecx
	mov	ecx, DWORD PTR [esi+352]
	push	edx
	lea	edi, DWORD PTR [esi+464]
	push	eax
	push	ecx
	mov	ecx, edi
	call	?Draw@KMissleRes@@QAEHHHHHHHH@Z		; KMissleRes::Draw

; 838  : 	}
; 839  : 	else

	jmp	$L86421
$L86420:

; 840  : 	{
; 841  : 		int nDirIndex = g_GetDirIndex(0,0,m_nXFactor, m_nYFactor);

	mov	edi, DWORD PTR [esi+316]
	push	ebx
	push	ebp
	mov	ebp, DWORD PTR [esi+312]
	or	ebx, -1
	test	ebp, ebp
	jne	SHORT $L87510
	test	edi, edi
	jne	SHORT $L87510
	or	eax, -1
	jmp	SHORT $L87508
$L87510:
	mov	edx, ebp
	mov	eax, edi
	imul	edx, ebp
	imul	eax, edi
	add	edx, eax
	mov	DWORD PTR -4+[esp+28], edx
	fild	DWORD PTR -4+[esp+28]
	fsqrt
	call	__ftol
	mov	ecx, eax
	test	ecx, ecx
	jne	SHORT $L87512
	or	eax, -1
	jmp	SHORT $L87508
$L87512:
	mov	eax, edi
	shl	eax, 10					; 0000000aH
	cdq
	idiv	ecx
	xor	edx, edx
	mov	ecx, OFFSET FLAT:?g_nSin@@3PAHA		; g_nSin
$L87516:
	cmp	eax, DWORD PTR [ecx]
	jg	SHORT $L87551
	mov	ebx, edx
	add	ecx, 4
	inc	edx
	cmp	ecx, OFFSET FLAT:?g_nSin@@3PAHA+128
	jl	SHORT $L87516
$L87551:
	test	ebp, ebp
	jle	SHORT $L87520
	mov	ecx, 63					; 0000003fH
	sub	ecx, ebx
	mov	ebx, ecx
$L87520:
	mov	eax, ebx
$L87508:

; 842  : 		int nDir = g_DirIndex2Dir(nDirIndex, 64);
; 843  : 		m_MissleRes.Draw(m_eMissleStatus, nSrcX, nSrcY, m_nCurrentMapZ, nDir,m_nLifeTime - m_nStartLifeTime,  m_nCurrentLife - m_nStartLifeTime );

	mov	ecx, DWORD PTR [esi+208]
	mov	edx, DWORD PTR [esi+204]
	sub	edx, ecx
	lea	edi, DWORD PTR [esi+464]
	push	edx
	mov	edx, DWORD PTR [esi+92]
	shl	eax, 6
	sub	edx, ecx
	mov	ecx, DWORD PTR _nSrcY$[esp+32]
	sar	eax, 6
	push	edx
	mov	edx, DWORD PTR _nSrcX$[esp+36]
	push	eax
	mov	eax, DWORD PTR [esi+224]
	push	eax
	mov	eax, DWORD PTR [esi+352]
	push	ecx
	push	edx
	push	eax
	mov	ecx, edi
	call	?Draw@KMissleRes@@QAEHHHHHHHH@Z		; KMissleRes::Draw
	pop	ebp
	pop	ebx
$L86421:

; 844  : 	}
; 845  : 	
; 846  : 	//对于客户端，直到子弹及其产生的效果全部播放完才终止并删除掉!
; 847  : 	if (m_MissleRes.m_bHaveEnd && (m_MissleRes.SpecialMovieIsAllEnd()))

	mov	eax, DWORD PTR [esi+488]
	test	eax, eax
	je	SHORT $L86424
	mov	edi, DWORD PTR [edi+4]
	mov	eax, DWORD PTR [edi+4]
	test	eax, eax
	je	SHORT $L87547
	test	edi, edi
	jne	SHORT $L86424
$L87547:

; 848  : 		SubWorld[m_nSubWorldId].m_WorldMessage.Send(GWM_MISSLE_DEL, m_nMissleId);

	mov	ecx, DWORD PTR [esi+356]
	mov	esi, DWORD PTR [esi+360]
	mov	edx, esi
	push	0
	shl	edx, 6
	add	edx, esi
	push	0
	push	ecx
	push	4001					; 00000fa1H
	lea	eax, DWORD PTR [esi+edx*8]
	lea	ecx, DWORD PTR [esi+eax*2]
	lea	edx, DWORD PTR [esi+ecx*2]
	lea	ecx, DWORD PTR ?SubWorld@@3PAVKSubWorld@@A[edx*4+8300]
	call	?Send@KWorldMsg@@QAEHKHHH@Z		; KWorldMsg::Send
$L86424:
	pop	edi
	pop	esi

; 849  : }

	add	esp, 12					; 0000000cH
	ret	0
?Paint@KMissle@@QAEXXZ ENDP				; KMissle::Paint
_TEXT	ENDS
;	COMDAT ?CheckBeyondRegion@KMissle@@AAEHHH@Z
_TEXT	SEGMENT
_nDOffsetX$ = 8
_nDOffsetY$ = 12
_nOldRegion$ = -4
_nNewMapX$ = 8
_nNewMapY$ = 12
?CheckBeyondRegion@KMissle@@AAEHHH@Z PROC NEAR		; KMissle::CheckBeyondRegion, COMDAT

; 854  : {

	sub	esp, 20					; 00000014H
	push	ebx
	push	ebp
	push	esi
	mov	esi, ecx
	push	edi

; 855  : 	if (m_nRegionId < 0) 

	mov	edi, DWORD PTR [esi+364]
	test	edi, edi
	jge	SHORT $L86430
	pop	edi
	pop	esi
	pop	ebp

; 856  : 		return FALSE;

	xor	eax, eax
	pop	ebx

; 958  : }

	add	esp, 20					; 00000014H
	ret	8
$L86430:

; 857  : 	//未动
; 858  : 	if (nDOffsetX == 0 && nDOffsetY == 0) return TRUE;

	mov	ebp, DWORD PTR _nDOffsetX$[esp+32]
	test	ebp, ebp
	jne	SHORT $L86431
	mov	eax, DWORD PTR _nDOffsetY$[esp+32]
	test	eax, eax
	je	$L86461
$L86431:

; 859  : 
; 860  : 	if (abs(nDOffsetX) > CellWidth) 

	mov	ecx, DWORD PTR [esi+360]
	mov	eax, ecx
	shl	eax, 6
	add	eax, ecx
	lea	edx, DWORD PTR [ecx+eax*8]
	lea	eax, DWORD PTR [ecx+edx*2]
	lea	ecx, DWORD PTR [ecx+eax*2]
	mov	eax, ebp
	shl	ecx, 2
	cdq
	mov	ebx, DWORD PTR ?SubWorld@@3PAVKSubWorld@@A[ecx+8276]
	xor	eax, edx
	mov	DWORD PTR -16+[esp+36], ebx
	sub	eax, edx
	shl	ebx, 10					; 0000000aH
	cmp	eax, ebx
	mov	DWORD PTR -12+[esp+36], ebx
	jle	SHORT $L86432
	pop	edi
	pop	esi
	pop	ebp

; 861  : 	{
; 862  : 		return FALSE;

	xor	eax, eax
	pop	ebx

; 958  : }

	add	esp, 20					; 00000014H
	ret	8
$L86432:

; 863  : 	}
; 864  : 
; 865  : 	if (abs(nDOffsetY) > CellHeight) 

	mov	eax, DWORD PTR _nDOffsetY$[esp+32]
	mov	ebx, DWORD PTR ?SubWorld@@3PAVKSubWorld@@A[ecx+8280]
	cdq
	xor	eax, edx
	mov	DWORD PTR -8+[esp+36], ebx
	shl	ebx, 10					; 0000000aH
	sub	eax, edx
	mov	DWORD PTR -20+[esp+36], ebx
	cmp	eax, ebx
	jle	SHORT $L86433
	pop	edi
	pop	esi
	pop	ebp

; 866  : 	{
; 867  : 		return FALSE;

	xor	eax, eax
	pop	ebx

; 958  : }

	add	esp, 20					; 00000014H
	ret	8
$L86433:

; 868  : 	}
; 869  : 
; 870  : 	int nOldRegion		= m_nRegionId;
; 871  : 	int nNewXOffset		= m_nXOffset + nDOffsetX;

	mov	ebx, DWORD PTR [esi+228]

; 872  : 	int nNewYOffset		= m_nYOffset + nDOffsetY;

	mov	eax, DWORD PTR _nDOffsetY$[esp+32]

; 873  : 	int nNewMapX		= m_nCurrentMapX;
; 874  : 	int nNewMapY		= m_nCurrentMapY;

	mov	edx, DWORD PTR [esi+220]
	add	ebx, ebp
	mov	ebp, DWORD PTR [esi+232]
	mov	DWORD PTR _nOldRegion$[esp+36], edi
	add	ebp, eax
	mov	eax, DWORD PTR [esi+216]

; 875  : 	int nNewRegion		= m_nRegionId;
; 876  : 	
; 877  : 	DWORD nRegionWidth = RegionWidth;
; 878  : 	DWORD nRegionHeight = RegionHeight;
; 879  : 	
; 880  : 	_ASSERT(abs(nNewXOffset) <= CellWidth * 2);
; 881  : 	_ASSERT(abs(nNewYOffset) <= CellHeight * 2);
; 882  : 	
; 883  : 	//	处理NPC的坐标变幻
; 884  : 	//	CELLWIDTH、CELLHEIGHT、OffX、OffY均是放大了1024倍
; 885  : 	
; 886  : 	if (nNewXOffset < 0)

	test	ebx, ebx
	mov	DWORD PTR _nNewMapX$[esp+32], eax
	mov	DWORD PTR _nNewMapY$[esp+32], edx
	jge	SHORT $L86444

; 887  : 	{
; 888  : 		nNewMapX--;
; 889  : 		nNewXOffset += CellWidth;

	mov	edx, DWORD PTR -16+[esp+36]
	dec	eax
	shl	edx, 10					; 0000000aH
	mov	DWORD PTR _nNewMapX$[esp+32], eax
	add	ebx, edx

; 890  : 	}
; 891  : 	else if (nNewXOffset > CellWidth)

	jmp	SHORT $L86446
$L86444:
	mov	edx, DWORD PTR -12+[esp+36]
	cmp	ebx, edx
	jle	SHORT $L86446

; 892  : 	{
; 893  : 		nNewMapX++;

	inc	eax

; 894  : 		nNewXOffset -= CellWidth;

	sub	ebx, edx
	mov	DWORD PTR _nNewMapX$[esp+32], eax
$L86446:

; 895  : 	}
; 896  : 	
; 897  : 	if (nNewYOffset < 0)

	test	ebp, ebp
	jge	SHORT $L86447

; 898  : 	{
; 899  : 		nNewMapY--;

	mov	edx, DWORD PTR _nNewMapY$[esp+32]
	dec	edx
	mov	DWORD PTR _nNewMapY$[esp+32], edx

; 900  : 		nNewYOffset += CellHeight;

	mov	edx, DWORD PTR -8+[esp+36]
	shl	edx, 10					; 0000000aH
	add	ebp, edx

; 901  : 	}
; 902  : 	else if (nNewYOffset > CellHeight)

	jmp	SHORT $L86449
$L86447:
	cmp	ebp, DWORD PTR -20+[esp+36]
	jle	SHORT $L86449

; 903  : 	{
; 904  : 		nNewMapY++;

	mov	edx, DWORD PTR _nNewMapY$[esp+32]
	inc	edx
	mov	DWORD PTR _nNewMapY$[esp+32], edx

; 905  : 		nNewYOffset -= CellHeight;

	mov	edx, DWORD PTR -20+[esp+36]
	sub	ebp, edx
$L86449:

; 906  : 	}
; 907  : 	
; 908  : 	if (nNewMapX < 0)

	test	eax, eax
	jge	SHORT $L86450

; 909  : 	{
; 910  : 		nNewRegion = LeftRegion(m_nRegionId);

	mov	edx, DWORD PTR [esi+364]
	mov	edi, DWORD PTR ?SubWorld@@3PAVKSubWorld@@A[ecx+8]
	imul	edx, 208				; 000000d0H
	mov	edi, DWORD PTR [edi+edx+112]

; 911  : 		nNewMapX += nRegionWidth;

	mov	edx, DWORD PTR ?SubWorld@@3PAVKSubWorld@@A[ecx+8268]
	add	eax, edx

; 912  : 	}
; 913  : 	else if ((DWORD)nNewMapX >= nRegionWidth)

	jmp	SHORT $L87560
$L86450:
	cmp	eax, DWORD PTR ?SubWorld@@3PAVKSubWorld@@A[ecx+8268]
	jb	SHORT $L86453

; 914  : 	{
; 915  : 		nNewRegion = RightRegion(m_nRegionId);

	mov	edx, DWORD PTR [esi+364]
	mov	edi, DWORD PTR ?SubWorld@@3PAVKSubWorld@@A[ecx+8]
	imul	edx, 208				; 000000d0H
	mov	edi, DWORD PTR [edi+edx+128]

; 916  : 		nNewMapX -= nRegionWidth;

	mov	edx, DWORD PTR ?SubWorld@@3PAVKSubWorld@@A[ecx+8268]
	sub	eax, edx
$L87560:
	mov	DWORD PTR _nNewMapX$[esp+32], eax
$L86453:

; 917  : 	}
; 918  : 
; 919  : 	if (nNewRegion < 0) 

	test	edi, edi
	jge	SHORT $L86454
	pop	edi
	pop	esi
	pop	ebp

; 920  : 	{
; 921  : 		return FALSE; 

	xor	eax, eax
	pop	ebx

; 958  : }

	add	esp, 20					; 00000014H
	ret	8
$L86454:

; 922  : 	}
; 923  : 	
; 924  : 	if (nNewMapY < 0)

	mov	eax, DWORD PTR _nNewMapY$[esp+32]
	test	eax, eax
	jge	SHORT $L86455

; 925  : 	{
; 926  : 		nNewRegion = UpRegion(nNewRegion);

	imul	edi, 208				; 000000d0H
	mov	edx, DWORD PTR ?SubWorld@@3PAVKSubWorld@@A[ecx+8]
	mov	edi, DWORD PTR [edx+edi+120]

; 927  : 		nNewMapY += nRegionHeight;

	mov	edx, DWORD PTR ?SubWorld@@3PAVKSubWorld@@A[ecx+8272]
	add	eax, edx

; 928  : 	}
; 929  : 	else if (nNewMapY >= RegionHeight)

	jmp	SHORT $L87561
$L86455:
	cmp	eax, DWORD PTR ?SubWorld@@3PAVKSubWorld@@A[ecx+8272]
	jl	SHORT $L86457

; 930  : 	{
; 931  : 		nNewRegion = DownRegion(nNewRegion);

	imul	edi, 208				; 000000d0H
	mov	edx, DWORD PTR ?SubWorld@@3PAVKSubWorld@@A[ecx+8]
	mov	edi, DWORD PTR [edx+edi+104]

; 932  : 		nNewMapY -= nRegionHeight;

	mov	edx, DWORD PTR ?SubWorld@@3PAVKSubWorld@@A[ecx+8272]
	sub	eax, edx
$L87561:
	mov	DWORD PTR _nNewMapY$[esp+32], eax
$L86457:

; 933  : 	}
; 934  : 	
; 935  : 	//下一个位置为不合法位置，则消亡
; 936  : 	if (nNewRegion < 0) 

	test	edi, edi
	jge	SHORT $L86458
	pop	edi
	pop	esi
	pop	ebp

; 937  : 	{
; 938  : 		return FALSE; 

	xor	eax, eax
	pop	ebx

; 958  : }

	add	esp, 20					; 00000014H
	ret	8
$L86458:

; 939  : 	}
; 940  : 	else
; 941  : 	{
; 942  : 		CurRegion.DecRef(m_nCurrentMapX, m_nCurrentMapY, obj_missle);

	mov	eax, DWORD PTR [esi+220]
	push	2
	push	eax
	mov	eax, DWORD PTR [esi+364]
	imul	eax, 208				; 000000d0H
	mov	edx, DWORD PTR [esi+216]
	mov	ecx, DWORD PTR ?SubWorld@@3PAVKSubWorld@@A[ecx+8]
	push	edx
	add	ecx, eax
	call	?DecRef@KRegion@@QAEHHHW4MOVE_OBJ_KIND@@@Z ; KRegion::DecRef

; 943  : 		_ASSERT(m_nCurrentMapX >= 0  &&  m_nCurrentMapY >= 0);
; 944  : 		
; 945  : 		m_nRegionId	   = nNewRegion;
; 946  : 		m_nCurrentMapX = nNewMapX;
; 947  : 		m_nCurrentMapY = nNewMapY;

	mov	eax, DWORD PTR _nNewMapY$[esp+32]
	mov	ecx, DWORD PTR _nNewMapX$[esp+32]

; 948  : 		m_nXOffset	   = nNewXOffset;
; 949  : 		m_nYOffset	   = nNewYOffset;
; 950  : 		CurRegion.AddRef(m_nCurrentMapX, m_nCurrentMapY, obj_missle);

	push	2
	mov	DWORD PTR [esi+220], eax
	push	eax
	mov	eax, DWORD PTR [esi+360]
	mov	DWORD PTR [esi+216], ecx
	push	ecx
	mov	ecx, eax
	mov	DWORD PTR [esi+364], edi
	shl	ecx, 6
	imul	edi, 208				; 000000d0H
	add	ecx, eax
	mov	DWORD PTR [esi+228], ebx
	mov	DWORD PTR [esi+232], ebp
	lea	edx, DWORD PTR [eax+ecx*8]
	lea	ecx, DWORD PTR [eax+edx*2]
	lea	edx, DWORD PTR [eax+ecx*2]
	mov	ecx, DWORD PTR ?SubWorld@@3PAVKSubWorld@@A[edx*4+8]
	add	ecx, edi
	call	?AddRef@KRegion@@QAEHHHW4MOVE_OBJ_KIND@@@Z ; KRegion::AddRef

; 951  : 		
; 952  : 		if (nOldRegion != m_nRegionId)

	mov	eax, DWORD PTR [esi+364]
	mov	ecx, DWORD PTR _nOldRegion$[esp+36]
	cmp	ecx, eax
	je	SHORT $L86461

; 953  : 		{
; 954  : 			SubWorld[m_nSubWorldId].m_WorldMessage.Send(GWM_MISSLE_CHANGE_REGION, nOldRegion, m_nRegionId, m_nMissleId);

	mov	edx, DWORD PTR [esi+356]
	mov	esi, DWORD PTR [esi+360]
	push	edx
	push	eax
	mov	eax, esi
	push	ecx
	shl	eax, 6
	add	eax, esi
	push	4002					; 00000fa2H
	lea	ecx, DWORD PTR [esi+eax*8]
	lea	edx, DWORD PTR [esi+ecx*2]
	lea	eax, DWORD PTR [esi+edx*2]
	lea	ecx, DWORD PTR ?SubWorld@@3PAVKSubWorld@@A[eax*4+8300]
	call	?Send@KWorldMsg@@QAEHKHHH@Z		; KWorldMsg::Send
$L86461:
	pop	edi
	pop	esi
	pop	ebp

; 955  : 		}
; 956  : 	}
; 957  : 	return TRUE;

	mov	eax, 1
	pop	ebx

; 958  : }

	add	esp, 20					; 00000014H
	ret	8
?CheckBeyondRegion@KMissle@@AAEHHH@Z ENDP		; KMissle::CheckBeyondRegion
_TEXT	ENDS
PUBLIC	??4KMissle@@AAEAAV0@AAV0@@Z			; KMissle::operator=
EXTRN	__imp_?g_Random@@YAII@Z:NEAR
;	COMDAT ??4KMissle@@AAEAAV0@AAV0@@Z
_TEXT	SEGMENT
_Missle$ = 8
??4KMissle@@AAEAAV0@AAV0@@Z PROC NEAR			; KMissle::operator=, COMDAT

; 961  : {

	sub	esp, 8
	push	ebx

; 962  : 	Missle.m_nTempParam1	=	0;

	mov	ebx, DWORD PTR _Missle$[esp+8]
	xor	edx, edx
	push	ebp
	mov	DWORD PTR [ebx+412], edx

; 963  : 	Missle.m_nTempParam2	=	0;

	mov	DWORD PTR [ebx+416], edx

; 964  : 	Missle.m_nDesMapX			=	0;

	mov	DWORD PTR [ebx+244], edx

; 965  : 	Missle.m_nDesMapY			=	0;

	mov	DWORD PTR [ebx+248], edx
	mov	ebp, ecx

; 966  : 	Missle.m_nDesRegion		=	0;

	mov	DWORD PTR [ebx+252], edx
	push	esi

; 967  : 	Missle.m_bNeedReclaim	=	FALSE;

	mov	DWORD PTR [ebx+256], edx
	push	edi

; 968  : 	Missle.m_nFirstReclaimTime = 0;

	mov	DWORD PTR [ebx+404], edx

; 969  : 	Missle.m_nEndReclaimTime = 0;
; 970  : 	memset(Missle.m_NeedReclaimPos, 0, sizeof(m_NeedReclaimPos));

	mov	ecx, 12					; 0000000cH
	xor	eax, eax
	lea	edi, DWORD PTR [ebx+260]
	mov	DWORD PTR [ebx+408], edx
	rep stosd

; 971  : 
; 972  : 	Missle.m_bCanSlow		=	m_bCanSlow;

	mov	eax, DWORD PTR [ebp+160]

; 973  : 	Missle.m_bCollideEvent	=	m_bCollideEvent;
; 974  : 	Missle.m_bCollideFriend =	m_bCollideFriend;
; 975  : 	Missle.m_bCollideVanish	=	m_bCollideVanish;
; 976  : 	Missle.m_bRangeDamage	=	m_bRangeDamage;
; 977  : 	Missle.m_eFollowKind	=	m_eFollowKind;
; 978  : 	Missle.m_eMoveKind		=	m_eMoveKind;
; 979  : 	Missle.m_nAction		=	m_nAction;
; 980  : 	Missle.m_nAngle			=	m_nAngle;
; 981  : 	Missle.m_nCollideRange	=	m_nCollideRange;
; 982  : 	Missle.m_nCurrentLife	=	0;
; 983  : 	Missle.m_nDamageRange	=	m_nDamageRange;
; 984  : 	Missle.m_nHeight		=	m_nHeight;
; 985  : 	Missle.m_nLifeTime		=	m_nLifeTime;
; 986  : 	Missle.m_nSpeed			=   m_nSpeed;
; 987  : 	Missle.m_nParam1		=	m_nParam1;
; 988  : 	Missle.m_nParam2		=	m_nParam2;
; 989  : 	Missle.m_nParam3		=	m_nParam3;
; 990  : 	Missle.m_nCurrentMapZ	=   m_nHeight >> 10;
; 991  : 	Missle.m_bFlyEvent		=	m_bFlyEvent;
; 992  : 	Missle.m_nFlyEventTime  =	m_nFlyEventTime;
; 993  : 	Missle.m_nZAcceleration =	m_nZAcceleration;
; 994  : 	Missle.m_nHeightSpeed	=	m_nHeightSpeed;
; 995  : 	Missle.m_bAutoExplode	=	m_bAutoExplode;
; 996  : 	Missle.m_ulDamageInterval = m_ulDamageInterval;
; 997  : 	strcpy(Missle.m_szMissleName	,	m_szMissleName);

	lea	edi, DWORD PTR [ebp+24]
	mov	DWORD PTR [ebx+160], eax
	mov	ecx, DWORD PTR [ebp+188]
	mov	DWORD PTR [ebx+188], ecx
	mov	eax, DWORD PTR [ebp+156]
	mov	DWORD PTR [ebx+156], eax
	mov	ecx, DWORD PTR [ebp+152]
	mov	DWORD PTR [ebx+152], ecx
	mov	eax, DWORD PTR [ebp+104]
	mov	DWORD PTR [ebx+104], eax
	mov	ecx, DWORD PTR [ebp+80]
	mov	DWORD PTR [ebx+80], ecx
	mov	eax, DWORD PTR [ebp+76]
	mov	DWORD PTR [ebx+76], eax
	mov	ecx, DWORD PTR [ebp+56]
	mov	DWORD PTR [ebx+56], ecx
	mov	eax, DWORD PTR [ebp+428]
	mov	DWORD PTR [ebx+428], eax
	mov	ecx, DWORD PTR [ebp+144]
	mov	DWORD PTR [ebx+144], ecx
	mov	DWORD PTR [ebx+204], edx
	mov	eax, DWORD PTR [ebp+148]
	lea	esi, DWORD PTR [ebx+24]
	mov	DWORD PTR [ebx+148], eax
	mov	ecx, DWORD PTR [ebp+84]
	mov	DWORD PTR [ebx+84], ecx
	mov	eax, DWORD PTR [ebp+92]
	mov	DWORD PTR [ebx+92], eax
	mov	ecx, DWORD PTR [ebp+96]
	mov	DWORD PTR [ebx+96], ecx
	mov	eax, DWORD PTR [ebp+392]
	mov	DWORD PTR [ebx+392], eax
	mov	ecx, DWORD PTR [ebp+396]
	mov	DWORD PTR [ebx+396], ecx
	mov	eax, DWORD PTR [ebp+400]
	mov	DWORD PTR [ebx+400], eax
	mov	ecx, DWORD PTR [ebp+84]
	sar	ecx, 10					; 0000000aH
	mov	DWORD PTR [ebx+224], ecx
	mov	eax, DWORD PTR [ebp+172]
	mov	DWORD PTR [ebx+172], eax
	mov	ecx, DWORD PTR [ebp+176]
	mov	DWORD PTR [ebx+176], ecx
	mov	eax, DWORD PTR [ebp+348]
	mov	DWORD PTR [ebx+348], eax
	mov	ecx, DWORD PTR [ebp+88]
	mov	DWORD PTR [ebx+88], ecx
	mov	eax, DWORD PTR [ebp+112]
	mov	DWORD PTR [ebx+112], eax
	mov	ecx, DWORD PTR [ebp+196]
	mov	DWORD PTR [ebx+196], ecx
	or	ecx, -1
	xor	eax, eax
	mov	DWORD PTR 8+[esp+20], esi
	repne scasb
	not	ecx
	sub	edi, ecx
	mov	eax, ecx
	mov	esi, edi
	mov	edi, DWORD PTR 8+[esp+20]
	shr	ecx, 2
	rep movsd
	mov	ecx, eax
	and	ecx, 3
	rep movsb

; 998  : 	
; 999  : #ifndef  _SERVER
; 1000 : 	Missle.m_bMultiShow		=  m_bMultiShow;

	mov	ecx, DWORD PTR [ebp+440]
	mov	DWORD PTR [ebx+440], ecx

; 1001 : 	Missle.m_MissleRes.m_bLoopAnim = m_MissleRes.m_bLoopAnim;

	mov	eax, DWORD PTR [ebp+492]
	mov	DWORD PTR [ebx+492], eax

; 1002 : 	Missle.m_MissleRes.m_bHaveEnd = FALSE;

	mov	DWORD PTR [ebx+488], edx

; 1003 : 	Missle.m_btRedLum		= m_btRedLum;

	mov	ecx, DWORD PTR [ebp+448]
	mov	DWORD PTR [ebx+448], ecx

; 1004 : 	Missle.m_btGreenLum		= m_btGreenLum;

	mov	eax, DWORD PTR [ebp+452]
	mov	DWORD PTR [ebx+452], eax

; 1005 : 	Missle.m_btBlueLum		= m_btBlueLum;

	mov	ecx, DWORD PTR [ebp+456]
	mov	DWORD PTR [ebx+456], ecx

; 1006 : 	Missle.m_usLightRadius	= m_usLightRadius;

	mov	ax, WORD PTR [ebp+460]
	mov	WORD PTR [ebx+460], ax

; 1007 : 	int nOffset = 0;
; 1008 : 	
; 1009 : 	//如果是相同的子弹可以以不同方式显示时，则随机产生
; 1010 : 	if (m_bMultiShow)		

	mov	ecx, DWORD PTR [ebp+440]
	xor	eax, eax
	cmp	ecx, edx
	je	SHORT $L86468

; 1011 : 	{
; 1012 : 		if (g_Random(2) == 0)

	push	2
	call	DWORD PTR __imp_?g_Random@@YAII@Z
	add	esp, 4
	neg	eax
	sbb	eax, eax
	and	eax, 4
$L86468:

; 1013 : 		{
; 1014 : 			nOffset = 0;
; 1015 : 		}
; 1016 : 		else
; 1017 : 			nOffset = MAX_MISSLE_STATUS;
; 1018 : 	}
; 1019 : 	
; 1020 : 	for (int t = 0; t < MAX_MISSLE_STATUS ; t++)

	lea	ecx, DWORD PTR [ebx+596]
	mov	DWORD PTR -8+[esp+24], 4
	mov	DWORD PTR 8+[esp+20], ecx
	lea	ecx, DWORD PTR [eax+eax*2]
	lea	edx, DWORD PTR [ecx+ecx*8]
	shl	edx, 1
	sub	edx, eax
	lea	edx, DWORD PTR [ebp+edx*4+596]
$L86471:

; 1021 : 	{
; 1022 : 		strcpy(Missle.m_MissleRes.m_MissleRes[t].AnimFileName,m_MissleRes.m_MissleRes[t + nOffset].AnimFileName);

	mov	eax, DWORD PTR 8+[esp+20]
	lea	edi, DWORD PTR [edx-100]
	or	ecx, -1
	lea	esi, DWORD PTR [eax-100]
	xor	eax, eax
	repne scasb
	not	ecx
	sub	edi, ecx
	mov	DWORD PTR -4+[esp+24], esi
	mov	eax, ecx
	mov	esi, edi
	mov	edi, DWORD PTR -4+[esp+24]
	shr	ecx, 2
	rep movsd
	mov	ecx, eax

; 1023 : 		
; 1024 : 		Missle.m_MissleRes.m_MissleRes[t].nTotalFrame = m_MissleRes.m_MissleRes[t + nOffset].nTotalFrame;

	mov	eax, DWORD PTR 8+[esp+20]
	and	ecx, 3
	rep movsb
	mov	ecx, DWORD PTR [edx]

; 1025 : 		Missle.m_MissleRes.m_MissleRes[t].nDir = m_MissleRes.m_MissleRes[t + nOffset].nDir;
; 1026 : 		Missle.m_MissleRes.m_MissleRes[t].nInterval = m_MissleRes.m_MissleRes[t + nOffset].nInterval;
; 1027 : 		
; 1028 : 		strcpy(Missle.m_MissleRes.m_MissleRes[t].SndFileName,m_MissleRes.m_MissleRes[t + nOffset].SndFileName);

	lea	esi, DWORD PTR [eax+12]
	mov	DWORD PTR [eax], ecx
	mov	ecx, DWORD PTR [edx+8]
	mov	DWORD PTR [eax+8], ecx
	mov	ecx, DWORD PTR [edx+4]
	mov	DWORD PTR [eax+4], ecx
	lea	edi, DWORD PTR [edx+12]
	or	ecx, -1
	xor	eax, eax
	repne scasb
	not	ecx
	sub	edi, ecx
	mov	DWORD PTR -4+[esp+24], esi
	mov	eax, ecx
	mov	esi, edi
	mov	edi, DWORD PTR -4+[esp+24]
	add	edx, 212				; 000000d4H
	shr	ecx, 2
	rep movsd
	mov	ecx, eax
	mov	eax, DWORD PTR -8+[esp+24]
	and	ecx, 3
	rep movsb
	mov	ecx, DWORD PTR 8+[esp+20]
	add	ecx, 212				; 000000d4H
	dec	eax
	mov	DWORD PTR 8+[esp+20], ecx
	mov	DWORD PTR -8+[esp+24], eax
	jne	$L86471

; 1029 : 	}
; 1030 : 	Missle.m_MissleRes.m_bSubLoop = m_MissleRes.m_bSubLoop;

	mov	ecx, DWORD PTR [ebp+2244]
	pop	edi
	mov	DWORD PTR [ebx+2244], ecx

; 1031 : 	Missle.m_MissleRes.m_nSubStart = m_MissleRes.m_nSubStart;

	mov	edx, DWORD PTR [ebp+2248]
	mov	DWORD PTR [ebx+2248], edx

; 1032 : 	Missle.m_MissleRes.m_nSubStop = m_MissleRes.m_nSubStop;

	mov	eax, DWORD PTR [ebp+2252]
	mov	DWORD PTR [ebx+2252], eax
	pop	esi

; 1033 : #endif	
; 1034 : 	
; 1035 : 	return (Missle);

	mov	eax, ebx
	pop	ebp
	pop	ebx

; 1036 : }

	add	esp, 8
	ret	4
??4KMissle@@AAEAAV0@AAV0@@Z ENDP			; KMissle::operator=
_TEXT	ENDS
PUBLIC	?ProcessDamage@KMissle@@AAEHH@Z			; KMissle::ProcessDamage
;	COMDAT ?ProcessDamage@KMissle@@AAEHH@Z
_TEXT	SEGMENT
?ProcessDamage@KMissle@@AAEHH@Z PROC NEAR		; KMissle::ProcessDamage, COMDAT

; 1048 : #ifdef _SERVER
; 1049 : 	bool bCalDamage = false;
; 1050 : 	
; 1051 : /*	if (m_ulDamageInterval)
; 1052 : 	{
; 1053 : 		if (m_ulNextCalDamageTime > g_SubWorldSet.GetGameTime())
; 1054 : 		{
; 1055 : 			return FALSE;
; 1056 : 		}
; 1057 : 		else
; 1058 : 		{
; 1059 : 			// 6.29 romandou missledamage interval 
; 1060 : 			m_ulNextCalDamageTime = g_SubWorldSet.GetGameTime() + m_ulDamageInterval;
; 1061 : 		}
; 1062 : 	}
; 1063 : */	
; 1064 : 	_ASSERT (Npc[m_nLauncher].IsMatch(m_dwLauncherId));
; 1065 : 	
; 1066 : 	if (m_pMagicAttribsData) 
; 1067 : 	{
; 1068 : 		if (Npc[nNpcId].ReceiveDamage(m_nLauncher, m_bIsMelee, m_pMagicAttribsData->m_pDamageMagicAttribs, m_bUseAttackRating, m_bDoHurt))
; 1069 : 		{
; 1070 : 			if (m_pMagicAttribsData->m_nStateMagicAttribsNum > 0)
; 1071 : 				Npc[nNpcId].SetStateSkillEffect(m_nLauncher, m_nSkillId, m_nLevel, m_pMagicAttribsData->m_pStateMagicAttribs, m_pMagicAttribsData->m_nStateMagicAttribsNum, m_pMagicAttribsData->m_pStateMagicAttribs[0].nValue[1]);
; 1072 : 			
; 1073 : 			if (m_pMagicAttribsData->m_nImmediateMagicAttribsNum > 0)
; 1074 : 				Npc[nNpcId].SetImmediatelySkillEffect(m_nLauncher, m_pMagicAttribsData->m_pImmediateAttribs, m_pMagicAttribsData->m_nImmediateMagicAttribsNum);
; 1075 : 		}
; 1076 : 		return TRUE;
; 1077 : 	}
; 1078 : #endif //_SERVER
; 1079 : 	return FALSE;

	xor	eax, eax

; 1080 : }

	ret	4
?ProcessDamage@KMissle@@AAEHH@Z ENDP			; KMissle::ProcessDamage
_TEXT	ENDS
EXTRN	?Vanish@KSkill@@ABEXPAVKMissle@@@Z:NEAR		; KSkill::Vanish
;	COMDAT ?DoVanish@KMissle@@AAEXXZ
_TEXT	SEGMENT
?DoVanish@KMissle@@AAEXXZ PROC NEAR			; KMissle::DoVanish, COMDAT

; 1083 : {

	push	esi
	mov	esi, ecx

; 1084 : 	if (m_eMissleStatus == MS_DoVanish) return ;

	cmp	DWORD PTR [esi+352], 2
	je	$L86487

; 1085 : 	
; 1086 : #ifndef _SERVER
; 1087 : 	m_MissleRes.m_bHaveEnd = TRUE;
; 1088 : 	m_nCollideOrVanishTime = m_nCurrentLife;

	mov	eax, DWORD PTR [esi+204]
	mov	DWORD PTR [esi+488], 1
	mov	DWORD PTR [esi+212], eax

; 1089 : #endif
; 1090 : 	if (m_bVanishedEvent)	

	mov	eax, DWORD PTR [esi+192]
	test	eax, eax
	je	SHORT $L86486

; 1091 : 	{
; 1092 : 		_ASSERT(m_nSkillId < MAX_SKILL && m_nLevel < MAX_SKILLLEVEL);
; 1093 : 		KSkill * pOrdinSkill = (KSkill *) g_SkillManager.GetSkill(m_nSkillId,m_nLevel);

	mov	eax, DWORD PTR [esi+100]
	mov	ecx, DWORD PTR [esi+320]
	cmp	eax, 500				; 000001f4H
	jg	SHORT $L86486
	test	eax, eax
	jle	SHORT $L86486
	test	ecx, ecx
	jle	SHORT $L86486
	cmp	ecx, 64					; 00000040H
	jg	SHORT $L86486
	mov	edx, eax
	shl	edx, 6
	add	edx, ecx
	mov	edx, DWORD PTR ?g_SkillManager@@3VKSkillManager@@A[edx*4+7740]
	test	edx, edx
	je	SHORT $L87581
	mov	eax, edx
	jmp	SHORT $L87576
$L87581:
	push	ecx
	push	eax
	mov	ecx, OFFSET FLAT:?g_SkillManager@@3VKSkillManager@@A
	call	?InstanceSkill@KSkillManager@@AAEPAVISkill@@KK@Z ; KSkillManager::InstanceSkill
$L87576:

; 1094 : 		if (pOrdinSkill)

	test	eax, eax
	je	SHORT $L86486

; 1095 :         {
; 1096 : 			pOrdinSkill->Vanish(this);

	push	esi
	mov	ecx, eax
	call	?Vanish@KSkill@@ABEXPAVKMissle@@@Z	; KSkill::Vanish
$L86486:

; 1097 :         }
; 1098 : 	}
; 1099 : #ifdef _SERVER	//服务器端时子弹一旦进入消亡期则直接删除掉
; 1100 : 	SubWorld[m_nSubWorldId].m_WorldMessage.Send(GWM_MISSLE_DEL, m_nMissleId);
; 1101 : 	m_eMissleStatus = MS_DoVanish;
; 1102 : 	return ;
; 1103 : #endif
; 1104 : 	m_eMissleStatus = MS_DoVanish;
; 1105 : #ifndef _SERVER 
; 1106 : 	if (m_nRegionId < 0)

	mov	eax, DWORD PTR [esi+364]
	mov	DWORD PTR [esi+352], 2
	test	eax, eax
	jge	SHORT $L86487

; 1107 : 	{
; 1108 : 		_ASSERT(0);
; 1109 : 		m_bRemoving = TRUE;

	mov	DWORD PTR [esi+68], 1
$L86487:
	pop	esi

; 1110 : 		return ;
; 1111 : 	}
; 1112 : #endif
; 1113 : }

	ret	0
?DoVanish@KMissle@@AAEXXZ ENDP				; KMissle::DoVanish
_TEXT	ENDS
EXTRN	?Collidsion@KSkill@@ABEXPAVKMissle@@@Z:NEAR	; KSkill::Collidsion
;	COMDAT ?DoCollision@KMissle@@AAEXXZ
_TEXT	SEGMENT
_nSrcX$ = -4
_nSrcY$ = -8
_nSrcX5$86501 = -12
_nSrcY5$86502 = -16
?DoCollision@KMissle@@AAEXXZ PROC NEAR			; KMissle::DoCollision, COMDAT

; 1116 : {

	sub	esp, 16					; 00000010H
	push	esi
	mov	esi, ecx
	push	edi

; 1117 : 	if (m_eMissleStatus == MS_DoCollision) return;

	cmp	DWORD PTR [esi+352], 3
	je	$L86503

; 1118 : 	
; 1119 : #ifndef _SERVER
; 1120 : 	int nSrcX = 0 ;
; 1121 : 	int nSrcY = 0 ;
; 1122 : 	SubWorld[0].Map2Mps(m_nRegionId, m_nCurrentMapX, m_nCurrentMapY,m_nXOffset, m_nYOffset, &nSrcX, &nSrcY);

	mov	edx, DWORD PTR [esi+232]
	lea	eax, DWORD PTR _nSrcY$[esp+24]
	lea	ecx, DWORD PTR _nSrcX$[esp+24]
	push	eax
	mov	eax, DWORD PTR [esi+228]
	push	ecx
	mov	ecx, DWORD PTR [esi+220]
	push	edx
	mov	edx, DWORD PTR [esi+216]
	push	eax
	mov	eax, DWORD PTR [esi+364]
	push	ecx
	xor	edi, edi
	push	edx
	push	eax
	mov	ecx, OFFSET FLAT:?SubWorld@@3PAVKSubWorld@@A
	mov	DWORD PTR _nSrcX$[esp+52], edi
	mov	DWORD PTR _nSrcY$[esp+52], edi
	call	?Map2Mps@KSubWorld@@QAEXHHHHHPAH0@Z	; KSubWorld::Map2Mps

; 1123 : #endif
; 1124 : 	
; 1125 : 	if (m_bCollideEvent)	

	cmp	DWORD PTR [esi+188], edi
	je	SHORT $L86499

; 1126 : 	{
; 1127 : 		_ASSERT(m_nSkillId < MAX_SKILL && m_nLevel < MAX_SKILLLEVEL);
; 1128 : 		KSkill * pOrdinSkill = (KSkill *)g_SkillManager.GetSkill(m_nSkillId, m_nLevel);

	mov	eax, DWORD PTR [esi+100]
	mov	ecx, DWORD PTR [esi+320]
	cmp	eax, 500				; 000001f4H
	jg	SHORT $L86499
	cmp	eax, edi
	jle	SHORT $L86499
	cmp	ecx, edi
	jle	SHORT $L86499
	cmp	ecx, 64					; 00000040H
	jg	SHORT $L86499
	mov	edx, eax
	shl	edx, 6
	add	edx, ecx
	mov	edx, DWORD PTR ?g_SkillManager@@3VKSkillManager@@A[edx*4+7740]
	cmp	edx, edi
	je	SHORT $L87594
	mov	eax, edx
	jmp	SHORT $L87589
$L87594:
	push	ecx
	push	eax
	mov	ecx, OFFSET FLAT:?g_SkillManager@@3VKSkillManager@@A
	call	?InstanceSkill@KSkillManager@@AAEPAVISkill@@KK@Z ; KSkillManager::InstanceSkill
$L87589:

; 1129 : 		if (pOrdinSkill)

	cmp	eax, edi
	je	SHORT $L86499

; 1130 :         {
; 1131 : 			pOrdinSkill->Collidsion(this);

	push	esi
	mov	ecx, eax
	call	?Collidsion@KSkill@@ABEXPAVKMissle@@@Z	; KSkill::Collidsion
$L86499:

; 1132 :         }
; 1133 : 	}
; 1134 : 	
; 1135 : 	if (m_bCollideVanish)

	cmp	DWORD PTR [esi+152], edi
	je	SHORT $L86500

; 1136 : 	{
; 1137 : #ifndef _SERVER
; 1138 : 		m_MissleRes.m_bHaveEnd = TRUE;
; 1139 : #endif
; 1140 : 		
; 1141 : #ifndef _SERVER 
; 1142 : 		int nSrcX5 = 0 ;
; 1143 : 		int nSrcY5 = 0 ;
; 1144 : 		SubWorld[0].Map2Mps(m_nRegionId, m_nCurrentMapX, m_nCurrentMapY,m_nXOffset, m_nYOffset, &nSrcX5, &nSrcY5);

	mov	edx, DWORD PTR [esi+232]
	lea	eax, DWORD PTR _nSrcY5$86502[esp+24]
	lea	ecx, DWORD PTR _nSrcX5$86501[esp+24]
	push	eax
	mov	eax, DWORD PTR [esi+228]
	push	ecx
	mov	ecx, DWORD PTR [esi+220]
	push	edx
	mov	edx, DWORD PTR [esi+216]
	push	eax
	mov	eax, DWORD PTR [esi+364]
	push	ecx
	push	edx
	push	eax
	mov	ecx, OFFSET FLAT:?SubWorld@@3PAVKSubWorld@@A
	mov	DWORD PTR [esi+488], 1
	mov	DWORD PTR _nSrcX5$86501[esp+52], edi
	mov	DWORD PTR _nSrcY5$86502[esp+52], edi
	call	?Map2Mps@KSubWorld@@QAEXHHHHHPAH0@Z	; KSubWorld::Map2Mps

; 1145 : 		CreateSpecialEffect(MS_DoVanish, nSrcX5, nSrcY5, m_nCurrentMapZ);

	mov	ecx, DWORD PTR [esi+224]
	mov	edx, DWORD PTR _nSrcY5$86502[esp+24]
	mov	eax, DWORD PTR _nSrcX5$86501[esp+24]
	push	edi
	push	ecx
	push	edx
	push	eax
	push	2
	mov	ecx, esi
	call	?CreateSpecialEffect@KMissle@@QAEHW4eMissleStatus@@HHHH@Z ; KMissle::CreateSpecialEffect

; 1146 : #endif
; 1147 : 		
; 1148 : 		DoVanish();

	mov	ecx, esi
	call	?DoVanish@KMissle@@AAEXXZ		; KMissle::DoVanish
	pop	edi
	pop	esi

; 1158 : 	}
; 1159 : }

	add	esp, 16					; 00000010H
	ret	0
$L86500:

; 1149 : 	}
; 1150 : 	else 
; 1151 : 	{
; 1152 : #ifndef _SERVER		
; 1153 : 		//增加撞后的效果	
; 1154 : 		if (m_MissleRes.SpecialMovieIsAllEnd())

	mov	eax, DWORD PTR [esi+468]
	cmp	DWORD PTR [eax+4], edi
	je	SHORT $L87616
	cmp	eax, edi
	jne	SHORT $L86504
$L87616:

; 1155 : 			CreateSpecialEffect(MS_DoCollision, nSrcX, nSrcY, m_nCurrentMapZ);

	mov	ecx, DWORD PTR [esi+224]
	mov	edx, DWORD PTR _nSrcY$[esp+24]
	mov	eax, DWORD PTR _nSrcX$[esp+24]
	push	edi
	push	ecx
	push	edx
	push	eax
	push	3
	mov	ecx, esi
	call	?CreateSpecialEffect@KMissle@@QAEHW4eMissleStatus@@HHHH@Z ; KMissle::CreateSpecialEffect
$L86504:

; 1156 : #endif
; 1157 : 		m_eMissleStatus = MS_DoFly;

	mov	DWORD PTR [esi+352], 1
$L86503:
	pop	edi
	pop	esi

; 1158 : 	}
; 1159 : }

	add	esp, 16					; 00000010H
	ret	0
?DoCollision@KMissle@@AAEXXZ ENDP			; KMissle::DoCollision
_TEXT	ENDS
;	COMDAT ?DoFly@KMissle@@AAEXXZ
_TEXT	SEGMENT
?DoFly@KMissle@@AAEXXZ PROC NEAR			; KMissle::DoFly, COMDAT

; 1163 : 	if (m_eMissleStatus == MS_DoFly) return ;

	mov	edx, DWORD PTR [ecx+352]
	mov	eax, 1
	cmp	edx, eax
	je	SHORT $L86507

; 1164 : 	//初始化贴图
; 1165 : 	m_eMissleStatus = MS_DoFly;

	mov	DWORD PTR [ecx+352], eax
$L86507:

; 1166 : }

	ret	0
?DoFly@KMissle@@AAEXXZ ENDP				; KMissle::DoFly
_TEXT	ENDS
;	COMDAT ?GetOffsetAxis@KMissle@@SAHHHHHHHAAH00@Z
_TEXT	SEGMENT
_nSubWorld$ = 8
_nSrcRegionId$ = 12
_nSrcMapX$ = 16
_nSrcMapY$ = 20
_nOffsetMapX$ = 24
_nOffsetMapY$ = 28
_nDesRegionId$ = 32
_nDesMapX$ = 36
_nDesMapY$ = 40
?GetOffsetAxis@KMissle@@SAHHHHHHHAAH00@Z PROC NEAR	; KMissle::GetOffsetAxis, COMDAT

; 1172 : 	nDesRegionId = -1;

	mov	eax, DWORD PTR _nDesRegionId$[esp-4]

; 1173 : 	// 确定目标格子实际的REGION和坐标确定
; 1174 : 	nDesMapX = nSrcMapX + nOffsetMapX;

	mov	ecx, DWORD PTR _nOffsetMapX$[esp-4]
	mov	edx, DWORD PTR _nSrcMapX$[esp-4]
	push	ebx

; 1175 : 	nDesMapY = nSrcMapY + nOffsetMapY;

	mov	ebx, DWORD PTR _nDesMapY$[esp]
	push	esi
	mov	esi, DWORD PTR _nDesMapX$[esp+4]
	mov	DWORD PTR [eax], -1
	mov	eax, DWORD PTR _nOffsetMapY$[esp+4]
	add	edx, ecx
	mov	ecx, DWORD PTR _nSrcMapY$[esp+4]
	mov	DWORD PTR [esi], edx
	add	ecx, eax
	mov	DWORD PTR [ebx], ecx

; 1176 : 	
; 1177 : 	if (nSrcRegionId < 0) 

	mov	ecx, DWORD PTR _nSrcRegionId$[esp+4]
	test	ecx, ecx
	jge	SHORT $L86520
	pop	esi

; 1178 : 		return FALSE;

	xor	eax, eax
	pop	ebx

; 1209 : 	// 从REGION的NPC列表中查找满足条件的NPC		
; 1210 : 	//int nNpcIdx = SubWorld[nSubWorld].m_Region[nSearchRegion].FindNpc(nDesMapX, nDesMapY, nLauncherIdx, relation_all);
; 1211 : }

	ret	0
$L86520:

; 1179 : 
; 1180 : 	int nSearchRegion = nSrcRegionId;
; 1181 : 	if (nDesMapX < 0)

	mov	edx, DWORD PTR [esi]

; 1182 : 	{
; 1183 : 		nSearchRegion = SubWorld[nSubWorld].m_Region[nSearchRegion].m_nConnectRegion[2];

	mov	eax, DWORD PTR _nSubWorld$[esp+4]
	push	edi
	mov	edi, eax
	test	edx, edx
	jge	SHORT $L86522
	shl	edi, 6
	imul	ecx, 208				; 000000d0H
	add	edi, eax
	lea	edi, DWORD PTR [eax+edi*8]
	lea	edi, DWORD PTR [eax+edi*2]
	lea	eax, DWORD PTR [eax+edi*2]
	shl	eax, 2
	mov	edi, DWORD PTR ?SubWorld@@3PAVKSubWorld@@A[eax+8]
	mov	ecx, DWORD PTR [edi+ecx+112]

; 1184 : 		nDesMapX += SubWorld[nSubWorld].m_nRegionWidth;

	mov	edi, DWORD PTR ?SubWorld@@3PAVKSubWorld@@A[eax+8268]
	add	edi, edx
	mov	DWORD PTR [esi], edi

; 1185 : 	}
; 1186 : 	else if (nDesMapX >= SubWorld[nSubWorld].m_nRegionWidth)

	jmp	SHORT $L86524
$L86522:
	shl	edi, 6
	add	edi, eax
	lea	edi, DWORD PTR [eax+edi*8]
	lea	edi, DWORD PTR [eax+edi*2]
	lea	eax, DWORD PTR [eax+edi*2]
	shl	eax, 2
	mov	edi, DWORD PTR ?SubWorld@@3PAVKSubWorld@@A[eax+8268]
	cmp	edx, edi
	jl	SHORT $L86524

; 1187 : 	{
; 1188 : 		nSearchRegion = SubWorld[nSubWorld].m_Region[nSearchRegion].m_nConnectRegion[6];

	imul	ecx, 208				; 000000d0H
	push	ebp
	mov	ebp, DWORD PTR ?SubWorld@@3PAVKSubWorld@@A[eax+8]

; 1189 : 		nDesMapX -= SubWorld[nSubWorld].m_nRegionWidth;

	sub	edx, edi
	mov	ecx, DWORD PTR [ecx+ebp+128]
	mov	DWORD PTR [esi], edx
	pop	ebp
$L86524:

; 1190 : 	}
; 1191 : 	if (nSearchRegion < 0) 

	test	ecx, ecx
	pop	edi
	jge	SHORT $L86525
	pop	esi

; 1192 : 		return FALSE;

	xor	eax, eax
	pop	ebx

; 1209 : 	// 从REGION的NPC列表中查找满足条件的NPC		
; 1210 : 	//int nNpcIdx = SubWorld[nSubWorld].m_Region[nSearchRegion].FindNpc(nDesMapX, nDesMapY, nLauncherIdx, relation_all);
; 1211 : }

	ret	0
$L86525:

; 1193 : 	
; 1194 : 	if (nDesMapY < 0)

	mov	edx, DWORD PTR [ebx]
	test	edx, edx
	jge	SHORT $L86526

; 1195 : 	{
; 1196 : 		nSearchRegion = SubWorld[nSubWorld].m_Region[nSearchRegion].m_nConnectRegion[4];

	imul	ecx, 208				; 000000d0H
	mov	esi, DWORD PTR ?SubWorld@@3PAVKSubWorld@@A[eax+8]

; 1197 : 		nDesMapY += SubWorld[nSubWorld].m_nRegionHeight;

	mov	eax, DWORD PTR ?SubWorld@@3PAVKSubWorld@@A[eax+8272]
	add	eax, edx
	mov	ecx, DWORD PTR [esi+ecx+120]
	mov	DWORD PTR [ebx], eax

; 1198 : 	}
; 1199 : 	else if (nDesMapY >= SubWorld[nSubWorld].m_nRegionHeight)

	jmp	SHORT $L86528
$L86526:
	mov	esi, DWORD PTR ?SubWorld@@3PAVKSubWorld@@A[eax+8272]
	cmp	edx, esi
	jl	SHORT $L86528

; 1200 : 	{
; 1201 : 		nSearchRegion = SubWorld[nSubWorld].m_Region[nSearchRegion].m_nConnectRegion[0];

	imul	ecx, 208				; 000000d0H
	mov	eax, DWORD PTR ?SubWorld@@3PAVKSubWorld@@A[eax+8]

; 1202 : 		nDesMapY -= SubWorld[nSubWorld].m_nRegionHeight;

	sub	edx, esi
	mov	ecx, DWORD PTR [eax+ecx+104]
	mov	DWORD PTR [ebx], edx
$L86528:

; 1203 : 	}	
; 1204 : 
; 1205 : 	if (nSearchRegion < 0) 

	test	ecx, ecx
	jge	SHORT $L86529
	pop	esi

; 1206 : 		return FALSE;

	xor	eax, eax
	pop	ebx

; 1209 : 	// 从REGION的NPC列表中查找满足条件的NPC		
; 1210 : 	//int nNpcIdx = SubWorld[nSubWorld].m_Region[nSearchRegion].FindNpc(nDesMapX, nDesMapY, nLauncherIdx, relation_all);
; 1211 : }

	ret	0
$L86529:

; 1207 : 	nDesRegionId = nSearchRegion;

	mov	edx, DWORD PTR _nDesRegionId$[esp+4]
	pop	esi

; 1208 : 	return TRUE;

	mov	eax, 1
	pop	ebx
	mov	DWORD PTR [edx], ecx

; 1209 : 	// 从REGION的NPC列表中查找满足条件的NPC		
; 1210 : 	//int nNpcIdx = SubWorld[nSubWorld].m_Region[nSearchRegion].FindNpc(nDesMapX, nDesMapY, nLauncherIdx, relation_all);
; 1211 : }

	ret	0
?GetOffsetAxis@KMissle@@SAHHHHHHHAAH00@Z ENDP		; KMissle::GetOffsetAxis
_TEXT	ENDS
;	COMDAT ?ProcessCollision@KMissle@@AAEHHHHHHH@Z
_TEXT	SEGMENT
_nLauncherIdx$ = 8
_nRegionId$ = 12
_nMapX$ = 16
_nMapY$ = 20
_nRange$ = 24
_eRelation$ = 28
_this$ = -12
_nRangeX$ = -8
_nRet$ = -32
_nRMx$ = -16
_nRMy$ = -20
_nSearchRegion$ = -28
_i$ = -36
_j$86555 = -24
_nSrcX$86563 = -40
_nSrcY$86564 = 24
$T87664 = 24
?ProcessCollision@KMissle@@AAEHHHHHHH@Z PROC NEAR	; KMissle::ProcessCollision, COMDAT

; 1227 : {

	sub	esp, 40					; 00000028H
	mov	DWORD PTR _this$[esp+40], ecx

; 1228 : #ifdef TOOLVERSION 
; 1229 : 	return 0;
; 1230 : #endif
; 1231 : #ifdef _SERVER
; 1232 : 	if (m_ulDamageInterval)
; 1233 : 	{
; 1234 : 		if (m_ulNextCalDamageTime > g_SubWorldSet.GetGameTime())
; 1235 : 		{
; 1236 : 			return FALSE;
; 1237 : 		}
; 1238 : 		else
; 1239 : 		{
; 1240 : 			// 6.29 romandou missledamage interval 
; 1241 : 			m_ulNextCalDamageTime = g_SubWorldSet.GetGameTime() + m_ulDamageInterval;
; 1242 : 		}
; 1243 : 	}
; 1244 : #endif
; 1245 : 	if (nLauncherIdx <= 0 ) return 0;

	mov	ecx, DWORD PTR _nLauncherIdx$[esp+36]
	test	ecx, ecx
	jg	SHORT $L86539
	xor	eax, eax

; 1294 : }

	add	esp, 40					; 00000028H
	ret	24					; 00000018H
$L86539:

; 1246 : 	if (nRange <= 0) return 0;

	mov	eax, DWORD PTR _nRange$[esp+36]
	test	eax, eax
	jg	SHORT $L86540
	xor	eax, eax

; 1294 : }

	add	esp, 40					; 00000028H
	ret	24					; 00000018H
$L86540:

; 1247 : 	
; 1248 : 	int nRangeX = nRange / 2;

	cdq
	sub	eax, edx
	push	edi
	mov	edx, eax

; 1249 : 	int	nRangeY = nRangeX;
; 1250 : 	int	nSubWorld = Npc[nLauncherIdx].m_SubWorldIndex;

	lea	eax, DWORD PTR [ecx+ecx*2]
	shl	eax, 5
	sub	eax, ecx

; 1251 : 	
; 1252 : 	_ASSERT(Npc[nLauncherIdx].m_SubWorldIndex >= 0);
; 1253 : 	_ASSERT(nRegionId >= 0);
; 1254 : 	
; 1255 : 	int	nRegion = nRegionId;
; 1256 : 	int	nRet = 0;

	mov	DWORD PTR _nRet$[esp+44], 0
	sar	edx, 1
	lea	eax, DWORD PTR [eax+eax*4]
	mov	DWORD PTR _nRangeX$[esp+44], edx
	lea	eax, DWORD PTR [ecx+eax*8]
	lea	ecx, DWORD PTR [ecx+eax*2]

; 1257 : 	int	nRMx, nRMy, nSearchRegion;
; 1258 : 
; 1259 : 	// 检查范围内的格子里的NPC
; 1260 : 	for (int i = -nRangeX; i <= nRangeX; i++)

	mov	eax, edx
	neg	eax
	mov	edi, DWORD PTR ?Npc@@3PAVKNpc@@A[ecx*4+2380]
	mov	ecx, eax
	cmp	ecx, edx
	mov	DWORD PTR -4+[esp+44], eax
	mov	DWORD PTR _i$[esp+44], ecx
	jg	$L86554
	push	ebx
	push	ebp
	push	esi
$L86552:

; 1261 : 	{
; 1262 : 		for (int j = -nRangeY; j <= nRangeY; j++)

	cmp	eax, edx
	mov	DWORD PTR _j$86555[esp+56], eax
	jg	$L86553
	jmp	SHORT $L86556
$L87673:
	mov	ecx, DWORD PTR _i$[esp+56]
$L86556:

; 1263 : 		{
; 1264 : 			// 去掉边角几个格子，保证视野是椭圆形
; 1265 : 			//if ((i * i + j * j ) > nRangeX * nRangeX)
; 1266 : 			//continue;
; 1267 : 
; 1268 : 			if (!GetOffsetAxis(nSubWorld, nRegionId, nMapX, nMapY, i , j , nSearchRegion, nRMx, nRMy))

	lea	edx, DWORD PTR _nRMy$[esp+56]
	push	edx
	lea	edx, DWORD PTR _nRMx$[esp+60]
	push	edx
	lea	edx, DWORD PTR _nSearchRegion$[esp+64]
	push	edx
	mov	edx, DWORD PTR _nRegionId$[esp+64]
	push	eax
	mov	eax, DWORD PTR _nMapY$[esp+68]
	push	ecx
	mov	ecx, DWORD PTR _nMapX$[esp+72]
	push	eax
	push	ecx
	push	edx
	push	edi
	call	?GetOffsetAxis@KMissle@@SAHHHHHHHAAH00@Z ; KMissle::GetOffsetAxis
	add	esp, 36					; 00000024H
	test	eax, eax
	je	$L86557

; 1269 : 				continue;
; 1270 : 
; 1271 : 			_ASSERT(nSearchRegion >= 0);
; 1272 : 
; 1273 : 			// 从REGION的NPC列表中查找满足条件的NPC		
; 1274 : 			int nNpcIdx = SubWorld[nSubWorld].m_Region[nSearchRegion].FindNpc(nRMx, nRMy, nLauncherIdx, eRelation);

	mov	eax, edi
	mov	ecx, DWORD PTR _nRMy$[esp+56]
	shl	eax, 6
	add	eax, edi
	mov	edx, DWORD PTR _nRMx$[esp+56]
	mov	DWORD PTR $T87664[esp+52], ecx
	mov	ebp, edx
	lea	eax, DWORD PTR [edi+eax*8]
	lea	eax, DWORD PTR [edi+eax*2]
	lea	esi, DWORD PTR [edi+eax*2]
	mov	eax, DWORD PTR _nSearchRegion$[esp+56]
	lea	ebx, DWORD PTR [eax+eax*2]
	lea	ebx, DWORD PTR [eax+ebx*4]
	mov	eax, DWORD PTR ?SubWorld@@3PAVKSubWorld@@A[esi*4+8]
	shl	ebx, 4
	add	eax, ebx
	mov	esi, DWORD PTR [eax+176]
	mov	ebx, DWORD PTR [eax+196]
	imul	esi, ecx
	add	esi, ebx
	xor	ebx, ebx
	cmp	BYTE PTR [esi+edx], bl
	je	$L86557
	mov	eax, DWORD PTR [eax+12]
	mov	esi, DWORD PTR [eax+4]
	neg	esi
	sbb	esi, esi
	and	esi, eax
	cmp	esi, ebx
	je	$L86557
$L87658:
	mov	eax, DWORD PTR [esi+12]
	lea	ecx, DWORD PTR [eax+eax*2]
	shl	ecx, 5
	sub	ecx, eax
	lea	ecx, DWORD PTR [ecx+ecx*4]
	lea	edx, DWORD PTR [eax+ecx*8]
	lea	ecx, DWORD PTR [eax+edx*2]
	shl	ecx, 2
	cmp	DWORD PTR ?Npc@@3PAVKNpc@@A[ecx+2744], ebp
	jne	SHORT $L87661
	mov	edx, DWORD PTR $T87664[esp+52]
	cmp	DWORD PTR ?Npc@@3PAVKNpc@@A[ecx+2748], edx
	jne	SHORT $L87661
	push	eax
	mov	eax, DWORD PTR _nLauncherIdx$[esp+56]
	push	eax
	mov	ecx, OFFSET FLAT:?NpcSet@@3VKNpcSet@@A
	call	?GetRelation@KNpcSet@@QAE?AW4NPC_RELATION@@HH@Z ; KNpcSet::GetRelation
	mov	ecx, DWORD PTR _eRelation$[esp+52]
	test	eax, ecx
	jne	SHORT $L87668
$L87661:
	mov	esi, DWORD PTR [esi+4]
	cmp	DWORD PTR [esi+4], ebx
	je	$L86557
	cmp	esi, ebx
	jne	SHORT $L87658
	jmp	$L86557
$L87668:
	mov	esi, DWORD PTR [esi+12]

; 1275 : 			if (nNpcIdx > 0)	

	cmp	esi, ebx
	jle	$L86557

; 1276 : 			{
; 1277 : 				nRet++;
; 1278 : #ifndef _SERVER
; 1279 : 				int nSrcX = 0;
; 1280 : 				int nSrcY = 0;
; 1281 : 				SubWorld[0].Map2Mps(nSearchRegion, Npc[nNpcIdx].m_MapX,Npc[nNpcIdx].m_MapY, Npc[nNpcIdx].m_OffX, Npc[nNpcIdx].m_OffY,  &nSrcX, &nSrcY);

	lea	eax, DWORD PTR [esi+esi*2]
	mov	ebp, DWORD PTR _nRet$[esp+56]
	shl	eax, 5
	sub	eax, esi
	lea	ecx, DWORD PTR _nSrcY$86564[esp+52]
	push	ecx
	inc	ebp
	lea	edx, DWORD PTR [eax+eax*4]
	mov	DWORD PTR _nRet$[esp+60], ebp
	mov	DWORD PTR _nSrcX$86563[esp+60], ebx
	mov	DWORD PTR _nSrcY$86564[esp+56], ebx
	lea	eax, DWORD PTR [esi+edx*8]
	lea	edx, DWORD PTR _nSrcX$86563[esp+60]
	push	edx
	lea	eax, DWORD PTR [esi+eax*2]
	shl	eax, 2
	mov	ecx, DWORD PTR ?Npc@@3PAVKNpc@@A[eax+2760]
	mov	edx, DWORD PTR ?Npc@@3PAVKNpc@@A[eax+2756]
	push	ecx
	mov	ecx, DWORD PTR ?Npc@@3PAVKNpc@@A[eax+2748]
	push	edx
	mov	edx, DWORD PTR ?Npc@@3PAVKNpc@@A[eax+2744]
	mov	eax, DWORD PTR _nSearchRegion$[esp+72]
	push	ecx
	push	edx
	push	eax
	mov	ecx, OFFSET FLAT:?SubWorld@@3PAVKSubWorld@@A
	call	?Map2Mps@KSubWorld@@QAEXHHHHHPAH0@Z	; KSubWorld::Map2Mps

; 1282 : 				
; 1283 : 				if (m_bFollowNpcWhenCollid)

	mov	ecx, DWORD PTR _this$[esp+56]
	cmp	DWORD PTR [ecx+444], ebx
	je	SHORT $L86565

; 1284 : 					CreateSpecialEffect(MS_DoCollision, nSrcX, nSrcY, m_nCurrentMapZ, nNpcIdx);

	mov	edx, DWORD PTR [ecx+224]
	mov	eax, DWORD PTR _nSrcY$86564[esp+52]
	push	esi
	push	edx
	mov	edx, DWORD PTR _nSrcX$86563[esp+64]
	push	eax
	push	edx

; 1285 : 				else 

	jmp	SHORT $L87674
$L86565:

; 1286 : 					CreateSpecialEffect(MS_DoCollision, nSrcX, nSrcY, m_nCurrentMapZ);

	mov	eax, DWORD PTR [ecx+224]
	mov	edx, DWORD PTR _nSrcY$86564[esp+52]
	push	ebx
	push	eax
	mov	eax, DWORD PTR _nSrcX$86563[esp+64]
	push	edx
	push	eax
$L87674:
	push	3
	call	?CreateSpecialEffect@KMissle@@QAEHW4eMissleStatus@@HHHH@Z ; KMissle::CreateSpecialEffect
$L86557:
	mov	eax, DWORD PTR _j$86555[esp+56]
	mov	edx, DWORD PTR _nRangeX$[esp+56]
	inc	eax
	cmp	eax, edx
	mov	DWORD PTR _j$86555[esp+56], eax
	jle	$L87673
	mov	eax, DWORD PTR -4+[esp+56]
	mov	ecx, DWORD PTR _i$[esp+56]
$L86553:
	inc	ecx
	cmp	ecx, edx
	mov	DWORD PTR _i$[esp+56], ecx
	jle	$L86552
	pop	esi
	pop	ebp
	pop	ebx
$L86554:

; 1287 : #else
; 1288 : 				ProcessDamage(nNpcIdx);						
; 1289 : #endif
; 1290 : 			}
; 1291 : 		}
; 1292 : 	}
; 1293 : 	return nRet;

	mov	eax, DWORD PTR _nRet$[esp+44]
	pop	edi

; 1294 : }

	add	esp, 40					; 00000028H
	ret	24					; 00000018H
?ProcessCollision@KMissle@@AAEHHHHHHH@Z ENDP		; KMissle::ProcessCollision
_TEXT	ENDS
;	COMDAT ?ProcessCollision@KMissle@@AAEHXZ
_TEXT	SEGMENT
?ProcessCollision@KMissle@@AAEHXZ PROC NEAR		; KMissle::ProcessCollision, COMDAT

; 1299 : #ifdef TOOLVERSION
; 1300 : 	return 0;
; 1301 : #endif
; 1302 : 	if (m_bClientSend) return 0;

	mov	eax, DWORD PTR [ecx+64]
	test	eax, eax
	je	SHORT $L86570
	xor	eax, eax

; 1304 : }

	ret	0
$L86570:

; 1303 : 	return ProcessCollision(m_nLauncher, m_nRegionId, m_nCurrentMapX, m_nCurrentMapY, m_nDamageRange , m_eRelation);

	mov	eax, DWORD PTR [ecx+108]
	mov	edx, DWORD PTR [ecx+148]
	push	eax
	mov	eax, DWORD PTR [ecx+220]
	push	edx
	mov	edx, DWORD PTR [ecx+216]
	push	eax
	mov	eax, DWORD PTR [ecx+364]
	push	edx
	mov	edx, DWORD PTR [ecx+332]
	push	eax
	push	edx
	call	?ProcessCollision@KMissle@@AAEHHHHHHH@Z	; KMissle::ProcessCollision

; 1304 : }

	ret	0
?ProcessCollision@KMissle@@AAEHXZ ENDP			; KMissle::ProcessCollision
_TEXT	ENDS
PUBLIC	??_7KSkillSpecialNode@@6B@			; KSkillSpecialNode::`vftable'
PUBLIC	??_GKSkillSpecialNode@@UAEPAXI@Z		; KSkillSpecialNode::`scalar deleting destructor'
PUBLIC	??_EKSkillSpecialNode@@UAEPAXI@Z		; KSkillSpecialNode::`vector deleting destructor'
EXTRN	?g_SubWorldSet@@3VKSubWorldSet@@A:BYTE		; g_SubWorldSet
EXTRN	??0KSkillSpecial@@QAE@XZ:NEAR			; KSkillSpecial::KSkillSpecial
EXTRN	?Init@KSkillSpecial@@QAEHXZ:NEAR		; KSkillSpecial::Init
;	COMDAT ??_7KSkillSpecialNode@@6B@
; File ..\engine\src\KNode.h
CONST	SEGMENT
??_7KSkillSpecialNode@@6B@ DD FLAT:??_EKSkillSpecialNode@@UAEPAXI@Z ; KSkillSpecialNode::`vftable'
CONST	ENDS
;	COMDAT xdata$x
xdata$x	SEGMENT
$T87743	DD	019930520H
	DD	01H
	DD	FLAT:$T87748
	DD	2 DUP(00H)
	DD	2 DUP(00H)
	ORG $+4
$T87748	DD	0ffffffffH
	DD	FLAT:$L87690
xdata$x	ENDS
;	COMDAT ?CreateSpecialEffect@KMissle@@QAEHW4eMissleStatus@@HHHH@Z
_TEXT	SEGMENT
_eStatus$ = 8
_nPX$ = 12
_nPY$ = 16
_nPZ$ = 20
_nNpcIndex$ = 24
_this$ = -16
$T87686 = 24
__$EHRec$ = -12
?CreateSpecialEffect@KMissle@@QAEHW4eMissleStatus@@HHHH@Z PROC NEAR ; KMissle::CreateSpecialEffect, COMDAT

; 1310 : {

	push	-1
	push	$L87747
	mov	eax, DWORD PTR fs:__except_list
	push	eax
	mov	DWORD PTR fs:__except_list, esp
	push	ecx
	push	ebx
	push	ebp
	push	esi

; 1311 : 	
; 1312 : 	KSkillSpecialNode * pNode = NULL;
; 1313 : 	//同一颗子碟不能有几个爆炸效果在一个Npc身上
; 1314 : 	if (nNpcIndex > 0)

	mov	esi, DWORD PTR _nNpcIndex$[esp+24]
	xor	ebp, ebp
	mov	ebx, ecx
	cmp	esi, ebp
	push	edi
	mov	DWORD PTR _this$[esp+32], ebx
	jle	SHORT $L86585

; 1315 : 	{
; 1316 : 		pNode = (KSkillSpecialNode*)m_MissleRes.m_SkillSpecialList.GetHead();

	mov	ecx, DWORD PTR [ebx+468]
	mov	eax, DWORD PTR [ecx+4]
	neg	eax
	sbb	eax, eax
	and	eax, ecx

; 1317 : 		while(pNode)

	cmp	eax, ebp
	je	SHORT $L86585

; 1318 : 		{
; 1319 : 			if (pNode->m_pSkillSpecial->m_dwMatchID == Npc[nNpcIndex].m_dwID) return FALSE;

	lea	ecx, DWORD PTR [esi+esi*2]
	shl	ecx, 5
	sub	ecx, esi
	lea	ecx, DWORD PTR [ecx+ecx*4]
	lea	edx, DWORD PTR [esi+ecx*8]
	lea	ecx, DWORD PTR [esi+edx*2]
	mov	ecx, DWORD PTR ?Npc@@3PAVKNpc@@A[ecx*4]
$L86584:
	mov	edx, DWORD PTR [eax+12]
	cmp	DWORD PTR [edx+44], ecx
	je	SHORT $L87745

; 1320 : 			pNode = (KSkillSpecialNode*)pNode->GetNext();

	mov	eax, DWORD PTR [eax+4]
	cmp	DWORD PTR [eax+4], ebp
	je	SHORT $L86585

; 1317 : 		while(pNode)

	cmp	eax, ebp
	jne	SHORT $L86584
$L86585:

; 1321 : 		}
; 1322 : 	}
; 1323 : 	m_MissleRes.PlaySound(eStatus, nPX, nPY, 0);

	mov	eax, DWORD PTR _nPY$[esp+28]
	mov	ecx, DWORD PTR _nPX$[esp+28]
	mov	edi, DWORD PTR _eStatus$[esp+28]
	push	ebp
	push	eax
	push	ecx
	push	edi
	lea	ecx, DWORD PTR [ebx+464]
	call	?PlaySoundA@KMissleRes@@QAEXHHHH@Z	; KMissleRes::PlaySoundA

; 1324 : 	if (!m_MissleRes.m_MissleRes[eStatus].AnimFileName[0]) return FALSE; 

	imul	edi, 212				; 000000d4H
	add	ebx, edi
	mov	al, BYTE PTR [ebx+496]
	lea	edi, DWORD PTR [ebx+496]
	test	al, al
	jne	SHORT $L86588
$L87745:
	xor	eax, eax
	jmp	$L86579
$L86588:

; 1325 : 	pNode = new KSkillSpecialNode;

	push	16					; 00000010H
	call	??2@YAPAXI@Z				; operator new
	add	esp, 4
	cmp	eax, ebp
	je	SHORT $L87684
	mov	DWORD PTR [eax+4], ebp
	mov	DWORD PTR [eax+8], ebp
	mov	DWORD PTR [eax+12], ebp
	mov	DWORD PTR [eax], OFFSET FLAT:??_7KSkillSpecialNode@@6B@ ; KSkillSpecialNode::`vftable'
	mov	ebp, eax
$L87684:

; 1326 : 	KSkillSpecial * pSkillSpecial = new KSkillSpecial;

	push	240					; 000000f0H
	call	??2@YAPAXI@Z				; operator new
	add	esp, 4
	mov	DWORD PTR $T87686[esp+28], eax
	xor	ecx, ecx
	cmp	eax, ecx
	mov	DWORD PTR __$EHRec$[esp+40], ecx
	je	SHORT $L87688
	mov	ecx, eax
	call	??0KSkillSpecial@@QAE@XZ		; KSkillSpecial::KSkillSpecial
	mov	ecx, eax
$L87688:

; 1327 : 	pNode->m_pSkillSpecial = pSkillSpecial;
; 1328 : 	
; 1329 : 	int nSrcX = nPX;
; 1330 : 	int nSrcY = nPY;
; 1331 : 	
; 1332 : 	pSkillSpecial->m_nPX = nSrcX;
; 1333 : 	pSkillSpecial->m_nPY = nSrcY - 5;// MISSLE_Y_OFFSET;

	mov	eax, DWORD PTR _nPY$[esp+28]
	mov	edx, DWORD PTR _nPX$[esp+28]
	add	eax, -5					; fffffffbH
	mov	DWORD PTR [ebp+12], ecx
	mov	DWORD PTR [ecx+28], eax

; 1334 : 	pSkillSpecial->m_nPZ = nPZ;
; 1335 : 	pSkillSpecial->m_nNpcIndex = nNpcIndex;
; 1336 : 	pSkillSpecial->m_dwMatchID = Npc[nNpcIndex].m_dwID;

	lea	eax, DWORD PTR [esi+esi*2]
	shl	eax, 5
	sub	eax, esi
	mov	DWORD PTR [ecx+24], edx
	mov	edx, DWORD PTR _nPZ$[esp+28]
	mov	DWORD PTR [ecx+40], esi
	lea	eax, DWORD PTR [eax+eax*4]
	mov	DWORD PTR [ecx+32], edx
	mov	DWORD PTR __$EHRec$[esp+40], -1
	lea	edx, DWORD PTR [esi+eax*8]
	lea	eax, DWORD PTR [esi+edx*2]
	mov	edx, DWORD PTR ?Npc@@3PAVKNpc@@A[eax*4]

; 1337 : 	pSkillSpecial->m_pMissleRes = &m_MissleRes.m_MissleRes[eStatus];

	mov	DWORD PTR [ecx+48], edi
	mov	DWORD PTR [ecx+44], edx

; 1338 : 	pSkillSpecial->m_nBeginTime = g_SubWorldSet.GetGameTime();

	mov	eax, DWORD PTR ?g_SubWorldSet@@3VKSubWorldSet@@A
	mov	DWORD PTR [ecx+52], eax

; 1339 : 	pSkillSpecial->m_nEndTime = g_SubWorldSet.GetGameTime() + (pSkillSpecial->m_pMissleRes->nInterval * pSkillSpecial->m_pMissleRes->nTotalFrame / pSkillSpecial->m_pMissleRes->nDir);

	mov	eax, DWORD PTR [edi+104]
	imul	eax, DWORD PTR [edi+100]
	cdq
	idiv	DWORD PTR [edi+108]
	add	eax, DWORD PTR ?g_SubWorldSet@@3VKSubWorldSet@@A
	mov	DWORD PTR [ecx+56], eax

; 1340 : 	pSkillSpecial->m_nCurDir = g_DirIndex2Dir(m_nDirIndex, m_MissleRes.m_MissleRes[eStatus].nDir);

	mov	eax, DWORD PTR [ebx+604]
	test	eax, eax
	jg	SHORT $L87725
	or	edx, -1
	jmp	SHORT $L87723
$L87725:
	mov	edx, DWORD PTR _this$[esp+32]
	mov	edx, DWORD PTR [edx+420]
	imul	edx, eax
	sar	edx, 6
$L87723:
	mov	DWORD PTR [ecx+36], edx

; 1341 : 	pSkillSpecial->Init();

	call	?Init@KSkillSpecial@@QAEHXZ		; KSkillSpecial::Init

; 1342 : 	m_MissleRes.m_SkillSpecialList.AddTail(pNode);

	mov	eax, DWORD PTR _this$[esp+32]
	add	eax, 476				; 000001dcH
	test	ebp, ebp
	je	SHORT $L87741
	mov	ecx, DWORD PTR [eax+8]
	test	ecx, ecx
	je	SHORT $L87741
	mov	DWORD PTR [ebp+8], ecx
	mov	DWORD PTR [ebp+4], eax
	mov	ecx, DWORD PTR [eax+8]
	mov	DWORD PTR [ecx+4], ebp
	mov	DWORD PTR [eax+8], ebp
$L87741:

; 1343 : 	
; 1344 : 	return TRUE;

	mov	eax, 1
$L86579:

; 1345 : }

	mov	ecx, DWORD PTR __$EHRec$[esp+32]
	pop	edi
	pop	esi
	pop	ebp
	pop	ebx
	mov	DWORD PTR fs:__except_list, ecx
	add	esp, 16					; 00000010H
	ret	20					; 00000014H
_TEXT	ENDS
;	COMDAT text$x
text$x	SEGMENT
$L87690:
	mov	eax, DWORD PTR $T87686[ebp-4]
	push	eax
	call	??3@YAXPAX@Z				; operator delete
	pop	ecx
	ret	0
$L87747:
	mov	eax, OFFSET FLAT:$T87743
	jmp	___CxxFrameHandler
text$x	ENDS
?CreateSpecialEffect@KMissle@@QAEHW4eMissleStatus@@HHHH@Z ENDP ; KMissle::CreateSpecialEffect
PUBLIC	??1KSkillSpecialNode@@UAE@XZ			; KSkillSpecialNode::~KSkillSpecialNode
;	COMDAT ??_GKSkillSpecialNode@@UAEPAXI@Z
_TEXT	SEGMENT
___flags$ = 8
??_GKSkillSpecialNode@@UAEPAXI@Z PROC NEAR		; KSkillSpecialNode::`scalar deleting destructor', COMDAT
	push	esi
	mov	esi, ecx
	call	??1KSkillSpecialNode@@UAE@XZ		; KSkillSpecialNode::~KSkillSpecialNode
	test	BYTE PTR ___flags$[esp], 1
	je	SHORT $L87754
	push	esi
	call	??3@YAXPAX@Z				; operator delete
	add	esp, 4
$L87754:
	mov	eax, esi
	pop	esi
	ret	4
??_GKSkillSpecialNode@@UAEPAXI@Z ENDP			; KSkillSpecialNode::`scalar deleting destructor'
_TEXT	ENDS
;	COMDAT ??1KSkillSpecialNode@@UAE@XZ
_TEXT	SEGMENT
??1KSkillSpecialNode@@UAE@XZ PROC NEAR			; KSkillSpecialNode::~KSkillSpecialNode, COMDAT

; 57   : 	~KSkillSpecialNode(){delete m_pSkillSpecial;};

	push	esi
	mov	esi, ecx
	mov	eax, DWORD PTR [esi+12]
	mov	DWORD PTR [esi], OFFSET FLAT:??_7KSkillSpecialNode@@6B@ ; KSkillSpecialNode::`vftable'
	push	eax
	call	??3@YAXPAX@Z				; operator delete
	add	esp, 4
	mov	DWORD PTR [esi], OFFSET FLAT:??_7KNode@@6B@ ; KNode::`vftable'
	pop	esi
	ret	0
??1KSkillSpecialNode@@UAE@XZ ENDP			; KSkillSpecialNode::~KSkillSpecialNode
_TEXT	ENDS
PUBLIC	?GetMpsPos@KMissle@@QAEXPAH0@Z			; KMissle::GetMpsPos
PUBLIC	?GetLightInfo@KMissle@@QAEXPAUKLightInfo@@@Z	; KMissle::GetLightInfo
;	COMDAT ?GetLightInfo@KMissle@@QAEXPAUKLightInfo@@@Z
_TEXT	SEGMENT
_pLightInfo$ = 8
_nPX$ = 8
_nPY$ = -4
?GetLightInfo@KMissle@@QAEXPAUKLightInfo@@@Z PROC NEAR	; KMissle::GetLightInfo, COMDAT

; 1348 : {

	push	ecx
	push	esi
	push	edi

; 1349 : 	if (!pLightInfo) 

	mov	edi, DWORD PTR _pLightInfo$[esp+8]
	mov	esi, ecx
	test	edi, edi
	je	SHORT $L86603

; 1350 : 	{
; 1351 : 		return ;
; 1352 : 	}
; 1353 : 	
; 1354 : 	int nPX, nPY, nPZ;
; 1355 : 	GetMpsPos(&nPX, &nPY);

	lea	eax, DWORD PTR _nPY$[esp+12]
	lea	ecx, DWORD PTR _nPX$[esp+8]
	push	eax
	push	ecx
	mov	ecx, esi
	call	?GetMpsPos@KMissle@@QAEXPAH0@Z		; KMissle::GetMpsPos

; 1356 : 	nPZ = m_nCurrentMapZ;

	mov	eax, DWORD PTR [esi+224]

; 1357 : 	
; 1358 : 	pLightInfo->oPosition.nX = nPX;

	mov	edx, DWORD PTR _nPX$[esp+8]

; 1359 : 	pLightInfo->oPosition.nY = nPY;

	mov	ecx, DWORD PTR _nPY$[esp+12]
	mov	DWORD PTR [edi], edx
	mov	DWORD PTR [edi+4], ecx

; 1360 : 	pLightInfo->oPosition.nZ = nPZ;

	mov	DWORD PTR [edi+8], eax

; 1361 : 	pLightInfo->dwColor = 0xff000000 | m_btRedLum << 16 | m_btGreenLum << 8 | m_btBlueLum;

	mov	edx, DWORD PTR [esi+448]
	mov	eax, DWORD PTR [esi+452]
	or	edx, -256				; ffffff00H
	shl	edx, 8
	or	edx, eax
	mov	eax, DWORD PTR [esi+456]
	shl	edx, 8
	or	edx, eax

; 1362 : 	pLightInfo->nRadius = m_usLightRadius;

	xor	eax, eax
	mov	DWORD PTR [edi+12], edx
	mov	ax, WORD PTR [esi+460]
	mov	DWORD PTR [edi+16], eax
$L86603:
	pop	edi
	pop	esi

; 1363 : }

	pop	ecx
	ret	4
?GetLightInfo@KMissle@@QAEXPAUKLightInfo@@@Z ENDP	; KMissle::GetLightInfo
_TEXT	ENDS
PUBLIC	?DoWait@KMissle@@AAEXXZ				; KMissle::DoWait
;	COMDAT ?DoWait@KMissle@@AAEXXZ
_TEXT	SEGMENT
_nSrcX$ = -4
_nSrcY$ = -8
?DoWait@KMissle@@AAEXXZ PROC NEAR			; KMissle::DoWait, COMDAT

; 1367 : {

	sub	esp, 8
	push	esi
	mov	esi, ecx

; 1368 : 	//	if (m_eMissleStatus == MS_DoWait) return;
; 1369 : 	m_eMissleStatus = MS_DoWait;
; 1370 : 	
; 1371 : #ifndef _SERVER 
; 1372 : 	int nSrcX = 0 ;
; 1373 : 	int nSrcY = 0 ;
; 1374 : 	SubWorld[0].Map2Mps(m_nRegionId, m_nCurrentMapX, m_nCurrentMapY,m_nXOffset, m_nYOffset, &nSrcX, &nSrcY);

	lea	eax, DWORD PTR _nSrcY$[esp+12]
	lea	ecx, DWORD PTR _nSrcX$[esp+12]
	mov	edx, DWORD PTR [esi+232]
	push	eax
	mov	eax, DWORD PTR [esi+228]
	push	ecx
	mov	ecx, DWORD PTR [esi+220]
	push	edx
	mov	edx, DWORD PTR [esi+216]
	push	eax
	mov	eax, DWORD PTR [esi+364]
	push	ecx
	push	edx
	push	eax
	mov	ecx, OFFSET FLAT:?SubWorld@@3PAVKSubWorld@@A
	mov	DWORD PTR [esi+352], 0
	mov	DWORD PTR _nSrcX$[esp+40], 0
	mov	DWORD PTR _nSrcY$[esp+40], 0
	call	?Map2Mps@KSubWorld@@QAEXHHHHHPAH0@Z	; KSubWorld::Map2Mps

; 1375 : 	CreateSpecialEffect(MS_DoWait, nSrcX, nSrcY, m_nCurrentMapZ);

	mov	ecx, DWORD PTR [esi+224]
	mov	edx, DWORD PTR _nSrcY$[esp+12]
	mov	eax, DWORD PTR _nSrcX$[esp+12]
	push	0
	push	ecx
	push	edx
	push	eax
	push	0
	mov	ecx, esi
	call	?CreateSpecialEffect@KMissle@@QAEHW4eMissleStatus@@HHHH@Z ; KMissle::CreateSpecialEffect
	pop	esi

; 1376 : #endif
; 1377 : 	
; 1378 : }

	add	esp, 8
	ret	0
?DoWait@KMissle@@AAEXXZ ENDP				; KMissle::DoWait
_TEXT	ENDS
EXTRN	?Mps2Map@KSubWorld@@QAEXHHPAH0000@Z:NEAR	; KSubWorld::Mps2Map
;	COMDAT ?PrePareFly@KMissle@@AAEHXZ
_TEXT	SEGMENT
_nPX$86618 = -16
_nPY$86619 = -12
_nParentPX$86628 = -16
_nParentPY$86629 = -4
_nSrcPX$86630 = -12
_nSrcPY$86631 = -8
_nParentPX$86634 = -8
_nParentPY$86635 = -16
_nSrcPX$86636 = -4
_nSrcPY$86637 = -12
_nOldRegion$86638 = -4
?PrePareFly@KMissle@@AAEHXZ PROC NEAR			; KMissle::PrePareFly, COMDAT

; 1381 : {

	sub	esp, 16					; 00000010H
	push	ebx
	push	ebp
	push	esi
	mov	esi, ecx
	push	edi

; 1382 : 	if (m_eMoveKind == MISSLE_MMK_RollBack)

	cmp	DWORD PTR [esi+76], 100			; 00000064H
	jne	SHORT $L86616

; 1383 : 		m_nTempParam2 =  m_nStartLifeTime + (m_nLifeTime - m_nStartLifeTime ) / 2;

	mov	ecx, DWORD PTR [esi+208]
	mov	eax, DWORD PTR [esi+92]
	sub	eax, ecx
	cdq
	sub	eax, edx
	sar	eax, 1
	add	eax, ecx
	mov	DWORD PTR [esi+416], eax
$L86616:

; 1384 : 
; 1385 : 	//是否会随发送者的移动而中断，类式魔兽3中大型法术
; 1386 : 	if (m_nInteruptTypeWhenMove)

	mov	eax, DWORD PTR [esi+128]
	test	eax, eax
	je	SHORT $L86620

; 1387 : 	{
; 1388 : 		int nPX, nPY;
; 1389 : 		Npc[m_nLauncher].GetMpsPos(&nPX, &nPY);

	lea	eax, DWORD PTR _nPY$86619[esp+32]
	lea	ecx, DWORD PTR _nPX$86618[esp+32]
	push	eax
	mov	eax, DWORD PTR [esi+332]
	push	ecx
	lea	ecx, DWORD PTR [eax+eax*2]
	shl	ecx, 5
	sub	ecx, eax
	lea	edx, DWORD PTR [ecx+ecx*4]
	lea	ecx, DWORD PTR [eax+edx*8]
	lea	edx, DWORD PTR [eax+ecx*2]
	lea	ecx, DWORD PTR ?Npc@@3PAVKNpc@@A[edx*4]
	call	?GetMpsPos@KNpc@@QAEXPAH0@Z		; KNpc::GetMpsPos

; 1390 : 		if (nPX != m_nLauncherSrcPX || nPY != m_nLauncherSrcPY)

	mov	eax, DWORD PTR _nPX$86618[esp+32]
	mov	ecx, DWORD PTR [esi+136]
	cmp	eax, ecx
	jne	SHORT $L86621
	mov	ecx, DWORD PTR _nPY$86619[esp+32]
	mov	eax, DWORD PTR [esi+140]
	cmp	ecx, eax
	je	SHORT $L86620
$L86621:
	pop	edi
	pop	esi
	pop	ebp

; 1391 : 		{
; 1392 : 			return false;

	xor	eax, eax
	pop	ebx

; 1445 : 	
; 1446 : }

	add	esp, 16					; 00000010H
	ret	0
$L86620:

; 1393 : 		}
; 1394 : 	}
; 1395 : 	
; 1396 : 	//子碟位置需要更正为到适当的位置（子弹的出现总是以某个可能位置在不断变化的物体为参照物）
; 1397 : 	if (m_bHeelAtParent)

	mov	eax, DWORD PTR [esi+132]
	test	eax, eax
	je	$L86639

; 1398 : 	{
; 1399 : 		int nNewPX = 0;
; 1400 : 		int nNewPY = 0;
; 1401 : 		
; 1402 : 		if (m_nParentMissleIndex) // 参考点为母子弹

	mov	ecx, DWORD PTR [esi+340]
	test	ecx, ecx
	je	SHORT $L86625

; 1403 : 		{
; 1404 : 			if (Missle[m_nParentMissleIndex].m_dwLauncherId != m_dwLauncherId)

	lea	eax, DWORD PTR [ecx+ecx*2]
	shl	eax, 3
	sub	eax, ecx
	shl	eax, 4
	sub	eax, ecx
	mov	ecx, DWORD PTR [esi+336]
	shl	eax, 3
	mov	edx, DWORD PTR ?Missle@@3PAVKMissle@@A[eax+336]
	cmp	edx, ecx
	je	SHORT $L86626
	pop	edi
	pop	esi
	pop	ebp

; 1405 : 			{
; 1406 : 				return false;

	xor	eax, eax
	pop	ebx

; 1445 : 	
; 1446 : }

	add	esp, 16					; 00000010H
	ret	0
$L86626:

; 1407 : 			}
; 1408 : 			else
; 1409 : 			{
; 1410 : 				int nParentPX, nParentPY;
; 1411 : 				int nSrcPX, nSrcPY;
; 1412 : 				Missle[m_nParentMissleIndex].GetMpsPos(&nParentPX, &nParentPY);

	lea	ecx, DWORD PTR _nParentPY$86629[esp+32]
	lea	edx, DWORD PTR _nParentPX$86628[esp+32]
	push	ecx
	push	edx
	lea	ecx, DWORD PTR ?Missle@@3PAVKMissle@@A[eax]
	call	?GetMpsPos@KMissle@@QAEXPAH0@Z		; KMissle::GetMpsPos

; 1413 : 				GetMpsPos(&nSrcPX, &nSrcPY);

	lea	eax, DWORD PTR _nSrcPY$86631[esp+32]
	lea	ecx, DWORD PTR _nSrcPX$86630[esp+32]
	push	eax
	push	ecx
	mov	ecx, esi
	call	?GetMpsPos@KMissle@@QAEXPAH0@Z		; KMissle::GetMpsPos

; 1414 : 				nNewPX = nSrcPX + (nParentPX - m_nRefPX);

	mov	ebx, DWORD PTR _nSrcPX$86630[esp+32]
	mov	edi, DWORD PTR [esi+236]
	mov	edx, DWORD PTR _nParentPX$86628[esp+32]

; 1415 : 				nNewPY = nSrcPY + (nParentPY - m_nRefPY);

	mov	ebp, DWORD PTR _nSrcPY$86631[esp+32]
	mov	ecx, DWORD PTR [esi+240]
	mov	eax, DWORD PTR _nParentPY$86629[esp+32]
	sub	ebx, edi
	add	ebx, edx
	sub	ebp, ecx

; 1416 : 			}
; 1417 : 		}
; 1418 : 		else

	jmp	SHORT $L87772
$L86625:

; 1419 : 			//参考点为发送者
; 1420 : 		{
; 1421 : 			_ASSERT(m_nLauncher > 0);
; 1422 : 			int nParentPX, nParentPY;
; 1423 : 			int nSrcPX, nSrcPY;
; 1424 : 			
; 1425 : 			Npc[m_nLauncher].GetMpsPos(&nParentPX, &nParentPY);

	lea	edx, DWORD PTR _nParentPY$86635[esp+32]
	lea	eax, DWORD PTR _nParentPX$86634[esp+32]
	push	edx
	push	eax
	mov	eax, DWORD PTR [esi+332]
	lea	ecx, DWORD PTR [eax+eax*2]
	shl	ecx, 5
	sub	ecx, eax
	lea	ecx, DWORD PTR [ecx+ecx*4]
	lea	edx, DWORD PTR [eax+ecx*8]
	lea	eax, DWORD PTR [eax+edx*2]
	lea	ecx, DWORD PTR ?Npc@@3PAVKNpc@@A[eax*4]
	call	?GetMpsPos@KNpc@@QAEXPAH0@Z		; KNpc::GetMpsPos

; 1426 : 			GetMpsPos(&nSrcPX, &nSrcPY);

	lea	ecx, DWORD PTR _nSrcPY$86637[esp+32]
	lea	edx, DWORD PTR _nSrcPX$86636[esp+32]
	push	ecx
	push	edx
	mov	ecx, esi
	call	?GetMpsPos@KMissle@@QAEXPAH0@Z		; KMissle::GetMpsPos

; 1427 : 			
; 1428 : 			nNewPX = nSrcPX + (nParentPX - m_nRefPX);

	mov	ebx, DWORD PTR _nSrcPX$86636[esp+32]
	mov	edi, DWORD PTR [esi+236]
	mov	edx, DWORD PTR _nParentPX$86634[esp+32]

; 1429 : 			nNewPY = nSrcPY + (nParentPY - m_nRefPY);

	mov	ebp, DWORD PTR _nSrcPY$86637[esp+32]
	mov	ecx, DWORD PTR [esi+240]
	mov	eax, DWORD PTR _nParentPY$86635[esp+32]
	sub	ebx, edi
	add	ebx, edx
	sub	ebp, ecx
$L87772:

; 1430 : 		}
; 1431 : 		
; 1432 : 		int nOldRegion = m_nRegionId;
; 1433 : 		CurRegion.DecRef(m_nCurrentMapX, m_nCurrentMapY, obj_missle);

	mov	edx, DWORD PTR [esi+216]
	add	ebp, eax
	mov	eax, DWORD PTR [esi+220]
	push	2
	push	eax
	mov	eax, DWORD PTR [esi+360]
	push	edx
	mov	edx, eax
	shl	edx, 6
	mov	ecx, DWORD PTR [esi+364]
	add	edx, eax
	lea	edi, DWORD PTR [esi+364]
	mov	DWORD PTR _nOldRegion$86638[esp+44], ecx
	lea	edx, DWORD PTR [eax+edx*8]
	lea	edx, DWORD PTR [eax+edx*2]
	lea	eax, DWORD PTR [eax+edx*2]
	lea	edx, DWORD PTR [ecx+ecx*2]
	lea	edx, DWORD PTR [ecx+edx*4]
	mov	ecx, DWORD PTR ?SubWorld@@3PAVKSubWorld@@A[eax*4+8]
	shl	edx, 4
	add	ecx, edx
	call	?DecRef@KRegion@@QAEHHHW4MOVE_OBJ_KIND@@@Z ; KRegion::DecRef

; 1434 : 		SubWorld[m_nSubWorldId].Mps2Map(nNewPX, nNewPY, &m_nRegionId, &m_nCurrentMapX, &m_nCurrentMapY, &m_nXOffset, &m_nYOffset);

	lea	eax, DWORD PTR [esi+232]
	lea	ecx, DWORD PTR [esi+228]
	push	eax
	lea	eax, DWORD PTR [esi+220]
	push	ecx
	push	eax
	lea	eax, DWORD PTR [esi+216]
	push	eax
	mov	eax, DWORD PTR [esi+360]
	mov	edx, eax
	push	edi
	shl	edx, 6
	add	edx, eax
	push	ebp
	push	ebx
	lea	ecx, DWORD PTR [eax+edx*8]
	lea	edx, DWORD PTR [eax+ecx*2]
	lea	eax, DWORD PTR [eax+edx*2]
	lea	ecx, DWORD PTR ?SubWorld@@3PAVKSubWorld@@A[eax*4]
	call	?Mps2Map@KSubWorld@@QAEXHHPAH0000@Z	; KSubWorld::Mps2Map

; 1435 : 		CurRegion.AddRef(m_nCurrentMapX, m_nCurrentMapY, obj_missle);

	mov	ecx, DWORD PTR [esi+220]
	mov	eax, DWORD PTR [esi+360]
	mov	edx, DWORD PTR [esi+216]
	push	2
	push	ecx
	mov	ecx, eax
	shl	ecx, 6
	add	ecx, eax
	push	edx
	lea	edx, DWORD PTR [eax+ecx*8]
	lea	ecx, DWORD PTR [eax+edx*2]
	lea	edx, DWORD PTR [eax+ecx*2]
	mov	eax, DWORD PTR [edi]
	lea	ecx, DWORD PTR [eax+eax*2]
	lea	eax, DWORD PTR [eax+ecx*4]
	mov	ecx, DWORD PTR ?SubWorld@@3PAVKSubWorld@@A[edx*4+8]
	shl	eax, 4
	add	ecx, eax
	call	?AddRef@KRegion@@QAEHHHW4MOVE_OBJ_KIND@@@Z ; KRegion::AddRef

; 1436 : 		
; 1437 : 		if (nOldRegion != m_nRegionId)

	mov	edi, DWORD PTR [edi]
	mov	eax, DWORD PTR _nOldRegion$86638[esp+32]
	cmp	eax, edi
	je	SHORT $L86639

; 1438 : 		{
; 1439 : 			SubWorld[m_nSubWorldId].m_WorldMessage.Send(GWM_MISSLE_CHANGE_REGION, nOldRegion, m_nRegionId, m_nMissleId);

	mov	ecx, DWORD PTR [esi+356]
	mov	esi, DWORD PTR [esi+360]
	mov	edx, esi
	push	ecx
	shl	edx, 6
	add	edx, esi
	push	edi
	push	eax
	push	4002					; 00000fa2H
	lea	eax, DWORD PTR [esi+edx*8]
	lea	ecx, DWORD PTR [esi+eax*2]
	lea	edx, DWORD PTR [esi+ecx*2]
	lea	ecx, DWORD PTR ?SubWorld@@3PAVKSubWorld@@A[edx*4+8300]
	call	?Send@KWorldMsg@@QAEHKHHH@Z		; KWorldMsg::Send
$L86639:
	pop	edi
	pop	esi
	pop	ebp

; 1440 : 		} 
; 1441 : 		
; 1442 : 	}
; 1443 : 	
; 1444 : 	return true;

	mov	eax, 1
	pop	ebx

; 1445 : 	
; 1446 : }

	add	esp, 16					; 00000010H
	ret	0
?PrePareFly@KMissle@@AAEHXZ ENDP			; KMissle::PrePareFly
_TEXT	ENDS
;	COMDAT ?CheckNearestCollision@KMissle@@AAEHXZ
_TEXT	SEGMENT
_nSearchRegion$ = -24
_nRMx$ = -28
_nRMy$ = -32
_nNpcOffsetX$ = -20
_nNpcOffsetY$ = -12
_nCellWidth$ = -16
_nCellHeight$ = -8
_i$ = -36
_j$86661 = -4
$T87811 = -12
$T87812 = -20
?CheckNearestCollision@KMissle@@AAEHXZ PROC NEAR	; KMissle::CheckNearestCollision, COMDAT

; 1449 : {

	sub	esp, 36					; 00000024H
	push	ebx
	push	ebp
	push	esi
	push	edi
	mov	edi, ecx

; 1450 : 	int nSearchRegion = 0;

	xor	eax, eax
	mov	DWORD PTR _nSearchRegion$[esp+52], eax

; 1451 : 	int nRMx = 0;

	mov	DWORD PTR _nRMx$[esp+52], eax

; 1452 : 	int nRMy = 0;

	mov	DWORD PTR _nRMy$[esp+52], eax

; 1453 : 	BOOL bCollision = TRUE;
; 1454 : 	int nNpcIdx = 0;
; 1455 : 	int nDX = 0;
; 1456 : 	int nDY = 0;
; 1457 : 	int nNpcOffsetX = 0;
; 1458 : 	int nNpcOffsetY = 0;
; 1459 : 	int nAbsX = 0;
; 1460 : 	int nAbsY = 0;
; 1461 : 	int nCellWidth = CellWidth;

	mov	eax, DWORD PTR [edi+360]
	mov	ecx, eax

; 1462 : 	int nCellHeight = CellHeight;
; 1463 : 	_ASSERT(nCellWidth > 0 && nCellHeight > 0);
; 1464 : 	
; 1465 : 	for (int i = -1; i <= 1; i ++)

	mov	DWORD PTR _i$[esp+52], -1
	shl	ecx, 6
	add	ecx, eax
	lea	edx, DWORD PTR [eax+ecx*8]
	lea	ecx, DWORD PTR [eax+edx*2]
	lea	eax, DWORD PTR [eax+ecx*2]
	shl	eax, 2
	mov	ecx, DWORD PTR ?SubWorld@@3PAVKSubWorld@@A[eax+8276]
	mov	eax, DWORD PTR ?SubWorld@@3PAVKSubWorld@@A[eax+8280]
	shl	ecx, 10					; 0000000aH
	shl	eax, 10					; 0000000aH
	mov	DWORD PTR _nCellWidth$[esp+52], ecx
	mov	DWORD PTR _nCellHeight$[esp+52], eax
$L86658:

; 1466 : 		for (int j = -1; j <= 1; j ++)

	or	eax, -1
	mov	DWORD PTR _j$86661[esp+52], eax
$L86662:

; 1467 : 		{
; 1468 : 			if (!KMissle::GetOffsetAxis(
; 1469 : 				m_nSubWorldId,
; 1470 : 				m_nRegionId, 
; 1471 : 				m_nCurrentMapX, 
; 1472 : 				m_nCurrentMapY, 
; 1473 : 				i , 
; 1474 : 				j , 
; 1475 : 				nSearchRegion, 
; 1476 : 				nRMx, 
; 1477 : 				nRMy
; 1478 : 				))

	lea	edx, DWORD PTR _nRMy$[esp+52]
	lea	ecx, DWORD PTR _nRMx$[esp+52]
	push	edx
	lea	edx, DWORD PTR _nSearchRegion$[esp+56]
	push	ecx
	mov	ecx, DWORD PTR [edi+220]
	push	edx
	mov	edx, DWORD PTR [edi+216]
	push	eax
	mov	eax, DWORD PTR _i$[esp+68]
	push	eax
	mov	eax, DWORD PTR [edi+364]
	push	ecx
	mov	ecx, DWORD PTR [edi+360]
	push	edx
	push	eax
	push	ecx
	call	?GetOffsetAxis@KMissle@@SAHHHHHHHAAH00@Z ; KMissle::GetOffsetAxis
	add	esp, 36					; 00000024H
	test	eax, eax
	je	$L86663

; 1479 : 				continue;
; 1480 : 			
; 1481 : 			_ASSERT(nSearchRegion >= 0);
; 1482 : 			
; 1483 : 			nNpcIdx = SubWorld[m_nSubWorldId].m_Region[nSearchRegion].FindNpc(nRMx, nRMy, m_nLauncher, m_eRelation);

	mov	eax, DWORD PTR [edi+360]
	mov	ecx, DWORD PTR _nRMy$[esp+52]
	mov	esi, eax
	mov	edx, DWORD PTR [edi+332]
	shl	esi, 6
	add	esi, eax
	mov	DWORD PTR $T87811[esp+52], ecx
	mov	ebp, DWORD PTR [edi+108]
	mov	DWORD PTR $T87812[esp+52], edx
	lea	esi, DWORD PTR [eax+esi*8]
	mov	edx, DWORD PTR _nRMx$[esp+52]
	mov	ebx, edx
	lea	esi, DWORD PTR [eax+esi*2]
	lea	eax, DWORD PTR [eax+esi*2]
	mov	esi, DWORD PTR _nSearchRegion$[esp+52]
	imul	esi, 208				; 000000d0H
	mov	eax, DWORD PTR ?SubWorld@@3PAVKSubWorld@@A[eax*4+8]
	add	eax, esi
	mov	esi, DWORD PTR [eax+176]
	imul	esi, ecx
	add	esi, DWORD PTR [eax+196]
	cmp	BYTE PTR [esi+edx], 0
	je	$L86663
	mov	eax, DWORD PTR [eax+12]
	mov	esi, DWORD PTR [eax+4]
	neg	esi
	sbb	esi, esi
	and	esi, eax
	test	esi, esi
	je	$L86663
$L87805:
	mov	eax, DWORD PTR [esi+12]
	lea	ecx, DWORD PTR [eax+eax*2]
	shl	ecx, 5
	sub	ecx, eax
	lea	ecx, DWORD PTR [ecx+ecx*4]
	lea	edx, DWORD PTR [eax+ecx*8]
	lea	ecx, DWORD PTR [eax+edx*2]
	shl	ecx, 2
	cmp	DWORD PTR ?Npc@@3PAVKNpc@@A[ecx+2744], ebx
	jne	SHORT $L87808
	mov	edx, DWORD PTR $T87811[esp+52]
	cmp	DWORD PTR ?Npc@@3PAVKNpc@@A[ecx+2748], edx
	jne	SHORT $L87808
	push	eax
	mov	eax, DWORD PTR $T87812[esp+56]
	push	eax
	mov	ecx, OFFSET FLAT:?NpcSet@@3VKNpcSet@@A
	call	?GetRelation@KNpcSet@@QAE?AW4NPC_RELATION@@HH@Z ; KNpcSet::GetRelation
	test	eax, ebp
	jne	SHORT $L87817
$L87808:
	mov	esi, DWORD PTR [esi+4]
	mov	eax, DWORD PTR [esi+4]
	test	eax, eax
	je	$L86663
	test	esi, esi
	jne	SHORT $L87805

; 1528 : 						{
; 1529 : 							bCollision = FALSE;
; 1530 : 							goto CheckCollision;
; 1531 : 						}
; 1532 : 					}
; 1533 : 				}
; 1534 : 				
; 1535 : 				
; 1536 : CheckCollision:
; 1537 : 				if (bCollision)

	jmp	$L86663
$L87817:

; 1479 : 				continue;
; 1480 : 			
; 1481 : 			_ASSERT(nSearchRegion >= 0);
; 1482 : 			
; 1483 : 			nNpcIdx = SubWorld[m_nSubWorldId].m_Region[nSearchRegion].FindNpc(nRMx, nRMy, m_nLauncher, m_eRelation);

	mov	esi, DWORD PTR [esi+12]

; 1484 : 			
; 1485 : 			if (nNpcIdx > 0)

	test	esi, esi
	jle	$L86663

; 1486 : 			{
; 1487 : 				bCollision = TRUE;
; 1488 : 				nDX = m_nCurrentMapX - Npc[nNpcIdx].m_MapX;

	lea	eax, DWORD PTR [esi+esi*2]

; 1489 : 				nDY = m_nCurrentMapY - Npc[nNpcIdx].m_MapY;

	mov	ebp, DWORD PTR [edi+220]
	shl	eax, 5
	sub	eax, esi
	lea	ecx, DWORD PTR [eax+eax*4]
	lea	edx, DWORD PTR [esi+ecx*8]
	mov	ecx, DWORD PTR [edi+216]
	lea	eax, DWORD PTR [esi+edx*2]
	shl	eax, 2
	mov	edx, DWORD PTR ?Npc@@3PAVKNpc@@A[eax+2748]
	mov	ebx, DWORD PTR ?Npc@@3PAVKNpc@@A[eax+2744]
	sub	ebp, edx

; 1490 : 				nNpcOffsetX = Npc[nNpcIdx].m_OffX;

	mov	edx, DWORD PTR ?Npc@@3PAVKNpc@@A[eax+2756]

; 1491 : 				nNpcOffsetY = Npc[nNpcIdx].m_OffY;

	mov	eax, DWORD PTR ?Npc@@3PAVKNpc@@A[eax+2760]
	mov	DWORD PTR _nNpcOffsetX$[esp+52], edx
	mov	DWORD PTR _nNpcOffsetY$[esp+52], eax

; 1492 : 				nAbsX = abs(nDX);
; 1493 : 				nAbsY = abs(nDY);

	mov	eax, ebp
	cdq
	sub	ecx, ebx
	mov	ebx, eax
	xor	ebx, edx
	mov	eax, ecx
	sub	ebx, edx
	cdq
	xor	eax, edx
	sub	eax, edx

; 1494 : 				
; 1495 : 				if (nAbsX)

	je	SHORT $L86675

; 1496 : 				{
; 1497 : 					if (nDX < 0)

	test	ecx, ecx
	jge	SHORT $L87827

; 1498 : 					{
; 1499 : 						if (nCellWidth - m_nXOffset + nNpcOffsetX > nCellWidth)

	mov	eax, DWORD PTR _nCellWidth$[esp+52]
	mov	edx, DWORD PTR [edi+228]
	mov	ecx, eax
	sub	ecx, edx
	mov	edx, DWORD PTR _nNpcOffsetX$[esp+52]
	add	ecx, edx
	cmp	ecx, eax

; 1543 : }

	jg	SHORT $L86663

; 1500 : 						{
; 1501 : 							bCollision = FALSE;
; 1502 : 							goto CheckCollision;
; 1503 : 						}
; 1504 : 					}
; 1505 : 					else if (nDX > 0)

	jmp	SHORT $L86675
$L87827:
	jle	SHORT $L86675

; 1506 : 					{
; 1507 : 						if (nCellWidth - nNpcOffsetX + m_nXOffset > nCellWidth)

	mov	edx, DWORD PTR [edi+228]
	mov	eax, DWORD PTR _nNpcOffsetX$[esp+52]
	sub	edx, eax
	mov	eax, DWORD PTR _nCellWidth$[esp+52]
	add	edx, eax
	cmp	edx, eax

; 1543 : }

	jg	SHORT $L86663
$L86675:

; 1508 : 						{
; 1509 : 							bCollision = FALSE;
; 1510 : 							goto CheckCollision;
; 1511 : 						}
; 1512 : 					}
; 1513 : 				}
; 1514 : 				
; 1515 : 				if (nAbsY)

	test	ebx, ebx
	je	SHORT $L87818

; 1516 : 				{
; 1517 : 					if (nDY <0)

	test	ebp, ebp
	jge	SHORT $L87828

; 1518 : 					{
; 1519 : 						if (nCellHeight - m_nYOffset + nNpcOffsetY > nCellHeight)

	mov	eax, DWORD PTR _nCellHeight$[esp+52]
	mov	ebp, DWORD PTR [edi+232]
	mov	ebx, DWORD PTR _nNpcOffsetY$[esp+52]
	mov	ecx, eax
	sub	ecx, ebp
	add	ecx, ebx
	cmp	ecx, eax
	jle	SHORT $L87818

; 1543 : }

	jmp	SHORT $L86663
$L87828:

; 1520 : 						{
; 1521 : 							bCollision = FALSE;
; 1522 : 							goto CheckCollision;
; 1523 : 						}
; 1524 : 					}
; 1525 : 					else if (nDY >0)

	jle	SHORT $L87818

; 1526 : 					{
; 1527 : 						if (nCellHeight - nNpcOffsetY + m_nYOffset > nCellHeight)

	mov	edx, DWORD PTR [edi+232]
	mov	ebp, DWORD PTR _nNpcOffsetY$[esp+52]
	mov	eax, DWORD PTR _nCellHeight$[esp+52]
	sub	edx, ebp
	add	edx, eax
	cmp	edx, eax
	jle	SHORT $L87818
$L86663:

; 1466 : 		for (int j = -1; j <= 1; j ++)

	mov	eax, DWORD PTR _j$86661[esp+52]
	inc	eax
	cmp	eax, 1
	mov	DWORD PTR _j$86661[esp+52], eax
	jle	$L86662
	mov	eax, DWORD PTR _i$[esp+52]
	inc	eax
	cmp	eax, 1
	mov	DWORD PTR _i$[esp+52], eax
	jle	$L86658
	pop	edi
	pop	esi
	pop	ebp

; 1539 : 			}
; 1540 : 		}
; 1541 : 		
; 1542 : 		return 0;

	xor	eax, eax
	pop	ebx

; 1543 : }

	add	esp, 36					; 00000024H
	ret	0
$L87818:

; 1538 : 					return nNpcIdx;

	mov	eax, esi
	pop	edi
	pop	esi
	pop	ebp
	pop	ebx

; 1543 : }

	add	esp, 36					; 00000024H
	ret	0
?CheckNearestCollision@KMissle@@AAEHXZ ENDP		; KMissle::CheckNearestCollision
_TEXT	ENDS
;	COMDAT ?GetMpsPos@KMissle@@QAEXPAH0@Z
_TEXT	SEGMENT
_pPosX$ = 8
_pPosY$ = 12
?GetMpsPos@KMissle@@QAEXPAH0@Z PROC NEAR		; KMissle::GetMpsPos, COMDAT

; 1547 : 	SubWorld[m_nSubWorldId].Map2Mps(m_nRegionId, m_nCurrentMapX, m_nCurrentMapY, m_nXOffset, m_nYOffset, pPosX, pPosY);

	mov	eax, DWORD PTR _pPosY$[esp-4]
	mov	edx, DWORD PTR _pPosX$[esp-4]
	push	eax
	mov	eax, DWORD PTR [ecx+232]
	push	edx
	mov	edx, DWORD PTR [ecx+228]
	push	eax
	mov	eax, DWORD PTR [ecx+220]
	push	edx
	mov	edx, DWORD PTR [ecx+216]
	push	eax
	mov	eax, DWORD PTR [ecx+364]
	mov	ecx, DWORD PTR [ecx+360]
	push	edx
	mov	edx, ecx
	push	eax
	shl	edx, 6
	add	edx, ecx
	lea	eax, DWORD PTR [ecx+edx*8]
	lea	edx, DWORD PTR [ecx+eax*2]
	lea	eax, DWORD PTR [ecx+edx*2]
	lea	ecx, DWORD PTR ?SubWorld@@3PAVKSubWorld@@A[eax*4]
	call	?Map2Mps@KSubWorld@@QAEXHHHHHPAH0@Z	; KSubWorld::Map2Mps

; 1548 : };

	ret	8
?GetMpsPos@KMissle@@QAEXPAH0@Z ENDP			; KMissle::GetMpsPos
_TEXT	ENDS
END
