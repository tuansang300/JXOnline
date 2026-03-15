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
;	COMDAT ??_C@_08POMI@?$CFd?0?$CFd?0?$CFd?$AA@
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
;	COMDAT _$E6
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
;	COMDAT _$E11
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
;	COMDAT ?CheckCollision@KMissle@@AAEHH@Z
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
;	COMDAT ?Save@KMissle@@QAEHXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?CheckBeyondRegion@KMissle@@AAEHXZ
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
;	COMDAT ?ProcessCollision@KMissle@@QAEHHHHHHW4MISSLE_RELATION@@@Z
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
;	COMDAT ?AddTail@KList@@QAEXPAVKNode@@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?InsertBefore@KNode@@QAEXPAV1@@Z
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
;	COMDAT ?IsMatch@KNpc@@QAEHK@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?GetNext@KNode@@QAEPAV1@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?IsRelationSuitable@KMissle@@AAEHW4NPC_RELATION@@W4MISSLE_RELATION@@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?GetHead@KList@@QAEPAVKNode@@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?GetSkill@KSkillManager@@QAEPAVISkill@@HH@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??_7KMissle@@6B@
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
PUBLIC	?Missle@@3PAVKMissle@@A				; Missle
PUBLIC	?g_MisslesLib@@3PAVKMissle@@A			; g_MisslesLib
PUBLIC	?g_nRandMissleTab@@3PAHA			; g_nRandMissleTab
_BSS	SEGMENT
?Missle@@3PAVKMissle@@A DB 0158ba0H DUP (?)		; Missle
?g_MisslesLib@@3PAVKMissle@@A DB 089e40H DUP (?)	; g_MisslesLib
?g_nRandMissleTab@@3PAHA DD 064H DUP (?)		; g_nRandMissleTab
_BSS	ENDS
CRT$XCU	SEGMENT
_$S10	DD	FLAT:_$E9
_$S15	DD	FLAT:_$E14
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
	mov	ecx, 28					; 0000001cH
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

; 29   : 	int		GetGameTime(){return m_nLoopRate;};

	mov	eax, DWORD PTR [ecx]
	ret	0
?GetGameTime@KSubWorldSet@@QAEHXZ ENDP			; KSubWorldSet::GetGameTime
_TEXT	ENDS
PUBLIC	?GetGameVersion@KSubWorldSet@@QAEHXZ		; KSubWorldSet::GetGameVersion
;	COMDAT ?GetGameVersion@KSubWorldSet@@QAEHXZ
_TEXT	SEGMENT
?GetGameVersion@KSubWorldSet@@QAEHXZ PROC NEAR		; KSubWorldSet::GetGameVersion, COMDAT

; 30   : 	int		GetGameVersion() { return m_nGameVersion; }

	mov	eax, DWORD PTR [ecx+152]
	ret	0
?GetGameVersion@KSubWorldSet@@QAEHXZ ENDP		; KSubWorldSet::GetGameVersion
_TEXT	ENDS
PUBLIC	?SetPing@KSubWorldSet@@QAEXK@Z			; KSubWorldSet::SetPing
;	COMDAT ?SetPing@KSubWorldSet@@QAEXK@Z
_TEXT	SEGMENT
_dwTimer$ = 8
?SetPing@KSubWorldSet@@QAEXK@Z PROC NEAR		; KSubWorldSet::SetPing, COMDAT

; 38   : 	void	SetPing(DWORD dwTimer) { m_dwPing = dwTimer; }

	mov	eax, DWORD PTR _dwTimer$[esp-4]
	mov	DWORD PTR [ecx+156], eax
	ret	4
?SetPing@KSubWorldSet@@QAEXK@Z ENDP			; KSubWorldSet::SetPing
_TEXT	ENDS
PUBLIC	?GetPing@KSubWorldSet@@QAEKXZ			; KSubWorldSet::GetPing
;	COMDAT ?GetPing@KSubWorldSet@@QAEKXZ
_TEXT	SEGMENT
?GetPing@KSubWorldSet@@QAEKXZ PROC NEAR			; KSubWorldSet::GetPing, COMDAT

; 39   : 	DWORD	GetPing() { return m_dwPing; }

	mov	eax, DWORD PTR [ecx+156]
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
	mov	ecx, 40					; 00000028H
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
;	COMDAT _$E9
_TEXT	SEGMENT
_$E9	PROC NEAR					; COMDAT
	call	_$E6
	jmp	_$E8
_$E9	ENDP
_TEXT	ENDS
PUBLIC	??0KMissle@@QAE@XZ				; KMissle::KMissle
PUBLIC	??1KMissle@@UAE@XZ				; KMissle::~KMissle
EXTRN	??_L@YGXPAXIHP6EX0@Z1@Z:NEAR			; `eh vector constructor iterator'
;	COMDAT _$E6
_TEXT	SEGMENT
_$E6	PROC NEAR					; COMDAT

; 28   : KMissle g_MisslesLib[MAX_MISSLESTYLE];

	push	OFFSET FLAT:??1KMissle@@UAE@XZ		; KMissle::~KMissle
	push	OFFSET FLAT:??0KMissle@@QAE@XZ		; KMissle::KMissle
	push	200					; 000000c8H
	push	2824					; 00000b08H
	push	OFFSET FLAT:?g_MisslesLib@@3PAVKMissle@@A ; g_MisslesLib
	call	??_L@YGXPAXIHP6EX0@Z1@Z			; `eh vector constructor iterator'
	ret	0
_$E6	ENDP
_TEXT	ENDS
EXTRN	_atexit:NEAR
;	COMDAT _$E8
_TEXT	SEGMENT
_$E8	PROC NEAR					; COMDAT
	push	OFFSET FLAT:_$E7
	call	_atexit
	pop	ecx
	ret	0
_$E8	ENDP
_TEXT	ENDS
EXTRN	??_M@YGXPAXIHP6EX0@Z@Z:NEAR			; `eh vector destructor iterator'
;	COMDAT _$E7
_TEXT	SEGMENT
_$E7	PROC NEAR					; COMDAT
	push	OFFSET FLAT:??1KMissle@@UAE@XZ		; KMissle::~KMissle
	push	200					; 000000c8H
	push	2824					; 00000b08H
	push	OFFSET FLAT:?g_MisslesLib@@3PAVKMissle@@A ; g_MisslesLib
	call	??_M@YGXPAXIHP6EX0@Z@Z			; `eh vector destructor iterator'
	ret	0
_$E7	ENDP
_TEXT	ENDS
;	COMDAT _$E14
_TEXT	SEGMENT
_$E14	PROC NEAR					; COMDAT
	call	_$E11
	jmp	_$E13
_$E14	ENDP
_TEXT	ENDS
;	COMDAT _$E11
_TEXT	SEGMENT
_$E11	PROC NEAR					; COMDAT

; 53   : CORE_API KMissle Missle[MAX_MISSLE];

	push	OFFSET FLAT:??1KMissle@@UAE@XZ		; KMissle::~KMissle
	push	OFFSET FLAT:??0KMissle@@QAE@XZ		; KMissle::KMissle
	push	500					; 000001f4H
	push	2824					; 00000b08H
	push	OFFSET FLAT:?Missle@@3PAVKMissle@@A	; Missle
	call	??_L@YGXPAXIHP6EX0@Z1@Z			; `eh vector constructor iterator'
	ret	0
_$E11	ENDP
_TEXT	ENDS
;	COMDAT _$E13
_TEXT	SEGMENT
_$E13	PROC NEAR					; COMDAT
	push	OFFSET FLAT:_$E12
	call	_atexit
	pop	ecx
	ret	0
_$E13	ENDP
_TEXT	ENDS
;	COMDAT _$E12
_TEXT	SEGMENT
_$E12	PROC NEAR					; COMDAT
	push	OFFSET FLAT:??1KMissle@@UAE@XZ		; KMissle::~KMissle
	push	500					; 000001f4H
	push	2824					; 00000b08H
	push	OFFSET FLAT:?Missle@@3PAVKMissle@@A	; Missle
	call	??_M@YGXPAXIHP6EX0@Z@Z			; `eh vector destructor iterator'
	ret	0
_$E12	ENDP
_TEXT	ENDS
PUBLIC	??_7KMissle@@6B@				; KMissle::`vftable'
PUBLIC	??_GKMissle@@UAEPAXI@Z				; KMissle::`scalar deleting destructor'
PUBLIC	??_EKMissle@@UAEPAXI@Z				; KMissle::`vector deleting destructor'
EXTRN	??0KMissleRes@@QAE@XZ:NEAR			; KMissleRes::KMissleRes
;	COMDAT ??_7KMissle@@6B@
; File D:\swrod3\SwordOnline\Sources\Core\Src\KMissle.cpp
CONST	SEGMENT
??_7KMissle@@6B@ DD FLAT:??_EKMissle@@UAEPAXI@Z		; KMissle::`vftable'
CONST	ENDS
;	COMDAT ??0KMissle@@QAE@XZ
_TEXT	SEGMENT
??0KMissle@@QAE@XZ PROC NEAR				; KMissle::KMissle, COMDAT

; 59   : {

	push	esi
	mov	esi, ecx
	lea	ecx, DWORD PTR [esi+56]
	call	??0KMissleRes@@QAE@XZ			; KMissleRes::KMissleRes

; 60   : 	m_nMissleId = -1;
; 61   : 	m_nCollideOrVanishTime = 0;

	xor	eax, eax
	mov	DWORD PTR [esi], OFFSET FLAT:??_7KMissle@@6B@ ; KMissle::`vftable'
	mov	DWORD PTR [esi+2668], eax

; 62   : 	m_ulDamageInterval = 0;

	mov	DWORD PTR [esi+2652], eax

; 63   : 	
; 64   : #ifdef _SERVER
; 65   : 	m_pMagicAttribsData = NULL;
; 66   : 	m_ulNextCalDamageTime = 0;
; 67   : #else
; 68   : 	m_bFollowNpcWhenCollid = 1;
; 69   : 	m_bRemoving	= FALSE;

	mov	DWORD PTR [esi+48], eax

; 70   : 	m_btRedLum = m_btGreenLum = m_btBlueLum = 0xff;

	mov	al, 255					; 000000ffH
	mov	BYTE PTR [esi+2647], al
	mov	BYTE PTR [esi+2646], al
	mov	BYTE PTR [esi+2645], al
	mov	DWORD PTR [esi+2756], -1
	mov	BYTE PTR [esi+2644], 1

; 71   : 	m_usLightRadius = 50;

	mov	WORD PTR [esi+2648], 50			; 00000032H

; 72   : #endif
; 73   : }

	mov	eax, esi
	pop	esi
	ret	0
??0KMissle@@QAE@XZ ENDP					; KMissle::KMissle
_TEXT	ENDS
EXTRN	??3@YAXPAX@Z:NEAR				; operator delete
;	COMDAT ??_GKMissle@@UAEPAXI@Z
_TEXT	SEGMENT
___flags$ = 8
??_GKMissle@@UAEPAXI@Z PROC NEAR			; KMissle::`scalar deleting destructor', COMDAT
	push	esi
	mov	esi, ecx
	call	??1KMissle@@UAE@XZ			; KMissle::~KMissle
	test	BYTE PTR ___flags$[esp], 1
	je	SHORT $L80314
	push	esi
	call	??3@YAXPAX@Z				; operator delete
	add	esp, 4
$L80314:
	mov	eax, esi
	pop	esi
	ret	4
??_GKMissle@@UAEPAXI@Z ENDP				; KMissle::`scalar deleting destructor'
_TEXT	ENDS
PUBLIC	?Release@KMissle@@AAEXXZ			; KMissle::Release
EXTRN	?RemoveObject@KScenePlaceC@@QAEXIHAAI@Z:NEAR	; KScenePlaceC::RemoveObject
EXTRN	?g_ScenePlace@@3VKScenePlaceC@@A:BYTE		; g_ScenePlace
EXTRN	?Clear@KMissleRes@@QAEXXZ:NEAR			; KMissleRes::Clear
;	COMDAT ?Release@KMissle@@AAEXXZ
_TEXT	SEGMENT
?Release@KMissle@@AAEXXZ PROC NEAR			; KMissle::Release, COMDAT

; 76   : {

	push	esi
	mov	esi, ecx

; 77   : #pragma	message(ATTENTION("子弹消亡时，需更新发送者使用该技能时的当前使用次数，使之减一"))
; 78   : #ifndef _SERVER	
; 79   : 	g_ScenePlace.RemoveObject(CGOG_MISSLE, m_nMissleId, m_SceneID);

	mov	ecx, DWORD PTR [esi+2756]
	lea	eax, DWORD PTR [esi+2700]
	push	eax
	push	ecx
	push	9
	mov	ecx, OFFSET FLAT:?g_ScenePlace@@3VKScenePlaceC@@A
	call	?RemoveObject@KScenePlaceC@@QAEXIHAAI@Z	; KScenePlaceC::RemoveObject

; 80   : 	m_MissleRes.Clear();

	lea	ecx, DWORD PTR [esi+56]
	call	?Clear@KMissleRes@@QAEXXZ		; KMissleRes::Clear

; 81   : 	m_nMissleId = -1;

	mov	DWORD PTR [esi+2756], -1
	pop	esi

; 82   : #endif
; 83   : #ifdef _SERVER
; 84   : 	if (m_pMagicAttribsData)
; 85   : 		if (m_pMagicAttribsData->DelRef() == 0)
; 86   : 			delete m_pMagicAttribsData;
; 87   : 		m_pMagicAttribsData = NULL;
; 88   : #endif
; 89   : }

	ret	0
?Release@KMissle@@AAEXXZ ENDP				; KMissle::Release
_TEXT	ENDS
EXTRN	??1KMissleRes@@QAE@XZ:NEAR			; KMissleRes::~KMissleRes
;	COMDAT ??1KMissle@@UAE@XZ
_TEXT	SEGMENT
??1KMissle@@UAE@XZ PROC NEAR				; KMissle::~KMissle, COMDAT

; 92   : {

	mov	DWORD PTR [ecx], OFFSET FLAT:??_7KMissle@@6B@ ; KMissle::`vftable'

; 93   : 	
; 94   : }

	add	ecx, 56					; 00000038H
	jmp	??1KMissleRes@@QAE@XZ			; KMissleRes::~KMissleRes
??1KMissle@@UAE@XZ ENDP					; KMissle::~KMissle
_TEXT	ENDS
PUBLIC	?GetInfoFromTabFile@KMissle@@QAEHH@Z		; KMissle::GetInfoFromTabFile
PUBLIC	?GetInfoFromTabFile@KMissle@@QAEHPAVKITabFile@@H@Z ; KMissle::GetInfoFromTabFile
EXTRN	?g_MisslesSetting@@3VKTabFile@@A:BYTE		; g_MisslesSetting
;	COMDAT ?GetInfoFromTabFile@KMissle@@QAEHH@Z
_TEXT	SEGMENT
_nMissleId$ = 8
?GetInfoFromTabFile@KMissle@@QAEHH@Z PROC NEAR		; KMissle::GetInfoFromTabFile, COMDAT

; 105  : 	if (nMissleId <= 0 ) return FALSE;

	mov	eax, DWORD PTR _nMissleId$[esp-4]
	test	eax, eax
	jg	SHORT $L79386
	xor	eax, eax

; 108  : }

	ret	4
$L79386:

; 106  : 	KITabFile * pITabFile = &g_MisslesSetting;
; 107  : 	return GetInfoFromTabFile(pITabFile, nMissleId);

	push	eax
	push	OFFSET FLAT:?g_MisslesSetting@@3VKTabFile@@A ; g_MisslesSetting
	call	?GetInfoFromTabFile@KMissle@@QAEHPAVKITabFile@@H@Z ; KMissle::GetInfoFromTabFile

; 108  : }

	ret	4
?GetInfoFromTabFile@KMissle@@QAEHH@Z ENDP		; KMissle::GetInfoFromTabFile
_TEXT	ENDS
PUBLIC	??_C@_00A@?$AA@					; `string'
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
PUBLIC	??_C@_08POMI@?$CFd?0?$CFd?0?$CFd?$AA@		; `string'
PUBLIC	??_C@_0M@LCCH@AnimFileB?$CFd?$AA@		; `string'
PUBLIC	??_C@_0L@HHEO@SndFileB?$CFd?$AA@		; `string'
PUBLIC	??_C@_0BA@BPCH@AnimFileInfoB?$CFd?$AA@		; `string'
PUBLIC	??_C@_08OBCD@LoopPlay?$AA@			; `string'
PUBLIC	??_C@_07MAEH@SubLoop?$AA@			; `string'
PUBLIC	??_C@_08CAJJ@SubStart?$AA@			; `string'
PUBLIC	??_C@_07CKM@SubStop?$AA@			; `string'
PUBLIC	??_C@_0BA@PAFJ@ColFollowTarget?$AA@		; `string'
EXTRN	__imp__sprintf:NEAR
EXTRN	__imp__sscanf:NEAR
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
;	COMDAT ??_C@_08POMI@?$CFd?0?$CFd?0?$CFd?$AA@
_DATA	SEGMENT
??_C@_08POMI@?$CFd?0?$CFd?0?$CFd?$AA@ DB '%d,%d,%d', 00H ; `string'
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
_this$ = -332
_nHeightOld$ = -336
_AnimFileCol$ = -328
_SndFileCol$ = -264
_AnimFileInfoCol$ = -200
_szAnimFileInfo$ = -100
?GetInfoFromTabFile@KMissle@@QAEHPAVKITabFile@@H@Z PROC NEAR ; KMissle::GetInfoFromTabFile, COMDAT

; 111  : {

	sub	esp, 336				; 00000150H
	push	ebx

; 112  : 	if (nMissleId <= 0 ) return FALSE;

	mov	ebx, DWORD PTR _nMissleId$[esp+336]
	push	edi
	mov	edi, ecx
	test	ebx, ebx
	mov	DWORD PTR _this$[esp+344], edi
	jg	SHORT $L79393
	pop	edi
	xor	eax, eax
	pop	ebx

; 196  : }

	add	esp, 336				; 00000150H
	ret	8
$L79393:
	push	ebp
	push	esi

; 113  : 	m_nMissleId		= nMissleId;
; 114  : 	int nRow = nMissleId;
; 115  : 	
; 116  : 	pMisslesSetting->GetString(nRow, "MissleName",		   "", m_szMissleName,30, TRUE);

	mov	esi, DWORD PTR _pMisslesSetting$[esp+348]
	push	1
	lea	ecx, DWORD PTR [edi+4]
	push	30					; 0000001eH
	push	ecx
	mov	DWORD PTR [edi+2756], ebx
	mov	eax, DWORD PTR [esi]
	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0L@MDID@MissleName?$AA@ ; `string'
	push	ebx
	mov	ecx, esi
	call	DWORD PTR [eax+36]

; 117  : 	
; 118  : 	int nHeightOld ;
; 119  : 	pMisslesSetting->GetInteger(nRow, "MissleHeight",		0, &nHeightOld, TRUE);

	mov	edx, DWORD PTR [esi]
	lea	eax, DWORD PTR _nHeightOld$[esp+352]
	push	1
	push	eax
	push	0
	push	OFFSET FLAT:??_C@_0N@IMPH@MissleHeight?$AA@ ; `string'
	push	ebx
	mov	ecx, esi
	call	DWORD PTR [edx+48]

; 120  : 	m_nHeight = nHeightOld << 10;

	mov	ecx, DWORD PTR _nHeightOld$[esp+352]

; 121  : 	
; 122  : 	pMisslesSetting->GetInteger(nRow, "LifeTime",			0, &m_nLifeTime, TRUE);

	lea	eax, DWORD PTR [edi+2540]
	shl	ecx, 10					; 0000000aH
	push	1
	push	eax
	mov	DWORD PTR [edi+2532], ecx
	mov	edx, DWORD PTR [esi]
	push	0
	push	OFFSET FLAT:??_C@_08CLHE@LifeTime?$AA@	; `string'
	push	ebx
	mov	ecx, esi
	call	DWORD PTR [edx+48]

; 123  : 	pMisslesSetting->GetInteger(nRow, "Speed",				0, &m_nSpeed, TRUE);

	mov	edx, DWORD PTR [esi]
	lea	eax, DWORD PTR [edi+2544]
	push	1
	push	eax
	push	0
	push	OFFSET FLAT:??_C@_05PDDA@Speed?$AA@	; `string'
	push	ebx
	mov	ecx, esi
	call	DWORD PTR [edx+48]

; 124  : 	pMisslesSetting->GetInteger(nRow, "ResponseSkill",		0, &m_nSkillId, TRUE);

	mov	edx, DWORD PTR [esi]
	lea	eax, DWORD PTR [edi+2548]
	push	1
	push	eax
	push	0
	push	OFFSET FLAT:??_C@_0O@CEMO@ResponseSkill?$AA@ ; `string'
	push	ebx
	mov	ecx, esi
	call	DWORD PTR [edx+48]

; 125  : 	pMisslesSetting->GetInteger(nRow, "CollidRange",		0, &m_nCollideRange, TRUE);

	mov	edx, DWORD PTR [esi]
	lea	eax, DWORD PTR [edi+2588]
	push	1
	push	eax
	push	0
	push	OFFSET FLAT:??_C@_0M@IPHD@CollidRange?$AA@ ; `string'
	push	ebx
	mov	ecx, esi
	call	DWORD PTR [edx+48]

; 126  : 	pMisslesSetting->GetInteger(nRow, "ColVanish",			0, &m_bCollideVanish, TRUE);

	mov	edx, DWORD PTR [esi]
	lea	eax, DWORD PTR [edi+2596]
	push	1
	push	eax
	push	0
	push	OFFSET FLAT:??_C@_09LLHA@ColVanish?$AA@	; `string'
	push	ebx
	mov	ecx, esi
	call	DWORD PTR [edx+48]

; 127  : 	pMisslesSetting->GetInteger(nRow, "CanColFriend",		0, &m_bCollideFriend, TRUE);

	mov	edx, DWORD PTR [esi]
	lea	eax, DWORD PTR [edi+2600]
	push	1
	push	eax
	push	0
	push	OFFSET FLAT:??_C@_0N@MOFP@CanColFriend?$AA@ ; `string'
	push	ebx
	mov	ecx, esi
	call	DWORD PTR [edx+48]

; 128  : 	pMisslesSetting->GetInteger(nRow, "CanSlow",			0, &m_bCanSlow, TRUE);

	mov	edx, DWORD PTR [esi]
	lea	eax, DWORD PTR [edi+2604]
	push	1
	push	eax
	push	0
	push	OFFSET FLAT:??_C@_07ICPB@CanSlow?$AA@	; `string'
	push	ebx
	mov	ecx, esi
	call	DWORD PTR [edx+48]

; 129  : 	pMisslesSetting->GetInteger(nRow, "IsRangeDmg",		0, &m_bRangeDamage, TRUE);

	mov	edx, DWORD PTR [esi]
	lea	eax, DWORD PTR [edi+2552]
	push	1
	push	eax
	push	0
	push	OFFSET FLAT:??_C@_0L@DOMN@IsRangeDmg?$AA@ ; `string'
	push	ebx
	mov	ecx, esi
	call	DWORD PTR [edx+48]

; 130  : 	pMisslesSetting->GetInteger(nRow, "DmgRange",			0, &m_nDamageRange, TRUE);

	mov	edx, DWORD PTR [esi]
	lea	eax, DWORD PTR [edi+2592]
	push	1
	push	eax
	push	0
	push	OFFSET FLAT:??_C@_08EKOK@DmgRange?$AA@	; `string'
	push	ebx
	mov	ecx, esi
	call	DWORD PTR [edx+48]

; 131  : 	pMisslesSetting->GetInteger(nRow, "MoveKind",			0, (int*)&m_eMoveKind, TRUE);

	mov	edx, DWORD PTR [esi]
	lea	eax, DWORD PTR [edi+2524]
	push	1
	push	eax
	push	0
	push	OFFSET FLAT:??_C@_08MKEC@MoveKind?$AA@	; `string'
	push	ebx
	mov	ecx, esi
	call	DWORD PTR [edx+48]

; 132  : 	pMisslesSetting->GetInteger(nRow, "FollowKind",		0, (int*)&m_eFollowKind, TRUE);

	mov	edx, DWORD PTR [esi]
	lea	eax, DWORD PTR [edi+2528]
	push	1
	push	eax
	push	0
	push	OFFSET FLAT:??_C@_0L@ICBE@FollowKind?$AA@ ; `string'
	push	ebx
	mov	ecx, esi
	call	DWORD PTR [edx+48]

; 133  : 	pMisslesSetting->GetInteger(nRow, "Zacc",				0,(int*)&m_nZAcceleration, TRUE);

	mov	edx, DWORD PTR [esi]
	lea	eax, DWORD PTR [edi+2748]
	push	1
	push	eax
	push	0
	push	OFFSET FLAT:??_C@_04LIGI@Zacc?$AA@	; `string'
	push	ebx
	mov	ecx, esi
	call	DWORD PTR [edx+48]

; 134  : 	pMisslesSetting->GetInteger(nRow, "Zspeed",				0,(int*)&m_nHeightSpeed, TRUE);

	mov	edx, DWORD PTR [esi]
	lea	eax, DWORD PTR [edi+2536]
	push	1
	push	eax
	push	0
	push	OFFSET FLAT:??_C@_06EDNA@Zspeed?$AA@	; `string'
	push	ebx
	mov	ecx, esi
	call	DWORD PTR [edx+48]

; 135  : 	pMisslesSetting->GetInteger(nRow, "Param1",			0, &m_nParam1, TRUE);

	mov	edx, DWORD PTR [esi]
	lea	eax, DWORD PTR [edi+2792]
	push	1
	push	eax
	push	0
	push	OFFSET FLAT:??_C@_06DMFP@Param1?$AA@	; `string'
	push	ebx
	mov	ecx, esi
	call	DWORD PTR [edx+48]

; 136  : 	pMisslesSetting->GetInteger(nRow, "Param2",			0, &m_nParam2, TRUE);

	mov	edx, DWORD PTR [esi]
	lea	eax, DWORD PTR [edi+2796]
	push	1
	push	eax
	push	0
	push	OFFSET FLAT:??_C@_06MDOG@Param2?$AA@	; `string'
	push	ebx
	mov	ecx, esi
	call	DWORD PTR [edx+48]

; 137  : 	pMisslesSetting->GetInteger(nRow, "Param3",			0, &m_nParam3, TRUE);

	mov	edx, DWORD PTR [esi]
	lea	eax, DWORD PTR [edi+2800]
	push	1
	push	eax
	push	0
	push	OFFSET FLAT:??_C@_06GJHB@Param3?$AA@	; `string'
	push	ebx
	mov	ecx, esi
	call	DWORD PTR [edx+48]

; 138  : 	pMisslesSetting->GetInteger(nRow, "AutoExplode",	0, (int*)&m_bAutoExplode, TRUE);

	mov	edx, DWORD PTR [esi]
	lea	eax, DWORD PTR [edi+2560]
	push	1
	push	eax
	push	0
	push	OFFSET FLAT:??_C@_0M@CDCB@AutoExplode?$AA@ ; `string'
	push	ebx
	mov	ecx, esi
	call	DWORD PTR [edx+48]

; 139  : 	pMisslesSetting->GetInteger(nRow, "DmgInterval",	0, (int*)&m_ulDamageInterval, TRUE);

	mov	edx, DWORD PTR [esi]
	lea	eax, DWORD PTR [edi+2652]
	push	1
	push	eax
	push	0
	push	OFFSET FLAT:??_C@_0M@MLLA@DmgInterval?$AA@ ; `string'
	push	ebx
	mov	ecx, esi
	call	DWORD PTR [edx+48]

; 140  : 	
; 141  : #ifndef _SERVER	
; 142  : 	char AnimFileCol[64];
; 143  : 	char SndFileCol[64];
; 144  : 	char AnimFileInfoCol[100];
; 145  : 	char szAnimFileInfo[100];
; 146  : 
; 147  : 	pMisslesSetting->GetInteger(nRow, "RedLum",	    255, (int*)&m_btRedLum, TRUE);

	mov	edx, DWORD PTR [esi]
	lea	eax, DWORD PTR [edi+2645]
	push	1
	push	eax
	push	255					; 000000ffH
	push	OFFSET FLAT:??_C@_06PIMC@RedLum?$AA@	; `string'
	push	ebx
	mov	ecx, esi
	call	DWORD PTR [edx+48]

; 148  : 	pMisslesSetting->GetInteger(nRow, "GreenLum",	255, (int*)&m_btGreenLum, TRUE);

	mov	edx, DWORD PTR [esi]
	lea	eax, DWORD PTR [edi+2646]
	push	1
	push	eax
	push	255					; 000000ffH
	push	OFFSET FLAT:??_C@_08KOFB@GreenLum?$AA@	; `string'
	push	ebx
	mov	ecx, esi
	call	DWORD PTR [edx+48]

; 149  : 	pMisslesSetting->GetInteger(nRow, "BlueLum",	255, (int*)&m_btBlueLum, TRUE);

	mov	edx, DWORD PTR [esi]
	lea	eax, DWORD PTR [edi+2647]
	push	1
	push	eax
	push	255					; 000000ffH
	push	OFFSET FLAT:??_C@_07BJEB@BlueLum?$AA@	; `string'
	push	ebx
	mov	ecx, esi
	call	DWORD PTR [edx+48]

; 150  : 	pMisslesSetting->GetInteger(nRow, "LightRadius", 50, (int*)&m_usLightRadius, TRUE);

	mov	edx, DWORD PTR [esi]
	lea	eax, DWORD PTR [edi+2648]
	push	1
	push	eax
	push	50					; 00000032H
	push	OFFSET FLAT:??_C@_0M@HJOL@LightRadius?$AA@ ; `string'
	push	ebx
	mov	ecx, esi
	call	DWORD PTR [edx+48]

; 151  : 
; 152  : 	pMisslesSetting->GetInteger(nRow, "MultiShow",		0, &m_bMultiShow, TRUE);

	mov	edx, DWORD PTR [esi]
	lea	eax, DWORD PTR [edi+2640]
	push	1
	push	eax
	push	0
	push	OFFSET FLAT:??_C@_09PDKK@MultiShow?$AA@	; `string'
	push	ebx
	mov	ecx, esi
	call	DWORD PTR [edx+48]
	mov	ebp, 1
	add	edi, 192				; 000000c0H
$L79436:

; 153  : 	for (int i  = 0; i < MAX_MISSLE_STATUS; i++)
; 154  : 	{
; 155  : 		sprintf(AnimFileCol, "AnimFile%d", i + 1);

	push	ebp
	lea	ecx, DWORD PTR _AnimFileCol$[esp+356]
	push	OFFSET FLAT:??_C@_0L@EKAK@AnimFile?$CFd?$AA@ ; `string'
	push	ecx
	call	DWORD PTR __imp__sprintf

; 156  : 		sprintf(SndFileCol,  "SndFile%d", i + 1);

	push	ebp
	lea	edx, DWORD PTR _SndFileCol$[esp+368]
	push	OFFSET FLAT:??_C@_09CDAF@SndFile?$CFd?$AA@ ; `string'
	push	edx
	call	DWORD PTR __imp__sprintf

; 157  : 		sprintf(AnimFileInfoCol, "AnimFileInfo%d", i + 1);

	push	ebp
	lea	eax, DWORD PTR _AnimFileInfoCol$[esp+380]
	push	OFFSET FLAT:??_C@_0P@EKPH@AnimFileInfo?$CFd?$AA@ ; `string'
	push	eax
	call	DWORD PTR __imp__sprintf

; 158  : 		
; 159  : 		pMisslesSetting->GetString(nRow, AnimFileCol,			"", m_MissleRes.m_MissleRes[i].AnimFileName, 64, TRUE);

	mov	edx, DWORD PTR [esi]
	add	esp, 36					; 00000024H
	lea	eax, DWORD PTR [edi-104]
	lea	ecx, DWORD PTR _AnimFileCol$[esp+352]
	push	1
	push	64					; 00000040H
	push	eax
	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	ecx
	push	ebx
	mov	ecx, esi
	call	DWORD PTR [edx+36]

; 160  : 		pMisslesSetting->GetString(nRow, SndFileCol,			"", m_MissleRes.m_MissleRes[i].SndFileName, 64, TRUE);

	mov	edx, DWORD PTR [esi]
	push	1
	lea	eax, DWORD PTR [edi+8]
	push	64					; 00000040H
	push	eax
	lea	eax, DWORD PTR _SndFileCol$[esp+364]
	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	eax
	push	ebx
	mov	ecx, esi
	call	DWORD PTR [edx+36]

; 161  : 		pMisslesSetting->GetString(nRow, AnimFileInfoCol,		"", szAnimFileInfo, 100, TRUE);

	mov	edx, DWORD PTR [esi]
	push	1
	lea	eax, DWORD PTR _szAnimFileInfo$[esp+356]
	push	100					; 00000064H
	push	eax
	lea	ecx, DWORD PTR _AnimFileInfoCol$[esp+364]
	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	ecx
	push	ebx
	mov	ecx, esi
	call	DWORD PTR [edx+36]

; 162  : 		
; 163  : 		m_MissleRes.m_MissleRes[i].nInterval = 1;
; 164  : 		m_MissleRes.m_MissleRes[i].nDir = 16;

	lea	eax, DWORD PTR [edi+4]

; 165  : 		m_MissleRes.m_MissleRes[i].nTotalFrame = 100;

	lea	ecx, DWORD PTR [edi-4]

; 166  : 		sscanf(szAnimFileInfo, "%d,%d,%d", 
; 167  : 			&m_MissleRes.m_MissleRes[i].nTotalFrame,
; 168  : 			&m_MissleRes.m_MissleRes[i].nDir,
; 169  : 			&m_MissleRes.m_MissleRes[i].nInterval);

	push	edi
	push	eax
	push	ecx
	lea	edx, DWORD PTR _szAnimFileInfo$[esp+364]
	mov	DWORD PTR [edi], 1
	push	OFFSET FLAT:??_C@_08POMI@?$CFd?0?$CFd?0?$CFd?$AA@ ; `string'
	mov	DWORD PTR [eax], 16			; 00000010H
	push	edx
	mov	DWORD PTR [ecx], 100			; 00000064H
	call	DWORD PTR __imp__sscanf

; 170  : 		
; 171  : 		sprintf(AnimFileCol, "AnimFileB%d", i + 1);

	push	ebp
	lea	eax, DWORD PTR _AnimFileCol$[esp+376]
	push	OFFSET FLAT:??_C@_0M@LCCH@AnimFileB?$CFd?$AA@ ; `string'
	push	eax
	call	DWORD PTR __imp__sprintf

; 172  : 		sprintf(SndFileCol,  "SndFileB%d", i + 1);

	push	ebp
	lea	ecx, DWORD PTR _SndFileCol$[esp+388]
	push	OFFSET FLAT:??_C@_0L@HHEO@SndFileB?$CFd?$AA@ ; `string'
	push	ecx
	call	DWORD PTR __imp__sprintf

; 173  : 		sprintf(AnimFileInfoCol, "AnimFileInfoB%d", i + 1);

	push	ebp
	lea	edx, DWORD PTR _AnimFileInfoCol$[esp+400]
	push	OFFSET FLAT:??_C@_0BA@BPCH@AnimFileInfoB?$CFd?$AA@ ; `string'
	push	edx
	call	DWORD PTR __imp__sprintf

; 174  : 		
; 175  : 		pMisslesSetting->GetString(nRow, AnimFileCol,			"", m_MissleRes.m_MissleRes[i + MAX_MISSLE_STATUS].AnimFileName, 64, TRUE);

	mov	eax, DWORD PTR [esi]
	add	esp, 56					; 00000038H
	lea	ecx, DWORD PTR [edi+744]
	push	1
	push	64					; 00000040H
	push	ecx
	lea	edx, DWORD PTR _AnimFileCol$[esp+364]
	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	edx
	push	ebx
	mov	ecx, esi
	call	DWORD PTR [eax+36]

; 176  : 		pMisslesSetting->GetString(nRow, SndFileCol,			"", m_MissleRes.m_MissleRes[i + MAX_MISSLE_STATUS].SndFileName, 64, TRUE);

	mov	eax, DWORD PTR [esi]
	push	1
	lea	ecx, DWORD PTR [edi+856]
	push	64					; 00000040H
	push	ecx
	lea	edx, DWORD PTR _SndFileCol$[esp+364]
	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	edx
	push	ebx
	mov	ecx, esi
	call	DWORD PTR [eax+36]

; 177  : 		pMisslesSetting->GetString(nRow, AnimFileInfoCol,		"", szAnimFileInfo, 100, TRUE);

	mov	eax, DWORD PTR [esi]
	push	1
	lea	ecx, DWORD PTR _szAnimFileInfo$[esp+356]
	push	100					; 00000064H
	push	ecx
	lea	edx, DWORD PTR _AnimFileInfoCol$[esp+364]
	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	edx
	push	ebx
	mov	ecx, esi
	call	DWORD PTR [eax+36]

; 178  : 		
; 179  : 		m_MissleRes.m_MissleRes[i + MAX_MISSLE_STATUS].nInterval = 1;

	lea	eax, DWORD PTR [edi+848]

; 180  : 		m_MissleRes.m_MissleRes[i + MAX_MISSLE_STATUS].nDir = 16;

	lea	ecx, DWORD PTR [edi+852]

; 181  : 		m_MissleRes.m_MissleRes[i + MAX_MISSLE_STATUS].nTotalFrame = 100;

	lea	edx, DWORD PTR [edi+844]

; 182  : 		
; 183  : 		sscanf(szAnimFileInfo, "%d,%d,%d", 
; 184  : 			&m_MissleRes.m_MissleRes[i + MAX_MISSLE_STATUS].nTotalFrame,
; 185  : 			&m_MissleRes.m_MissleRes[i + MAX_MISSLE_STATUS].nDir,
; 186  : 			&m_MissleRes.m_MissleRes[i + MAX_MISSLE_STATUS].nInterval);

	push	eax
	mov	DWORD PTR [eax], 1
	push	ecx
	push	edx
	lea	eax, DWORD PTR _szAnimFileInfo$[esp+364]
	push	OFFSET FLAT:??_C@_08POMI@?$CFd?0?$CFd?0?$CFd?$AA@ ; `string'
	mov	DWORD PTR [ecx], 16			; 00000010H
	push	eax
	mov	DWORD PTR [edx], 100			; 00000064H
	call	DWORD PTR __imp__sscanf
	add	esp, 20					; 00000014H
	inc	ebp
	add	edi, 212				; 000000d4H
	lea	ecx, DWORD PTR [ebp-1]
	cmp	ecx, 4
	jl	$L79436

; 187  : 		
; 188  : 	}
; 189  : 	pMisslesSetting->GetInteger(nRow, "LoopPlay",			0, &m_MissleRes.m_bLoopAnim, TRUE);

	mov	edi, DWORD PTR _this$[esp+352]
	mov	edx, DWORD PTR [esi]
	push	1
	mov	ecx, esi
	lea	eax, DWORD PTR [edi+84]
	push	eax
	push	0
	push	OFFSET FLAT:??_C@_08OBCD@LoopPlay?$AA@	; `string'
	push	ebx
	call	DWORD PTR [edx+48]

; 190  : 	pMisslesSetting->GetInteger(nRow, "SubLoop",		0, &m_MissleRes.m_bSubLoop, TRUE);

	mov	edx, DWORD PTR [esi]
	lea	eax, DWORD PTR [edi+1836]
	push	1
	push	eax
	push	0
	push	OFFSET FLAT:??_C@_07MAEH@SubLoop?$AA@	; `string'
	push	ebx
	mov	ecx, esi
	call	DWORD PTR [edx+48]

; 191  : 	pMisslesSetting->GetInteger(nRow, "SubStart",		0, &m_MissleRes.m_nSubStart, TRUE);

	mov	edx, DWORD PTR [esi]
	lea	eax, DWORD PTR [edi+1840]
	push	1
	push	eax
	push	0
	push	OFFSET FLAT:??_C@_08CAJJ@SubStart?$AA@	; `string'
	push	ebx
	mov	ecx, esi
	call	DWORD PTR [edx+48]

; 192  : 	pMisslesSetting->GetInteger(nRow, "SubStop",		0, &m_MissleRes.m_nSubStop, TRUE);

	mov	edx, DWORD PTR [esi]
	lea	eax, DWORD PTR [edi+1844]
	push	1
	push	eax
	push	0
	push	OFFSET FLAT:??_C@_07CKM@SubStop?$AA@	; `string'
	push	ebx
	mov	ecx, esi
	call	DWORD PTR [edx+48]

; 193  : 	pMisslesSetting->GetInteger(nRow, "ColFollowTarget",0, (int *)&m_bFollowNpcWhenCollid, TRUE);

	mov	edx, DWORD PTR [esi]
	add	edi, 2644				; 00000a54H
	push	1
	push	edi
	push	0
	push	OFFSET FLAT:??_C@_0BA@PAFJ@ColFollowTarget?$AA@ ; `string'
	push	ebx
	mov	ecx, esi
	call	DWORD PTR [edx+48]
	pop	esi
	pop	ebp
	pop	edi

; 194  : #endif
; 195  : 	return TRUE;

	mov	eax, 1
	pop	ebx

; 196  : }

	add	esp, 336				; 00000150H
	ret	8
?GetInfoFromTabFile@KMissle@@QAEHPAVKITabFile@@H@Z ENDP	; KMissle::GetInfoFromTabFile
_TEXT	ENDS
PUBLIC	?Init@KMissle@@AAEHHHHHH@Z			; KMissle::Init
EXTRN	?Init@KMissleRes@@QAEHXZ:NEAR			; KMissleRes::Init
;	COMDAT ?Init@KMissle@@AAEHHHHHH@Z
_TEXT	SEGMENT
?Init@KMissle@@AAEHHHHHH@Z PROC NEAR			; KMissle::Init, COMDAT

; 200  : #ifndef _SERVER
; 201  : 	m_MissleRes.Init();

	add	ecx, 56					; 00000038H
	call	?Init@KMissleRes@@QAEHXZ		; KMissleRes::Init

; 202  : #endif
; 203  : 	return	TRUE;

	mov	eax, 1

; 204  : }

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
EXTRN	?MoveObject@KScenePlaceC@@QAEIIHHHHAAIH@Z:NEAR	; KScenePlaceC::MoveObject
EXTRN	?Map2Mps@KSubWorld@@QAEXHHHHHPAH0@Z:NEAR	; KSubWorld::Map2Mps
EXTRN	?SubWorld@@3PAVKSubWorld@@A:BYTE		; SubWorld
EXTRN	?FlyEvent@KSkill@@AAEXPAVKMissle@@@Z:NEAR	; KSkill::FlyEvent
EXTRN	?InstanceSkill@KSkillManager@@AAEPAVISkill@@KK@Z:NEAR ; KSkillManager::InstanceSkill
EXTRN	?g_SkillManager@@3VKSkillManager@@A:BYTE	; g_SkillManager
;	COMDAT ?Activate@KMissle@@QAEHXZ
_TEXT	SEGMENT
_nSrcX$79487 = -4
_nSrcY$79488 = -8
?Activate@KMissle@@QAEHXZ PROC NEAR			; KMissle::Activate, COMDAT

; 215  : {	

	sub	esp, 8
	push	esi
	mov	esi, ecx

; 216  : 	if (m_nMissleId <= 0)

	mov	eax, DWORD PTR [esi+2756]
	test	eax, eax
	jg	SHORT $L79463

; 217  : 		return  0 ;

	xor	eax, eax
	pop	esi

; 286  : }

	add	esp, 8
	ret	0
$L79463:

; 218  : 	
; 219  : 	eMissleStatus eLastStatus = m_eMissleStatus;
; 220  : 	if (m_eMissleStatus != MS_DoVanish &&	m_eMissleStatus != MS_DoCollision)

	mov	eax, DWORD PTR [esi+2752]
	cmp	eax, 2
	je	SHORT $L79466
	cmp	eax, 3
	je	SHORT $L79466

; 221  : 		if (m_nCurrentLife >= m_nLifeTime)

	mov	eax, DWORD PTR [esi+2660]
	mov	ecx, DWORD PTR [esi+2540]
	cmp	eax, ecx
	jl	SHORT $L79466

; 222  : 		{
; 223  : 			if (m_bAutoExplode)

	mov	al, BYTE PTR [esi+2560]
	test	al, al
	je	SHORT $L79467

; 224  : 			{
; 225  : 				ProcessCollision();//处理碰撞

	mov	ecx, esi
	call	?ProcessCollision@KMissle@@AAEHXZ	; KMissle::ProcessCollision
$L79467:

; 226  : 			}
; 227  : 			DoVanish();

	mov	ecx, esi
	call	?DoVanish@KMissle@@AAEXXZ		; KMissle::DoVanish
$L79466:

; 228  : #ifdef _SERVER
; 229  : 			m_nCurrentLife ++;
; 230  : 			return 1;
; 231  : #endif
; 232  : 		}
; 233  : 		
; 234  : 		
; 235  : 		if (m_nCurrentLife == m_nStartLifeTime && m_eMissleStatus != MS_DoVanish)	

	mov	ecx, DWORD PTR [esi+2660]
	mov	eax, DWORD PTR [esi+2664]
	cmp	ecx, eax
	jne	SHORT $L79470
	cmp	DWORD PTR [esi+2752], 2
	je	SHORT $L79470

; 236  : 		{
; 237  : 			if (PrePareFly())

	mov	ecx, esi
	call	?PrePareFly@KMissle@@AAEHXZ		; KMissle::PrePareFly
	test	eax, eax

; 238  : 				DoFly();

	mov	ecx, esi
	je	SHORT $L79469
	call	?DoFly@KMissle@@AAEXXZ			; KMissle::DoFly

; 239  : 			else

	jmp	SHORT $L79470
$L79469:

; 240  : 				DoVanish();

	call	?DoVanish@KMissle@@AAEXXZ		; KMissle::DoVanish
$L79470:

; 241  : 		}
; 242  : 		
; 243  : 		switch(m_eMissleStatus)
; 244  : 		{

	mov	eax, DWORD PTR [esi+2752]
	cmp	eax, 3
	ja	$L79472
	jmp	DWORD PTR $L80346[eax*4]
$L79475:

; 245  : 		case MS_DoWait:
; 246  : 			OnWait();

	mov	ecx, esi
	call	?OnWait@KMissle@@AAEXXZ			; KMissle::OnWait

; 247  : 			break;

	jmp	$L79472
$L79476:

; 248  : 		case MS_DoFly:
; 249  : 			OnFly();

	mov	ecx, esi
	call	?OnFly@KMissle@@AAEXXZ			; KMissle::OnFly

; 250  : 			if (m_bFlyEvent)

	mov	eax, DWORD PTR [esi+2616]
	test	eax, eax
	je	SHORT $L79472

; 251  : 				if ( (m_nCurrentLife - m_nStartLifeTime) % m_nFlyEventTime == 0 )

	mov	eax, DWORD PTR [esi+2660]
	mov	ecx, DWORD PTR [esi+2664]
	sub	eax, ecx
	cdq
	idiv	DWORD PTR [esi+2620]
	test	edx, edx
	jne	SHORT $L79472

; 252  : 				{
; 253  : 					_ASSERT(m_nSkillId < MAX_SKILL && m_nLevel < MAX_SKILLLEVEL);
; 254  : 					if (m_nLevel  <= 0 ) return 0;

	mov	eax, DWORD PTR [esi+2712]
	test	eax, eax
	jg	SHORT $L79480
	xor	eax, eax
	pop	esi

; 286  : }

	add	esp, 8
	ret	0
$L79480:

; 255  : 					KSkill * pOrdinSkill = (KSkill *) g_SkillManager.GetSkill(m_nSkillId , m_nLevel);

	mov	ecx, DWORD PTR [esi+2548]
	mov	edx, ecx
	shl	edx, 6
	add	edx, eax
	mov	edx, DWORD PTR ?g_SkillManager@@3VKSkillManager@@A[edx*4+5740]
	test	edx, edx
	je	SHORT $L80342
	mov	eax, edx
	jmp	SHORT $L80339
$L80342:
	push	eax
	push	ecx
	mov	ecx, OFFSET FLAT:?g_SkillManager@@3VKSkillManager@@A
	call	?InstanceSkill@KSkillManager@@AAEPAVISkill@@KK@Z ; KSkillManager::InstanceSkill
$L80339:

; 256  : 					if (pOrdinSkill)

	test	eax, eax
	je	SHORT $L79472

; 257  :                     {
; 258  : 						pOrdinSkill->FlyEvent(this);

	push	esi
	mov	ecx, eax
	call	?FlyEvent@KSkill@@AAEXPAVKMissle@@@Z	; KSkill::FlyEvent

; 259  :                     }
; 260  : 				}
; 261  : 				break;

	jmp	SHORT $L79472
$L79484:

; 262  : 		case MS_DoCollision:
; 263  : 			OnCollision();

	mov	ecx, esi
	call	?OnCollision@KMissle@@AAEXXZ		; KMissle::OnCollision

; 264  : 			break;

	jmp	SHORT $L79472
$L79485:

; 265  : 		case MS_DoVanish:
; 266  : 			OnVanish();

	mov	ecx, esi
	call	?OnVanish@KMissle@@AAEXXZ		; KMissle::OnVanish
$L79472:

; 267  : 			break;
; 268  : 		}
; 269  : 		
; 270  : #ifndef _SERVER
; 271  : 		//子弹未消亡掉
; 272  : 		if (m_nMissleId > 0)

	mov	eax, DWORD PTR [esi+2756]
	test	eax, eax
	jle	$L79490

; 273  : 		{
; 274  : 			int nSrcX;
; 275  : 			int nSrcY;
; 276  : 			SubWorld[0].Map2Mps(m_nRegionId, m_nCurrentMapX, m_nCurrentMapY,m_nXOffset, m_nYOffset, &nSrcX, &nSrcY);

	mov	edx, DWORD PTR [esi+2688]
	lea	eax, DWORD PTR _nSrcY$79488[esp+12]
	lea	ecx, DWORD PTR _nSrcX$79487[esp+12]
	push	eax
	mov	eax, DWORD PTR [esi+2684]
	push	ecx
	mov	ecx, DWORD PTR [esi+2676]
	push	edx
	mov	edx, DWORD PTR [esi+2672]
	push	eax
	mov	eax, DWORD PTR [esi+2764]
	push	ecx
	push	edx
	push	eax
	mov	ecx, OFFSET FLAT:?SubWorld@@3PAVKSubWorld@@A
	call	?Map2Mps@KSubWorld@@QAEXHHHHHPAH0@Z	; KSubWorld::Map2Mps

; 277  : 			if (m_usLightRadius)

	cmp	WORD PTR [esi+2648], 0
	je	SHORT $L79489

; 278  : 				g_ScenePlace.MoveObject(CGOG_MISSLE, m_nMissleId, nSrcX, nSrcY, m_nCurrentMapZ, m_SceneID, IPOT_RL_OBJECT | IPOT_RL_LIGHT_PROP);

	mov	edx, DWORD PTR [esi+2680]
	mov	eax, DWORD PTR _nSrcY$79488[esp+12]
	lea	ecx, DWORD PTR [esi+2700]
	push	10					; 0000000aH
	push	ecx
	mov	ecx, DWORD PTR _nSrcX$79487[esp+20]
	push	edx
	mov	edx, DWORD PTR [esi+2756]
	push	eax
	push	ecx
	push	edx

; 279  : 			else

	jmp	SHORT $L80345
$L79489:

; 280  : 				g_ScenePlace.MoveObject(CGOG_MISSLE, m_nMissleId, nSrcX, nSrcY, m_nCurrentMapZ, m_SceneID, IPOT_RL_OBJECT);

	mov	ecx, DWORD PTR [esi+2680]
	mov	edx, DWORD PTR _nSrcY$79488[esp+12]
	lea	eax, DWORD PTR [esi+2700]
	push	2
	push	eax
	mov	eax, DWORD PTR _nSrcX$79487[esp+20]
	push	ecx
	mov	ecx, DWORD PTR [esi+2756]
	push	edx
	push	eax
	push	ecx
$L80345:
	push	9
	mov	ecx, OFFSET FLAT:?g_ScenePlace@@3VKScenePlaceC@@A
	call	?MoveObject@KScenePlaceC@@QAEIIHHHHAAIH@Z ; KScenePlaceC::MoveObject
$L79490:

; 281  : 		}
; 282  : 		
; 283  : #endif
; 284  : 		m_nCurrentLife ++;

	mov	eax, DWORD PTR [esi+2660]
	inc	eax
	mov	DWORD PTR [esi+2660], eax

; 285  : 		return 1;

	mov	eax, 1
	pop	esi

; 286  : }

	add	esp, 8
	ret	0
	npad	2
$L80346:
	DD	$L79475
	DD	$L79476
	DD	$L79485
	DD	$L79484
?Activate@KMissle@@QAEHXZ ENDP				; KMissle::Activate
_TEXT	ENDS
;	COMDAT ?OnWait@KMissle@@AAEXXZ
_TEXT	SEGMENT
?OnWait@KMissle@@AAEXXZ PROC NEAR			; KMissle::OnWait, COMDAT

; 297  : 	return;
; 298  : }

	ret	0
?OnWait@KMissle@@AAEXXZ ENDP				; KMissle::OnWait
_TEXT	ENDS
;	COMDAT ?OnCollision@KMissle@@AAEXXZ
_TEXT	SEGMENT
?OnCollision@KMissle@@AAEXXZ PROC NEAR			; KMissle::OnCollision, COMDAT

; 308  : 	return;	
; 309  : }

	ret	0
?OnCollision@KMissle@@AAEXXZ ENDP			; KMissle::OnCollision
_TEXT	ENDS
PUBLIC	?DoCollision@KMissle@@AAEXXZ			; KMissle::DoCollision
PUBLIC	?CheckCollision@KMissle@@AAEHH@Z		; KMissle::CheckCollision
PUBLIC	?ProcessCollision@KMissle@@QAEHHHHHHW4MISSLE_RELATION@@@Z ; KMissle::ProcessCollision
EXTRN	?Npc@@3PAVKNpc@@A:BYTE				; Npc
EXTRN	?GetRelation@KNpcSet@@QAE?AW4NPC_RELATION@@HH@Z:NEAR ; KNpcSet::GetRelation
EXTRN	?NpcSet@@3VKNpcSet@@A:BYTE			; NpcSet
;	COMDAT ?CheckCollision@KMissle@@AAEHH@Z
_TEXT	SEGMENT
?CheckCollision@KMissle@@AAEHH@Z PROC NEAR		; KMissle::CheckCollision, COMDAT

; 313  : {

	push	ebx
	push	ebp
	push	esi
	mov	esi, ecx
	push	edi

; 314  : #ifdef TOOLVERSION
; 315  : 	return FALSE;
; 316  : #endif
; 317  : 	if (m_nCurrentMapZ < 0) 

	mov	eax, DWORD PTR [esi+2680]
	test	eax, eax
	jge	SHORT $L79501

; 318  : 	{
; 319  : 		DoVanish(); 

	call	?DoVanish@KMissle@@AAEXXZ		; KMissle::DoVanish
	pop	edi
	pop	esi
	pop	ebp

; 320  : 		return TRUE;

	mov	eax, 1
	pop	ebx

; 383  : }

	ret	4
$L79501:

; 321  : 	}
; 322  : 	
; 323  : 	if (m_nCurrentMapZ > 20) return FALSE;

	cmp	eax, 20					; 00000014H
	jg	$L79510

; 324  : 	if (m_nRegionId < 0) 

	mov	edx, DWORD PTR [esi+2764]
	test	edx, edx
	jge	SHORT $L79503

; 325  : 	{
; 326  : 		DoVanish();

	mov	ecx, esi
	call	?DoVanish@KMissle@@AAEXXZ		; KMissle::DoVanish
	pop	edi
	pop	esi
	pop	ebp

; 327  : 		return TRUE;

	mov	eax, 1
	pop	ebx

; 383  : }

	ret	4
$L79503:

; 328  : 	}
; 329  : 	KIndexNode *pNode = NULL;
; 330  : 	pNode = (KIndexNode *)SubWorld[m_nSubWorldId].m_Region[m_nRegionId].m_NpcList.GetHead();

	mov	ecx, DWORD PTR [esi+2760]
	lea	eax, DWORD PTR [ecx+ecx*2]
	lea	eax, DWORD PTR [ecx+eax*4]
	shl	eax, 5
	add	eax, ecx
	lea	ecx, DWORD PTR [eax+eax*4]
	lea	eax, DWORD PTR [edx+edx*2]
	lea	edx, DWORD PTR [edx+eax*4]
	mov	eax, DWORD PTR ?SubWorld@@3PAVKSubWorld@@A[ecx*4+8]
	shl	edx, 4
	lea	eax, DWORD PTR [eax+edx+8]
	mov	eax, DWORD PTR [eax+4]
	mov	ebp, DWORD PTR [eax+4]
	neg	ebp
	sbb	ebp, ebp
	and	ebp, eax

; 331  : 	int nAbsX = 0;
; 332  : 	int nAbsY = 0;
; 333  : 	while(pNode)

	test	ebp, ebp
	je	$L79510
$L79509:

; 334  : 	{
; 335  : 		if (this->m_nCollideRange == 1)

	mov	ebx, DWORD PTR [esi+2588]

; 336  : 		{
; 337  : 			if ((nAbsX = abs(Npc[pNode->m_nIndex].m_MapX - m_nCurrentMapX)) <= 1 && (nAbsY = abs(Npc[pNode->m_nIndex].m_MapY - m_nCurrentMapY)) <= 1 \
; 338  : 				&& pNode->m_nIndex != m_nLauncher)

	mov	edi, DWORD PTR [ebp+12]
	cmp	ebx, 1
	lea	eax, DWORD PTR [edi+edi*4]
	jne	$L79511
	shl	eax, 8
	sub	eax, edi
	mov	edx, DWORD PTR [esi+2672]
	lea	ecx, DWORD PTR [eax+eax*2]
	shl	ecx, 1
	sub	ecx, edi
	shl	ecx, 2
	mov	eax, DWORD PTR ?Npc@@3PAVKNpc@@A[ecx+2660]
	sub	eax, edx
	cdq
	mov	ebx, eax
	xor	ebx, edx
	sub	ebx, edx
	cmp	ebx, 1
	jg	$L80386
	mov	eax, DWORD PTR ?Npc@@3PAVKNpc@@A[ecx+2664]
	mov	edx, DWORD PTR [esi+2676]
	sub	eax, edx
	cdq
	xor	eax, edx
	sub	eax, edx
	cmp	eax, 1
	jg	$L80386
	cmp	edi, DWORD PTR [esi+2732]
	je	$L80386

; 339  : 			{
; 340  : 				BOOL bCollision = FALSE;
; 341  : 				
; 342  : 				if (nAbsX || nAbsY) 

	test	ebx, ebx
	jne	SHORT $L79515
	test	eax, eax

; 350  : 						bCollision = TRUE;
; 351  : 				}
; 352  : 				else
; 353  : 					bCollision = TRUE;//同一点，则碰撞!

	je	SHORT $L80399
$L79515:

; 343  : 				{
; 344  : 					//(H - dy2 + dy1)**2 + (W - dx1 + dx2)**2 <= H**2 + W**2 ==>>
; 345  : 					//2(dy1-dy2)H + (dy1-dy2)**2 + 2(dx2-dx1)W + (dx2-dx1)**2 >=0
; 346  : 					int nDY = Npc[pNode->m_nIndex].m_OffY - m_nYOffset;

	mov	eax, DWORD PTR ?Npc@@3PAVKNpc@@A[ecx+2676]
	mov	edx, DWORD PTR [esi+2688]

; 347  : 					int	nDX = m_nXOffset - Npc[pNode->m_nIndex].m_OffX;

	mov	ebx, DWORD PTR ?Npc@@3PAVKNpc@@A[ecx+2672]
	sub	eax, edx
	mov	edx, DWORD PTR [esi+2684]
	sub	edx, ebx

; 348  : 					int itest = 2 * nDY * CellHeight + nDY * nDY + 2 * nDX * CellWidth + nDX * nDX;
; 349  : 					if (2 * nDY * CellHeight + nDY * nDY + 2 * nDX * CellWidth + nDX * nDX >= 0)	

	mov	ebx, DWORD PTR [esi+2760]
	lea	ecx, DWORD PTR [ebx+ebx*2]
	lea	ecx, DWORD PTR [ebx+ecx*4]
	shl	ecx, 5
	add	ecx, ebx
	lea	ecx, DWORD PTR [ecx+ecx*4]
	shl	ecx, 2
	mov	ebx, DWORD PTR ?SubWorld@@3PAVKSubWorld@@A[ecx+8268]
	mov	ecx, DWORD PTR ?SubWorld@@3PAVKSubWorld@@A[ecx+8272]
	imul	ebx, edx
	imul	ecx, eax
	add	ebx, ecx
	mov	ecx, edx
	imul	ecx, edx
	mov	edx, eax
	imul	edx, eax
	shl	ebx, 11					; 0000000bH
	add	ebx, ecx
	add	ebx, edx
	js	$L80386
$L80399:

; 354  : 				
; 355  : 				if (bCollision && IsRelationSuitable(NpcSet.GetRelation(pNode->m_nIndex, m_nLauncher) , m_eRelation))

	mov	eax, DWORD PTR [esi+2732]
	mov	ebx, DWORD PTR [esi+2556]
	push	eax
	push	edi
	mov	ecx, OFFSET FLAT:?NpcSet@@3VKNpcSet@@A
	call	?GetRelation@KNpcSet@@QAE?AW4NPC_RELATION@@HH@Z ; KNpcSet::GetRelation
	cmp	ebx, 3
	je	$L80397
	cmp	ebx, 2
	jne	SHORT $L80372
	cmp	eax, 4
	je	$L80397
	jmp	$L80386
$L80372:
	cmp	ebx, 1
	jne	$L80386
	cmp	eax, 8
	je	$L80397

; 359  : 					else
; 360  : 						ProcessCollision();//处理碰撞
; 361  : 					DoCollision();//子弹作碰撞后的效果
; 362  : 					return TRUE;
; 363  : 				}
; 364  : 			}
; 365  : 		}
; 366  : 		else

	jmp	SHORT $L80386
$L79511:

; 367  : 		{
; 368  : 			if ((nAbsX = abs(Npc[pNode->m_nIndex].m_MapX - m_nCurrentMapX)) <= m_nCollideRange && (nAbsY = abs(Npc[pNode->m_nIndex].m_MapY - m_nCurrentMapY)) <= m_nCollideRange \
; 369  : 				&& pNode->m_nIndex != m_nLauncher)

	shl	eax, 8
	sub	eax, edi
	mov	edx, DWORD PTR [esi+2672]
	lea	ecx, DWORD PTR [eax+eax*2]
	shl	ecx, 1
	sub	ecx, edi
	shl	ecx, 2
	mov	eax, DWORD PTR ?Npc@@3PAVKNpc@@A[ecx+2660]
	sub	eax, edx
	cdq
	xor	eax, edx
	sub	eax, edx
	cmp	eax, ebx
	jg	SHORT $L80386
	mov	eax, DWORD PTR ?Npc@@3PAVKNpc@@A[ecx+2664]
	mov	edx, DWORD PTR [esi+2676]
	sub	eax, edx
	cdq
	xor	eax, edx
	sub	eax, edx
	cmp	eax, ebx
	jg	SHORT $L80386
	mov	eax, DWORD PTR [esi+2732]
	cmp	edi, eax
	je	SHORT $L80386

; 370  : 			{
; 371  : 				if (IsRelationSuitable(NpcSet.GetRelation(pNode->m_nIndex, m_nLauncher) , m_eRelation))

	mov	ebx, DWORD PTR [esi+2556]
	push	eax
	push	edi
	mov	ecx, OFFSET FLAT:?NpcSet@@3VKNpcSet@@A
	call	?GetRelation@KNpcSet@@QAE?AW4NPC_RELATION@@HH@Z ; KNpcSet::GetRelation
	cmp	ebx, 3
	je	$L79522
	cmp	ebx, 2
	jne	SHORT $L80384
	cmp	eax, 4
	je	$L79522
	jmp	SHORT $L80386
$L80384:
	cmp	ebx, 1
	jne	SHORT $L80386
	cmp	eax, 8
	je	SHORT $L79522
$L80386:

; 376  : 				}
; 377  : 			}
; 378  : 			
; 379  : 		}
; 380  : 		pNode = (KIndexNode*) pNode->GetNext();

	mov	ebp, DWORD PTR [ebp+4]
	mov	eax, DWORD PTR [ebp+4]
	test	eax, eax
	je	$L79510

; 331  : 	int nAbsX = 0;
; 332  : 	int nAbsY = 0;
; 333  : 	while(pNode)

	test	ebp, ebp
	je	SHORT $L79510
	jmp	$L79509
$L80397:

; 356  : 				{
; 357  : 					if (m_nDamageRange == 1)//

	cmp	DWORD PTR [esi+2592], 1
	jne	SHORT $L79522

; 358  : 						ProcessCollision(m_nLauncher, m_nRegionId, Npc[pNode->m_nIndex].m_MapX, Npc[pNode->m_nIndex].m_MapY, m_nDamageRange , m_eRelation);

	mov	ebp, DWORD PTR [ebp+12]
	mov	ecx, DWORD PTR [esi+2556]
	push	ecx
	mov	ecx, DWORD PTR [esi+2764]
	lea	eax, DWORD PTR [ebp+ebp*4]
	push	1
	shl	eax, 8
	sub	eax, ebp
	lea	eax, DWORD PTR [eax+eax*2]
	shl	eax, 1
	sub	eax, ebp
	shl	eax, 2
	mov	edx, DWORD PTR ?Npc@@3PAVKNpc@@A[eax+2664]
	mov	eax, DWORD PTR ?Npc@@3PAVKNpc@@A[eax+2660]
	push	edx
	mov	edx, DWORD PTR [esi+2732]
	push	eax
	push	ecx
	push	edx
	mov	ecx, esi
	call	?ProcessCollision@KMissle@@QAEHHHHHHW4MISSLE_RELATION@@@Z ; KMissle::ProcessCollision

; 374  : 					DoCollision();//子弹作碰撞后的效果

	mov	ecx, esi
	call	?DoCollision@KMissle@@AAEXXZ		; KMissle::DoCollision
	pop	edi
	pop	esi
	pop	ebp

; 375  : 					return TRUE;

	mov	eax, 1
	pop	ebx

; 383  : }

	ret	4
$L79522:

; 372  : 				{
; 373  : 					ProcessCollision();//处理碰撞

	mov	ecx, esi
	call	?ProcessCollision@KMissle@@AAEHXZ	; KMissle::ProcessCollision

; 374  : 					DoCollision();//子弹作碰撞后的效果

	mov	ecx, esi
	call	?DoCollision@KMissle@@AAEXXZ		; KMissle::DoCollision
	pop	edi
	pop	esi
	pop	ebp

; 375  : 					return TRUE;

	mov	eax, 1
	pop	ebx

; 383  : }

	ret	4
$L79510:
	pop	edi
	pop	esi
	pop	ebp

; 381  : 	}
; 382  : 	return FALSE;

	xor	eax, eax
	pop	ebx

; 383  : }

	ret	4
?CheckCollision@KMissle@@AAEHH@Z ENDP			; KMissle::CheckCollision
_TEXT	ENDS
PUBLIC	?CheckBeyondRegion@KMissle@@AAEHXZ		; KMissle::CheckBeyondRegion
EXTRN	?g_nSin@@3PAHA:BYTE				; g_nSin
EXTRN	?g_nCos@@3PAHA:BYTE				; g_nCos
EXTRN	?GetDistance@KSubWorld@@QAEHHHHH@Z:NEAR		; KSubWorld::GetDistance
EXTRN	?TestBarrier@KSubWorld@@QAEEHHHHHHH@Z:NEAR	; KSubWorld::TestBarrier
EXTRN	?GetMpsPos@KNpc@@QAEXPAH0@Z:NEAR		; KNpc::GetMpsPos
;	COMDAT ?OnFly@KMissle@@AAEXXZ
_TEXT	SEGMENT
_nPX$79538 = -4
_nPY$79539 = -8
_dx$79567 = -8
_dx$79585 = -8
_nSrcMpsX$79601 = -4
_nSrcMpsY$79602 = -12
_nDesMpsX$79603 = -16
_nDesMpsY$79604 = -8
?OnFly@KMissle@@AAEXXZ PROC NEAR			; KMissle::OnFly, COMDAT

; 391  : {

	sub	esp, 16					; 00000010H
	push	ebx
	push	ebp
	push	esi
	mov	esi, ecx

; 392  : 	if (m_nInteruptTypeWhenMove)

	xor	ebp, ebp
	push	edi
	mov	eax, DWORD PTR [esi+2572]
	cmp	eax, ebp
	je	SHORT $L79540

; 393  : 	{
; 394  : 		if (m_nInteruptTypeWhenMove == Interupt_EndOldMissleLifeWhenMove)

	cmp	eax, 2
	jne	SHORT $L79540

; 395  : 		{
; 396  : 			if (!Npc[m_nLauncher].IsMatch(m_dwLauncherId))

	mov	ecx, DWORD PTR [esi+2732]
	mov	edx, DWORD PTR [esi+2736]
	lea	eax, DWORD PTR [ecx+ecx*4]
	shl	eax, 8
	sub	eax, ecx
	lea	eax, DWORD PTR [eax+eax*2]
	shl	eax, 1
	sub	eax, ecx
	lea	ecx, DWORD PTR ?Npc@@3PAVKNpc@@A[eax*4]
	mov	eax, DWORD PTR ?Npc@@3PAVKNpc@@A[eax*4]
	cmp	edx, eax

; 397  : 			{
; 398  : 				DoVanish();
; 399  : 				return;

	jne	$L79541

; 400  : 			}
; 401  : 			else
; 402  : 			{
; 403  : 				int nPX, nPY;
; 404  : 				Npc[m_nLauncher].GetMpsPos(&nPX, &nPY);

	lea	eax, DWORD PTR _nPY$79539[esp+32]
	lea	edx, DWORD PTR _nPX$79538[esp+32]
	push	eax
	push	edx
	call	?GetMpsPos@KNpc@@QAEXPAH0@Z		; KNpc::GetMpsPos

; 405  : 				if (nPX != m_nLauncherSrcPX || nPY != m_nLauncherSrcPY)

	mov	eax, DWORD PTR _nPX$79538[esp+32]
	mov	ecx, DWORD PTR [esi+2580]
	cmp	eax, ecx
	jne	$L79541
	mov	ecx, DWORD PTR _nPY$79539[esp+32]
	mov	eax, DWORD PTR [esi+2584]
	cmp	ecx, eax

; 406  : 				{
; 407  : 					DoVanish();
; 408  : 					return ;

	jne	$L79541
$L79540:

; 409  : 				}
; 410  : 			}
; 411  : 			
; 412  : 		}
; 413  : 		
; 414  : 	}
; 415  : 	
; 416  : 
; 417  : 	switch(this->m_eMoveKind)
; 418  : 	{

	mov	eax, DWORD PTR [esi+2524]
	cmp	eax, 8
	ja	$L79543
	jmp	DWORD PTR $L80489[eax*4]
$L79546:

; 419  : 	case	MISSLE_MMK_Stand:							//	原地
; 420  : 		{
; 421  : 			//高度小于等于该障碍后，表示已碰撞
; 422  : 			/*
; 423  : 			如果子弹为碰撞后直接消亡的类型，
; 424  : 			则直接调用消失函数，否则调用碰撞魔法
; 425  : 			*/
; 426  : 			
; 427  : 			if (m_nZAcceleration)

	mov	ecx, DWORD PTR [esi+2748]
	cmp	ecx, ebp
	je	SHORT $L79547

; 428  : 			{
; 429  : 				m_nHeight += m_nHeightSpeed;

	mov	eax, DWORD PTR [esi+2536]
	mov	edx, DWORD PTR [esi+2532]
	add	edx, eax
	mov	DWORD PTR [esi+2532], edx

; 430  : 				if (!m_nHeight) m_nHeight = 0;

	jne	SHORT $L79548
	mov	DWORD PTR [esi+2532], ebp
$L79548:

; 431  : 				m_nHeightSpeed -= m_nZAcceleration;
; 432  : 				m_nCurrentMapZ = m_nHeight >> 10;

	mov	edx, DWORD PTR [esi+2532]
	sub	eax, ecx
	sar	edx, 10					; 0000000aH
	mov	DWORD PTR [esi+2536], eax
	mov	DWORD PTR [esi+2680], edx
$L79547:

; 433  : 			}
; 434  : 			
; 435  : 			int nBarrierKind = SubWorld[m_nSubWorldId].TestBarrier(m_nRegionId, m_nCurrentMapX, m_nCurrentMapY, m_nXOffset, m_nYOffset, 0, 0);

	mov	eax, DWORD PTR [esi+2688]
	mov	ecx, DWORD PTR [esi+2684]
	mov	edx, DWORD PTR [esi+2676]
	push	ebp
	push	ebp
	push	eax
	mov	eax, DWORD PTR [esi+2672]
	push	ecx
	mov	ecx, DWORD PTR [esi+2764]
	push	edx
	push	eax
	push	ecx
	mov	ecx, DWORD PTR [esi+2760]
	lea	edx, DWORD PTR [ecx+ecx*2]
	lea	eax, DWORD PTR [ecx+edx*4]
	shl	eax, 5
	add	eax, ecx
	lea	eax, DWORD PTR [eax+eax*4]
	lea	ecx, DWORD PTR ?SubWorld@@3PAVKSubWorld@@A[eax*4]
	call	?TestBarrier@KSubWorld@@QAEEHHHHHHH@Z	; KSubWorld::TestBarrier
	and	eax, 255				; 000000ffH

; 436  : 			if (nBarrierKind == Obstacle_Normal || nBarrierKind == Obstacle_Jump)

	cmp	eax, 1
	je	$L79541
	cmp	eax, 3
	je	$L79541

; 437  : 			{
; 438  : 				DoVanish();
; 439  : 				return;
; 440  : 			}
; 441  : 			CheckCollision(nBarrierKind);

	push	eax

; 691  : 			CheckCollision(nBarrierKind);

	mov	ecx, esi
	call	?CheckCollision@KMissle@@AAEHH@Z	; KMissle::CheckCollision
	pop	edi
	pop	esi
	pop	ebp
	pop	ebx

; 692  : #endif
; 693  : 		}
; 694  : 	}
; 695  : }

	add	esp, 16					; 00000010H
	ret	0
$L79552:

; 442  : 		}
; 443  : 		break;
; 444  : 	case	MISSLE_MMK_Parabola:						//	抛物线
; 445  : 	case	MISSLE_MMK_Line:							//	直线飞行
; 446  : 		{
; 447  : 			int x = m_nXOffset;
; 448  : 			int y = m_nYOffset;
; 449  : 			int dx				= (m_nSpeed * m_nXFactor);

	mov	eax, DWORD PTR [esi+2544]
	mov	edi, DWORD PTR [esi+2704]

; 450  : 			int dy				= (m_nSpeed * m_nYFactor);

	mov	ebx, DWORD PTR [esi+2708]
	imul	edi, eax
	imul	ebx, eax

; 451  : 			
; 452  : 			if (m_nZAcceleration)

	mov	eax, DWORD PTR [esi+2748]
	cmp	eax, ebp
	je	SHORT $L79557

; 453  : 			{
; 454  : 				m_nHeight += m_nHeightSpeed;

	mov	ecx, DWORD PTR [esi+2536]
	mov	edx, DWORD PTR [esi+2532]
	add	edx, ecx
	mov	DWORD PTR [esi+2532], edx

; 455  : 				if (!m_nHeight) m_nHeight = 0;

	jne	SHORT $L79558
	mov	DWORD PTR [esi+2532], ebp
$L79558:

; 456  : 				m_nHeightSpeed -= m_nZAcceleration;

	sub	ecx, eax
	mov	DWORD PTR [esi+2536], ecx

; 457  : 				m_nCurrentMapZ = m_nHeight >> 10;

	mov	ecx, DWORD PTR [esi+2532]
	sar	ecx, 10					; 0000000aH
	mov	DWORD PTR [esi+2680], ecx
$L79557:

; 458  : 			}
; 459  : 			
; 460  : 			int nBarrierKind = SubWorld[m_nSubWorldId].TestBarrier(m_nRegionId, m_nCurrentMapX, m_nCurrentMapY, m_nXOffset, m_nYOffset, 0, 0);

	mov	edx, DWORD PTR [esi+2688]
	mov	eax, DWORD PTR [esi+2684]
	mov	ecx, DWORD PTR [esi+2676]
	push	0
	push	0
	push	edx
	mov	edx, DWORD PTR [esi+2672]
	push	eax
	mov	eax, DWORD PTR [esi+2764]
	push	ecx
	mov	ecx, DWORD PTR [esi+2760]
	push	edx
	push	eax
	lea	edx, DWORD PTR [ecx+ecx*2]
	lea	eax, DWORD PTR [ecx+edx*4]
	shl	eax, 5
	add	eax, ecx
	lea	eax, DWORD PTR [eax+eax*4]
	lea	ecx, DWORD PTR ?SubWorld@@3PAVKSubWorld@@A[eax*4]
	call	?TestBarrier@KSubWorld@@QAEEHHHHHHH@Z	; KSubWorld::TestBarrier
	and	eax, 255				; 000000ffH
	mov	ebp, eax

; 461  : 			if (nBarrierKind == Obstacle_Normal || nBarrierKind == Obstacle_Jump)

	cmp	ebp, 1
	je	$L79541
	cmp	ebp, 3
	je	$L79541

; 462  : 			{
; 463  : 				DoVanish();
; 464  : 				return;

	jmp	$L80485
$L79563:

; 465  : 			}
; 466  : 			m_nXOffset			+=  dx;//* m_nCurrentLife;
; 467  : 			m_nYOffset			+=  dy;//* m_nCurrentLife;
; 468  : 			CheckBeyondRegion();
; 469  : 			CheckCollision(nBarrierKind);
; 470  : //			g_DebugLog("r%d x%d, y%d, dx%d, dy%d", m_nRegionId, m_nCurrentMapX, m_nCurrentMapY, m_nXOffset, m_nYOffset);
; 471  : 		}
; 472  : 		break;
; 473  : 		//按照设计方案，随机飞行无法达到客服两端的同步
; 474  : 	case	MISSLE_MMK_Random:							//	随机飞行（暗黑二女巫的Charged Bolt）
; 475  : 		{
; 476  : 			
; 477  : 		}break;
; 478  : 		//参数一表示顺时针还是逆时针转动
; 479  : 		//参数二表示固定原心还是围饶发动者
; 480  : 		//dx = SinA * R
; 481  : 		//dy = Ctg(90-A/2).R = SinA*SinA / (1 + CosA) * R
; 482  : 	case	MISSLE_MMK_Circle:							//	环行飞行（围绕在身边，暗黑二刺客的集气）
; 483  : 		{
; 484  : 			int nPreAngle = m_nAngle - 1;

	mov	edi, DWORD PTR [esi+2812]
	lea	ebp, DWORD PTR [edi-1]

; 485  : 			if (nPreAngle < 0) nPreAngle = MaxMissleDir -1;

	test	ebp, ebp
	jge	SHORT $L79565
	mov	ebp, 63					; 0000003fH
$L79565:

; 486  : 			m_nDir = m_nAngle + (MaxMissleDir / 4);

	lea	eax, DWORD PTR [edi+16]

; 487  : 			if (m_nDir >= MaxMissleDir) m_nDir = m_nDir - MaxMissleDir;

	cmp	eax, 64					; 00000040H
	mov	DWORD PTR [esi+2808], eax
	jl	SHORT $L79566
	add	eax, -64				; ffffffc0H
	mov	DWORD PTR [esi+2808], eax
$L79566:

; 488  : 			int dx = (m_nSpeed + 50)  * (g_DirCos(m_nAngle,MaxMissleDir) - g_DirCos(nPreAngle,MaxMissleDir)) ;

	test	edi, edi
	jl	SHORT $L80419
	cmp	edi, 64					; 00000040H
	jge	SHORT $L80419
	mov	eax, edi
	shl	eax, 6
	cdq
	and	edx, 63					; 0000003fH
	add	eax, edx
	sar	eax, 6
	mov	ecx, DWORD PTR ?g_nCos@@3PAHA[eax*4]
	jmp	SHORT $L80417
$L80419:
	or	ecx, -1
$L80417:
	test	ebp, ebp
	jl	SHORT $L80427
	cmp	ebp, 64					; 00000040H
	jge	SHORT $L80427
	mov	eax, ebp
	shl	eax, 6
	cdq
	and	edx, 63					; 0000003fH
	add	eax, edx
	sar	eax, 6
	mov	edx, DWORD PTR ?g_nCos@@3PAHA[eax*4]
	jmp	SHORT $L80425
$L80427:
	or	edx, -1
$L80425:
	mov	eax, DWORD PTR [esi+2544]
	sub	ecx, edx
	lea	ebx, DWORD PTR [eax+50]
	imul	ecx, ebx

; 489  : 			int dy = (m_nSpeed + 50)  * (g_DirSin(m_nAngle,MaxMissleDir) - g_DirSin(nPreAngle, MaxMissleDir)) ; 

	test	edi, edi
	mov	DWORD PTR _dx$79567[esp+32], ecx
	jl	SHORT $L80434
	cmp	edi, 64					; 00000040H
	jge	SHORT $L80434
	mov	eax, edi
	shl	eax, 6
	cdq
	and	edx, 63					; 0000003fH
	add	eax, edx
	sar	eax, 6
	mov	ecx, DWORD PTR ?g_nSin@@3PAHA[eax*4]
	jmp	SHORT $L80432
$L80434:
	or	ecx, -1
$L80432:
	test	ebp, ebp
	jl	SHORT $L80442
	cmp	ebp, 64					; 00000040H
	jge	SHORT $L80442
	mov	eax, ebp
	shl	eax, 6
	cdq
	and	edx, 63					; 0000003fH
	add	eax, edx
	sar	eax, 6
	mov	eax, DWORD PTR ?g_nSin@@3PAHA[eax*4]
	jmp	SHORT $L80440
$L80442:
	or	eax, -1
$L80440:
	sub	ecx, eax

; 490  : 			int nBarrierKind = SubWorld[m_nSubWorldId].TestBarrier(m_nRegionId, m_nCurrentMapX, m_nCurrentMapY, m_nXOffset, m_nYOffset, 0, 0);

	mov	edx, DWORD PTR [esi+2684]
	imul	ecx, ebx
	mov	eax, DWORD PTR [esi+2676]
	xor	ebp, ebp
	mov	edi, ecx
	mov	ecx, DWORD PTR [esi+2688]
	push	ebp
	push	ebp
	push	ecx
	mov	ecx, DWORD PTR [esi+2672]
	push	edx
	push	eax
	push	ecx
	mov	ecx, DWORD PTR [esi+2760]
	mov	edx, DWORD PTR [esi+2764]
	lea	eax, DWORD PTR [ecx+ecx*2]
	push	edx
	lea	eax, DWORD PTR [ecx+eax*4]
	shl	eax, 5
	add	eax, ecx
	lea	ecx, DWORD PTR [eax+eax*4]
	lea	ecx, DWORD PTR ?SubWorld@@3PAVKSubWorld@@A[ecx*4]
	call	?TestBarrier@KSubWorld@@QAEEHHHHHHH@Z	; KSubWorld::TestBarrier
	and	eax, 255				; 000000ffH
	mov	ebx, eax

; 491  : 			if (nBarrierKind == Obstacle_Normal || nBarrierKind == Obstacle_Jump)

	cmp	ebx, 1
	je	$L79541
	cmp	ebx, 3
	je	$L79541

; 492  : 			{
; 493  : 				DoVanish();
; 494  : 				return;
; 495  : 			}
; 496  : 			if (m_nParam2) //原地转

	cmp	DWORD PTR [esi+2796], ebp
	je	SHORT $L79572

; 497  : 			{
; 498  : 				m_nXOffset += dx;

	mov	edx, DWORD PTR _dx$79567[esp+32]
	mov	ecx, DWORD PTR [esi+2684]

; 499  : 				m_nYOffset += dy;

	mov	eax, DWORD PTR [esi+2688]
	add	ecx, edx
	mov	DWORD PTR [esi+2684], ecx

; 500  : 			}
; 501  : 			else			// 围绕着发送者转

	jmp	SHORT $L80486
$L79572:

; 502  : 			{
; 503  : 				if (!Npc[m_nLauncher].IsMatch(m_dwLauncherId))

	mov	ecx, DWORD PTR [esi+2732]
	lea	eax, DWORD PTR [ecx+ecx*4]
	shl	eax, 8
	sub	eax, ecx
	lea	eax, DWORD PTR [eax+eax*2]
	shl	eax, 1
	sub	eax, ecx
	mov	ecx, DWORD PTR [esi+2736]
	shl	eax, 2
	cmp	ecx, DWORD PTR ?Npc@@3PAVKNpc@@A[eax]

; 504  : 				{
; 505  : 					DoVanish();
; 506  : 					return ;

	jne	$L79541

; 507  : 				}
; 508  : 				m_nCurrentMapX	= Npc[m_nLauncher].m_MapX;

	mov	edx, DWORD PTR ?Npc@@3PAVKNpc@@A[eax+2660]
	mov	DWORD PTR [esi+2672], edx

; 509  : 				m_nCurrentMapY	= Npc[m_nLauncher].m_MapY;

	mov	ecx, DWORD PTR ?Npc@@3PAVKNpc@@A[eax+2664]
	mov	DWORD PTR [esi+2676], ecx

; 510  : 				m_nXOffset		= Npc[m_nLauncher].m_MapX + dx;

	mov	edx, DWORD PTR ?Npc@@3PAVKNpc@@A[eax+2660]
	add	edx, DWORD PTR _dx$79567[esp+32]
	mov	DWORD PTR [esi+2684], edx

; 511  : 				m_nYOffset		= Npc[m_nLauncher].m_MapY + dy;

	mov	eax, DWORD PTR ?Npc@@3PAVKNpc@@A[eax+2664]
$L80486:

; 512  : 			}
; 513  : 			
; 514  : 			if (m_nZAcceleration)

	mov	ecx, DWORD PTR [esi+2748]
	add	eax, edi
	cmp	ecx, ebp
	mov	DWORD PTR [esi+2688], eax
	je	SHORT $L79575

; 515  : 			{
; 516  : 				m_nHeight += m_nHeightSpeed;

	mov	eax, DWORD PTR [esi+2536]
	mov	edx, DWORD PTR [esi+2532]
	add	edx, eax
	mov	DWORD PTR [esi+2532], edx

; 517  : 				if (!m_nHeight) m_nHeight = 0;

	jne	SHORT $L79576
	mov	DWORD PTR [esi+2532], ebp
$L79576:

; 518  : 				m_nHeightSpeed -= m_nZAcceleration;

	sub	eax, ecx

; 519  : 				m_nCurrentMapZ = m_nHeight >> 10;

	mov	ecx, DWORD PTR [esi+2532]
	sar	ecx, 10					; 0000000aH
	mov	DWORD PTR [esi+2536], eax
	mov	DWORD PTR [esi+2680], ecx
$L79575:

; 520  : 			}
; 521  : 			
; 522  : 			CheckBeyondRegion();

	mov	ecx, esi
	call	?CheckBeyondRegion@KMissle@@AAEHXZ	; KMissle::CheckBeyondRegion

; 523  : 			CheckCollision(nBarrierKind);

	push	ebx
	mov	ecx, esi
	call	?CheckCollision@KMissle@@AAEHH@Z	; KMissle::CheckCollision

; 524  : 			if (m_nParam1)

	cmp	DWORD PTR [esi+2792], ebp
	je	SHORT $L79595
$L80488:

; 525  : 			{
; 526  : 				m_nAngle ++;

	mov	ecx, DWORD PTR [esi+2812]
	inc	ecx

; 527  : 				if (m_nAngle >= MaxMissleDir)

	mov	eax, ecx
	mov	DWORD PTR [esi+2812], ecx
	cmp	eax, 64					; 00000040H
	jl	$L79543

; 528  : 					m_nAngle = 0;

	mov	DWORD PTR [esi+2812], ebp
	pop	edi
	pop	esi
	pop	ebp
	pop	ebx

; 692  : #endif
; 693  : 		}
; 694  : 	}
; 695  : }

	add	esp, 16					; 00000010H
	ret	0
$L79595:

; 529  : 			}
; 530  : 			else
; 531  : 			{
; 532  : 				m_nAngle --;

	mov	eax, DWORD PTR [esi+2812]
	dec	eax
	mov	DWORD PTR [esi+2812], eax

; 533  : 				if (m_nAngle < 0 )

	jns	$L79543

; 534  : 					m_nAngle = MaxMissleDir - 1;

	mov	DWORD PTR [esi+2812], 63		; 0000003fH
	pop	edi
	pop	esi
	pop	ebp
	pop	ebx

; 692  : #endif
; 693  : 		}
; 694  : 	}
; 695  : }

	add	esp, 16					; 00000010H
	ret	0
$L79581:

; 535  : 			}
; 536  : 		}
; 537  : 		break;
; 538  : 		
; 539  : 		//参数一表示顺时针还是逆时针转动
; 540  : 		//参数二表示固定原心还是围饶发动者
; 541  : 	case	MISSLE_MMK_Helix:							//	阿基米德螺旋线（暗黑二游侠的Bless Hammer）
; 542  : 		{
; 543  : 			
; 544  : 			int nPreAngle = m_nAngle - 1;

	mov	edi, DWORD PTR [esi+2812]
	lea	ebp, DWORD PTR [edi-1]

; 545  : 			if (nPreAngle < 0) nPreAngle = MaxMissleDir -1;

	test	ebp, ebp
	jge	SHORT $L79583
	mov	ebp, 63					; 0000003fH
$L79583:

; 546  : 			m_nDir = m_nAngle + (MaxMissleDir / 4);

	lea	eax, DWORD PTR [edi+16]

; 547  : 			if (m_nDir >= MaxMissleDir) m_nDir = m_nDir - MaxMissleDir;

	cmp	eax, 64					; 00000040H
	mov	DWORD PTR [esi+2808], eax
	jl	SHORT $L79584
	add	eax, -64				; ffffffc0H
	mov	DWORD PTR [esi+2808], eax
$L79584:

; 548  : 			
; 549  : 			int dx = (m_nSpeed + m_nCurrentLife + 50)  * (g_DirCos(m_nAngle,MaxMissleDir) - g_DirCos(nPreAngle, MaxMissleDir)) ;

	test	edi, edi
	jl	SHORT $L80452
	cmp	edi, 64					; 00000040H
	jge	SHORT $L80452
	mov	eax, edi
	shl	eax, 6
	cdq
	and	edx, 63					; 0000003fH
	add	eax, edx
	sar	eax, 6
	mov	ecx, DWORD PTR ?g_nCos@@3PAHA[eax*4]
	jmp	SHORT $L80450
$L80452:
	or	ecx, -1
$L80450:
	test	ebp, ebp
	jl	SHORT $L80460
	cmp	ebp, 64					; 00000040H
	jge	SHORT $L80460
	mov	eax, ebp
	shl	eax, 6
	cdq
	and	edx, 63					; 0000003fH
	add	eax, edx
	sar	eax, 6
	mov	eax, DWORD PTR ?g_nCos@@3PAHA[eax*4]
	jmp	SHORT $L80458
$L80460:
	or	eax, -1
$L80458:
	mov	edx, DWORD PTR [esi+2660]
	mov	ebx, DWORD PTR [esi+2544]
	sub	ecx, eax
	lea	ebx, DWORD PTR [edx+ebx+50]
	imul	ecx, ebx

; 550  : 			int dy = (m_nSpeed + m_nCurrentLife + 50)  * (g_DirSin(m_nAngle,MaxMissleDir) - g_DirSin(nPreAngle,MaxMissleDir)) ; 

	test	edi, edi
	mov	DWORD PTR _dx$79585[esp+32], ecx
	jl	SHORT $L80467
	cmp	edi, 64					; 00000040H
	jge	SHORT $L80467
	mov	eax, edi
	shl	eax, 6
	cdq
	and	edx, 63					; 0000003fH
	add	eax, edx
	sar	eax, 6
	mov	ecx, DWORD PTR ?g_nSin@@3PAHA[eax*4]
	jmp	SHORT $L80465
$L80467:
	or	ecx, -1
$L80465:
	test	ebp, ebp
	jl	SHORT $L80475
	cmp	ebp, 64					; 00000040H
	jge	SHORT $L80475
	mov	eax, ebp
	shl	eax, 6
	cdq
	and	edx, 63					; 0000003fH
	add	eax, edx
	sar	eax, 6
	mov	eax, DWORD PTR ?g_nSin@@3PAHA[eax*4]
	jmp	SHORT $L80473
$L80475:
	or	eax, -1
$L80473:
	sub	ecx, eax

; 551  : 			
; 552  : 			int nBarrierKind = SubWorld[m_nSubWorldId].TestBarrier(m_nRegionId, m_nCurrentMapX, m_nCurrentMapY, m_nXOffset, m_nYOffset, 0, 0);

	mov	eax, DWORD PTR [esi+2688]
	imul	ecx, ebx
	mov	edx, DWORD PTR [esi+2676]
	xor	ebp, ebp
	mov	edi, ecx
	mov	ecx, DWORD PTR [esi+2684]
	push	ebp
	push	ebp
	push	eax
	mov	eax, DWORD PTR [esi+2672]
	push	ecx
	mov	ecx, DWORD PTR [esi+2764]
	push	edx
	push	eax
	push	ecx
	mov	ecx, DWORD PTR [esi+2760]
	lea	edx, DWORD PTR [ecx+ecx*2]
	lea	eax, DWORD PTR [ecx+edx*4]
	shl	eax, 5
	add	eax, ecx
	lea	eax, DWORD PTR [eax+eax*4]
	lea	ecx, DWORD PTR ?SubWorld@@3PAVKSubWorld@@A[eax*4]
	call	?TestBarrier@KSubWorld@@QAEEHHHHHHH@Z	; KSubWorld::TestBarrier
	and	eax, 255				; 000000ffH
	mov	ebx, eax

; 553  : 			
; 554  : 			if (nBarrierKind == Obstacle_Normal || nBarrierKind == Obstacle_Jump)

	cmp	ebx, 1
	je	$L79541
	cmp	ebx, 3
	je	$L79541

; 558  : 			}
; 559  : 			if (m_nParam2) //原地转

	cmp	DWORD PTR [esi+2796], ebp
	je	SHORT $L79590

; 560  : 			{
; 561  : 				m_nXOffset += dx;

	mov	ecx, DWORD PTR _dx$79585[esp+32]
	mov	edx, DWORD PTR [esi+2684]

; 562  : 				m_nYOffset += dy;

	mov	eax, DWORD PTR [esi+2688]
	add	edx, ecx
	add	eax, edi
	mov	DWORD PTR [esi+2684], edx
	mov	DWORD PTR [esi+2688], eax

; 563  : 			}
; 564  : 			else			// 围绕着发送者转

	jmp	SHORT $L79591
$L79590:

; 565  : 			{
; 566  : 				if (!Npc[m_nLauncher].IsMatch(m_dwLauncherId))

	mov	ecx, DWORD PTR [esi+2732]
	mov	edx, DWORD PTR [esi+2736]
	lea	eax, DWORD PTR [ecx+ecx*4]
	shl	eax, 8
	sub	eax, ecx
	lea	eax, DWORD PTR [eax+eax*2]
	shl	eax, 1
	sub	eax, ecx
	shl	eax, 2
	cmp	edx, DWORD PTR ?Npc@@3PAVKNpc@@A[eax]

; 567  : 				{
; 568  : 					DoVanish();
; 569  : 					return ;

	jne	$L79541

; 570  : 				}
; 571  : 				m_nCurrentMapX	= Npc[m_nLauncher].m_MapX;

	mov	ecx, DWORD PTR ?Npc@@3PAVKNpc@@A[eax+2660]
	mov	DWORD PTR [esi+2672], ecx

; 572  : 				m_nCurrentMapY	= Npc[m_nLauncher].m_MapY;

	mov	edx, DWORD PTR ?Npc@@3PAVKNpc@@A[eax+2664]
	mov	DWORD PTR [esi+2676], edx

; 573  : 				m_nXOffset		= Npc[m_nLauncher].m_MapX + dx;

	mov	ecx, DWORD PTR ?Npc@@3PAVKNpc@@A[eax+2660]
	add	ecx, DWORD PTR _dx$79585[esp+32]
	mov	DWORD PTR [esi+2684], ecx

; 574  : 				m_nYOffset		= Npc[m_nLauncher].m_MapY + dy;

	mov	edx, DWORD PTR ?Npc@@3PAVKNpc@@A[eax+2664]
	add	edx, edi
	mov	DWORD PTR [esi+2688], edx
$L79591:

; 575  : 			}
; 576  : 			
; 577  : 			if (m_nZAcceleration)

	mov	ecx, DWORD PTR [esi+2748]
	cmp	ecx, ebp
	je	SHORT $L79593

; 578  : 			{
; 579  : 				m_nHeight += m_nHeightSpeed;

	mov	eax, DWORD PTR [esi+2536]
	mov	edx, DWORD PTR [esi+2532]
	add	edx, eax
	mov	DWORD PTR [esi+2532], edx

; 580  : 				if (!m_nHeight) m_nHeight = 0;

	jne	SHORT $L79594
	mov	DWORD PTR [esi+2532], ebp
$L79594:

; 581  : 				m_nHeightSpeed -= m_nZAcceleration;

	sub	eax, ecx
	mov	DWORD PTR [esi+2536], eax

; 582  : 				m_nCurrentMapZ = m_nHeight >> 10;

	mov	eax, DWORD PTR [esi+2532]
	sar	eax, 10					; 0000000aH
	mov	DWORD PTR [esi+2680], eax
$L79593:

; 583  : 			}
; 584  : 			
; 585  : 			CheckBeyondRegion();

	mov	ecx, esi
	call	?CheckBeyondRegion@KMissle@@AAEHXZ	; KMissle::CheckBeyondRegion

; 586  : 			CheckCollision(nBarrierKind);

	push	ebx
	mov	ecx, esi
	call	?CheckCollision@KMissle@@AAEHH@Z	; KMissle::CheckCollision

; 587  : 			if (m_nParam1)

	cmp	DWORD PTR [esi+2792], ebp
	je	$L79595

; 555  : 			{
; 556  : 				DoVanish();
; 557  : 				return;

	jmp	$L80488
$L79599:

; 588  : 			{
; 589  : 				m_nAngle ++;
; 590  : 				if (m_nAngle >= MaxMissleDir)
; 591  : 					m_nAngle = 0;
; 592  : 			}
; 593  : 			else
; 594  : 			{
; 595  : 				m_nAngle --;
; 596  : 				if (m_nAngle < 0 )
; 597  : 					m_nAngle = MaxMissleDir - 1;
; 598  : 			}
; 599  : 		}
; 600  : 		break; 
; 601  : 	case	MISSLE_MMK_Follow:							//	跟踪目标飞行
; 602  : 		{
; 603  : 			int nDistance = 0;
; 604  : 			int nSrcMpsX = 0;

	xor	eax, eax

; 605  : 			int nSrcMpsY = 0;
; 606  : 			int nDesMpsX = 0;
; 607  : 			int nDesMpsY = 0;
; 608  : 			
; 609  : 			SubWorld[m_nSubWorldId].Map2Mps(m_nRegionId, m_nCurrentMapX, m_nCurrentMapY, m_nXOffset, m_nYOffset, &nSrcMpsX, &nSrcMpsY);

	lea	ecx, DWORD PTR _nSrcMpsY$79602[esp+32]
	mov	DWORD PTR _nSrcMpsX$79601[esp+32], eax
	mov	DWORD PTR _nSrcMpsY$79602[esp+32], eax
	mov	DWORD PTR _nDesMpsX$79603[esp+32], eax
	mov	DWORD PTR _nDesMpsY$79604[esp+32], eax
	mov	eax, DWORD PTR [esi+2688]
	lea	edx, DWORD PTR _nSrcMpsX$79601[esp+32]
	push	ecx
	mov	ecx, DWORD PTR [esi+2684]
	push	edx
	mov	edx, DWORD PTR [esi+2676]
	push	eax
	mov	eax, DWORD PTR [esi+2672]
	push	ecx
	mov	ecx, DWORD PTR [esi+2764]
	push	edx
	push	eax
	push	ecx
	mov	ecx, DWORD PTR [esi+2760]
	lea	edx, DWORD PTR [ecx+ecx*2]
	lea	eax, DWORD PTR [ecx+edx*4]
	shl	eax, 5
	add	eax, ecx
	lea	eax, DWORD PTR [eax+eax*4]
	lea	ecx, DWORD PTR ?SubWorld@@3PAVKSubWorld@@A[eax*4]
	call	?Map2Mps@KSubWorld@@QAEXHHHHHPAH0@Z	; KSubWorld::Map2Mps

; 610  : 			SubWorld[m_nSubWorldId].Map2Mps(Npc[m_nFollowNpcIdx].m_RegionIndex, Npc[m_nFollowNpcIdx].m_MapX, Npc[m_nFollowNpcIdx].m_MapY, Npc[m_nFollowNpcIdx].m_OffX, Npc[m_nFollowNpcIdx].m_OffY, &nDesMpsX, &nDesMpsY);

	mov	ecx, DWORD PTR [esi+2716]
	lea	edx, DWORD PTR _nDesMpsX$79603[esp+32]
	lea	eax, DWORD PTR [ecx+ecx*4]
	shl	eax, 8
	sub	eax, ecx
	lea	eax, DWORD PTR [eax+eax*2]
	shl	eax, 1
	sub	eax, ecx
	lea	ecx, DWORD PTR _nDesMpsY$79604[esp+32]
	shl	eax, 2
	push	ecx
	push	edx
	mov	ecx, DWORD PTR ?Npc@@3PAVKNpc@@A[eax+2676]
	mov	edx, DWORD PTR ?Npc@@3PAVKNpc@@A[eax+2672]
	push	ecx
	mov	ecx, DWORD PTR ?Npc@@3PAVKNpc@@A[eax+2664]
	push	edx
	mov	edx, DWORD PTR ?Npc@@3PAVKNpc@@A[eax+2660]
	mov	eax, DWORD PTR ?Npc@@3PAVKNpc@@A[eax+2304]
	push	ecx
	mov	ecx, DWORD PTR [esi+2760]
	push	edx
	push	eax
	lea	edx, DWORD PTR [ecx+ecx*2]
	lea	eax, DWORD PTR [ecx+edx*4]
	shl	eax, 5
	add	eax, ecx
	lea	eax, DWORD PTR [eax+eax*4]
	lea	ecx, DWORD PTR ?SubWorld@@3PAVKSubWorld@@A[eax*4]
	call	?Map2Mps@KSubWorld@@QAEXHHHHHPAH0@Z	; KSubWorld::Map2Mps

; 611  : 			nDistance = SubWorld[m_nSubWorldId].GetDistance(nSrcMpsX, nSrcMpsY, nDesMpsX, nDesMpsY);

	mov	ecx, DWORD PTR _nDesMpsY$79604[esp+32]
	mov	edx, DWORD PTR _nDesMpsX$79603[esp+32]
	mov	eax, DWORD PTR _nSrcMpsY$79602[esp+32]
	push	ecx
	mov	ecx, DWORD PTR _nSrcMpsX$79601[esp+36]
	push	edx
	push	eax
	push	ecx
	mov	ecx, DWORD PTR [esi+2760]
	lea	edx, DWORD PTR [ecx+ecx*2]
	lea	eax, DWORD PTR [ecx+edx*4]
	shl	eax, 5
	add	eax, ecx
	lea	eax, DWORD PTR [eax+eax*4]
	lea	ecx, DWORD PTR ?SubWorld@@3PAVKSubWorld@@A[eax*4]
	call	?GetDistance@KSubWorld@@QAEHHHHH@Z	; KSubWorld::GetDistance

; 612  : 			int nXFactor = ((nDesMpsX - nSrcMpsY ) <<10) / nDistance;
; 613  : 			int nYFactor = ((nDesMpsY - nSrcMpsY ) <<10) / nDistance;
; 614  : 			int dx				= nXFactor * m_nSpeed;

	mov	ebp, DWORD PTR _nSrcMpsY$79602[esp+32]
	mov	ecx, eax
	mov	eax, DWORD PTR _nDesMpsX$79603[esp+32]
	mov	edi, DWORD PTR [esi+2544]
	sub	eax, ebp
	shl	eax, 10					; 0000000aH
	cdq
	idiv	ecx
	mov	ebx, eax

; 615  : 			int dy				= nYFactor * m_nSpeed;	

	mov	eax, DWORD PTR _nDesMpsY$79604[esp+32]
	sub	eax, ebp
	imul	ebx, edi
	shl	eax, 10					; 0000000aH
	cdq
	idiv	ecx
	mov	ebp, eax

; 616  : 			if (m_nZAcceleration)

	mov	eax, DWORD PTR [esi+2748]
	imul	ebp, edi
	test	eax, eax
	je	SHORT $L79609

; 617  : 			{
; 618  : 				m_nHeight += m_nHeightSpeed;

	mov	ecx, DWORD PTR [esi+2536]
	mov	edx, DWORD PTR [esi+2532]
	add	edx, ecx
	mov	DWORD PTR [esi+2532], edx

; 619  : 				if (!m_nHeight) m_nHeight = 0;

	jne	SHORT $L79610
	mov	DWORD PTR [esi+2532], 0
$L79610:

; 620  : 				m_nHeightSpeed -= m_nZAcceleration;

	sub	ecx, eax
	mov	DWORD PTR [esi+2536], ecx

; 621  : 				m_nCurrentMapZ = m_nHeight >> 10;

	mov	ecx, DWORD PTR [esi+2532]
	sar	ecx, 10					; 0000000aH
	mov	DWORD PTR [esi+2680], ecx
$L79609:

; 622  : 			}
; 623  : 			int nBarrierKind = SubWorld[m_nSubWorldId].TestBarrier(m_nRegionId, m_nCurrentMapX, m_nCurrentMapY, m_nXOffset, m_nYOffset, 0, 0);

	mov	edx, DWORD PTR [esi+2688]
	mov	eax, DWORD PTR [esi+2684]
	mov	ecx, DWORD PTR [esi+2676]
	push	0
	push	0
	push	edx
	mov	edx, DWORD PTR [esi+2672]
	push	eax
	mov	eax, DWORD PTR [esi+2764]
	push	ecx
	mov	ecx, DWORD PTR [esi+2760]
	push	edx
	push	eax
	lea	edx, DWORD PTR [ecx+ecx*2]
	lea	eax, DWORD PTR [ecx+edx*4]
	shl	eax, 5
	add	eax, ecx
	lea	eax, DWORD PTR [eax+eax*4]
	lea	ecx, DWORD PTR ?SubWorld@@3PAVKSubWorld@@A[eax*4]
	call	?TestBarrier@KSubWorld@@QAEEHHHHHHH@Z	; KSubWorld::TestBarrier
	and	eax, 255				; 000000ffH
	mov	edi, eax

; 624  : 			if (nBarrierKind == Obstacle_Normal || nBarrierKind == Obstacle_Jump)

	cmp	edi, 1
	je	$L79541
	cmp	edi, 3
	je	$L79541

; 625  : 			{
; 626  : 				DoVanish();
; 627  : 				return;
; 628  : 			}
; 629  : 			m_nXOffset			+= dx;
; 630  : 			m_nYOffset			+= dy;

	mov	ecx, DWORD PTR [esi+2688]
	mov	edx, DWORD PTR [esi+2684]
	add	ecx, ebp
	add	edx, ebx
	mov	DWORD PTR [esi+2688], ecx

; 631  : 			CheckBeyondRegion();

	mov	ecx, esi
	mov	DWORD PTR [esi+2684], edx
	call	?CheckBeyondRegion@KMissle@@AAEHXZ	; KMissle::CheckBeyondRegion

; 632  : 			CheckCollision(nBarrierKind);

	push	edi

; 691  : 			CheckCollision(nBarrierKind);

	mov	ecx, esi
	call	?CheckCollision@KMissle@@AAEHH@Z	; KMissle::CheckCollision
	pop	edi
	pop	esi
	pop	ebp
	pop	ebx

; 692  : #endif
; 693  : 		}
; 694  : 	}
; 695  : }

	add	esp, 16					; 00000010H
	ret	0
$L79615:

; 633  : 		}break;
; 634  : 		
; 635  : 	case	MISSLE_MMK_Motion:							//	玩家动作类
; 636  : 		{
; 637  : 			
; 638  : 		}break;
; 639  : 		
; 640  : 		//nParam1 = 起始时Z轴上升的速度
; 641  : 		//nParam2 = 向下的加速度
; 642  : 		/*case	MISSLE_MMK_Parabola:						//	抛物线
; 643  : 		{
; 644  : 		int x	= m_nXOffset;
; 645  : 		int y	= m_nYOffset;
; 646  : 		int dx	= (m_nSpeed * g_DirCos(m_nDirIndex,MaxMissleDir))  ;//* m_nCurrentLife;
; 647  : 		int dy	= (m_nSpeed * g_DirSin(m_nDirIndex,MaxMissleDir)) ;//* m_nCurrentLife;
; 648  : 		//	m_nCurrentMapZ		+= m_nHeightSpeed / 1000;
; 649  : 		m_nHeightSpeed		-= 1000;
; 650  : 		//dy -= m_nHeight / 1000;
; 651  : 		//m_nHeight			+= m_nHeightSpeed;
; 652  : 		int nBarrierKind = SubWorld[m_nSubWorldId].TestBarrier(m_nRegionId, m_nCurrentMapX, m_nCurrentMapY, m_nXOffset, m_nYOffset, 0, 0);
; 653  : 		if (nBarrierKind == Obstacle_Normal || nBarrierKind == Obstacle_Jump)
; 654  : 		{
; 655  : 		DoVanish();
; 656  : 		return;
; 657  : 		}
; 658  : 		m_nXOffset			+= dx;
; 659  : 		m_nYOffset			+= dy;
; 660  : 		int nYShowOffset	= m_nYOffset  - m_nCurrentMapZ / 1000;
; 661  : 		int nShowDirIndex	= g_GetDirIndex(x,y, m_nXOffset, m_nYOffset);
; 662  : 		
; 663  : 		  if (nShowDirIndex != -1)
; 664  : 		  m_nDir = g_DirIndex2Dir(nShowDirIndex, MaxMissleDir);
; 665  : 		  
; 666  : 			CheckBeyondRegion();
; 667  : 			CheckCollision(nBarrierKind);
; 668  : 			
; 669  : 			  }break;
; 670  : 		*/	
; 671  : 	case MISSLE_MMK_SingleLine:						//	必中的单一直线飞行魔法
; 672  : 		{
; 673  : 			//单一必中类子弹，类式于传奇以及其它的同类网络游戏中的基本直线魔法			
; 674  : #ifdef _SERVER
; 675  : 			
; 676  : #else
; 677  : 			int x = m_nXOffset;
; 678  : 			int y = m_nYOffset;
; 679  : 			int dx = (m_nSpeed * m_nXFactor);

	mov	eax, DWORD PTR [esi+2544]
	mov	edi, DWORD PTR [esi+2704]

; 680  : 			int dy = (m_nSpeed * m_nYFactor);

	mov	ebx, DWORD PTR [esi+2708]

; 681  : 			
; 682  : 			int nBarrierKind = SubWorld[m_nSubWorldId].TestBarrier(m_nRegionId, m_nCurrentMapX, m_nCurrentMapY, m_nXOffset, m_nYOffset, 0, 0);

	mov	ecx, DWORD PTR [esi+2688]
	mov	edx, DWORD PTR [esi+2684]
	push	0
	imul	edi, eax
	imul	ebx, eax
	mov	eax, DWORD PTR [esi+2676]
	push	0
	push	ecx
	mov	ecx, DWORD PTR [esi+2672]
	push	edx
	push	eax
	push	ecx
	mov	ecx, DWORD PTR [esi+2760]
	mov	edx, DWORD PTR [esi+2764]
	lea	eax, DWORD PTR [ecx+ecx*2]
	push	edx
	lea	eax, DWORD PTR [ecx+eax*4]
	shl	eax, 5
	add	eax, ecx
	lea	ecx, DWORD PTR [eax+eax*4]
	lea	ecx, DWORD PTR ?SubWorld@@3PAVKSubWorld@@A[ecx*4]
	call	?TestBarrier@KSubWorld@@QAEEHHHHHHH@Z	; KSubWorld::TestBarrier
	and	eax, 255				; 000000ffH
	mov	ebp, eax

; 683  : 			if (nBarrierKind == Obstacle_Normal || nBarrierKind == Obstacle_Jump)

	cmp	ebp, 1
	je	SHORT $L79541
	cmp	ebp, 3
	je	SHORT $L79541
$L80485:

; 686  : 				return;
; 687  : 			}
; 688  : 			m_nXOffset			+=  dx;//* m_nCurrentLife;
; 689  : 			m_nYOffset			+=  dy;//* m_nCurrentLife;

	mov	ecx, DWORD PTR [esi+2688]
	mov	edx, DWORD PTR [esi+2684]
	add	ecx, ebx
	add	edx, edi
	mov	DWORD PTR [esi+2688], ecx

; 690  : 			CheckBeyondRegion();

	mov	ecx, esi
	mov	DWORD PTR [esi+2684], edx
	call	?CheckBeyondRegion@KMissle@@AAEHXZ	; KMissle::CheckBeyondRegion

; 691  : 			CheckCollision(nBarrierKind);

	push	ebp
	mov	ecx, esi
	call	?CheckCollision@KMissle@@AAEHH@Z	; KMissle::CheckCollision
	pop	edi
	pop	esi
	pop	ebp
	pop	ebx

; 692  : #endif
; 693  : 		}
; 694  : 	}
; 695  : }

	add	esp, 16					; 00000010H
	ret	0
$L79541:

; 684  : 			{
; 685  : 				DoVanish();

	mov	ecx, esi
	call	?DoVanish@KMissle@@AAEXXZ		; KMissle::DoVanish
$L79543:
	pop	edi
	pop	esi
	pop	ebp
	pop	ebx

; 692  : #endif
; 693  : 		}
; 694  : 	}
; 695  : }

	add	esp, 16					; 00000010H
	ret	0
	npad	2
$L80489:
	DD	$L79546
	DD	$L79552
	DD	$L79543
	DD	$L79563
	DD	$L79581
	DD	$L79599
	DD	$L79543
	DD	$L79552
	DD	$L79615
?OnFly@KMissle@@AAEXXZ ENDP				; KMissle::OnFly
_TEXT	ENDS
;	COMDAT ?OnVanish@KMissle@@AAEXXZ
_TEXT	SEGMENT
?OnVanish@KMissle@@AAEXXZ PROC NEAR			; KMissle::OnVanish, COMDAT

; 705  : 	
; 706  : }

	ret	0
?OnVanish@KMissle@@AAEXXZ ENDP				; KMissle::OnVanish
_TEXT	ENDS
PUBLIC	?Paint@KMissle@@QAEXXZ				; KMissle::Paint
PUBLIC	?Send@KWorldMsg@@QAEHKHHH@Z			; KWorldMsg::Send
EXTRN	?Draw@KMissleRes@@QAEHHHHHHHH@Z:NEAR		; KMissleRes::Draw
EXTRN	__ftol:NEAR
EXTRN	__fltused:NEAR
;	COMDAT ?Paint@KMissle@@QAEXXZ
_TEXT	SEGMENT
_nSrcX$ = -8
_nSrcY$ = -12
?Paint@KMissle@@QAEXXZ PROC NEAR			; KMissle::Paint, COMDAT

; 710  : {

	sub	esp, 12					; 0000000cH
	push	esi
	mov	esi, ecx
	push	edi

; 711  : 	if (m_nMissleId <= 0 ) return;

	mov	eax, DWORD PTR [esi+2756]
	test	eax, eax
	jle	$L79636

; 712  : 	int nSrcX;
; 713  : 	int nSrcY;
; 714  : 	SubWorld[0].Map2Mps(m_nRegionId, m_nCurrentMapX, m_nCurrentMapY,m_nXOffset, m_nYOffset, &nSrcX, &nSrcY);

	mov	edx, DWORD PTR [esi+2688]
	lea	eax, DWORD PTR _nSrcY$[esp+20]
	lea	ecx, DWORD PTR _nSrcX$[esp+20]
	push	eax
	mov	eax, DWORD PTR [esi+2684]
	push	ecx
	mov	ecx, DWORD PTR [esi+2676]
	push	edx
	mov	edx, DWORD PTR [esi+2672]
	push	eax
	mov	eax, DWORD PTR [esi+2764]
	push	ecx
	push	edx
	push	eax
	mov	ecx, OFFSET FLAT:?SubWorld@@3PAVKSubWorld@@A
	call	?Map2Mps@KSubWorld@@QAEXHHHHHPAH0@Z	; KSubWorld::Map2Mps

; 715  : 	
; 716  : 	if (!m_nZAcceleration)

	mov	eax, DWORD PTR [esi+2748]
	test	eax, eax
	jne	SHORT $L79632

; 717  : 		m_MissleRes.Draw(m_eMissleStatus, nSrcX, nSrcY, m_nCurrentMapZ, m_nDir,m_nLifeTime - m_nStartLifeTime,  m_nCurrentLife - m_nStartLifeTime );

	mov	eax, DWORD PTR [esi+2664]
	mov	ecx, DWORD PTR [esi+2660]
	mov	edx, DWORD PTR [esi+2540]
	sub	ecx, eax
	sub	edx, eax
	mov	eax, DWORD PTR [esi+2808]
	push	ecx
	mov	ecx, DWORD PTR [esi+2680]
	push	edx
	mov	edx, DWORD PTR _nSrcY$[esp+28]
	push	eax
	mov	eax, DWORD PTR _nSrcX$[esp+32]
	push	ecx
	mov	ecx, DWORD PTR [esi+2752]
	push	edx
	lea	edi, DWORD PTR [esi+56]
	push	eax
	push	ecx
	mov	ecx, edi
	call	?Draw@KMissleRes@@QAEHHHHHHHH@Z		; KMissleRes::Draw

; 718  : 	else

	jmp	$L79633
$L79632:

; 719  : 	{
; 720  : 		
; 721  : 		//int nLen = (int)sqrt(m_nXFactor* m_nXFactor + m_nYFactor * m_nYFactor);
; 722  : 		int nDirIndex = g_GetDirIndex(0,0,m_nXFactor, m_nYFactor);

	mov	edi, DWORD PTR [esi+2708]
	push	ebx
	push	ebp
	mov	ebp, DWORD PTR [esi+2704]
	or	ebx, -1
	test	ebp, ebp
	jne	SHORT $L80502
	test	edi, edi
	jne	SHORT $L80502
	or	eax, -1
	jmp	SHORT $L80500
$L80502:
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
	jne	SHORT $L80504
	or	eax, -1
	jmp	SHORT $L80500
$L80504:
	mov	eax, edi
	shl	eax, 10					; 0000000aH
	cdq
	idiv	ecx
	xor	edx, edx
	mov	ecx, OFFSET FLAT:?g_nSin@@3PAHA		; g_nSin
$L80508:
	cmp	eax, DWORD PTR [ecx]
	jg	SHORT $L80536
	mov	ebx, edx
	add	ecx, 4
	inc	edx
	cmp	ecx, OFFSET FLAT:?g_nSin@@3PAHA+128
	jl	SHORT $L80508
$L80536:
	test	ebp, ebp
	jle	SHORT $L80512
	mov	ecx, 63					; 0000003fH
	sub	ecx, ebx
	mov	ebx, ecx
$L80512:
	mov	eax, ebx
$L80500:

; 723  : 		int nDir = g_DirIndex2Dir(nDirIndex, 64);
; 724  : 		
; 725  : 		m_MissleRes.Draw(m_eMissleStatus, nSrcX, nSrcY, m_nCurrentMapZ, nDir,m_nLifeTime - m_nStartLifeTime,  m_nCurrentLife - m_nStartLifeTime );

	mov	ecx, DWORD PTR [esi+2664]
	mov	edx, DWORD PTR [esi+2660]
	sub	edx, ecx
	lea	edi, DWORD PTR [esi+56]
	push	edx
	mov	edx, DWORD PTR [esi+2540]
	shl	eax, 6
	sub	edx, ecx
	mov	ecx, DWORD PTR _nSrcY$[esp+32]
	sar	eax, 6
	push	edx
	mov	edx, DWORD PTR _nSrcX$[esp+36]
	push	eax
	mov	eax, DWORD PTR [esi+2680]
	push	eax
	mov	eax, DWORD PTR [esi+2752]
	push	ecx
	push	edx
	push	eax
	mov	ecx, edi
	call	?Draw@KMissleRes@@QAEHHHHHHHH@Z		; KMissleRes::Draw
	pop	ebp
	pop	ebx
$L79633:

; 726  : 	}
; 727  : 	
; 728  : //	g_DebugLog("Missle[%d],%d,%d, %d",m_nMissleId, nSrcX, nSrcY, m_nRegionId);
; 729  : 	//对于客户端，直到子弹及其产生的效果全部播放完才终止并删除掉!
; 730  : 	if (m_MissleRes.m_bHaveEnd && (!m_MissleRes.m_SkillSpecialList.GetHead()))

	mov	eax, DWORD PTR [esi+80]
	test	eax, eax
	je	SHORT $L79636
	mov	edi, DWORD PTR [edi+4]
	mov	eax, DWORD PTR [edi+4]
	test	eax, eax
	je	SHORT $L80538
	test	edi, edi
	jne	SHORT $L79636
$L80538:

; 731  : 		SubWorld[m_nSubWorldId].m_WorldMessage.Send(GWM_MISSLE_DEL, m_nMissleId);

	mov	ecx, DWORD PTR [esi+2756]
	mov	esi, DWORD PTR [esi+2760]
	push	0
	push	0
	lea	edx, DWORD PTR [esi+esi*2]
	push	ecx
	push	4001					; 00000fa1H
	lea	eax, DWORD PTR [esi+edx*4]
	shl	eax, 5
	add	eax, esi
	lea	eax, DWORD PTR [eax+eax*4]
	lea	ecx, DWORD PTR ?SubWorld@@3PAVKSubWorld@@A[eax*4+8292]
	call	?Send@KWorldMsg@@QAEHKHHH@Z		; KWorldMsg::Send
$L79636:
	pop	edi
	pop	esi

; 732  : }

	add	esp, 12					; 0000000cH
	ret	0
?Paint@KMissle@@QAEXXZ ENDP				; KMissle::Paint
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

; 69   : {

	push	esi
	mov	esi, ecx

; 70   : 	KWorldMsgNode *pNode = NULL;
; 71   : 
; 72   : 	pNode = new KWorldMsgNode;

	push	28					; 0000001cH
	call	??2@YAPAXI@Z				; operator new
	xor	ecx, ecx
	add	esp, 4
	cmp	eax, ecx
	je	SHORT $L80567

; 75   : 
; 76   : 	pNode->m_dwMsgType	= dwMsgType;
; 77   : 	pNode->m_nParam[0]	= nParam1;

	mov	edx, DWORD PTR _nParam1$[esp]
	mov	DWORD PTR [eax+4], ecx
	mov	DWORD PTR [eax+8], ecx
	mov	ecx, DWORD PTR _dwMsgType$[esp]
	mov	DWORD PTR [eax], OFFSET FLAT:??_7KWorldMsgNode@@6B@ ; KWorldMsgNode::`vftable'
	mov	DWORD PTR [eax+12], ecx

; 78   : 	pNode->m_nParam[1]	= nParam2;

	mov	ecx, DWORD PTR _nParam2$[esp]
	mov	DWORD PTR [eax+16], edx

; 79   : 	pNode->m_nParam[2]	= nParam3;

	mov	edx, DWORD PTR _nParam3$[esp]
	mov	DWORD PTR [eax+20], ecx

; 80   : 
; 81   : 	m_LocalMsgQueue.AddTail(pNode);

	lea	ecx, DWORD PTR [esi+12]
	mov	DWORD PTR [eax+24], edx
	pop	esi
	mov	edx, DWORD PTR [ecx+8]
	mov	DWORD PTR [eax+4], ecx
	mov	DWORD PTR [eax+8], edx
	mov	edx, DWORD PTR [ecx+8]
	mov	DWORD PTR [edx+4], eax
	mov	DWORD PTR [ecx+8], eax

; 82   : 	return TRUE;

	mov	eax, 1

; 83   : }

	ret	16					; 00000010H
$L80567:

; 73   : 	if (!pNode)
; 74   : 		return FALSE;

	xor	eax, eax
	pop	esi

; 83   : }

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
	je	SHORT $L80571
	push	esi
	call	??3@YAXPAX@Z				; operator delete
	add	esp, 4
$L80571:
	mov	eax, esi
	pop	esi
	ret	4
??_GKWorldMsgNode@@UAEPAXI@Z ENDP			; KWorldMsgNode::`scalar deleting destructor'
_TEXT	ENDS
PUBLIC	??_7KNode@@6B@					; KNode::`vftable'
PUBLIC	??_GKNode@@UAEPAXI@Z				; KNode::`scalar deleting destructor'
PUBLIC	??_EKNode@@UAEPAXI@Z				; KNode::`vector deleting destructor'
;	COMDAT ??_7KNode@@6B@
CONST	SEGMENT
??_7KNode@@6B@ DD FLAT:??_EKNode@@UAEPAXI@Z		; KNode::`vftable'
CONST	ENDS
;	COMDAT ??1KWorldMsgNode@@UAE@XZ
_TEXT	SEGMENT
??1KWorldMsgNode@@UAE@XZ PROC NEAR			; KWorldMsgNode::~KWorldMsgNode, COMDAT
	mov	DWORD PTR [ecx], OFFSET FLAT:??_7KNode@@6B@ ; KNode::`vftable'
	ret	0
??1KWorldMsgNode@@UAE@XZ ENDP				; KWorldMsgNode::~KWorldMsgNode
_TEXT	ENDS
;	COMDAT ??_GKNode@@UAEPAXI@Z
_TEXT	SEGMENT
___flags$ = 8
??_GKNode@@UAEPAXI@Z PROC NEAR				; KNode::`scalar deleting destructor', COMDAT
	mov	al, BYTE PTR ___flags$[esp-4]
	push	esi
	mov	esi, ecx
	test	al, 1
	mov	DWORD PTR [esi], OFFSET FLAT:??_7KNode@@6B@ ; KNode::`vftable'
	je	SHORT $L80585
	push	esi
	call	??3@YAXPAX@Z				; operator delete
	add	esp, 4
$L80585:
	mov	eax, esi
	pop	esi
	ret	4
??_GKNode@@UAEPAXI@Z ENDP				; KNode::`scalar deleting destructor'
_TEXT	ENDS
PUBLIC	?Save@KMissle@@QAEHXZ				; KMissle::Save
;	COMDAT ?Save@KMissle@@QAEHXZ
_TEXT	SEGMENT
?Save@KMissle@@QAEHXZ PROC NEAR				; KMissle::Save, COMDAT

; 737  : 	return TRUE;

	mov	eax, 1

; 738  : }

	ret	0
?Save@KMissle@@QAEHXZ ENDP				; KMissle::Save
_TEXT	ENDS
EXTRN	?AddRef@KRegion@@QAEHHHW4MOVE_OBJ_KIND@@@Z:NEAR	; KRegion::AddRef
EXTRN	?DecRef@KRegion@@QAEHHHW4MOVE_OBJ_KIND@@@Z:NEAR	; KRegion::DecRef
;	COMDAT ?CheckBeyondRegion@KMissle@@AAEHXZ
_TEXT	SEGMENT
_nOldMapY$ = -12
_nOldOffX$ = -8
_nOldOffY$ = -4
?CheckBeyondRegion@KMissle@@AAEHXZ PROC NEAR		; KMissle::CheckBeyondRegion, COMDAT

; 741  : {

	sub	esp, 12					; 0000000cH
	push	ebx
	push	ebp
	push	esi
	mov	esi, ecx
	push	edi

; 742  : 	int nOldRegion		= m_nRegionId;
; 743  : 	int nOldMapX		= m_nCurrentMapX;
; 744  : 	int nOldMapY		= m_nCurrentMapY;
; 745  : 	int nOldOffX		= m_nXOffset;
; 746  : 	int nOldOffY		= m_nYOffset;
; 747  : 	
; 748  : 	//	处理NPC的坐标变幻
; 749  : 	//	CELLWIDTH、CELLHEIGHT、OffX、OffY均是放大了1024倍
; 750  : 	CurRegion.DecRef(m_nCurrentMapX, m_nCurrentMapY, obj_missle);

	push	2
	mov	edx, DWORD PTR [esi+2676]
	mov	eax, DWORD PTR [esi+2672]
	mov	DWORD PTR _nOldMapY$[esp+32], edx
	push	edx
	mov	edx, DWORD PTR [esi+2760]
	mov	ebx, eax
	push	eax
	mov	ecx, DWORD PTR [esi+2764]
	lea	eax, DWORD PTR [edx+edx*2]
	mov	ebp, DWORD PTR [esi+2684]
	mov	edi, ecx
	mov	DWORD PTR _nOldOffX$[esp+40], ebp
	lea	eax, DWORD PTR [edx+eax*4]
	mov	ebp, DWORD PTR [esi+2688]
	shl	eax, 5
	add	eax, edx
	mov	DWORD PTR _nOldOffY$[esp+40], ebp
	lea	edx, DWORD PTR [eax+eax*4]
	lea	eax, DWORD PTR [ecx+ecx*2]
	lea	eax, DWORD PTR [ecx+eax*4]
	mov	ecx, DWORD PTR ?SubWorld@@3PAVKSubWorld@@A[edx*4+8]
	shl	eax, 4
	add	ecx, eax
	call	?DecRef@KRegion@@QAEHHHW4MOVE_OBJ_KIND@@@Z ; KRegion::DecRef

; 751  : 	if (m_nXOffset < 0)

	mov	ecx, DWORD PTR [esi+2684]
	test	ecx, ecx
	jge	SHORT $L79648

; 752  : 	{
; 753  : 		m_nCurrentMapX--;

	mov	eax, DWORD PTR [esi+2672]

; 754  : 		m_nXOffset += CellWidth;

	mov	edx, DWORD PTR [esi+2760]
	dec	eax
	mov	DWORD PTR [esi+2672], eax
	lea	eax, DWORD PTR [edx+edx*2]
	lea	eax, DWORD PTR [edx+eax*4]
	shl	eax, 5
	add	eax, edx
	lea	eax, DWORD PTR [eax+eax*4]
	shl	eax, 2
	mov	edx, DWORD PTR ?SubWorld@@3PAVKSubWorld@@A[eax+8268]
	shl	edx, 10					; 0000000aH
	add	edx, ecx
	mov	DWORD PTR [esi+2684], edx

; 755  : 	}
; 756  : 	else if (m_nXOffset > CellWidth)

	jmp	SHORT $L79650
$L79648:
	mov	edx, DWORD PTR [esi+2760]
	lea	eax, DWORD PTR [edx+edx*2]
	lea	eax, DWORD PTR [edx+eax*4]
	shl	eax, 5
	add	eax, edx
	lea	eax, DWORD PTR [eax+eax*4]
	shl	eax, 2
	mov	edx, DWORD PTR ?SubWorld@@3PAVKSubWorld@@A[eax+8268]
	shl	edx, 10					; 0000000aH
	cmp	ecx, edx
	jle	SHORT $L79650

; 757  : 	{
; 758  : 		m_nCurrentMapX++;

	mov	edx, DWORD PTR [esi+2672]
	inc	edx
	mov	DWORD PTR [esi+2672], edx

; 759  : 		m_nXOffset -= CellWidth;

	mov	edx, DWORD PTR ?SubWorld@@3PAVKSubWorld@@A[eax+8268]
	shl	edx, 10					; 0000000aH
	sub	ecx, edx
	mov	DWORD PTR [esi+2684], ecx
$L79650:

; 760  : 	}
; 761  : 	
; 762  : 	if (m_nYOffset < 0)

	mov	ecx, DWORD PTR [esi+2688]
	test	ecx, ecx
	jge	SHORT $L79651

; 763  : 	{
; 764  : 		m_nCurrentMapY--;

	mov	edx, DWORD PTR [esi+2676]
	dec	edx
	mov	DWORD PTR [esi+2676], edx

; 765  : 		m_nYOffset += CellHeight;

	mov	edx, DWORD PTR ?SubWorld@@3PAVKSubWorld@@A[eax+8272]
	shl	edx, 10					; 0000000aH
	add	edx, ecx
	mov	DWORD PTR [esi+2688], edx

; 766  : 	}
; 767  : 	else if (m_nYOffset > CellHeight)

	jmp	SHORT $L79653
$L79651:
	mov	edx, DWORD PTR ?SubWorld@@3PAVKSubWorld@@A[eax+8272]
	shl	edx, 10					; 0000000aH
	cmp	ecx, edx
	jle	SHORT $L79653

; 768  : 	{
; 769  : 		m_nCurrentMapY++;

	mov	edx, DWORD PTR [esi+2676]
	inc	edx
	mov	DWORD PTR [esi+2676], edx

; 770  : 		m_nYOffset -= CellHeight;

	mov	edx, DWORD PTR ?SubWorld@@3PAVKSubWorld@@A[eax+8272]
	shl	edx, 10					; 0000000aH
	sub	ecx, edx
	mov	DWORD PTR [esi+2688], ecx
$L79653:

; 771  : 	}
; 772  : 	
; 773  : 	if (m_nCurrentMapX < 0)

	mov	ecx, DWORD PTR [esi+2672]
	test	ecx, ecx
	jge	SHORT $L79654

; 774  : 	{
; 775  : 		m_nRegionId = LeftRegion;

	mov	edx, DWORD PTR [esi+2764]
	lea	ebp, DWORD PTR [edx+edx*2]
	lea	edx, DWORD PTR [edx+ebp*4]
	mov	ebp, DWORD PTR ?SubWorld@@3PAVKSubWorld@@A[eax+8]
	shl	edx, 4
	mov	edx, DWORD PTR [edx+ebp+112]
	mov	DWORD PTR [esi+2764], edx

; 776  : 		m_nCurrentMapX += RegionWidth;

	mov	edx, DWORD PTR ?SubWorld@@3PAVKSubWorld@@A[eax+8260]
	add	edx, ecx
	mov	DWORD PTR [esi+2672], edx

; 777  : 	}
; 778  : 	else if (m_nCurrentMapX >= RegionWidth)

	jmp	SHORT $L79656
$L79654:
	cmp	ecx, DWORD PTR ?SubWorld@@3PAVKSubWorld@@A[eax+8260]
	jl	SHORT $L79656

; 779  : 	{
; 780  : 		m_nRegionId = RightRegion;

	mov	edx, DWORD PTR [esi+2764]
	lea	ebp, DWORD PTR [edx+edx*2]
	lea	edx, DWORD PTR [edx+ebp*4]
	mov	ebp, DWORD PTR ?SubWorld@@3PAVKSubWorld@@A[eax+8]
	shl	edx, 4
	mov	edx, DWORD PTR [edx+ebp+128]
	mov	DWORD PTR [esi+2764], edx

; 781  : 		m_nCurrentMapX -= RegionWidth;

	mov	edx, DWORD PTR ?SubWorld@@3PAVKSubWorld@@A[eax+8260]
	sub	ecx, edx
	mov	DWORD PTR [esi+2672], ecx
$L79656:

; 782  : 	}
; 783  : 	if (m_nCurrentMapY < 0)

	mov	ecx, DWORD PTR [esi+2676]
	test	ecx, ecx
	jge	SHORT $L79657

; 784  : 	{
; 785  : 		m_nRegionId = UpRegion;

	mov	edx, DWORD PTR [esi+2764]
	lea	ebp, DWORD PTR [edx+edx*2]
	lea	edx, DWORD PTR [edx+ebp*4]
	mov	ebp, DWORD PTR ?SubWorld@@3PAVKSubWorld@@A[eax+8]
	shl	edx, 4
	mov	edx, DWORD PTR [edx+ebp+120]
	mov	DWORD PTR [esi+2764], edx

; 786  : 		m_nCurrentMapY += RegionHeight;

	mov	edx, DWORD PTR ?SubWorld@@3PAVKSubWorld@@A[eax+8264]
	add	edx, ecx
	mov	DWORD PTR [esi+2676], edx

; 787  : 	}
; 788  : 	else if (m_nCurrentMapY >= RegionHeight)

	jmp	SHORT $L79659
$L79657:
	cmp	ecx, DWORD PTR ?SubWorld@@3PAVKSubWorld@@A[eax+8264]
	jl	SHORT $L79659

; 789  : 	{
; 790  : 		m_nRegionId = DownRegion;

	mov	edx, DWORD PTR [esi+2764]
	lea	ebp, DWORD PTR [edx+edx*2]
	lea	edx, DWORD PTR [edx+ebp*4]
	mov	ebp, DWORD PTR ?SubWorld@@3PAVKSubWorld@@A[eax+8]
	shl	edx, 4
	mov	edx, DWORD PTR [edx+ebp+104]
	mov	DWORD PTR [esi+2764], edx

; 791  : 		m_nCurrentMapY -= RegionHeight;

	mov	edx, DWORD PTR ?SubWorld@@3PAVKSubWorld@@A[eax+8264]
	sub	ecx, edx
	mov	DWORD PTR [esi+2676], ecx
$L79659:

; 792  : 	}
; 793  : 	if (m_nRegionId < 0) 

	mov	ecx, DWORD PTR [esi+2764]
	test	ecx, ecx
	jge	SHORT $L79660

; 794  : 	{
; 795  : 		m_nRegionId = nOldRegion;
; 796  : 		m_nCurrentMapX = nOldMapX;
; 797  : 		m_nCurrentMapY = nOldMapY;
; 798  : 		m_nXOffset = nOldOffX;

	mov	ecx, DWORD PTR _nOldOffX$[esp+28]
	mov	eax, DWORD PTR _nOldMapY$[esp+28]

; 799  : 		m_nYOffset = nOldOffY;

	mov	edx, DWORD PTR _nOldOffY$[esp+28]
	mov	DWORD PTR [esi+2684], ecx

; 800  : 		DoVanish();

	mov	ecx, esi
	mov	DWORD PTR [esi+2764], edi
	mov	DWORD PTR [esi+2672], ebx
	mov	DWORD PTR [esi+2676], eax
	mov	DWORD PTR [esi+2688], edx
	call	?DoVanish@KMissle@@AAEXXZ		; KMissle::DoVanish
	pop	edi
	pop	esi
	pop	ebp

; 809  : 	}
; 810  : 	return TRUE;

	mov	eax, 1
	pop	ebx

; 811  : }

	add	esp, 12					; 0000000cH
	ret	0
$L79660:

; 801  : 		return TRUE; 
; 802  : 	}
; 803  : 	
; 804  : 	CurRegion.AddRef(m_nCurrentMapX, m_nCurrentMapY, obj_missle);

	mov	edx, DWORD PTR [esi+2676]
	push	2
	push	edx
	mov	edx, DWORD PTR [esi+2672]
	push	edx
	lea	edx, DWORD PTR [ecx+ecx*2]
	lea	edx, DWORD PTR [ecx+edx*4]
	mov	ecx, DWORD PTR ?SubWorld@@3PAVKSubWorld@@A[eax+8]
	shl	edx, 4
	add	ecx, edx
	call	?AddRef@KRegion@@QAEHHHW4MOVE_OBJ_KIND@@@Z ; KRegion::AddRef

; 805  : 	
; 806  : 	if (nOldRegion != m_nRegionId)

	mov	eax, DWORD PTR [esi+2764]
	cmp	edi, eax
	je	SHORT $L79661

; 807  : 	{
; 808  : 		SubWorld[m_nSubWorldId].m_WorldMessage.Send(GWM_MISSLE_CHANGE_REGION, nOldRegion, m_nRegionId, m_nMissleId);

	mov	ecx, DWORD PTR [esi+2756]
	mov	esi, DWORD PTR [esi+2760]
	push	ecx
	push	eax
	lea	edx, DWORD PTR [esi+esi*2]
	push	edi
	push	4002					; 00000fa2H
	lea	eax, DWORD PTR [esi+edx*4]
	shl	eax, 5
	add	eax, esi
	lea	eax, DWORD PTR [eax+eax*4]
	lea	ecx, DWORD PTR ?SubWorld@@3PAVKSubWorld@@A[eax*4+8292]
	call	?Send@KWorldMsg@@QAEHKHHH@Z		; KWorldMsg::Send
$L79661:
	pop	edi
	pop	esi
	pop	ebp

; 809  : 	}
; 810  : 	return TRUE;

	mov	eax, 1
	pop	ebx

; 811  : }

	add	esp, 12					; 0000000cH
	ret	0
?CheckBeyondRegion@KMissle@@AAEHXZ ENDP			; KMissle::CheckBeyondRegion
_TEXT	ENDS
PUBLIC	??4KMissle@@AAEAAV0@AAV0@@Z			; KMissle::operator=
EXTRN	__imp_?g_Random@@YAII@Z:NEAR
;	COMDAT ??4KMissle@@AAEAAV0@AAV0@@Z
_TEXT	SEGMENT
_Missle$ = 8
??4KMissle@@AAEAAV0@AAV0@@Z PROC NEAR			; KMissle::operator=, COMDAT

; 814  : {

	sub	esp, 8
	push	ebx

; 815  : 	Missle.m_bCanSlow		=	m_bCanSlow;

	mov	ebx, DWORD PTR _Missle$[esp+8]
	push	ebp
	mov	ebp, ecx
	push	esi
	push	edi
	mov	eax, DWORD PTR [ebp+2604]

; 816  : 	Missle.m_bCollideEvent	=	m_bCollideEvent;
; 817  : 	Missle.m_bCollideFriend =	m_bCollideFriend;
; 818  : 	Missle.m_bCollideVanish	=	m_bCollideVanish;
; 819  : 	Missle.m_bRangeDamage	=	m_bRangeDamage;
; 820  : 	Missle.m_eFollowKind	=	m_eFollowKind;
; 821  : 	Missle.m_eMoveKind		=	m_eMoveKind;
; 822  : 	Missle.m_nAction		=	m_nAction;
; 823  : 	Missle.m_nAngle			=	m_nAngle;
; 824  : 	Missle.m_nCollideRange	=	m_nCollideRange;
; 825  : 	Missle.m_nCurrentLife	=	0;
; 826  : 	Missle.m_nDamageRange	=	m_nDamageRange;
; 827  : 	Missle.m_nHeight		=	m_nHeight;
; 828  : 	Missle.m_nLifeTime		=	m_nLifeTime;
; 829  : 	Missle.m_nSpeed			=   m_nSpeed;
; 830  : 	Missle.m_nParam1		=	m_nParam1;
; 831  : 	Missle.m_nParam2		=	m_nParam2;
; 832  : 	Missle.m_nParam3		=	m_nParam3;
; 833  : 	Missle.m_nCurrentMapZ	=   m_nHeight >> 10;
; 834  : 	Missle.m_bFlyEvent		=	m_bFlyEvent;
; 835  : 	Missle.m_nFlyEventTime  =	m_nFlyEventTime;
; 836  : 	Missle.m_nZAcceleration =	m_nZAcceleration;
; 837  : 	Missle.m_nHeightSpeed	=	m_nHeightSpeed;
; 838  : 	Missle.m_bAutoExplode	=	m_bAutoExplode;
; 839  : 	Missle.m_ulDamageInterval = m_ulDamageInterval;
; 840  : 	strcpy(Missle.m_szMissleName	,	m_szMissleName);

	lea	edi, DWORD PTR [ebp+4]
	mov	DWORD PTR [ebx+2604], eax
	mov	ecx, DWORD PTR [ebp+2632]
	mov	DWORD PTR [ebx+2632], ecx
	mov	edx, DWORD PTR [ebp+2600]
	mov	DWORD PTR [ebx+2600], edx
	mov	eax, DWORD PTR [ebp+2596]
	mov	DWORD PTR [ebx+2596], eax
	mov	ecx, DWORD PTR [ebp+2552]
	mov	DWORD PTR [ebx+2552], ecx
	mov	edx, DWORD PTR [ebp+2528]
	mov	DWORD PTR [ebx+2528], edx
	mov	eax, DWORD PTR [ebp+2524]
	mov	DWORD PTR [ebx+2524], eax
	mov	ecx, DWORD PTR [ebp+36]
	mov	DWORD PTR [ebx+36], ecx
	mov	edx, DWORD PTR [ebp+2812]
	mov	DWORD PTR [ebx+2812], edx
	mov	eax, DWORD PTR [ebp+2588]
	xor	edx, edx
	mov	DWORD PTR [ebx+2588], eax
	mov	DWORD PTR [ebx+2660], edx
	mov	ecx, DWORD PTR [ebp+2592]
	mov	DWORD PTR [ebx+2592], ecx
	mov	eax, DWORD PTR [ebp+2532]
	mov	DWORD PTR [ebx+2532], eax
	mov	ecx, DWORD PTR [ebp+2540]
	mov	DWORD PTR [ebx+2540], ecx
	mov	eax, DWORD PTR [ebp+2544]
	mov	DWORD PTR [ebx+2544], eax
	mov	ecx, DWORD PTR [ebp+2792]
	mov	DWORD PTR [ebx+2792], ecx
	mov	eax, DWORD PTR [ebp+2796]
	mov	DWORD PTR [ebx+2796], eax
	mov	ecx, DWORD PTR [ebp+2800]
	mov	DWORD PTR [ebx+2800], ecx
	mov	eax, DWORD PTR [ebp+2532]
	sar	eax, 10					; 0000000aH
	mov	DWORD PTR [ebx+2680], eax
	mov	ecx, DWORD PTR [ebp+2616]
	mov	DWORD PTR [ebx+2616], ecx
	mov	eax, DWORD PTR [ebp+2620]
	mov	DWORD PTR [ebx+2620], eax
	mov	ecx, DWORD PTR [ebp+2748]
	mov	DWORD PTR [ebx+2748], ecx
	mov	eax, DWORD PTR [ebp+2536]
	mov	DWORD PTR [ebx+2536], eax
	mov	cl, BYTE PTR [ebp+2560]
	mov	BYTE PTR [ebx+2560], cl
	mov	eax, DWORD PTR [ebp+2652]
	mov	DWORD PTR [ebx+2652], eax
	or	ecx, -1
	xor	eax, eax
	lea	esi, DWORD PTR [ebx+4]
	repne scasb
	not	ecx
	sub	edi, ecx
	mov	DWORD PTR 8+[esp+20], esi
	mov	eax, ecx
	mov	esi, edi
	mov	edi, DWORD PTR 8+[esp+20]
	shr	ecx, 2
	rep movsd
	mov	ecx, eax
	and	ecx, 3
	rep movsb

; 841  : 	//	if (m_eMoveKind == MISSLE_MMK_Parabola)
; 842  : 	//	{
; 843  : 	//		Missle.m_nHeight = 0;
; 844  : 	//		Missle.m_nHeightSpeed	= m_nZAcceleration * m_nLifeTime / 2;
; 845  : 	//100000 / m_nLifeTime + m_nLifeTime / 2;
; 846  : 	//	}
; 847  : #ifndef  _SERVER
; 848  : 	Missle.m_bMultiShow		=  m_bMultiShow;

	mov	ecx, DWORD PTR [ebp+2640]
	mov	DWORD PTR [ebx+2640], ecx

; 849  : 	Missle.m_MissleRes.m_bLoopAnim = m_MissleRes.m_bLoopAnim;

	mov	eax, DWORD PTR [ebp+84]
	mov	DWORD PTR [ebx+84], eax

; 850  : 	Missle.m_MissleRes.m_bHaveEnd = FALSE;

	mov	DWORD PTR [ebx+80], edx

; 851  : 	Missle.m_btRedLum		= m_btRedLum;

	mov	cl, BYTE PTR [ebp+2645]
	mov	BYTE PTR [ebx+2645], cl

; 852  : 	Missle.m_btGreenLum		= m_btGreenLum;

	mov	al, BYTE PTR [ebp+2646]
	mov	BYTE PTR [ebx+2646], al

; 853  : 	Missle.m_btBlueLum		= m_btBlueLum;

	mov	cl, BYTE PTR [ebp+2647]
	mov	BYTE PTR [ebx+2647], cl

; 854  : 	Missle.m_usLightRadius	= m_usLightRadius;

	mov	ax, WORD PTR [ebp+2648]
	mov	WORD PTR [ebx+2648], ax

; 855  : 	int nOffset = 0;
; 856  : 	
; 857  : 	//如果是相同的子弹可以以不同方式显示时，则随机产生
; 858  : 	if (m_bMultiShow)		

	mov	ecx, DWORD PTR [ebp+2640]
	xor	eax, eax
	cmp	ecx, edx
	je	SHORT $L79668

; 859  : 	{
; 860  : 		if (g_Random(2) == 0)

	push	2
	call	DWORD PTR __imp_?g_Random@@YAII@Z
	add	esp, 4
	neg	eax
	sbb	eax, eax
	and	eax, 4
$L79668:

; 861  : 		{
; 862  : 			nOffset = 0;
; 863  : 		}
; 864  : 		else
; 865  : 			nOffset = MAX_MISSLE_STATUS;
; 866  : 	}
; 867  : 	
; 868  : 	for (int t = 0; t < MAX_MISSLE_STATUS ; t++)

	lea	ecx, DWORD PTR [ebx+188]
	mov	DWORD PTR -8+[esp+24], 4
	mov	DWORD PTR 8+[esp+20], ecx
	lea	ecx, DWORD PTR [eax+eax*2]
	lea	edx, DWORD PTR [ecx+ecx*8]
	shl	edx, 1
	sub	edx, eax
	lea	edx, DWORD PTR [ebp+edx*4+188]
$L79671:

; 869  : 	{
; 870  : 		strcpy(Missle.m_MissleRes.m_MissleRes[t].AnimFileName,m_MissleRes.m_MissleRes[t + nOffset].AnimFileName);

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

; 871  : 		
; 872  : 		Missle.m_MissleRes.m_MissleRes[t].nTotalFrame = m_MissleRes.m_MissleRes[t + nOffset].nTotalFrame;

	mov	eax, DWORD PTR 8+[esp+20]
	and	ecx, 3
	rep movsb
	mov	ecx, DWORD PTR [edx]

; 873  : 		Missle.m_MissleRes.m_MissleRes[t].nDir = m_MissleRes.m_MissleRes[t + nOffset].nDir;
; 874  : 		Missle.m_MissleRes.m_MissleRes[t].nInterval = m_MissleRes.m_MissleRes[t + nOffset].nInterval;
; 875  : 		
; 876  : 		strcpy(Missle.m_MissleRes.m_MissleRes[t].SndFileName,m_MissleRes.m_MissleRes[t + nOffset].SndFileName);

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
	jne	$L79671

; 877  : 	}
; 878  : 	Missle.m_MissleRes.m_bSubLoop = m_MissleRes.m_bSubLoop;

	mov	ecx, DWORD PTR [ebp+1836]
	pop	edi
	mov	DWORD PTR [ebx+1836], ecx

; 879  : 	Missle.m_MissleRes.m_nSubStart = m_MissleRes.m_nSubStart;

	mov	edx, DWORD PTR [ebp+1840]
	mov	DWORD PTR [ebx+1840], edx

; 880  : 	Missle.m_MissleRes.m_nSubStop = m_MissleRes.m_nSubStop;

	mov	eax, DWORD PTR [ebp+1844]
	mov	DWORD PTR [ebx+1844], eax
	pop	esi

; 881  : #endif	
; 882  : 	
; 883  : 	return (Missle);

	mov	eax, ebx
	pop	ebp
	pop	ebx

; 884  : }

	add	esp, 8
	ret	4
??4KMissle@@AAEAAV0@AAV0@@Z ENDP			; KMissle::operator=
_TEXT	ENDS
PUBLIC	?ProcessDamage@KMissle@@AAEHH@Z			; KMissle::ProcessDamage
;	COMDAT ?ProcessDamage@KMissle@@AAEHH@Z
_TEXT	SEGMENT
?ProcessDamage@KMissle@@AAEHH@Z PROC NEAR		; KMissle::ProcessDamage, COMDAT

; 896  : #ifdef _SERVER
; 897  : 	bool bCalDamage = false;
; 898  : 	
; 899  : 	if (m_ulDamageInterval)
; 900  : 	{
; 901  : 		if (m_ulNextCalDamageTime > g_SubWorldSet.GetGameTime())
; 902  : 		{
; 903  : 			return FALSE;
; 904  : 		}
; 905  : 		else
; 906  : 		{
; 907  : 			m_ulNextCalDamageTime += m_ulDamageInterval;
; 908  : 		}
; 909  : 	}
; 910  : 	if (Npc[m_nLauncher].IsMatch(this->m_dwLauncherId))	
; 911  : 		if (m_pMagicAttribsData) 
; 912  : 		{
; 913  : 			if (Npc[nNpcId].ReceiveDamage(m_nLauncher, m_bIsMelee, m_pMagicAttribsData->m_pDamageMagicAttribs, m_bUseAttackRating))
; 914  : 			{
; 915  : 				
; 916  : 				if (m_pMagicAttribsData->m_nStateMagicAttribsNum > 0)
; 917  : 					Npc[nNpcId].SetStateSkillEffect(m_nLauncher, m_nSkillId, m_nLevel, m_pMagicAttribsData->m_pStateMagicAttribs, m_pMagicAttribsData->m_nStateMagicAttribsNum, m_pMagicAttribsData->m_pStateMagicAttribs[0].nValue[1]);
; 918  : 				
; 919  : 				if (m_pMagicAttribsData->m_nImmediateMagicAttribsNum > 0)
; 920  : 					Npc[nNpcId].SetImmediatelySkillEffect(m_nLauncher, m_pMagicAttribsData->m_pImmediateAttribs, m_pMagicAttribsData->m_nImmediateMagicAttribsNum);
; 921  : 			}
; 922  : 			return TRUE;
; 923  : 		}
; 924  : #endif //_SERVER
; 925  : 		return FALSE;

	xor	eax, eax

; 926  : }

	ret	4
?ProcessDamage@KMissle@@AAEHH@Z ENDP			; KMissle::ProcessDamage
_TEXT	ENDS
PUBLIC	?CreateSpecialEffect@KMissle@@QAEHW4eMissleStatus@@HHHH@Z ; KMissle::CreateSpecialEffect
EXTRN	?PlaySoundA@KMissleRes@@QAEXHHHH@Z:NEAR		; KMissleRes::PlaySoundA
EXTRN	?Vanish@KSkill@@AAEXPAVKMissle@@@Z:NEAR		; KSkill::Vanish
;	COMDAT ?DoVanish@KMissle@@AAEXXZ
_TEXT	SEGMENT
_nSrcX$ = -4
_nSrcY$ = -8
?DoVanish@KMissle@@AAEXXZ PROC NEAR			; KMissle::DoVanish, COMDAT

; 929  : {

	sub	esp, 8
	push	esi
	mov	esi, ecx

; 930  : 	if (m_eMissleStatus == MS_DoVanish) return ;

	cmp	DWORD PTR [esi+2752], 2
	je	$L79680

; 931  : #ifndef _SERVER
; 932  : 	m_MissleRes.m_bHaveEnd = TRUE;
; 933  : 	m_nCollideOrVanishTime = m_nCurrentLife;

	mov	eax, DWORD PTR [esi+2660]
	mov	DWORD PTR [esi+80], 1
	mov	DWORD PTR [esi+2668], eax

; 934  : #endif
; 935  : 	if (m_bVanishedEvent)	

	mov	eax, DWORD PTR [esi+2636]
	test	eax, eax
	je	SHORT $L79686

; 936  : 	{
; 937  : 		_ASSERT(m_nSkillId < MAX_SKILL && m_nLevel < MAX_SKILLLEVEL);
; 938  : 		KSkill * pOrdinSkill = (KSkill *) g_SkillManager.GetSkill(m_nSkillId,m_nLevel);

	mov	eax, DWORD PTR [esi+2548]
	mov	ecx, DWORD PTR [esi+2712]
	mov	edx, eax
	shl	edx, 6
	add	edx, ecx
	mov	edx, DWORD PTR ?g_SkillManager@@3VKSkillManager@@A[edx*4+5740]
	test	edx, edx
	je	SHORT $L80609
	mov	eax, edx
	jmp	SHORT $L80606
$L80609:
	push	ecx
	push	eax
	mov	ecx, OFFSET FLAT:?g_SkillManager@@3VKSkillManager@@A
	call	?InstanceSkill@KSkillManager@@AAEPAVISkill@@KK@Z ; KSkillManager::InstanceSkill
$L80606:

; 939  : 		if (pOrdinSkill)

	test	eax, eax
	je	SHORT $L79686

; 940  :         {
; 941  : 			pOrdinSkill->Vanish(this);

	push	esi
	mov	ecx, eax
	call	?Vanish@KSkill@@AAEXPAVKMissle@@@Z	; KSkill::Vanish
$L79686:

; 942  :         }
; 943  : 	}
; 944  : #ifdef _SERVER	//服务器端时子弹一旦进入消亡期则直接删除掉
; 945  : 	SubWorld[m_nSubWorldId].m_WorldMessage.Send(GWM_MISSLE_DEL, m_nMissleId);
; 946  : 	return ;
; 947  : #endif
; 948  : 	m_eMissleStatus = MS_DoVanish;
; 949  : #ifndef _SERVER 
; 950  : 	if (m_nRegionId < 0)

	mov	eax, DWORD PTR [esi+2764]
	mov	DWORD PTR [esi+2752], 2
	test	eax, eax
	jge	SHORT $L79687

; 951  : 	{
; 952  : 		m_bRemoving = TRUE;

	mov	DWORD PTR [esi+48], 1
	pop	esi

; 961  : #endif
; 962  : }

	add	esp, 8
	ret	0
$L79687:

; 953  : 		return ;
; 954  : 	}
; 955  : 	int nSrcX = 0 ;
; 956  : 	int nSrcY = 0 ;
; 957  : 	SubWorld[0].Map2Mps(m_nRegionId, m_nCurrentMapX, m_nCurrentMapY,m_nXOffset, m_nYOffset, &nSrcX, &nSrcY);

	lea	ecx, DWORD PTR _nSrcY$[esp+12]
	lea	edx, DWORD PTR _nSrcX$[esp+12]
	push	ecx
	mov	ecx, DWORD PTR [esi+2688]
	push	edx
	mov	edx, DWORD PTR [esi+2684]
	push	ecx
	mov	ecx, DWORD PTR [esi+2676]
	push	edx
	mov	edx, DWORD PTR [esi+2672]
	push	ecx
	push	edx
	push	eax
	mov	ecx, OFFSET FLAT:?SubWorld@@3PAVKSubWorld@@A
	mov	DWORD PTR _nSrcX$[esp+40], 0
	mov	DWORD PTR _nSrcY$[esp+40], 0
	call	?Map2Mps@KSubWorld@@QAEXHHHHHPAH0@Z	; KSubWorld::Map2Mps

; 958  : 	CreateSpecialEffect(MS_DoVanish, nSrcX, nSrcY, m_nCurrentMapZ);

	mov	eax, DWORD PTR [esi+2680]
	mov	ecx, DWORD PTR _nSrcY$[esp+12]
	mov	edx, DWORD PTR _nSrcX$[esp+12]
	push	0
	push	eax
	push	ecx
	push	edx
	push	2
	mov	ecx, esi
	call	?CreateSpecialEffect@KMissle@@QAEHW4eMissleStatus@@HHHH@Z ; KMissle::CreateSpecialEffect

; 959  : 	//m_MissleRes.StopSound();
; 960  : 	m_MissleRes.PlaySound(MS_DoVanish, nSrcX, nSrcY, 0);		

	mov	eax, DWORD PTR _nSrcY$[esp+12]
	mov	ecx, DWORD PTR _nSrcX$[esp+12]
	push	0
	push	eax
	push	ecx
	push	2
	lea	ecx, DWORD PTR [esi+56]
	call	?PlaySoundA@KMissleRes@@QAEXHHHH@Z	; KMissleRes::PlaySoundA
$L79680:
	pop	esi

; 961  : #endif
; 962  : }

	add	esp, 8
	ret	0
?DoVanish@KMissle@@AAEXXZ ENDP				; KMissle::DoVanish
_TEXT	ENDS
EXTRN	?StopSound@KMissleRes@@QAEXXZ:NEAR		; KMissleRes::StopSound
EXTRN	?Collidsion@KSkill@@AAEXPAVKMissle@@@Z:NEAR	; KSkill::Collidsion
;	COMDAT ?DoCollision@KMissle@@AAEXXZ
_TEXT	SEGMENT
_nSrcX$79701 = -4
_nSrcY$79702 = -8
?DoCollision@KMissle@@AAEXXZ PROC NEAR			; KMissle::DoCollision, COMDAT

; 965  : {

	sub	esp, 8
	push	esi
	mov	esi, ecx

; 966  : 	if (m_eMissleStatus == MS_DoCollision) return;

	cmp	DWORD PTR [esi+2752], 3
	je	$L79700

; 967  : 	if (m_bCollideEvent)	

	mov	eax, DWORD PTR [esi+2632]
	test	eax, eax
	je	SHORT $L79698

; 968  : 	{
; 969  : 		_ASSERT(m_nSkillId < MAX_SKILL && m_nLevel < MAX_SKILLLEVEL);
; 970  : 		KSkill * pOrdinSkill = (KSkill *)g_SkillManager.GetSkill(m_nSkillId, m_nLevel);

	mov	eax, DWORD PTR [esi+2548]
	mov	ecx, DWORD PTR [esi+2712]
	mov	edx, eax
	shl	edx, 6
	add	edx, ecx
	mov	edx, DWORD PTR ?g_SkillManager@@3VKSkillManager@@A[edx*4+5740]
	test	edx, edx
	je	SHORT $L80620
	mov	eax, edx
	jmp	SHORT $L80617
$L80620:
	push	ecx
	push	eax
	mov	ecx, OFFSET FLAT:?g_SkillManager@@3VKSkillManager@@A
	call	?InstanceSkill@KSkillManager@@AAEPAVISkill@@KK@Z ; KSkillManager::InstanceSkill
$L80617:

; 971  : 		if (pOrdinSkill)

	test	eax, eax
	je	SHORT $L79698

; 972  :         {
; 973  : 			pOrdinSkill->Collidsion(this);

	push	esi
	mov	ecx, eax
	call	?Collidsion@KSkill@@AAEXPAVKMissle@@@Z	; KSkill::Collidsion
$L79698:

; 974  :         }
; 975  : 	}
; 976  : 	if (m_bCollideVanish)

	mov	eax, DWORD PTR [esi+2596]
	test	eax, eax
	je	SHORT $L79699

; 977  : 	{
; 978  : #ifndef _SERVER
; 979  : 		m_MissleRes.m_bHaveEnd = TRUE;
; 980  : #endif
; 981  : 		DoVanish();

	mov	ecx, esi
	mov	DWORD PTR [esi+80], 1
	call	?DoVanish@KMissle@@AAEXXZ		; KMissle::DoVanish
	pop	esi

; 996  : 	}
; 997  : }

	add	esp, 8
	ret	0
$L79699:

; 982  : 	}
; 983  : 	else 
; 984  : 	{
; 985  : #ifndef _SERVER		
; 986  : 		//增加撞后的效果	
; 987  : 		int nSrcX = 0 ;
; 988  : 		int nSrcY = 0 ;
; 989  : 		SubWorld[0].Map2Mps(m_nRegionId, m_nCurrentMapX, m_nCurrentMapY,m_nXOffset, m_nYOffset, &nSrcX, &nSrcY);

	mov	edx, DWORD PTR [esi+2688]
	lea	eax, DWORD PTR _nSrcY$79702[esp+12]
	push	edi
	lea	ecx, DWORD PTR _nSrcX$79701[esp+16]
	push	eax
	mov	eax, DWORD PTR [esi+2684]
	push	ecx
	mov	ecx, DWORD PTR [esi+2676]
	push	edx
	mov	edx, DWORD PTR [esi+2672]
	push	eax
	mov	eax, DWORD PTR [esi+2764]
	push	ecx
	push	edx
	push	eax
	mov	ecx, OFFSET FLAT:?SubWorld@@3PAVKSubWorld@@A
	mov	DWORD PTR _nSrcX$79701[esp+44], 0
	mov	DWORD PTR _nSrcY$79702[esp+44], 0
	call	?Map2Mps@KSubWorld@@QAEXHHHHHPAH0@Z	; KSubWorld::Map2Mps

; 990  : 		if (!m_MissleRes.m_SkillSpecialList.GetHead())

	mov	eax, DWORD PTR [esi+60]
	lea	edi, DWORD PTR [esi+56]
	mov	ecx, DWORD PTR [eax+4]
	test	ecx, ecx
	je	SHORT $L80635
	test	eax, eax
	jne	SHORT $L79703
$L80635:

; 991  : 			CreateSpecialEffect(MS_DoCollision, nSrcX, nSrcY, m_nCurrentMapZ);

	mov	ecx, DWORD PTR [esi+2680]
	mov	edx, DWORD PTR _nSrcY$79702[esp+16]
	mov	eax, DWORD PTR _nSrcX$79701[esp+16]
	push	0
	push	ecx
	push	edx
	push	eax
	push	3
	mov	ecx, esi
	call	?CreateSpecialEffect@KMissle@@QAEHW4eMissleStatus@@HHHH@Z ; KMissle::CreateSpecialEffect
$L79703:

; 992  : 		m_MissleRes.StopSound();

	mov	ecx, edi
	call	?StopSound@KMissleRes@@QAEXXZ		; KMissleRes::StopSound

; 993  : 		m_MissleRes.PlaySound(MS_DoCollision, nSrcX, nSrcY, 0);		

	mov	ecx, DWORD PTR _nSrcY$79702[esp+16]
	mov	edx, DWORD PTR _nSrcX$79701[esp+16]
	push	0
	push	ecx
	push	edx
	push	3
	mov	ecx, edi
	call	?PlaySoundA@KMissleRes@@QAEXHHHH@Z	; KMissleRes::PlaySoundA

; 994  : #endif
; 995  : 		m_eMissleStatus = MS_DoFly;

	mov	DWORD PTR [esi+2752], 1
	pop	edi
$L79700:
	pop	esi

; 996  : 	}
; 997  : }

	add	esp, 8
	ret	0
?DoCollision@KMissle@@AAEXXZ ENDP			; KMissle::DoCollision
_TEXT	ENDS
;	COMDAT ?DoFly@KMissle@@AAEXXZ
_TEXT	SEGMENT
_nSrcX$ = -4
_nSrcY$ = -8
?DoFly@KMissle@@AAEXXZ PROC NEAR			; KMissle::DoFly, COMDAT

; 1000 : {

	sub	esp, 8
	push	esi
	mov	esi, ecx

; 1001 : 	if (m_eMissleStatus == MS_DoFly) return ;

	cmp	DWORD PTR [esi+2752], 1
	je	SHORT $L79706

; 1002 : #ifndef _SERVER
; 1003 : 	int nSrcX;
; 1004 : 	int nSrcY;
; 1005 : //	m_MissleRes.StopSound();
; 1006 : 	SubWorld[0].Map2Mps(m_nRegionId, m_nCurrentMapX, m_nCurrentMapY,m_nXOffset, m_nYOffset, &nSrcX, &nSrcY);

	mov	edx, DWORD PTR [esi+2688]
	lea	eax, DWORD PTR _nSrcY$[esp+12]
	lea	ecx, DWORD PTR _nSrcX$[esp+12]
	push	eax
	mov	eax, DWORD PTR [esi+2684]
	push	ecx
	mov	ecx, DWORD PTR [esi+2676]
	push	edx
	mov	edx, DWORD PTR [esi+2672]
	push	eax
	mov	eax, DWORD PTR [esi+2764]
	push	ecx
	push	edx
	push	eax
	mov	ecx, OFFSET FLAT:?SubWorld@@3PAVKSubWorld@@A
	call	?Map2Mps@KSubWorld@@QAEXHHHHHPAH0@Z	; KSubWorld::Map2Mps

; 1007 : 	m_MissleRes.PlaySound(MS_DoFly, nSrcX, nSrcY, 0);		

	mov	ecx, DWORD PTR _nSrcY$[esp+12]
	mov	edx, DWORD PTR _nSrcX$[esp+12]
	push	0
	push	ecx
	push	edx
	push	1
	lea	ecx, DWORD PTR [esi+56]
	call	?PlaySoundA@KMissleRes@@QAEXHHHH@Z	; KMissleRes::PlaySoundA

; 1008 : #endif
; 1009 : 	//初始化贴图
; 1010 : 	m_eMissleStatus = MS_DoFly;

	mov	DWORD PTR [esi+2752], 1
$L79706:
	pop	esi

; 1011 : }

	add	esp, 8
	ret	0
?DoFly@KMissle@@AAEXXZ ENDP				; KMissle::DoFly
_TEXT	ENDS
EXTRN	?FindNpc@KRegion@@QAEHHHHH@Z:NEAR		; KRegion::FindNpc
;	COMDAT ?ProcessCollision@KMissle@@QAEHHHHHHW4MISSLE_RELATION@@@Z
_TEXT	SEGMENT
_nLauncherIdx$ = 8
_nRegionId$ = 12
_nMapX$ = 16
_nMapY$ = 20
_nRange$ = 24
_eRelation$ = 28
_this$ = -24
_nSubWorld$ = -40
_nRet$ = -28
_i$ = -16
_j$79734 = -20
_nSrcX$79764 = -32
_nSrcY$79765 = 12
?ProcessCollision@KMissle@@QAEHHHHHHW4MISSLE_RELATION@@@Z PROC NEAR ; KMissle::ProcessCollision, COMDAT

; 1028 : {

	sub	esp, 40					; 00000028H
	mov	DWORD PTR _this$[esp+40], ecx

; 1029 : #ifdef TOOLVERSION 
; 1030 : 	return 0;
; 1031 : #endif
; 1032 : 	if (nLauncherIdx <= 0 ) return 0;

	mov	ecx, DWORD PTR _nLauncherIdx$[esp+36]
	test	ecx, ecx
	jg	SHORT $L79719
	xor	eax, eax

; 1133 : }

	add	esp, 40					; 00000028H
	ret	24					; 00000018H
$L79719:

; 1033 : 	int nRangeX = nRange;
; 1034 : 	int	nRangeY = nRange;
; 1035 : 	int	nSubWorld = Npc[nLauncherIdx].m_SubWorldIndex;

	lea	eax, DWORD PTR [ecx+ecx*4]
	push	ebx
	shl	eax, 8
	sub	eax, ecx

; 1036 : 	_ASSERT(Npc[nLauncherIdx].m_SubWorldIndex >= 0);
; 1037 : 	_ASSERT(nRegionId >= 0);
; 1038 : 	int	nRegion = nRegionId;
; 1039 : 	int	nRet = 0;

	mov	DWORD PTR _nRet$[esp+44], 0
	lea	eax, DWORD PTR [eax+eax*2]
	shl	eax, 1
	sub	eax, ecx

; 1040 : 	int	nRMx, nRMy, nSearchRegion;
; 1041 : 	// 检查范围内的格子里的NPC
; 1042 : 	for (int i = -nRangeX; i < nRangeX; i++)

	mov	ecx, DWORD PTR _nRange$[esp+40]
	mov	ebx, DWORD PTR ?Npc@@3PAVKNpc@@A[eax*4+2300]
	mov	eax, ecx
	neg	eax
	mov	edx, eax
	mov	DWORD PTR _nSubWorld$[esp+44], ebx
	cmp	edx, ecx
	mov	DWORD PTR -4+[esp+44], eax
	mov	DWORD PTR _i$[esp+44], edx
	jge	$L79733
	push	ebp
	mov	ebp, DWORD PTR _nRegionId$[esp+44]
	push	esi
	mov	esi, DWORD PTR _nMapX$[esp+48]
	push	edi
	lea	edi, DWORD PTR [edx+esi]
	mov	DWORD PTR -36+[esp+56], edi
$L79731:

; 1043 : 	{
; 1044 : 		for (int j = -nRangeY; j < nRangeY; j++)

	cmp	eax, ecx
	mov	DWORD PTR _j$79734[esp+56], eax
	jge	$L79732
	mov	esi, DWORD PTR _nMapY$[esp+52]

; 1045 : 		{
; 1046 : 			// 去掉边角几个格子，保证视野是椭圆形
; 1047 : 			if ((i * i + j * j ) > nRangeX * nRangeX)

	imul	edx, edx
	imul	ecx, ecx
	add	esi, eax
	mov	DWORD PTR -8+[esp+56], edx
	mov	DWORD PTR -12+[esp+56], ecx
	mov	DWORD PTR 16+[esp+52], esi
	jmp	SHORT $L79735
$L80652:

; 1043 : 	{
; 1044 : 		for (int j = -nRangeY; j < nRangeY; j++)

	mov	ecx, DWORD PTR -12+[esp+56]
	mov	edx, DWORD PTR -8+[esp+56]
$L79735:

; 1045 : 		{
; 1046 : 			// 去掉边角几个格子，保证视野是椭圆形
; 1047 : 			if ((i * i + j * j ) > nRangeX * nRangeX)

	mov	esi, eax
	imul	esi, eax
	add	esi, edx
	cmp	esi, ecx
	jg	$L79736

; 1048 : 				continue;
; 1049 : 			
; 1050 : 			// 确定目标格子实际的REGION和坐标确定
; 1051 : 			nRMx = nMapX + i;
; 1052 : 			nRMy = nMapY + j;

	mov	edx, DWORD PTR 16+[esp+52]
	mov	ecx, edi

; 1053 : 			nSearchRegion = nRegion;
; 1054 : 			if (nRMx < 0)

	test	edi, edi
	mov	esi, ebp
	jge	SHORT $L79739

; 1055 : 			{
; 1056 : 				nSearchRegion = SubWorld[nSubWorld].m_Region[nSearchRegion].m_nConnectRegion[2];

	lea	ecx, DWORD PTR [ebx+ebx*2]
	lea	eax, DWORD PTR [ebx+ecx*4]
	lea	ecx, DWORD PTR [ebp+ebp*2]
	shl	eax, 5
	add	eax, ebx
	lea	ecx, DWORD PTR [ebp+ecx*4]
	shl	ecx, 4
	lea	eax, DWORD PTR [eax+eax*4]
	shl	eax, 2
	mov	esi, DWORD PTR ?SubWorld@@3PAVKSubWorld@@A[eax+8]
	mov	esi, DWORD PTR [esi+ecx+112]

; 1057 : 				nRMx += SubWorld[nSubWorld].m_nRegionWidth;

	mov	ecx, DWORD PTR ?SubWorld@@3PAVKSubWorld@@A[eax+8260]
	add	ecx, edi

; 1058 : 			}
; 1059 : 			else if (nRMx >= SubWorld[nSubWorld].m_nRegionWidth)

	jmp	SHORT $L79741
$L79739:
	lea	eax, DWORD PTR [ebx+ebx*2]
	lea	eax, DWORD PTR [ebx+eax*4]
	shl	eax, 5
	add	eax, ebx
	mov	ebx, DWORD PTR -36+[esp+56]
	lea	eax, DWORD PTR [eax+eax*4]
	shl	eax, 2
	mov	edi, DWORD PTR ?SubWorld@@3PAVKSubWorld@@A[eax+8260]
	cmp	ebx, edi
	jl	SHORT $L80647

; 1060 : 			{
; 1061 : 				nSearchRegion = SubWorld[nSubWorld].m_Region[nSearchRegion].m_nConnectRegion[6];

	mov	esi, DWORD PTR ?SubWorld@@3PAVKSubWorld@@A[eax+8]
	lea	ecx, DWORD PTR [ebp+ebp*2]
	lea	ecx, DWORD PTR [ebp+ecx*4]
	shl	ecx, 4
	mov	esi, DWORD PTR [esi+ecx+128]

; 1062 : 				nRMx -= SubWorld[nSubWorld].m_nRegionWidth;

	mov	ecx, ebx
	sub	ecx, edi
$L80647:
	mov	ebx, DWORD PTR _nSubWorld$[esp+56]
$L79741:

; 1063 : 			}
; 1064 : 			if (nSearchRegion < 0) continue;

	test	esi, esi
	jl	$L79736

; 1065 : 			if (nRMy < 0)

	mov	edi, DWORD PTR 16+[esp+52]
	test	edi, edi
	jge	SHORT $L79743

; 1066 : 			{
; 1067 : 				nSearchRegion = SubWorld[nSubWorld].m_Region[nSearchRegion].m_nConnectRegion[4];

	lea	edx, DWORD PTR [esi+esi*2]
	lea	edx, DWORD PTR [esi+edx*4]
	mov	esi, DWORD PTR ?SubWorld@@3PAVKSubWorld@@A[eax+8]
	shl	edx, 4
	mov	esi, DWORD PTR [esi+edx+120]

; 1068 : 				nRMy += SubWorld[nSubWorld].m_nRegionHeight;

	mov	edx, DWORD PTR ?SubWorld@@3PAVKSubWorld@@A[eax+8264]
	add	edx, edi

; 1069 : 			}
; 1070 : 			else if (nRMy >= SubWorld[nSubWorld].m_nRegionHeight)

	jmp	SHORT $L79745
$L79743:
	mov	edi, DWORD PTR ?SubWorld@@3PAVKSubWorld@@A[eax+8264]
	mov	ebx, DWORD PTR 16+[esp+52]
	cmp	ebx, edi
	jl	SHORT $L80648

; 1071 : 			{
; 1072 : 				nSearchRegion = SubWorld[nSubWorld].m_Region[nSearchRegion].m_nConnectRegion[0];

	lea	edx, DWORD PTR [esi+esi*2]
	lea	edx, DWORD PTR [esi+edx*4]
	mov	esi, DWORD PTR ?SubWorld@@3PAVKSubWorld@@A[eax+8]
	shl	edx, 4
	mov	esi, DWORD PTR [esi+edx+104]

; 1073 : 				nRMy -= SubWorld[nSubWorld].m_nRegionHeight;

	mov	edx, ebx
	sub	edx, edi
$L80648:
	mov	ebx, DWORD PTR _nSubWorld$[esp+56]
$L79745:

; 1074 : 			}	
; 1075 : 			if (nSearchRegion < 0) continue;

	test	esi, esi
	jl	$L79736

; 1076 : 			// 从REGION的NPC列表中查找满足条件的NPC		
; 1077 : 			
; 1078 : 			int nNpcIdx = SubWorld[nSubWorld].m_Region[nSearchRegion].FindNpc(nRMx, nRMy, nLauncherIdx, relation_all);

	mov	edi, DWORD PTR _nLauncherIdx$[esp+52]
	push	31					; 0000001fH
	push	edi
	push	edx
	push	ecx
	lea	ecx, DWORD PTR [esi+esi*2]
	lea	edx, DWORD PTR [esi+ecx*4]
	mov	ecx, DWORD PTR ?SubWorld@@3PAVKSubWorld@@A[eax+8]
	shl	edx, 4
	add	ecx, edx
	call	?FindNpc@KRegion@@QAEHHHHH@Z		; KRegion::FindNpc
	mov	edi, eax

; 1079 : 			if (nNpcIdx > 0)	

	test	edi, edi
	jle	$L79736

; 1080 : 			{
; 1081 : 				nRet++;

	mov	ecx, DWORD PTR _nRet$[esp+56]
	inc	ecx
	mov	DWORD PTR _nRet$[esp+56], ecx

; 1082 : 				bool bConfirmCollision = false;
; 1083 : 				if (nNpcIdx == nLauncherIdx && m_bTargetSelf) 

	mov	ecx, DWORD PTR _nLauncherIdx$[esp+52]
	cmp	edi, ecx
	jne	SHORT $L79750
	mov	eax, DWORD PTR _this$[esp+56]
	mov	dl, BYTE PTR [eax+2561]
	test	dl, dl

; 1084 : 					bConfirmCollision = true;
; 1085 : 				else

	jne	SHORT $L80646
$L79750:

; 1086 : 				{
; 1087 : 					switch(eRelation)
; 1088 : 					{

	mov	eax, DWORD PTR _eRelation$[esp+52]
	dec	eax
	je	SHORT $L79757
	dec	eax
	je	SHORT $L79759
	dec	eax
	jne	$L79736

; 1105 : 						
; 1106 : 					case MissleRelation_All:
; 1107 : 						if (NpcSet.GetRelation(nLauncherIdx, nNpcIdx) != relation_none)

	mov	ecx, DWORD PTR _nLauncherIdx$[esp+52]
	push	edi
	push	ecx
	mov	ecx, OFFSET FLAT:?NpcSet@@3VKNpcSet@@A
	call	?GetRelation@KNpcSet@@QAE?AW4NPC_RELATION@@HH@Z ; KNpcSet::GetRelation
	cmp	eax, 1
	je	$L79736

; 1108 : 						{
; 1109 : 							bConfirmCollision = true;
; 1110 : 						}
; 1111 : 						break;

	jmp	SHORT $L80646
$L79759:

; 1094 : 						{
; 1095 : 							bConfirmCollision = true;
; 1096 : 						}
; 1097 : 						break;
; 1098 : 						
; 1099 : 					case MissleRelation_AllyOnly:
; 1100 : 						if (NpcSet.GetRelation(nLauncherIdx, nNpcIdx) == relation_ally)

	push	edi
	push	ecx
	mov	ecx, OFFSET FLAT:?NpcSet@@3VKNpcSet@@A
	call	?GetRelation@KNpcSet@@QAE?AW4NPC_RELATION@@HH@Z ; KNpcSet::GetRelation
	cmp	eax, 4
	jne	$L79736

; 1101 : 						{
; 1102 : 							bConfirmCollision = true;
; 1103 : 						}
; 1104 : 						break;

	jmp	SHORT $L80646
$L79757:

; 1089 : 					case MissleRelation_None:
; 1090 : 						break;
; 1091 : 						
; 1092 : 					case MissleRelation_EnemyOnly:
; 1093 : 						if (NpcSet.GetRelation(nLauncherIdx, nNpcIdx) == relation_enemy)

	push	edi
	push	ecx
	mov	ecx, OFFSET FLAT:?NpcSet@@3VKNpcSet@@A
	call	?GetRelation@KNpcSet@@QAE?AW4NPC_RELATION@@HH@Z ; KNpcSet::GetRelation
	cmp	eax, 8
	jne	$L79736
$L80646:

; 1112 : 					}
; 1113 : 				}	
; 1114 : 				if (bConfirmCollision)
; 1115 : 				{
; 1116 : #ifndef _SERVER
; 1117 : 					int nSrcX = 0;

	xor	eax, eax

; 1118 : 					int nSrcY = 0;
; 1119 : 					SubWorld[0].Map2Mps(nSearchRegion, Npc[nNpcIdx].m_MapX,Npc[nNpcIdx].m_MapY, Npc[nNpcIdx].m_OffX, Npc[nNpcIdx].m_OffY,  &nSrcX, &nSrcY);

	lea	edx, DWORD PTR _nSrcY$79765[esp+52]
	mov	DWORD PTR _nSrcX$79764[esp+56], eax
	mov	DWORD PTR _nSrcY$79765[esp+52], eax
	lea	eax, DWORD PTR [edi+edi*4]
	push	edx
	shl	eax, 8
	sub	eax, edi
	lea	ecx, DWORD PTR _nSrcX$79764[esp+60]
	push	ecx
	lea	eax, DWORD PTR [eax+eax*2]
	shl	eax, 1
	sub	eax, edi
	shl	eax, 2
	mov	edx, DWORD PTR ?Npc@@3PAVKNpc@@A[eax+2676]
	mov	ecx, DWORD PTR ?Npc@@3PAVKNpc@@A[eax+2672]
	push	edx
	mov	edx, DWORD PTR ?Npc@@3PAVKNpc@@A[eax+2664]
	mov	eax, DWORD PTR ?Npc@@3PAVKNpc@@A[eax+2660]
	push	ecx
	push	edx
	push	eax
	push	esi
	mov	ecx, OFFSET FLAT:?SubWorld@@3PAVKSubWorld@@A
	call	?Map2Mps@KSubWorld@@QAEXHHHHHPAH0@Z	; KSubWorld::Map2Mps

; 1120 : 					
; 1121 : 					if (m_bFollowNpcWhenCollid)

	mov	ecx, DWORD PTR _this$[esp+56]
	mov	al, BYTE PTR [ecx+2644]
	test	al, al
	je	SHORT $L79766

; 1122 : 						CreateSpecialEffect(MS_DoCollision, nSrcX, nSrcY, m_nCurrentMapZ, nNpcIdx);

	mov	edx, DWORD PTR [ecx+2680]
	mov	eax, DWORD PTR _nSrcY$79765[esp+52]
	push	edi
	push	edx
	mov	edx, DWORD PTR _nSrcX$79764[esp+64]
	push	eax
	push	edx

; 1123 : 					else 

	jmp	SHORT $L80654
$L79766:

; 1124 : 						CreateSpecialEffect(MS_DoCollision, nSrcX, nSrcY, m_nCurrentMapZ);

	mov	eax, DWORD PTR [ecx+2680]
	mov	edx, DWORD PTR _nSrcY$79765[esp+52]
	push	0
	push	eax
	mov	eax, DWORD PTR _nSrcX$79764[esp+64]
	push	edx
	push	eax
$L80654:
	push	3
	call	?CreateSpecialEffect@KMissle@@QAEHW4eMissleStatus@@HHHH@Z ; KMissle::CreateSpecialEffect
$L79736:
	mov	eax, DWORD PTR _j$79734[esp+56]
	mov	esi, DWORD PTR 16+[esp+52]
	mov	ecx, DWORD PTR _nRange$[esp+52]
	mov	edi, DWORD PTR -36+[esp+56]
	inc	eax
	inc	esi
	cmp	eax, ecx
	mov	DWORD PTR _j$79734[esp+56], eax
	mov	DWORD PTR 16+[esp+52], esi
	jl	$L80652
	mov	eax, DWORD PTR -4+[esp+56]
	mov	edx, DWORD PTR _i$[esp+56]
$L79732:
	inc	edx
	inc	edi
	cmp	edx, ecx
	mov	DWORD PTR _i$[esp+56], edx
	mov	DWORD PTR -36+[esp+56], edi
	jl	$L79731
	pop	edi
	pop	esi
	pop	ebp
$L79733:

; 1125 : #else
; 1126 : 					ProcessDamage(nNpcIdx);						
; 1127 : #endif
; 1128 : 				}
; 1129 : 			}
; 1130 : 		}
; 1131 : 	}
; 1132 : 	return nRet;

	mov	eax, DWORD PTR _nRet$[esp+44]
	pop	ebx

; 1133 : }

	add	esp, 40					; 00000028H
	ret	24					; 00000018H
?ProcessCollision@KMissle@@QAEHHHHHHW4MISSLE_RELATION@@@Z ENDP ; KMissle::ProcessCollision
_TEXT	ENDS
;	COMDAT ?ProcessCollision@KMissle@@AAEHXZ
_TEXT	SEGMENT
?ProcessCollision@KMissle@@AAEHXZ PROC NEAR		; KMissle::ProcessCollision, COMDAT

; 1138 : #ifdef TOOLVERSION
; 1139 : 	return 0;
; 1140 : #endif
; 1141 : 	if (m_bClientSend) return 0;

	mov	eax, DWORD PTR [ecx+44]
	test	eax, eax
	je	SHORT $L79771
	xor	eax, eax

; 1143 : }

	ret	0
$L79771:

; 1142 : 	return ProcessCollision(m_nLauncher, m_nRegionId, m_nCurrentMapX, m_nCurrentMapY, m_nDamageRange , m_eRelation);

	mov	eax, DWORD PTR [ecx+2556]
	mov	edx, DWORD PTR [ecx+2592]
	push	eax
	mov	eax, DWORD PTR [ecx+2676]
	push	edx
	mov	edx, DWORD PTR [ecx+2672]
	push	eax
	mov	eax, DWORD PTR [ecx+2764]
	push	edx
	mov	edx, DWORD PTR [ecx+2732]
	push	eax
	push	edx
	call	?ProcessCollision@KMissle@@QAEHHHHHHW4MISSLE_RELATION@@@Z ; KMissle::ProcessCollision

; 1143 : }

	ret	0
?ProcessCollision@KMissle@@AAEHXZ ENDP			; KMissle::ProcessCollision
_TEXT	ENDS
PUBLIC	??_7KSkillSpecialNode@@6B@			; KSkillSpecialNode::`vftable'
PUBLIC	??_GKSkillSpecialNode@@UAEPAXI@Z		; KSkillSpecialNode::`scalar deleting destructor'
PUBLIC	??_EKSkillSpecialNode@@UAEPAXI@Z		; KSkillSpecialNode::`vector deleting destructor'
EXTRN	??0KSkillSpecial@@QAE@XZ:NEAR			; KSkillSpecial::KSkillSpecial
EXTRN	?Init@KSkillSpecial@@QAEHXZ:NEAR		; KSkillSpecial::Init
EXTRN	?g_SubWorldSet@@3VKSubWorldSet@@A:BYTE		; g_SubWorldSet
EXTRN	__except_list:DWORD
EXTRN	___CxxFrameHandler:NEAR
;	COMDAT ??_7KSkillSpecialNode@@6B@
; File ..\engine\src\KNode.h
CONST	SEGMENT
??_7KSkillSpecialNode@@6B@ DD FLAT:??_EKSkillSpecialNode@@UAEPAXI@Z ; KSkillSpecialNode::`vftable'
CONST	ENDS
;	COMDAT xdata$x
xdata$x	SEGMENT
$T80721	DD	019930520H
	DD	01H
	DD	FLAT:$T80727
	DD	2 DUP(00H)
	DD	2 DUP(00H)
	ORG $+4
$T80727	DD	0ffffffffH
	DD	FLAT:$L80670
xdata$x	ENDS
;	COMDAT ?CreateSpecialEffect@KMissle@@QAEHW4eMissleStatus@@HHHH@Z
_TEXT	SEGMENT
$T80666 = 8
__$EHRec$ = -12
_eStatus$ = 8
_nPX$ = 12
_nPY$ = 16
_nPZ$ = 20
_nNpcIndex$ = 24
_this$ = -16
?CreateSpecialEffect@KMissle@@QAEHW4eMissleStatus@@HHHH@Z PROC NEAR ; KMissle::CreateSpecialEffect, COMDAT

; 1149 : {

	push	-1
	push	$L80725
	mov	eax, DWORD PTR fs:__except_list
	push	eax
	mov	DWORD PTR fs:__except_list, esp
	push	ecx

; 1150 : 	if (!m_MissleRes.m_MissleRes[eStatus].AnimFileName[0]) return FALSE; 

	mov	eax, DWORD PTR _eStatus$[esp+12]
	mov	edx, ecx
	push	ebx
	push	ebp
	lea	ecx, DWORD PTR [eax+eax*2]
	push	esi
	push	edi
	mov	DWORD PTR _this$[esp+32], edx
	lea	ecx, DWORD PTR [ecx+ecx*8]
	shl	ecx, 1
	sub	ecx, eax
	lea	ebx, DWORD PTR [edx+ecx*4]
	mov	al, BYTE PTR [ebx+88]
	lea	edi, DWORD PTR [ebx+88]
	test	al, al
	jne	SHORT $L79781
$L80723:
	xor	eax, eax
	jmp	$L79780
$L79781:

; 1151 : 	KSkillSpecialNode * pNode = NULL;
; 1152 : 	//同一颗子碟不能有几个爆炸效果在一个Npc身上
; 1153 : 	if (nNpcIndex > 0)

	mov	esi, DWORD PTR _nNpcIndex$[esp+28]
	xor	ebp, ebp
	cmp	esi, ebp
	jle	SHORT $L79787

; 1154 : 	{
; 1155 : 		pNode = (KSkillSpecialNode*)m_MissleRes.m_SkillSpecialList.GetHead();

	mov	ecx, DWORD PTR [edx+60]
	mov	eax, DWORD PTR [ecx+4]
	neg	eax
	sbb	eax, eax
	and	eax, ecx

; 1156 : 		while(pNode)

	cmp	eax, ebp
	je	SHORT $L79787

; 1157 : 		{
; 1158 : 			if (pNode->m_pSkillSpecial->m_dwMatchID == Npc[nNpcIndex].m_dwID) return FALSE;

	lea	ecx, DWORD PTR [esi+esi*4]
	shl	ecx, 8
	sub	ecx, esi
	lea	edx, DWORD PTR [ecx+ecx*2]
	shl	edx, 1
	sub	edx, esi
	mov	ecx, DWORD PTR ?Npc@@3PAVKNpc@@A[edx*4]
$L79786:
	mov	edx, DWORD PTR [eax+12]
	cmp	DWORD PTR [edx+44], ecx
	je	SHORT $L80723

; 1159 : 			pNode = (KSkillSpecialNode*)pNode->GetNext();

	mov	eax, DWORD PTR [eax+4]
	cmp	DWORD PTR [eax+4], ebp
	je	SHORT $L79787

; 1156 : 		while(pNode)

	cmp	eax, ebp
	jne	SHORT $L79786
$L79787:

; 1160 : 		}
; 1161 : 	}
; 1162 : 	
; 1163 : 	pNode = new KSkillSpecialNode;

	push	16					; 00000010H
	call	??2@YAPAXI@Z				; operator new
	add	esp, 4
	cmp	eax, ebp
	je	SHORT $L80664
	mov	DWORD PTR [eax+4], ebp
	mov	DWORD PTR [eax+8], ebp
	mov	DWORD PTR [eax+12], ebp
	mov	DWORD PTR [eax], OFFSET FLAT:??_7KSkillSpecialNode@@6B@ ; KSkillSpecialNode::`vftable'
	mov	ebp, eax
$L80664:

; 1164 : 	KSkillSpecial * pSkillSpecial = new KSkillSpecial;

	push	236					; 000000ecH
	call	??2@YAPAXI@Z				; operator new
	add	esp, 4
	mov	DWORD PTR $T80666[esp+28], eax
	xor	ecx, ecx
	cmp	eax, ecx
	mov	DWORD PTR __$EHRec$[esp+40], ecx
	je	SHORT $L80668
	mov	ecx, eax
	call	??0KSkillSpecial@@QAE@XZ		; KSkillSpecial::KSkillSpecial
	mov	ecx, eax
$L80668:

; 1165 : 	pNode->m_pSkillSpecial = pSkillSpecial;
; 1166 : 	
; 1167 : 	int nSrcX = nPX;
; 1168 : 	int nSrcY = nPY;
; 1169 : 	
; 1170 : 	pSkillSpecial->m_nPX = nSrcX;

	mov	eax, DWORD PTR _nPX$[esp+28]

; 1171 : 	pSkillSpecial->m_nPY = nSrcY - 5;// MISSLE_Y_OFFSET;

	mov	edx, DWORD PTR _nPY$[esp+28]
	mov	DWORD PTR [ebp+12], ecx
	mov	DWORD PTR [ecx+24], eax

; 1172 : 	pSkillSpecial->m_nPZ = nPZ;

	mov	eax, DWORD PTR _nPZ$[esp+28]
	add	edx, -5					; fffffffbH
	mov	DWORD PTR [ecx+32], eax

; 1173 : 	pSkillSpecial->m_nNpcIndex = nNpcIndex;
; 1174 : 	pSkillSpecial->m_dwMatchID = Npc[nNpcIndex].m_dwID;

	lea	eax, DWORD PTR [esi+esi*4]
	shl	eax, 8
	sub	eax, esi
	mov	DWORD PTR [ecx+28], edx
	mov	DWORD PTR [ecx+40], esi
	mov	DWORD PTR __$EHRec$[esp+40], -1
	lea	edx, DWORD PTR [eax+eax*2]
	shl	edx, 1
	sub	edx, esi
	mov	eax, DWORD PTR ?Npc@@3PAVKNpc@@A[edx*4]

; 1175 : 	pSkillSpecial->m_pMissleRes = &m_MissleRes.m_MissleRes[eStatus];

	mov	DWORD PTR [ecx+48], edi
	mov	DWORD PTR [ecx+44], eax

; 1176 : 	pSkillSpecial->m_nBeginTime = g_SubWorldSet.GetGameTime();

	mov	edx, DWORD PTR ?g_SubWorldSet@@3VKSubWorldSet@@A
	mov	DWORD PTR [ecx+52], edx

; 1177 : 	pSkillSpecial->m_nEndTime = g_SubWorldSet.GetGameTime() + (pSkillSpecial->m_pMissleRes->nInterval * pSkillSpecial->m_pMissleRes->nTotalFrame / pSkillSpecial->m_pMissleRes->nDir);

	mov	eax, DWORD PTR [edi+104]
	imul	eax, DWORD PTR [edi+100]
	cdq
	idiv	DWORD PTR [edi+108]
	add	eax, DWORD PTR ?g_SubWorldSet@@3VKSubWorldSet@@A
	mov	DWORD PTR [ecx+56], eax

; 1178 : 	pSkillSpecial->m_nCurDir = g_DirIndex2Dir(m_nDirIndex, m_MissleRes.m_MissleRes[eStatus].nDir);

	mov	eax, DWORD PTR [ebx+196]
	test	eax, eax
	jg	SHORT $L80705
	or	edx, -1
	jmp	SHORT $L80703
$L80705:
	mov	edx, DWORD PTR _this$[esp+32]
	mov	edx, DWORD PTR [edx+2804]
	imul	edx, eax
	sar	edx, 6
$L80703:
	mov	DWORD PTR [ecx+36], edx

; 1179 : 	pSkillSpecial->Init();

	call	?Init@KSkillSpecial@@QAEHXZ		; KSkillSpecial::Init

; 1180 : 	m_MissleRes.m_SkillSpecialList.AddTail(pNode);

	mov	eax, DWORD PTR _this$[esp+32]
	add	eax, 68					; 00000044H
	mov	ecx, DWORD PTR [eax+8]
	mov	DWORD PTR [ebp+4], eax
	mov	DWORD PTR [ebp+8], ecx
	mov	edx, DWORD PTR [eax+8]
	mov	DWORD PTR [edx+4], ebp
	mov	DWORD PTR [eax+8], ebp

; 1181 : 	
; 1182 : 	return TRUE;

	mov	eax, 1
$L79780:

; 1183 : }

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
$L80670:
	mov	eax, DWORD PTR $T80666[ebp-4]
	push	eax
	call	??3@YAXPAX@Z				; operator delete
	pop	ecx
	ret	0
$L80725:
	mov	eax, OFFSET FLAT:$T80721
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
	je	SHORT $L80734
	push	esi
	call	??3@YAXPAX@Z				; operator delete
	add	esp, 4
$L80734:
	mov	eax, esi
	pop	esi
	ret	4
??_GKSkillSpecialNode@@UAEPAXI@Z ENDP			; KSkillSpecialNode::`scalar deleting destructor'
_TEXT	ENDS
;	COMDAT ??1KSkillSpecialNode@@UAE@XZ
_TEXT	SEGMENT
??1KSkillSpecialNode@@UAE@XZ PROC NEAR			; KSkillSpecialNode::~KSkillSpecialNode, COMDAT

; 55   : 	~KSkillSpecialNode(){delete m_pSkillSpecial;};

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
PUBLIC	?GetLightInfo@KMissle@@QAEXPAUKLightInfo@@@Z	; KMissle::GetLightInfo
PUBLIC	?GetMpsPos@KMissle@@QAEXPAH0@Z			; KMissle::GetMpsPos
;	COMDAT ?GetLightInfo@KMissle@@QAEXPAUKLightInfo@@@Z
_TEXT	SEGMENT
_pLightInfo$ = 8
_nPX$ = 8
_nPY$ = -4
?GetLightInfo@KMissle@@QAEXPAUKLightInfo@@@Z PROC NEAR	; KMissle::GetLightInfo, COMDAT

; 1186 : {

	push	ecx
	push	esi
	push	edi

; 1187 : 	if (!pLightInfo) 

	mov	edi, DWORD PTR _pLightInfo$[esp+8]
	mov	esi, ecx
	test	edi, edi
	je	SHORT $L79804

; 1188 : 	{
; 1189 : 		return ;
; 1190 : 	}
; 1191 : 
; 1192 : 	int nPX, nPY, nPZ;
; 1193 : 	GetMpsPos(&nPX, &nPY);

	lea	eax, DWORD PTR _nPY$[esp+12]
	lea	ecx, DWORD PTR _nPX$[esp+8]
	push	eax
	push	ecx
	mov	ecx, esi
	call	?GetMpsPos@KMissle@@QAEXPAH0@Z		; KMissle::GetMpsPos

; 1194 : 	nPZ = m_nCurrentMapZ;

	mov	eax, DWORD PTR [esi+2680]

; 1195 : 	
; 1196 : 	pLightInfo->oPosition.nX = nPX;

	mov	edx, DWORD PTR _nPX$[esp+8]

; 1197 : 	pLightInfo->oPosition.nY = nPY;

	mov	ecx, DWORD PTR _nPY$[esp+12]
	mov	DWORD PTR [edi], edx
	mov	DWORD PTR [edi+4], ecx

; 1198 : 	pLightInfo->oPosition.nZ = nPZ;

	mov	DWORD PTR [edi+8], eax

; 1199 : 	pLightInfo->dwColor = 0;
; 1200 : 	m_btRedLum = 0xff;

	mov	BYTE PTR [esi+2645], 255		; 000000ffH

; 1201 : 	m_btGreenLum = 0xc0;

	mov	BYTE PTR [esi+2646], 192		; 000000c0H

; 1202 : 	m_btBlueLum = 0x80;

	mov	BYTE PTR [esi+2647], 128		; 00000080H

; 1203 : 	pLightInfo->dwColor = 0xff000000 | m_btRedLum << 16 | m_btGreenLum << 8 | m_btBlueLum;

	mov	DWORD PTR [edi+12], -16256		; ffffc080H

; 1204 : 	pLightInfo->nRadius = 100;//m_usLightRadius;

	mov	DWORD PTR [edi+16], 100			; 00000064H
$L79804:
	pop	edi
	pop	esi

; 1205 : }

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

; 1209 : {

	sub	esp, 8
	push	esi
	mov	esi, ecx

; 1210 : 	//	if (m_eMissleStatus == MS_DoWait) return;
; 1211 : 	m_eMissleStatus = MS_DoWait;
; 1212 : 	
; 1213 : #ifndef _SERVER 
; 1214 : 	int nSrcX = 0 ;
; 1215 : 	int nSrcY = 0 ;
; 1216 : 	SubWorld[0].Map2Mps(m_nRegionId, m_nCurrentMapX, m_nCurrentMapY,m_nXOffset, m_nYOffset, &nSrcX, &nSrcY);

	lea	eax, DWORD PTR _nSrcY$[esp+12]
	lea	ecx, DWORD PTR _nSrcX$[esp+12]
	mov	edx, DWORD PTR [esi+2688]
	push	eax
	mov	eax, DWORD PTR [esi+2684]
	push	ecx
	mov	ecx, DWORD PTR [esi+2676]
	push	edx
	mov	edx, DWORD PTR [esi+2672]
	push	eax
	mov	eax, DWORD PTR [esi+2764]
	push	ecx
	push	edx
	push	eax
	mov	ecx, OFFSET FLAT:?SubWorld@@3PAVKSubWorld@@A
	mov	DWORD PTR [esi+2752], 0
	mov	DWORD PTR _nSrcX$[esp+40], 0
	mov	DWORD PTR _nSrcY$[esp+40], 0
	call	?Map2Mps@KSubWorld@@QAEXHHHHHPAH0@Z	; KSubWorld::Map2Mps

; 1217 : 	CreateSpecialEffect(MS_DoWait, nSrcX, nSrcY, m_nCurrentMapZ);

	mov	ecx, DWORD PTR [esi+2680]
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

; 1218 : 	
; 1219 : 	/*
; 1220 : 	if (!m_MissleRes.m_MissleRes[MS_DoWait].AnimFileName[0])  return ; 
; 1221 : 	int nBeginTime  = SubWorld[0].m_dwCurrentTime + 	m_nStartLifeTime - Skill[m_nSkillId][m_nLevel].m_nWaitTime;
; 1222 : 	int nEndTime = nBeginTime + m_MissleRes.m_MissleRes[MS_DoWait].nInterval * m_MissleRes.m_MissleRes[MS_DoWait].nTotalFrame / m_MissleRes.m_MissleRes[MS_DoWait].nDir ;
; 1223 : 	if (nEndTime <= nBeginTime) return ;
; 1224 : 	
; 1225 : 	  SubWorld[0].Map2Mps(m_nRegionId, m_nCurrentMapX, m_nCurrentMapY,m_nXOffset, m_nYOffset, &nSrcX, &nSrcY);
; 1226 : 	  KSkillSpecialNode * pNode = new KSkillSpecialNode;
; 1227 : 	  KSkillSpecial * pSkillSpecial = new KSkillSpecial;
; 1228 : 	  pNode->m_pSkillSpecial = pSkillSpecial;
; 1229 : 	  pSkillSpecial->m_nPX = nSrcX;
; 1230 : 	  pSkillSpecial->m_nPY = nSrcY;
; 1231 : 	  pSkillSpecial->m_pMissleRes = &m_MissleRes.m_MissleRes[MS_DoWait];
; 1232 : 	  pSkillSpecial->m_nBeginTime = nBeginTime;
; 1233 : 	  pSkillSpecial->m_nEndTime	= nEndTime;
; 1234 : 	  pSkillSpecial->Init();
; 1235 : 	  m_MissleRes.m_SkillSpecialList.AddTail(pNode);
; 1236 : 	*/
; 1237 : #endif
; 1238 : 	
; 1239 : }

	add	esp, 8
	ret	0
?DoWait@KMissle@@AAEXXZ ENDP				; KMissle::DoWait
_TEXT	ENDS
EXTRN	?Mps2Map@KSubWorld@@QAEXHHPAH0000@Z:NEAR	; KSubWorld::Mps2Map
;	COMDAT ?PrePareFly@KMissle@@AAEHXZ
_TEXT	SEGMENT
_nPX$79820 = -16
_nPY$79821 = -20
_nNewPX$79825 = -16
_nNewPY$79826 = -20
_nParentPX$79830 = -20
_nParentPY$79831 = -8
_nSrcPX$79832 = -16
_nSrcPY$79833 = -12
_nParentPX$79838 = -12
_nParentPY$79839 = -4
_nSrcPX$79840 = -8
_nSrcPY$79841 = -20
_nOldRegion$79842 = -4
?PrePareFly@KMissle@@AAEHXZ PROC NEAR			; KMissle::PrePareFly, COMDAT

; 1242 : {

	sub	esp, 20					; 00000014H
	push	ebx
	push	esi
	mov	esi, ecx
	push	edi

; 1243 : 
; 1244 : 	//是否会随发送者的移动而中断，类式魔兽3中大型法术
; 1245 : 	if (m_nInteruptTypeWhenMove)

	mov	eax, DWORD PTR [esi+2572]
	test	eax, eax
	je	SHORT $L79822

; 1246 : 	{
; 1247 : 		if (!Npc[m_nLauncher].IsMatch(m_dwLauncherId))

	mov	ecx, DWORD PTR [esi+2732]
	mov	edx, DWORD PTR [esi+2736]
	lea	eax, DWORD PTR [ecx+ecx*4]
	shl	eax, 8
	sub	eax, ecx
	lea	eax, DWORD PTR [eax+eax*2]
	shl	eax, 1
	sub	eax, ecx
	lea	ecx, DWORD PTR ?Npc@@3PAVKNpc@@A[eax*4]
	mov	eax, DWORD PTR ?Npc@@3PAVKNpc@@A[eax*4]
	cmp	edx, eax
	je	SHORT $L79818
	pop	edi
	pop	esi

; 1248 : 		{
; 1249 : 			return false;

	xor	eax, eax
	pop	ebx

; 1314 : 		
; 1315 : }

	add	esp, 20					; 00000014H
	ret	0
$L79818:

; 1250 : 		}
; 1251 : 		else
; 1252 : 		{
; 1253 : 			int nPX, nPY;
; 1254 : 			Npc[m_nLauncher].GetMpsPos(&nPX, &nPY);

	lea	eax, DWORD PTR _nPY$79821[esp+32]
	lea	edx, DWORD PTR _nPX$79820[esp+32]
	push	eax
	push	edx
	call	?GetMpsPos@KNpc@@QAEXPAH0@Z		; KNpc::GetMpsPos

; 1255 : 			if (nPX != m_nLauncherSrcPX || nPY != m_nLauncherSrcPY)

	mov	eax, DWORD PTR _nPX$79820[esp+32]
	mov	ecx, DWORD PTR [esi+2580]
	cmp	eax, ecx
	jne	SHORT $L79823
	mov	ecx, DWORD PTR _nPY$79821[esp+32]
	mov	eax, DWORD PTR [esi+2584]
	cmp	ecx, eax
	je	SHORT $L79822
$L79823:
	pop	edi
	pop	esi

; 1256 : 			{
; 1257 : 				return false;

	xor	eax, eax
	pop	ebx

; 1314 : 		
; 1315 : }

	add	esp, 20					; 00000014H
	ret	0
$L79822:

; 1258 : 			}
; 1259 : 		}
; 1260 : 	}
; 1261 : 
; 1262 : 	//子碟位置需要更正为到适当的位置
; 1263 : 	if (m_bHeelAtParent)

	mov	al, BYTE PTR [esi+2576]
	test	al, al
	je	$L79843

; 1264 : 	{
; 1265 : 		int nNewPX = 0;
; 1266 : 		int nNewPY = 0;
; 1267 : 		
; 1268 : 		if (m_nParentMissleIndex) // 参考点为母子弹

	mov	ecx, DWORD PTR [esi+2740]
	test	ecx, ecx
	je	SHORT $L79827

; 1269 : 		{
; 1270 : 			if (Missle[m_nParentMissleIndex].m_dwLauncherId != m_dwLauncherId)

	lea	edx, DWORD PTR [ecx+ecx*4]
	lea	eax, DWORD PTR [ecx+edx*2]
	mov	edx, DWORD PTR [esi+2736]
	shl	eax, 5
	add	eax, ecx
	shl	eax, 3
	mov	ecx, DWORD PTR ?Missle@@3PAVKMissle@@A[eax+2736]
	cmp	ecx, edx
	je	SHORT $L79828
	pop	edi
	pop	esi

; 1271 : 				return false;

	xor	eax, eax
	pop	ebx

; 1314 : 		
; 1315 : }

	add	esp, 20					; 00000014H
	ret	0
$L79828:

; 1272 : 			else
; 1273 : 			{
; 1274 : 				int nParentPX, nParentPY;
; 1275 : 				int nSrcPX, nSrcPY;
; 1276 : 				Missle[m_nParentMissleIndex].GetMpsPos(&nParentPX, &nParentPY);

	lea	edx, DWORD PTR _nParentPY$79831[esp+32]
	lea	ecx, DWORD PTR _nParentPX$79830[esp+32]
	push	edx
	push	ecx
	lea	ecx, DWORD PTR ?Missle@@3PAVKMissle@@A[eax]
	call	?GetMpsPos@KMissle@@QAEXPAH0@Z		; KMissle::GetMpsPos

; 1277 : 				GetMpsPos(&nSrcPX, &nSrcPY);

	lea	edx, DWORD PTR _nSrcPY$79833[esp+32]
	lea	eax, DWORD PTR _nSrcPX$79832[esp+32]
	push	edx
	push	eax
	mov	ecx, esi
	call	?GetMpsPos@KMissle@@QAEXPAH0@Z		; KMissle::GetMpsPos

; 1278 : 				nNewPX = nSrcPX + (nParentPX - m_nRefPX);

	mov	eax, DWORD PTR _nSrcPX$79832[esp+32]
	mov	ebx, DWORD PTR [esi+2692]
	mov	edi, DWORD PTR _nParentPX$79830[esp+32]

; 1279 : 				nNewPY = nSrcPY + (nParentPY - m_nRefPY);

	mov	edx, DWORD PTR [esi+2696]
	mov	ecx, DWORD PTR _nParentPY$79831[esp+32]
	sub	eax, ebx
	add	eax, edi
	mov	DWORD PTR _nNewPX$79825[esp+32], eax
	mov	eax, DWORD PTR _nSrcPY$79833[esp+32]
	sub	eax, edx

; 1280 : 			}
; 1281 : 		}
; 1282 : 		else

	jmp	SHORT $L80755
$L79827:

; 1283 : 			//参考点为发送者
; 1284 : 		{
; 1285 : 			_ASSERT(m_nLauncher > 0);
; 1286 : 			if (Npc[m_nLauncher].m_dwID != m_dwLauncherId)

	mov	ecx, DWORD PTR [esi+2732]
	lea	eax, DWORD PTR [ecx+ecx*4]
	shl	eax, 8
	sub	eax, ecx
	lea	edx, DWORD PTR [eax+eax*2]
	shl	edx, 1
	sub	edx, ecx
	mov	eax, DWORD PTR ?Npc@@3PAVKNpc@@A[edx*4]
	lea	ecx, DWORD PTR ?Npc@@3PAVKNpc@@A[edx*4]
	cmp	eax, DWORD PTR [esi+2736]
	je	SHORT $L79836
	pop	edi
	pop	esi

; 1287 : 				return false;

	xor	eax, eax
	pop	ebx

; 1314 : 		
; 1315 : }

	add	esp, 20					; 00000014H
	ret	0
$L79836:

; 1288 : 			else
; 1289 : 			{
; 1290 : 				int nParentPX, nParentPY;
; 1291 : 				int nSrcPX, nSrcPY;
; 1292 : 				Npc[m_nLauncher].GetMpsPos(&nParentPX, &nParentPY);

	lea	edx, DWORD PTR _nParentPY$79839[esp+32]
	lea	eax, DWORD PTR _nParentPX$79838[esp+32]
	push	edx
	push	eax
	call	?GetMpsPos@KNpc@@QAEXPAH0@Z		; KNpc::GetMpsPos

; 1293 : 				GetMpsPos(&nSrcPX, &nSrcPY);

	lea	ecx, DWORD PTR _nSrcPY$79841[esp+32]
	lea	edx, DWORD PTR _nSrcPX$79840[esp+32]
	push	ecx
	push	edx
	mov	ecx, esi
	call	?GetMpsPos@KMissle@@QAEXPAH0@Z		; KMissle::GetMpsPos

; 1294 : 
; 1295 : 				nNewPX = nSrcPX + (nParentPX - m_nRefPX);

	mov	eax, DWORD PTR _nSrcPX$79840[esp+32]
	mov	ebx, DWORD PTR [esi+2692]
	mov	edi, DWORD PTR _nParentPX$79838[esp+32]

; 1296 : 				nNewPY = nSrcPY + (nParentPY - m_nRefPY);

	mov	edx, DWORD PTR [esi+2696]
	mov	ecx, DWORD PTR _nParentPY$79839[esp+32]
	sub	eax, ebx
	add	eax, edi
	mov	DWORD PTR _nNewPX$79825[esp+32], eax
	mov	eax, DWORD PTR _nSrcPY$79841[esp+32]
	sub	eax, edx
$L80755:

; 1297 : 			}
; 1298 : 
; 1299 : 		}
; 1300 : 
; 1301 : 		int nOldRegion = m_nRegionId;
; 1302 : 		CurRegion.DecRef(m_nCurrentMapX, m_nCurrentMapY, obj_missle);

	mov	edx, DWORD PTR [esi+2672]
	add	eax, ecx
	push	ebp
	lea	ebx, DWORD PTR [esi+2676]
	lea	ebp, DWORD PTR [esi+2672]
	mov	DWORD PTR _nNewPY$79826[esp+36], eax
	mov	eax, DWORD PTR [ebx]
	push	2
	push	eax
	push	edx
	mov	edx, DWORD PTR [esi+2760]
	mov	ecx, DWORD PTR [esi+2764]
	lea	edi, DWORD PTR [esi+2764]
	mov	DWORD PTR _nOldRegion$79842[esp+48], ecx
	lea	eax, DWORD PTR [edx+edx*2]
	lea	eax, DWORD PTR [edx+eax*4]
	shl	eax, 5
	add	eax, edx
	lea	edx, DWORD PTR [eax+eax*4]
	lea	eax, DWORD PTR [ecx+ecx*2]
	lea	eax, DWORD PTR [ecx+eax*4]
	mov	ecx, DWORD PTR ?SubWorld@@3PAVKSubWorld@@A[edx*4+8]
	shl	eax, 4
	add	ecx, eax
	call	?DecRef@KRegion@@QAEHHHW4MOVE_OBJ_KIND@@@Z ; KRegion::DecRef

; 1303 : 		SubWorld[m_nSubWorldId].Mps2Map(nNewPX, nNewPY, &m_nRegionId, &m_nCurrentMapX, &m_nCurrentMapY, &m_nXOffset, &m_nYOffset);

	mov	eax, DWORD PTR _nNewPY$79826[esp+36]
	lea	ecx, DWORD PTR [esi+2688]
	lea	edx, DWORD PTR [esi+2684]
	push	ecx
	mov	ecx, DWORD PTR _nNewPX$79825[esp+40]
	push	edx
	push	ebx
	push	ebp
	push	edi
	push	eax
	push	ecx
	mov	ecx, DWORD PTR [esi+2760]
	lea	edx, DWORD PTR [ecx+ecx*2]
	lea	eax, DWORD PTR [ecx+edx*4]
	shl	eax, 5
	add	eax, ecx
	lea	eax, DWORD PTR [eax+eax*4]
	lea	ecx, DWORD PTR ?SubWorld@@3PAVKSubWorld@@A[eax*4]
	call	?Mps2Map@KSubWorld@@QAEXHHPAH0000@Z	; KSubWorld::Mps2Map

; 1304 : 		CurRegion.AddRef(m_nCurrentMapX, m_nCurrentMapY, obj_missle);

	mov	ecx, DWORD PTR [ebx]
	push	2
	push	ecx
	mov	ecx, DWORD PTR [esi+2760]
	mov	edx, DWORD PTR [ebp]
	lea	eax, DWORD PTR [ecx+ecx*2]
	push	edx
	lea	eax, DWORD PTR [ecx+eax*4]
	shl	eax, 5
	add	eax, ecx
	lea	ecx, DWORD PTR [eax+eax*4]
	mov	eax, DWORD PTR [edi]
	mov	ecx, DWORD PTR ?SubWorld@@3PAVKSubWorld@@A[ecx*4+8]
	lea	edx, DWORD PTR [eax+eax*2]
	lea	eax, DWORD PTR [eax+edx*4]
	shl	eax, 4
	add	ecx, eax
	call	?AddRef@KRegion@@QAEHHHW4MOVE_OBJ_KIND@@@Z ; KRegion::AddRef

; 1305 : 		
; 1306 : 		if (nOldRegion != m_nRegionId)

	mov	edi, DWORD PTR [edi]
	mov	eax, DWORD PTR _nOldRegion$79842[esp+36]
	cmp	eax, edi
	pop	ebp
	je	SHORT $L79843

; 1307 : 		{
; 1308 : 			SubWorld[m_nSubWorldId].m_WorldMessage.Send(GWM_MISSLE_CHANGE_REGION, nOldRegion, m_nRegionId, m_nMissleId);

	mov	ecx, DWORD PTR [esi+2756]
	mov	esi, DWORD PTR [esi+2760]
	push	ecx
	push	edi
	lea	edx, DWORD PTR [esi+esi*2]
	push	eax
	push	4002					; 00000fa2H
	lea	eax, DWORD PTR [esi+edx*4]
	shl	eax, 5
	add	eax, esi
	lea	eax, DWORD PTR [eax+eax*4]
	lea	ecx, DWORD PTR ?SubWorld@@3PAVKSubWorld@@A[eax*4+8292]
	call	?Send@KWorldMsg@@QAEHKHHH@Z		; KWorldMsg::Send
$L79843:
	pop	edi
	pop	esi

; 1309 : 		} 
; 1310 : 
; 1311 : 	}
; 1312 : 
; 1313 : 	return true;

	mov	eax, 1
	pop	ebx

; 1314 : 		
; 1315 : }

	add	esp, 20					; 00000014H
	ret	0
?PrePareFly@KMissle@@AAEHXZ ENDP			; KMissle::PrePareFly
_TEXT	ENDS
;	COMDAT ?GetMpsPos@KMissle@@QAEXPAH0@Z
_TEXT	SEGMENT
_pPosX$ = 8
_pPosY$ = 12
?GetMpsPos@KMissle@@QAEXPAH0@Z PROC NEAR		; KMissle::GetMpsPos, COMDAT

; 1319 : 	SubWorld[m_nSubWorldId].Map2Mps(m_nRegionId, m_nCurrentMapX, m_nCurrentMapY, m_nXOffset, m_nYOffset, pPosX, pPosY);

	mov	eax, DWORD PTR _pPosY$[esp-4]
	mov	edx, DWORD PTR _pPosX$[esp-4]
	push	eax
	mov	eax, DWORD PTR [ecx+2688]
	push	edx
	mov	edx, DWORD PTR [ecx+2684]
	push	eax
	mov	eax, DWORD PTR [ecx+2676]
	push	edx
	mov	edx, DWORD PTR [ecx+2672]
	push	eax
	mov	eax, DWORD PTR [ecx+2764]
	mov	ecx, DWORD PTR [ecx+2760]
	push	edx
	push	eax
	lea	edx, DWORD PTR [ecx+ecx*2]
	lea	eax, DWORD PTR [ecx+edx*4]
	shl	eax, 5
	add	eax, ecx
	lea	eax, DWORD PTR [eax+eax*4]
	lea	ecx, DWORD PTR ?SubWorld@@3PAVKSubWorld@@A[eax*4]
	call	?Map2Mps@KSubWorld@@QAEXHHHHHPAH0@Z	; KSubWorld::Map2Mps

; 1320 : };

	ret	8
?GetMpsPos@KMissle@@QAEXPAH0@Z ENDP			; KMissle::GetMpsPos
_TEXT	ENDS
END
