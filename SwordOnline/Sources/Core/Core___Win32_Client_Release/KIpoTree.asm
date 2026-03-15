	TITLE	D:\swrod3\SwordOnline\Sources\Core\Src\Scene\KIpoTree.cpp
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
_BSS	SEGMENT DWORD USE32 PUBLIC 'BSS'
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
xdata$x	SEGMENT DWORD USE32 PUBLIC 'CONST'
xdata$x	ENDS
;	COMDAT ??8@YAHABU_GUID@@0@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??1KNode@@UAE@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??_GKNode@@UAEPAXI@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??0KNode@@QAE@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?GetNext@KNode@@QAEPAV1@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?GetPrev@KNode@@QAEPAV1@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?InsertBefore@KNode@@QAEXPAV1@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?InsertAfter@KNode@@QAEXPAV1@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?Remove@KNode@@QAEXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT __imp_?GetName@KStrNode@@UAEPADXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT __imp_?SetName@KStrNode@@UAEXPAD@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?GetHead@KList@@QAEPAVKNode@@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?AddTail@KList@@QAEXPAVKNode@@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??_GKCacheNode@@UAEPAXI@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT __imp_??1KStrNode@@UAE@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??1KCacheNode@@UAE@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT __imp_?GetMemPtr@KMemClass@@QAEPAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT __imp_??1KITabFile@@UAE@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?Release@tagSHOW_MSG_SYNC@@QAEXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT __imp_??1KScriptNode@@UAE@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?Release@SOBJ_LIGHT_DATA@@QAEXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?Release@OBJ_SKILL_DATA@@QAEXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?Clear@SACTTABLEOFF@@QAEXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?Clear@SECTINFO@KNpcResNode@@QAEXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??0KWorldMsgNode@@QAE@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??_GKWorldMsgNode@@UAEPAXI@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??1KWorldMsgNode@@UAE@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?Remove@KMissleMagicAttribsData@@AAEXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?CheckAndGenSkillData@KSkill@@QAEXXZ
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
;	COMDAT ??2@YAPAXIPAX@Z
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
;	COMDAT ?Breath@KLightBase@@UAEXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??0KSelfBreathLight@@QAE@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??0KLightBase@@QAE@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?Breath@KSelfBreathLight@@UAEXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??0KIpoTree@@QAE@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??1KIpoTree@@QAE@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?Paint@KIpoTree@@QAEXPAUtagRECT@@W4IPOT_RENDER_LAYER@@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?Breathe@KIpoTree@@QAEXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?Clear@KIpoTree@@QAEXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??_GKIpotBranch@@QAEPAXI@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?RemoveRtoGroupWithPermanentLeaf@KIpoTree@@AAEXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?AddBranch@KIpoTree@@QAEXPAUKIpotBuildinObj@@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?Fell@KIpoTree@@QAEXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?AddLeafLine@KIpoTree@@QAEXPAUKIpotBuildinObj@@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?AddLeafPoint@KIpoTree@@QAEXPAUKIpotLeaf@@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?PluckRto@KIpoTree@@QAEXPAUKIpotRuntimeObj@@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?SetPermanentBranchPos@KIpoTree@@QAEXHHH@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?StrewRtoLeafs@KIpoTree@@QAEXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?ObjectsCallback@KIpoTree@@CAXPAXPAUKIpotLeaf@@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?FillLineObstacle@KIpoTree@@AAEXHHHHH@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?RenderLightMap@KIpoTree@@QAEXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?CanLighting@KIpoTree@@AAE_NHHHH@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?AddBuildinLight@KIpoTree@@QAEXPAUKBuildInLightInfo@@H@Z
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
;	COMDAT ??0?$list@PAVKLightBase@@V?$allocator@PAVKLightBase@@@std@@@std@@QAE@ABV?$allocator@PAVKLightBase@@@1@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??1?$list@PAVKLightBase@@V?$allocator@PAVKLightBase@@@std@@@std@@QAE@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?begin@?$list@PAVKLightBase@@V?$allocator@PAVKLightBase@@@std@@@std@@QAE?AViterator@12@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?end@?$list@PAVKLightBase@@V?$allocator@PAVKLightBase@@@std@@@std@@QAE?AViterator@12@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?size@?$list@PAVKLightBase@@V?$allocator@PAVKLightBase@@@std@@@std@@QBEIXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?push_back@?$list@PAVKLightBase@@V?$allocator@PAVKLightBase@@@std@@@std@@QAEXABQAVKLightBase@@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?erase@?$list@PAVKLightBase@@V?$allocator@PAVKLightBase@@@std@@@std@@QAE?AViterator@12@V312@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?clear@?$list@PAVKLightBase@@V?$allocator@PAVKLightBase@@@std@@@std@@QAEXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??0iterator@?$list@PAVKLightBase@@V?$allocator@PAVKLightBase@@@std@@@std@@QAE@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??Diterator@?$list@PAVKLightBase@@V?$allocator@PAVKLightBase@@@std@@@std@@QBEAAPAVKLightBase@@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??Eiterator@?$list@PAVKLightBase@@V?$allocator@PAVKLightBase@@@std@@@std@@QAEAAV012@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??9iterator@?$list@PAVKLightBase@@V?$allocator@PAVKLightBase@@@std@@@std@@QBE_NABV012@@Z
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
;	COMDAT ?insert@?$list@PAVKLightBase@@V?$allocator@PAVKLightBase@@@std@@@std@@QAE?AViterator@12@V312@ABQAVKLightBase@@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?erase@?$list@PAVKLightBase@@V?$allocator@PAVKLightBase@@@std@@@std@@QAE?AViterator@12@V312@0@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?_Buynode@?$list@PAVKLightBase@@V?$allocator@PAVKLightBase@@@std@@@std@@IAEPAU_Node@12@PAU312@0@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?_Freenode@?$list@PAVKLightBase@@V?$allocator@PAVKLightBase@@@std@@@std@@IAEXPAU_Node@12@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?_Next@_Acc@?$list@PAVKLightBase@@V?$allocator@PAVKLightBase@@@std@@@std@@SAAAPAU_Node@23@PAU423@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?_Prev@_Acc@?$list@PAVKLightBase@@V?$allocator@PAVKLightBase@@@std@@@std@@SAAAPAU_Node@23@PAU423@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?_Value@_Acc@?$list@PAVKLightBase@@V?$allocator@PAVKLightBase@@@std@@@std@@SAAAPAVKLightBase@@PAU_Node@23@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?destroy@?$allocator@PAVKLightBase@@@std@@QAEXPAPAVKLightBase@@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??0const_iterator@?$list@PAVKLightBase@@V?$allocator@PAVKLightBase@@@std@@@std@@QAE@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?_Mynode@const_iterator@?$list@PAVKLightBase@@V?$allocator@PAVKLightBase@@@std@@@std@@QBEPAU_Node@23@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??0iterator@?$list@PAVKLightBase@@V?$allocator@PAVKLightBase@@@std@@@std@@QAE@PAU_Node@12@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??Eiterator@?$list@PAVKLightBase@@V?$allocator@PAVKLightBase@@@std@@@std@@QAE?AV012@H@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??8iterator@?$list@PAVKLightBase@@V?$allocator@PAVKLightBase@@@std@@@std@@QBE_NABV012@@Z
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
;	COMDAT ?_Charalloc@?$allocator@PAVKLightBase@@@std@@QAEPADI@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?deallocate@?$allocator@PAVKLightBase@@@std@@QAEXPAXI@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?construct@?$allocator@PAVKLightBase@@@std@@QAEXPAPAVKLightBase@@ABQAV3@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??0const_iterator@?$list@PAVKLightBase@@V?$allocator@PAVKLightBase@@@std@@@std@@QAE@PAU_Node@12@@Z
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
;	COMDAT ?_Destroy@std@@YAXPAPAVKLightBase@@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?_Allocate@std@@YAPADHPAD@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?_Construct@std@@YAXPAPAVKLightBase@@ABQAV2@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??_7KNode@@6B@
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
;	COMDAT ??_R0?AVruntime_error@std@@@8
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT __CTA2?AVlogic_error@std@@
xdata$x	SEGMENT DWORD USE32 PUBLIC 'CONST'
xdata$x	ENDS
;	COMDAT __CTA3?AVrange_error@std@@
xdata$x	SEGMENT DWORD USE32 PUBLIC 'CONST'
xdata$x	ENDS
;	COMDAT ??_R0?AVout_of_range@std@@@8
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT __CT??_R0?AVoverflow_error@std@@@8??0overflow_error@std@@QAE@ABV01@@Z28
xdata$x	SEGMENT DWORD USE32 PUBLIC 'CONST'
xdata$x	ENDS
;	COMDAT __CTA2?AVruntime_error@std@@
xdata$x	SEGMENT DWORD USE32 PUBLIC 'CONST'
xdata$x	ENDS
;	COMDAT __TI3?AVunderflow_error@std@@
xdata$x	SEGMENT DWORD USE32 PUBLIC 'CONST'
xdata$x	ENDS
;	COMDAT __CTA3?AVoverflow_error@std@@
xdata$x	SEGMENT DWORD USE32 PUBLIC 'CONST'
xdata$x	ENDS
;	COMDAT __CT??_R0?AVrange_error@std@@@8??0range_error@std@@QAE@ABV01@@Z28
xdata$x	SEGMENT DWORD USE32 PUBLIC 'CONST'
xdata$x	ENDS
;	COMDAT ??_R0?AVbad_alloc@std@@@8
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_7KWorldMsgNode@@6B@
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
;	COMDAT __CT??_R0?AVlength_error@std@@@8??0length_error@std@@QAE@ABV01@@Z28
xdata$x	SEGMENT DWORD USE32 PUBLIC 'CONST'
xdata$x	ENDS
;	COMDAT __TI3?AVlength_error@std@@
xdata$x	SEGMENT DWORD USE32 PUBLIC 'CONST'
xdata$x	ENDS
;	COMDAT ??_R0?AVlength_error@std@@@8
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT __CTA3?AVdomain_error@std@@
xdata$x	SEGMENT DWORD USE32 PUBLIC 'CONST'
xdata$x	ENDS
;	COMDAT __CTA2?AVbad_exception@std@@
xdata$x	SEGMENT DWORD USE32 PUBLIC 'CONST'
xdata$x	ENDS
;	COMDAT __TI2?AVruntime_error@std@@
xdata$x	SEGMENT DWORD USE32 PUBLIC 'CONST'
xdata$x	ENDS
;	COMDAT __TI3?AVout_of_range@std@@
xdata$x	SEGMENT DWORD USE32 PUBLIC 'CONST'
xdata$x	ENDS
;	COMDAT __CTA3?AVunderflow_error@std@@
xdata$x	SEGMENT DWORD USE32 PUBLIC 'CONST'
xdata$x	ENDS
;	COMDAT __TI3?AVrange_error@std@@
xdata$x	SEGMENT DWORD USE32 PUBLIC 'CONST'
xdata$x	ENDS
;	COMDAT ??_R0?AVoverflow_error@std@@@8
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT __CTA2?AVbad_alloc@std@@
xdata$x	SEGMENT DWORD USE32 PUBLIC 'CONST'
xdata$x	ENDS
;	COMDAT ??_7invalid_argument@std@@6B@
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
;	COMDAT __TI3?AVinvalid_argument@std@@
xdata$x	SEGMENT DWORD USE32 PUBLIC 'CONST'
xdata$x	ENDS
;	COMDAT __CT??_R0?AVbad_alloc@std@@@8??0bad_alloc@std@@QAE@ABV01@@Z12
xdata$x	SEGMENT DWORD USE32 PUBLIC 'CONST'
xdata$x	ENDS
;	COMDAT ??_R0?AVlogic_error@std@@@8
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_R0?AVexception@@@8
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT __CT??_R0?AVout_of_range@std@@@8??0out_of_range@std@@QAE@ABV01@@Z28
xdata$x	SEGMENT DWORD USE32 PUBLIC 'CONST'
xdata$x	ENDS
;	COMDAT __TI3?AVdomain_error@std@@
xdata$x	SEGMENT DWORD USE32 PUBLIC 'CONST'
xdata$x	ENDS
;	COMDAT __CTA3?AVinvalid_argument@std@@
xdata$x	SEGMENT DWORD USE32 PUBLIC 'CONST'
xdata$x	ENDS
;	COMDAT ??_7KCacheNode@@6B@
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
;	COMDAT __CT??_R0?AVexception@@@8??0exception@@QAE@ABV0@@Z12
xdata$x	SEGMENT DWORD USE32 PUBLIC 'CONST'
xdata$x	ENDS
;	COMDAT __CT??_R0?AVunderflow_error@std@@@8??0underflow_error@std@@QAE@ABV01@@Z28
xdata$x	SEGMENT DWORD USE32 PUBLIC 'CONST'
xdata$x	ENDS
;	COMDAT ??_R0?AVdomain_error@std@@@8
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT __CTA3?AVlength_error@std@@
xdata$x	SEGMENT DWORD USE32 PUBLIC 'CONST'
xdata$x	ENDS
;	COMDAT ??_R0?AVunderflow_error@std@@@8
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_7KLightBase@@6B@
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
;	COMDAT __CT??_R0?AVinvalid_argument@std@@@8??0invalid_argument@std@@QAE@ABV01@@Z28
xdata$x	SEGMENT DWORD USE32 PUBLIC 'CONST'
xdata$x	ENDS
;	COMDAT __CT??_R0?AVbad_exception@std@@@8??0bad_exception@std@@QAE@ABV01@@Z12
xdata$x	SEGMENT DWORD USE32 PUBLIC 'CONST'
xdata$x	ENDS
;	COMDAT __TI2?AVlogic_error@std@@
xdata$x	SEGMENT DWORD USE32 PUBLIC 'CONST'
xdata$x	ENDS
;	COMDAT __TI3?AVoverflow_error@std@@
xdata$x	SEGMENT DWORD USE32 PUBLIC 'CONST'
xdata$x	ENDS
;	COMDAT __CT??_R0?AVdomain_error@std@@@8??0domain_error@std@@QAE@ABV01@@Z28
xdata$x	SEGMENT DWORD USE32 PUBLIC 'CONST'
xdata$x	ENDS
;	COMDAT __CT??_R0?AVruntime_error@std@@@8??0runtime_error@std@@QAE@ABV01@@Z28
xdata$x	SEGMENT DWORD USE32 PUBLIC 'CONST'
xdata$x	ENDS
;	COMDAT ??_R0?AVinvalid_argument@std@@@8
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_R0?AVrange_error@std@@@8
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT __TI2?AVbad_exception@std@@
xdata$x	SEGMENT DWORD USE32 PUBLIC 'CONST'
xdata$x	ENDS
;	COMDAT __CT??_R0?AVlogic_error@std@@@8??0logic_error@std@@QAE@ABV01@@Z28
xdata$x	SEGMENT DWORD USE32 PUBLIC 'CONST'
xdata$x	ENDS
;	COMDAT __TI2?AVbad_alloc@std@@
xdata$x	SEGMENT DWORD USE32 PUBLIC 'CONST'
xdata$x	ENDS
;	COMDAT ??_7KSelfBreathLight@@6B@
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
;	COMDAT ??_R0?AVbad_exception@std@@@8
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT __CTA3?AVout_of_range@std@@
xdata$x	SEGMENT DWORD USE32 PUBLIC 'CONST'
xdata$x	ENDS
FLAT	GROUP _DATA, CONST, _BSS, xdata$x
	ASSUME	CS: FLAT, DS: FLAT, SS: FLAT
endif
_DATA	SEGMENT
_?nObstacleID@?1??ObjectsCallback@KIpoTree@@CAXPAXPAUKIpotLeaf@@@Z@4HA DD 01H
_DATA	ENDS
PUBLIC	??0KSelfBreathLight@@QAE@XZ			; KSelfBreathLight::KSelfBreathLight
PUBLIC	?Breath@KSelfBreathLight@@UAEXXZ		; KSelfBreathLight::Breath
PUBLIC	??_7KSelfBreathLight@@6B@			; KSelfBreathLight::`vftable'
EXTRN	__imp__timeGetTime@0:NEAR
;	COMDAT ??_7KSelfBreathLight@@6B@
; File D:\swrod3\SwordOnline\Sources\Core\Src\Scene\KIpoTree.cpp
CONST	SEGMENT
??_7KSelfBreathLight@@6B@ DD FLAT:?Breath@KSelfBreathLight@@UAEXXZ ; KSelfBreathLight::`vftable'
CONST	ENDS
;	COMDAT ??0KSelfBreathLight@@QAE@XZ
_TEXT	SEGMENT
??0KSelfBreathLight@@QAE@XZ PROC NEAR			; KSelfBreathLight::KSelfBreathLight, COMDAT

; 22   : {

	push	esi
	mov	esi, ecx
	mov	DWORD PTR [esi], OFFSET FLAT:??_7KSelfBreathLight@@6B@ ; KSelfBreathLight::`vftable'

; 23   : 	nDir = 1;

	mov	DWORD PTR [esi+44], 1

; 24   : 	dwLastBreathTime = timeGetTime();

	call	DWORD PTR __imp__timeGetTime@0
	mov	DWORD PTR [esi+48], eax

; 25   : }

	mov	eax, esi
	pop	esi
	ret	0
??0KSelfBreathLight@@QAE@XZ ENDP			; KSelfBreathLight::KSelfBreathLight
_TEXT	ENDS
EXTRN	__ftol:NEAR
EXTRN	__fltused:NEAR
;	COMDAT ?Breath@KSelfBreathLight@@UAEXXZ
_TEXT	SEGMENT
?Breath@KSelfBreathLight@@UAEXXZ PROC NEAR		; KSelfBreathLight::Breath, COMDAT

; 28   : {

	sub	esp, 12					; 0000000cH
	push	esi
	push	edi
	mov	esi, ecx

; 29   : 	DWORD dwCurTime = timeGetTime();

	call	DWORD PTR __imp__timeGetTime@0

; 30   : 	
; 31   : 	fRadius += (dwCurTime - dwLastBreathTime) / fCycle * (fMaxRange - fMinRange) * nDir;

	mov	edx, DWORD PTR [esi+48]
	mov	edi, eax
	sub	eax, edx
	mov	DWORD PTR -8+[esp+24], 0
	mov	DWORD PTR -8+[esp+20], eax
	mov	ecx, DWORD PTR [esi+44]
	fild	QWORD PTR -8+[esp+20]
	mov	DWORD PTR -12+[esp+20], ecx

; 32   : 	if(nDir == 1 && fRadius > fMaxRange)

	cmp	ecx, 1
	fdiv	DWORD PTR [esi+40]
	fld	DWORD PTR [esi+32]
	fsub	DWORD PTR [esi+28]
	fmulp	ST(1), ST(0)
	fimul	DWORD PTR -12+[esp+20]
	fadd	DWORD PTR [esi+36]
	fst	DWORD PTR [esi+36]
	jne	SHORT $L78609
	fcom	DWORD PTR [esi+32]
	fnstsw	ax
	test	ah, 65					; 00000041H
	jne	SHORT $L78609

; 33   : 	{
; 34   : 		nDir = -1;
; 35   : 		fRadius = fMaxRange;

	mov	ecx, DWORD PTR [esi+32]
	mov	DWORD PTR [esi+44], -1
	fstp	ST(0)
	mov	DWORD PTR [esi+36], ecx

; 41   : 	}
; 42   : 	m_nRadius = (int)fRadius;

	fld	DWORD PTR [esi+36]
	call	__ftol

; 43   : 	dwLastBreathTime = dwCurTime;

	mov	DWORD PTR [esi+48], edi
	mov	DWORD PTR [esi+24], eax
	pop	edi
	pop	esi

; 44   : }

	add	esp, 12					; 0000000cH
	ret	0
$L78609:

; 36   : 	}
; 37   : 	else if(nDir == -1 && fRadius < fMinRange)

	cmp	ecx, -1
	jne	SHORT $L79569
	fcomp	DWORD PTR [esi+28]
	fnstsw	ax
	test	ah, 1
	je	SHORT $L78611

; 38   : 	{
; 39   : 		nDir = 1;
; 40   : 		fRadius = fMinRange;

	mov	edx, DWORD PTR [esi+28]
	mov	DWORD PTR [esi+44], 1
	mov	DWORD PTR [esi+36], edx

; 41   : 	}
; 42   : 	m_nRadius = (int)fRadius;

	fld	DWORD PTR [esi+36]
	call	__ftol

; 43   : 	dwLastBreathTime = dwCurTime;

	mov	DWORD PTR [esi+48], edi
	mov	DWORD PTR [esi+24], eax
	pop	edi
	pop	esi

; 44   : }

	add	esp, 12					; 0000000cH
	ret	0
$L79569:

; 38   : 	{
; 39   : 		nDir = 1;
; 40   : 		fRadius = fMinRange;

	fstp	ST(0)
$L78611:

; 41   : 	}
; 42   : 	m_nRadius = (int)fRadius;

	fld	DWORD PTR [esi+36]
	call	__ftol

; 43   : 	dwLastBreathTime = dwCurTime;

	mov	DWORD PTR [esi+48], edi
	mov	DWORD PTR [esi+24], eax
	pop	edi
	pop	esi

; 44   : }

	add	esp, 12					; 0000000cH
	ret	0
?Breath@KSelfBreathLight@@UAEXXZ ENDP			; KSelfBreathLight::Breath
_TEXT	ENDS
PUBLIC	??0KIpoTree@@QAE@XZ				; KIpoTree::KIpoTree
EXTRN	??2@YAPAXI@Z:NEAR				; operator new
EXTRN	??0KIpotBranch@@QAE@XZ:NEAR			; KIpotBranch::KIpotBranch
EXTRN	??1KIpotBranch@@QAE@XZ:NEAR			; KIpotBranch::~KIpotBranch
EXTRN	__except_list:DWORD
EXTRN	___CxxFrameHandler:NEAR
;	COMDAT xdata$x
; File D:\Program Files\Microsoft Visual Studio\VC98\INCLUDE\list
xdata$x	SEGMENT
$T79641	DD	019930520H
	DD	01H
	DD	FLAT:$T79644
	DD	2 DUP(00H)
	DD	2 DUP(00H)
	ORG $+4
$T79644	DD	0ffffffffH
	DD	FLAT:$L79575
xdata$x	ENDS
;	COMDAT ??0KIpoTree@@QAE@XZ
_TEXT	SEGMENT
$T79574 = -17
__$EHRec$ = -12
_this$ = -16
??0KIpoTree@@QAE@XZ PROC NEAR				; KIpoTree::KIpoTree, COMDAT

; 48   : {

	push	-1
	push	$L79642
	mov	eax, DWORD PTR fs:__except_list
	push	eax
	mov	DWORD PTR fs:__except_list, esp
	sub	esp, 8
	push	esi
	mov	esi, ecx
	push	edi
	mov	DWORD PTR _this$[esp+28], esi
	lea	ecx, DWORD PTR [esi+4]
	call	??0KIpotBranch@@QAE@XZ			; KIpotBranch::KIpotBranch
	mov	al, BYTE PTR $T79574[esp+28]
	xor	edi, edi
	push	12					; 0000000cH
	mov	DWORD PTR __$EHRec$[esp+40], edi
	mov	BYTE PTR [esi+129112], al
	call	??2@YAPAXI@Z				; operator new
	mov	DWORD PTR [eax], eax
	mov	DWORD PTR [eax+4], eax
	mov	DWORD PTR [esi+129116], eax
	mov	DWORD PTR [esi+129120], edi
	add	esp, 4

; 49   : 	m_pMainBranch = NULL;

	mov	DWORD PTR [esi], edi

; 50   : 	memset(&m_PermanentLeaf, 0, sizeof(m_PermanentLeaf));

	mov	ecx, 6
	xor	eax, eax
	lea	edi, DWORD PTR [esi+52]
	rep stosd

; 51   : }

	mov	ecx, DWORD PTR __$EHRec$[esp+28]
	mov	eax, esi
	pop	edi
	pop	esi
	mov	DWORD PTR fs:__except_list, ecx
	add	esp, 20					; 00000014H
	ret	0
_TEXT	ENDS
;	COMDAT text$x
text$x	SEGMENT
$L79575:
	mov	ecx, DWORD PTR _this$[ebp]
	add	ecx, 4
	jmp	??1KIpotBranch@@QAE@XZ			; KIpotBranch::~KIpotBranch
$L79642:
	mov	eax, OFFSET FLAT:$T79641
	jmp	___CxxFrameHandler
text$x	ENDS
??0KIpoTree@@QAE@XZ ENDP				; KIpoTree::KIpoTree
PUBLIC	??1KIpoTree@@QAE@XZ				; KIpoTree::~KIpoTree
PUBLIC	?Clear@KIpoTree@@QAEXXZ				; KIpoTree::Clear
PUBLIC	??1?$list@PAVKLightBase@@V?$allocator@PAVKLightBase@@@std@@@std@@QAE@XZ ; std::list<KLightBase *,std::allocator<KLightBase *> >::~list<KLightBase *,std::allocator<KLightBase *> >
EXTRN	??3@YAXPAX@Z:NEAR				; operator delete
;	COMDAT xdata$x
; File D:\Program Files\Microsoft Visual Studio\VC98\INCLUDE\xmemory
xdata$x	SEGMENT
$T79963	DD	019930520H
	DD	02H
	DD	FLAT:$T79966
	DD	2 DUP(00H)
	DD	2 DUP(00H)
	ORG $+4
$T79966	DD	0ffffffffH
	DD	FLAT:$L79651
	DD	00H
	DD	FLAT:$L79652
xdata$x	ENDS
;	COMDAT ??1KIpoTree@@QAE@XZ
_TEXT	SEGMENT
__$EHRec$ = -12
_this$ = -16
??1KIpoTree@@QAE@XZ PROC NEAR				; KIpoTree::~KIpoTree, COMDAT

; 55   : {

	push	-1
	push	$L79965
	mov	eax, DWORD PTR fs:__except_list
	push	eax
	mov	DWORD PTR fs:__except_list, esp
	push	ecx
	push	ebx
	push	esi
	push	edi
	mov	edi, ecx
	mov	DWORD PTR _this$[esp+28], edi
	mov	DWORD PTR __$EHRec$[esp+36], 1

; 56   : 	Clear();

	call	?Clear@KIpoTree@@QAEXXZ			; KIpoTree::Clear

; 57   : }

	mov	ebx, DWORD PTR [edi+129116]
	mov	esi, DWORD PTR [ebx]
	cmp	esi, ebx
	je	SHORT $L79912
$L79911:
	mov	eax, esi
	mov	esi, DWORD PTR [esi]
	push	eax
	mov	ecx, DWORD PTR [eax+4]
	mov	edx, DWORD PTR [eax]
	mov	DWORD PTR [ecx], edx
	mov	ecx, DWORD PTR [eax]
	mov	edx, DWORD PTR [eax+4]
	mov	DWORD PTR [ecx+4], edx
	call	??3@YAXPAX@Z				; operator delete
	mov	ecx, DWORD PTR [edi+129120]
	add	esp, 4
	dec	ecx
	cmp	esi, ebx
	mov	DWORD PTR [edi+129120], ecx
	jne	SHORT $L79911
$L79912:
	mov	eax, DWORD PTR [edi+129116]
	push	eax
	call	??3@YAXPAX@Z				; operator delete
	xor	eax, eax
	add	esp, 4
	lea	ecx, DWORD PTR [edi+4]
	mov	DWORD PTR [edi+129116], eax
	mov	DWORD PTR [edi+129120], eax
	mov	DWORD PTR __$EHRec$[esp+36], -1
	call	??1KIpotBranch@@QAE@XZ			; KIpotBranch::~KIpotBranch
	mov	ecx, DWORD PTR __$EHRec$[esp+28]
	pop	edi
	pop	esi
	pop	ebx
	mov	DWORD PTR fs:__except_list, ecx
	add	esp, 16					; 00000010H
	ret	0
_TEXT	ENDS
;	COMDAT text$x
text$x	SEGMENT
$L79651:
	mov	ecx, DWORD PTR _this$[ebp]
	add	ecx, 4
	jmp	??1KIpotBranch@@QAE@XZ			; KIpotBranch::~KIpotBranch
$L79652:
	mov	ecx, DWORD PTR _this$[ebp]
	add	ecx, 129112				; 0001f858H
	jmp	??1?$list@PAVKLightBase@@V?$allocator@PAVKLightBase@@@std@@@std@@QAE@XZ ; std::list<KLightBase *,std::allocator<KLightBase *> >::~list<KLightBase *,std::allocator<KLightBase *> >
$L79965:
	mov	eax, OFFSET FLAT:$T79963
	jmp	___CxxFrameHandler
text$x	ENDS
??1KIpoTree@@QAE@XZ ENDP				; KIpoTree::~KIpoTree
PUBLIC	?Paint@KIpoTree@@QAEXPAUtagRECT@@W4IPOT_RENDER_LAYER@@@Z ; KIpoTree::Paint
PUBLIC	?RenderLightMap@KIpoTree@@QAEXXZ		; KIpoTree::RenderLightMap
EXTRN	?g_pRepresent@@3PAUiRepresentShell@@A:DWORD	; g_pRepresent
EXTRN	?PaintObjectLayer@KIpotBranch@@QAEXPAUtagRECT@@@Z:NEAR ; KIpotBranch::PaintObjectLayer
EXTRN	?PaintNoneObjectLayer@KIpotBranch@@QAEXPAUtagRECT@@H@Z:NEAR ; KIpotBranch::PaintNoneObjectLayer
;	COMDAT ?Paint@KIpoTree@@QAEXPAUtagRECT@@W4IPOT_RENDER_LAYER@@@Z
_TEXT	SEGMENT
_pRepresentArea$ = 8
_eLayer$ = 12
?Paint@KIpoTree@@QAEXPAUtagRECT@@W4IPOT_RENDER_LAYER@@@Z PROC NEAR ; KIpoTree::Paint, COMDAT

; 61   : {

	push	esi
	mov	esi, ecx

; 62   : 	// 渲染光照图
; 63   : 	RenderLightMap();

	call	?RenderLightMap@KIpoTree@@QAEXXZ	; KIpoTree::RenderLightMap

; 64   : 	// 设置表现模块的光照信息
; 65   : 	g_pRepresent->SetLightInfo(m_nLeftTopX, m_nLeftTopY, (unsigned int*)pLightingArray);

	mov	ecx, DWORD PTR ?g_pRepresent@@3PAUiRepresentShell@@A ; g_pRepresent
	lea	edx, DWORD PTR [esi+110680]
	push	edx
	mov	edx, DWORD PTR [esi+80]
	mov	eax, DWORD PTR [ecx]
	push	edx
	mov	edx, DWORD PTR [esi+76]
	push	edx
	call	DWORD PTR [eax+96]

; 66   : 	
; 67   : 	if (eLayer == IPOT_RL_OBJECT)

	mov	eax, DWORD PTR _eLayer$[esp]

; 68   : 	{
; 69   : 		if (m_pMainBranch)

	mov	ecx, DWORD PTR [esi]
	cmp	eax, 2
	jne	SHORT $L78627
	test	ecx, ecx
	je	SHORT $L78628

; 70   : 			m_pMainBranch->PaintObjectLayer(pRepresentArea);

	mov	eax, DWORD PTR _pRepresentArea$[esp]
	push	eax
	call	?PaintObjectLayer@KIpotBranch@@QAEXPAUtagRECT@@@Z ; KIpotBranch::PaintObjectLayer
	pop	esi

; 78   : }

	ret	8
$L78628:

; 71   : 		else
; 72   : 			m_DefaultBranch.PaintObjectLayer(pRepresentArea);

	mov	ecx, DWORD PTR _pRepresentArea$[esp]
	push	ecx
	lea	ecx, DWORD PTR [esi+4]
	call	?PaintObjectLayer@KIpotBranch@@QAEXPAUtagRECT@@@Z ; KIpotBranch::PaintObjectLayer
	pop	esi

; 78   : }

	ret	8
$L78627:

; 73   : 	}
; 74   : 	else if (m_pMainBranch)

	test	ecx, ecx

; 75   : 		m_pMainBranch->PaintNoneObjectLayer(pRepresentArea, eLayer);

	push	eax
	je	SHORT $L78631
	mov	edx, DWORD PTR _pRepresentArea$[esp+4]
	push	edx

; 76   : 	else
; 77   : 		m_DefaultBranch.PaintNoneObjectLayer(pRepresentArea, eLayer);

	call	?PaintNoneObjectLayer@KIpotBranch@@QAEXPAUtagRECT@@H@Z ; KIpotBranch::PaintNoneObjectLayer
	pop	esi

; 78   : }

	ret	8
$L78631:

; 76   : 	else
; 77   : 		m_DefaultBranch.PaintNoneObjectLayer(pRepresentArea, eLayer);

	mov	eax, DWORD PTR _pRepresentArea$[esp+4]
	lea	ecx, DWORD PTR [esi+4]
	push	eax
	call	?PaintNoneObjectLayer@KIpotBranch@@QAEXPAUtagRECT@@H@Z ; KIpotBranch::PaintNoneObjectLayer
	pop	esi

; 78   : }

	ret	8
?Paint@KIpoTree@@QAEXPAUtagRECT@@W4IPOT_RENDER_LAYER@@@Z ENDP ; KIpoTree::Paint
_TEXT	ENDS
PUBLIC	?Breathe@KIpoTree@@QAEXXZ			; KIpoTree::Breathe
;	COMDAT ?Breathe@KIpoTree@@QAEXXZ
_TEXT	SEGMENT
?Breathe@KIpoTree@@QAEXXZ PROC NEAR			; KIpoTree::Breathe, COMDAT

; 81   : {

	push	esi
	push	edi
	mov	edi, ecx

; 82   : 	list<KLightBase*>::iterator i;
; 83   : 	for (i = m_LightList.begin(); i != m_LightList.end(); ++i)

	mov	eax, DWORD PTR [edi+129116]
	mov	esi, DWORD PTR [eax]
	cmp	esi, eax
	je	SHORT $L78642
$L80017:

; 84   : 	{
; 85   : 		if((*i)->m_pParent == NULL)

	mov	ecx, DWORD PTR [esi+8]
	mov	eax, DWORD PTR [ecx+4]
	test	eax, eax
	jne	SHORT $L78641

; 86   : 			(*i)->Breath();

	mov	eax, DWORD PTR [ecx]
	call	DWORD PTR [eax]
$L78641:
	mov	esi, DWORD PTR [esi]
	mov	eax, DWORD PTR [edi+129116]
	cmp	esi, eax
	jne	SHORT $L80017
$L78642:
	pop	edi
	pop	esi

; 87   : 	}
; 88   : }

	ret	0
?Breathe@KIpoTree@@QAEXXZ ENDP				; KIpoTree::Breathe
_TEXT	ENDS
PUBLIC	?RemoveRtoGroupWithPermanentLeaf@KIpoTree@@AAEXXZ ; KIpoTree::RemoveRtoGroupWithPermanentLeaf
EXTRN	?Clear@KIpotBranch@@QAEXXZ:NEAR			; KIpotBranch::Clear
;	COMDAT ?Clear@KIpoTree@@QAEXXZ
_TEXT	SEGMENT
?Clear@KIpoTree@@QAEXXZ PROC NEAR			; KIpoTree::Clear, COMDAT

; 92   : {

	push	ebx
	push	esi
	mov	esi, ecx
	push	edi

; 93   : 	if (m_pMainBranch)

	mov	edi, DWORD PTR [esi]
	test	edi, edi
	je	SHORT $L78647

; 94   : 	{
; 95   : 		delete (m_pMainBranch);

	mov	ecx, edi
	call	??1KIpotBranch@@QAE@XZ			; KIpotBranch::~KIpotBranch
	push	edi
	call	??3@YAXPAX@Z				; operator delete
	add	esp, 4

; 96   : 		m_pMainBranch = NULL;

	mov	DWORD PTR [esi], 0
$L78647:

; 97   : 	}
; 98   : 	m_DefaultBranch.Clear();

	lea	ecx, DWORD PTR [esi+4]
	call	?Clear@KIpotBranch@@QAEXXZ		; KIpotBranch::Clear

; 99   : 	RemoveRtoGroupWithPermanentLeaf();

	mov	ecx, esi
	call	?RemoveRtoGroupWithPermanentLeaf@KIpoTree@@AAEXXZ ; KIpoTree::RemoveRtoGroupWithPermanentLeaf

; 100  : 	
; 101  : 	//clear all dyna light
; 102  : 	list<KLightBase*>::iterator i;
; 103  : 	for (i = m_LightList.begin(); i != m_LightList.end(); ++i)

	mov	eax, DWORD PTR [esi+129116]
	mov	edi, DWORD PTR [eax]
	cmp	edi, eax
	je	SHORT $L78656
$L80114:

; 104  : 	{
; 105  : 		delete (*i);

	mov	eax, DWORD PTR [edi+8]
	push	eax
	call	??3@YAXPAX@Z				; operator delete
	mov	edi, DWORD PTR [edi]
	mov	eax, DWORD PTR [esi+129116]
	add	esp, 4
	cmp	edi, eax
	jne	SHORT $L80114
$L78656:

; 106  : 	}
; 107  : 	m_LightList.clear();

	mov	ebx, DWORD PTR [esi+129116]
	mov	edi, DWORD PTR [ebx]
	cmp	edi, ebx
	je	SHORT $L80395
$L80394:
	mov	eax, edi
	mov	edi, DWORD PTR [edi]
	push	eax
	mov	ecx, DWORD PTR [eax+4]
	mov	edx, DWORD PTR [eax]
	mov	DWORD PTR [ecx], edx
	mov	ecx, DWORD PTR [eax]
	mov	edx, DWORD PTR [eax+4]
	mov	DWORD PTR [ecx+4], edx
	call	??3@YAXPAX@Z				; operator delete
	mov	ecx, DWORD PTR [esi+129120]
	add	esp, 4
	dec	ecx
	cmp	edi, ebx
	mov	DWORD PTR [esi+129120], ecx
	jne	SHORT $L80394
$L80395:
	pop	edi
	pop	esi
	pop	ebx

; 108  : }

	ret	0
?Clear@KIpoTree@@QAEXXZ ENDP				; KIpoTree::Clear
_TEXT	ENDS
;	COMDAT ?RemoveRtoGroupWithPermanentLeaf@KIpoTree@@AAEXXZ
_TEXT	SEGMENT
?RemoveRtoGroupWithPermanentLeaf@KIpoTree@@AAEXXZ PROC NEAR ; KIpoTree::RemoveRtoGroupWithPermanentLeaf, COMDAT

; 112  : 	KIpotRuntimeObj* pRto;
; 113  : 	while(pRto = (KIpotRuntimeObj*)m_PermanentLeaf.pBrother)

	mov	eax, DWORD PTR [ecx+56]
	xor	edx, edx
	cmp	eax, edx
	je	SHORT $L78668
	push	esi
$L78667:

; 114  : 	{
; 115  : 		m_PermanentLeaf.pBrother = pRto->pBrother;

	mov	esi, DWORD PTR [eax+4]
	mov	DWORD PTR [ecx+56], esi

; 116  : 		pRto->pAheadBrother = NULL;

	mov	DWORD PTR [eax+48], edx

; 117  : 		pRto->pBrother = NULL;

	mov	DWORD PTR [eax+4], edx
	mov	eax, DWORD PTR [ecx+56]
	cmp	eax, edx
	jne	SHORT $L78667
	pop	esi
$L78668:

; 118  : 	}
; 119  : }

	ret	0
?RemoveRtoGroupWithPermanentLeaf@KIpoTree@@AAEXXZ ENDP	; KIpoTree::RemoveRtoGroupWithPermanentLeaf
_TEXT	ENDS
PUBLIC	?AddBranch@KIpoTree@@QAEXPAUKIpotBuildinObj@@@Z	; KIpoTree::AddBranch
EXTRN	?AddBranch@KIpotBranch@@QAEXPAUKIpotBuildinObj@@@Z:NEAR ; KIpotBranch::AddBranch
EXTRN	?AddAObject@KIpotBranch@@QAEXPAUKIpotBuildinObj@@@Z:NEAR ; KIpotBranch::AddAObject
;	COMDAT xdata$x
; File D:\swrod3\SwordOnline\Sources\Core\Src\Scene\KIpoTree.cpp
xdata$x	SEGMENT
$T80463	DD	019930520H
	DD	01H
	DD	FLAT:$T80465
	DD	2 DUP(00H)
	DD	2 DUP(00H)
	ORG $+4
$T80465	DD	0ffffffffH
	DD	FLAT:$L80461
xdata$x	ENDS
;	COMDAT ?AddBranch@KIpoTree@@QAEXPAUKIpotBuildinObj@@@Z
_TEXT	SEGMENT
$T80458 = 8
__$EHRec$ = -12
_pBranchObj$ = 8
?AddBranch@KIpoTree@@QAEXPAUKIpotBuildinObj@@@Z PROC NEAR ; KIpoTree::AddBranch, COMDAT

; 132  : {

	mov	eax, DWORD PTR fs:__except_list
	push	-1
	push	$L80464
	push	eax
	mov	DWORD PTR fs:__except_list, esp
	push	esi
	mov	esi, ecx
	push	edi

; 133  : 	if (m_pMainBranch)

	mov	ecx, DWORD PTR [esi]
	test	ecx, ecx
	je	SHORT $L78674

; 134  : 		m_pMainBranch->AddBranch(pBranchObj);

	mov	eax, DWORD PTR _pBranchObj$[esp+16]
	push	eax
	call	?AddBranch@KIpotBranch@@QAEXPAUKIpotBuildinObj@@@Z ; KIpotBranch::AddBranch

; 139  : 	}
; 140  : }

	mov	ecx, DWORD PTR __$EHRec$[esp+20]
	mov	DWORD PTR fs:__except_list, ecx
	pop	edi
	pop	esi
	add	esp, 12					; 0000000cH
	ret	4
$L78674:

; 135  : 	else if (pBranchObj)

	mov	edi, DWORD PTR _pBranchObj$[esp+16]
	test	edi, edi
	je	SHORT $L78676

; 136  : 	{
; 137  : 		m_pMainBranch = new KIpotBranch;

	push	48					; 00000030H
	call	??2@YAPAXI@Z				; operator new
	add	esp, 4
	mov	DWORD PTR $T80458[esp+16], eax
	test	eax, eax
	mov	DWORD PTR __$EHRec$[esp+28], 0
	je	SHORT $L80459
	mov	ecx, eax
	call	??0KIpotBranch@@QAE@XZ			; KIpotBranch::KIpotBranch
	jmp	SHORT $L80460
$L80459:
	xor	eax, eax
$L80460:

; 138  : 		m_pMainBranch->AddAObject(pBranchObj);

	push	edi
	mov	ecx, eax
	mov	DWORD PTR __$EHRec$[esp+32], -1
	mov	DWORD PTR [esi], eax
	call	?AddAObject@KIpotBranch@@QAEXPAUKIpotBuildinObj@@@Z ; KIpotBranch::AddAObject
$L78676:

; 139  : 	}
; 140  : }

	mov	ecx, DWORD PTR __$EHRec$[esp+20]
	pop	edi
	mov	DWORD PTR fs:__except_list, ecx
	pop	esi
	add	esp, 12					; 0000000cH
	ret	4
_TEXT	ENDS
;	COMDAT text$x
text$x	SEGMENT
$L80461:
	mov	eax, DWORD PTR $T80458[ebp-4]
	push	eax
	call	??3@YAXPAX@Z				; operator delete
	pop	ecx
	ret	0
$L80464:
	mov	eax, OFFSET FLAT:$T80463
	jmp	___CxxFrameHandler
text$x	ENDS
?AddBranch@KIpoTree@@QAEXPAUKIpotBuildinObj@@@Z ENDP	; KIpoTree::AddBranch
PUBLIC	?Fell@KIpoTree@@QAEXXZ				; KIpoTree::Fell
EXTRN	?RemoveAllRtoLeafs@KIpotBranch@@QAEXPAUKIpotLeaf@@@Z:NEAR ; KIpotBranch::RemoveAllRtoLeafs
;	COMDAT ?Fell@KIpoTree@@QAEXXZ
_TEXT	SEGMENT
?Fell@KIpoTree@@QAEXXZ PROC NEAR			; KIpoTree::Fell, COMDAT

; 144  : {

	push	esi
	push	edi
	mov	edi, ecx

; 145  : 	if (m_pMainBranch)

	mov	ecx, DWORD PTR [edi]
	test	ecx, ecx
	je	SHORT $L78684

; 146  : 	{
; 147  : 		m_pMainBranch->RemoveAllRtoLeafs(&m_PermanentLeaf);

	lea	eax, DWORD PTR [edi+52]
	push	eax
	call	?RemoveAllRtoLeafs@KIpotBranch@@QAEXPAUKIpotLeaf@@@Z ; KIpotBranch::RemoveAllRtoLeafs

; 148  : 		delete(m_pMainBranch);

	mov	esi, DWORD PTR [edi]
	test	esi, esi
	je	SHORT $L80473
	mov	ecx, esi
	call	??1KIpotBranch@@QAE@XZ			; KIpotBranch::~KIpotBranch
	push	esi
	call	??3@YAXPAX@Z				; operator delete
	add	esp, 4
$L80473:

; 149  : 		m_pMainBranch = NULL;

	mov	DWORD PTR [edi], 0
$L78684:

; 150  : 	}
; 151  : 	m_DefaultBranch.RemoveAllRtoLeafs(&m_PermanentLeaf);

	lea	ecx, DWORD PTR [edi+52]
	lea	esi, DWORD PTR [edi+4]
	push	ecx
	mov	ecx, esi
	call	?RemoveAllRtoLeafs@KIpotBranch@@QAEXPAUKIpotLeaf@@@Z ; KIpotBranch::RemoveAllRtoLeafs

; 152  : 	m_DefaultBranch.Clear();

	mov	ecx, esi
	call	?Clear@KIpotBranch@@QAEXXZ		; KIpotBranch::Clear

; 153  : 
; 154  : 	//clear all dyna light
; 155  : 	list<KLightBase*>::iterator i;
; 156  : 	for (i = m_LightList.begin(); i != m_LightList.end(); )

	mov	eax, DWORD PTR [edi+129116]
	mov	esi, DWORD PTR [eax]
	cmp	esi, eax
	je	SHORT $L78693
	push	ebx
$L78692:

; 157  : 	{
; 158  : 		if((*i)->m_pParent == NULL)

	mov	eax, DWORD PTR [esi+8]
	mov	ecx, DWORD PTR [eax+4]
	test	ecx, ecx
	jne	SHORT $L78694

; 159  : 		{
; 160  : 			delete (*i);

	push	eax
	call	??3@YAXPAX@Z				; operator delete

; 161  : 			i = m_LightList.erase(i);

	mov	edx, DWORD PTR [esi+4]
	mov	ebx, DWORD PTR [esi]
	push	esi
	mov	DWORD PTR [edx], ebx
	mov	eax, DWORD PTR [esi]
	mov	ecx, DWORD PTR [esi+4]
	mov	DWORD PTR [eax+4], ecx
	call	??3@YAXPAX@Z				; operator delete
	mov	eax, DWORD PTR [edi+129120]
	add	esp, 8
	dec	eax
	mov	esi, ebx
	mov	DWORD PTR [edi+129120], eax

; 162  : 			continue;

	jmp	SHORT $L80657
$L78694:

; 163  : 		}
; 164  : 		++i;

	mov	esi, DWORD PTR [esi]
$L80657:
	cmp	esi, DWORD PTR [edi+129116]
	jne	SHORT $L78692
	pop	ebx
$L78693:
	pop	edi
	pop	esi

; 165  : 	}
; 166  : }

	ret	0
?Fell@KIpoTree@@QAEXXZ ENDP				; KIpoTree::Fell
_TEXT	ENDS
PUBLIC	?AddLeafLine@KIpoTree@@QAEXPAUKIpotBuildinObj@@@Z ; KIpoTree::AddLeafLine
EXTRN	?AddLeafLine@KIpotBranch@@QAEXPAUKIpotBuildinObj@@@Z:NEAR ; KIpotBranch::AddLeafLine
;	COMDAT ?AddLeafLine@KIpoTree@@QAEXPAUKIpotBuildinObj@@@Z
_TEXT	SEGMENT
_pLeaf$ = 8
?AddLeafLine@KIpoTree@@QAEXPAUKIpotBuildinObj@@@Z PROC NEAR ; KIpoTree::AddLeafLine, COMDAT

; 181  : {

	mov	eax, ecx

; 182  : 	if (m_pMainBranch)

	mov	ecx, DWORD PTR [eax]
	test	ecx, ecx
	je	SHORT $L78701

; 183  : 		m_pMainBranch->AddLeafLine(pLeaf);

	mov	eax, DWORD PTR _pLeaf$[esp-4]
	push	eax

; 184  : 	else
; 185  : 		m_DefaultBranch.AddLeafLine(pLeaf);

	call	?AddLeafLine@KIpotBranch@@QAEXPAUKIpotBuildinObj@@@Z ; KIpotBranch::AddLeafLine

; 186  : }

	ret	4
$L78701:

; 184  : 	else
; 185  : 		m_DefaultBranch.AddLeafLine(pLeaf);

	mov	ecx, DWORD PTR _pLeaf$[esp-4]
	push	ecx
	lea	ecx, DWORD PTR [eax+4]
	call	?AddLeafLine@KIpotBranch@@QAEXPAUKIpotBuildinObj@@@Z ; KIpotBranch::AddLeafLine

; 186  : }

	ret	4
?AddLeafLine@KIpoTree@@QAEXPAUKIpotBuildinObj@@@Z ENDP	; KIpoTree::AddLeafLine
_TEXT	ENDS
PUBLIC	?Breath@KLightBase@@UAEXXZ			; KLightBase::Breath
PUBLIC	??_7KLightBase@@6B@				; KLightBase::`vftable'
PUBLIC	?AddLeafPoint@KIpoTree@@QAEXPAUKIpotLeaf@@@Z	; KIpoTree::AddLeafPoint
EXTRN	?CoreGetGameObjLightInfo@@YAXIIPAUKLightInfo@@@Z:NEAR ; CoreGetGameObjLightInfo
EXTRN	?AddLeafPoint@KIpotBranch@@QAEXPAUKIpotLeaf@@@Z:NEAR ; KIpotBranch::AddLeafPoint
;	COMDAT ??_7KLightBase@@6B@
; File D:\Program Files\Microsoft Visual Studio\VC98\INCLUDE\list
CONST	SEGMENT
??_7KLightBase@@6B@ DD FLAT:?Breath@KLightBase@@UAEXXZ	; KLightBase::`vftable'
CONST	ENDS
;	COMDAT ?AddLeafPoint@KIpoTree@@QAEXPAUKIpotLeaf@@@Z
_TEXT	SEGMENT
_pLeaf$ = 8
_lightInfo$78719 = -20
?AddLeafPoint@KIpoTree@@QAEXPAUKIpotLeaf@@@Z PROC NEAR	; KIpoTree::AddLeafPoint, COMDAT

; 190  : {

	sub	esp, 20					; 00000014H
	push	ebp
	mov	ebp, ecx
	push	esi

; 191  : 	if (m_pMainBranch)
; 192  : 		m_pMainBranch->AddLeafPoint(pLeaf);

	mov	esi, DWORD PTR _pLeaf$[esp+24]
	mov	ecx, DWORD PTR [ebp]
	push	edi
	test	ecx, ecx
	push	esi

; 193  : 	else

	jne	SHORT $L80901

; 194  : 		m_DefaultBranch.AddLeafPoint(pLeaf);

	lea	ecx, DWORD PTR [ebp+4]
$L80901:
	call	?AddLeafPoint@KIpotBranch@@QAEXPAUKIpotLeaf@@@Z ; KIpotBranch::AddLeafPoint

; 195  : 	// 
; 196  : 	if (pLeaf->eLeafType == KIpotLeaf::IPOTL_T_RUNTIME_OBJ)

	cmp	DWORD PTR [esi], 1
	jne	$L80853

; 197  : 	{
; 198  : 		KIpotRuntimeObj* pRtoLeaf = (KIpotRuntimeObj*)pLeaf;
; 199  : 		if (pRtoLeaf->eLayerParam & IPOT_RL_LIGHT_PROP)

	test	BYTE PTR [esi+36], 8
	je	$L80853

; 200  : 		{
; 201  : 			// 增加一个光源
; 202  : 			KLightBase *pLight = new KLightBase;

	push	28					; 0000001cH
	call	??2@YAPAXI@Z				; operator new
	mov	edi, eax
	add	esp, 4
	test	edi, edi
	je	$L80853
	mov	DWORD PTR [edi], OFFSET FLAT:??_7KLightBase@@6B@ ; KLightBase::`vftable'

; 203  : 			if(pLight)
; 204  : 			{
; 205  : 				KLightInfo lightInfo;
; 206  : 				CoreGetGameObjLightInfo(pRtoLeaf->uGenre, pRtoLeaf->nId, &lightInfo);

	mov	ecx, DWORD PTR [esi+28]
	mov	edx, DWORD PTR [esi+24]
	lea	eax, DWORD PTR _lightInfo$78719[esp+32]
	push	eax
	push	ecx
	push	edx
	call	?CoreGetGameObjLightInfo@@YAXIIPAUKLightInfo@@@Z ; CoreGetGameObjLightInfo

; 207  : 				pLight->m_dwColor = lightInfo.dwColor;

	mov	eax, DWORD PTR _lightInfo$78719[esp+56]

; 208  : 				pLight->m_oPosition = lightInfo.oPosition;

	mov	edx, DWORD PTR _lightInfo$78719[esp+44]
	lea	ecx, DWORD PTR [edi+8]
	mov	DWORD PTR [edi+20], eax
	mov	eax, DWORD PTR _lightInfo$78719[esp+48]
	add	esp, 12					; 0000000cH
	mov	DWORD PTR [ecx], edx
	mov	edx, DWORD PTR _lightInfo$78719[esp+40]
	mov	DWORD PTR [ecx+4], eax

; 209  : 				pLight->m_nRadius = lightInfo.nRadius;

	mov	eax, DWORD PTR _lightInfo$78719[esp+48]

; 210  : 				if(pLight->m_nRadius == 120)

	cmp	eax, 120				; 00000078H
	mov	DWORD PTR [edi+24], eax
	mov	DWORD PTR [ecx+8], edx
	jne	SHORT $L78720

; 211  : 					pLight->m_nRadius = 400;

	mov	DWORD PTR [edi+24], 400			; 00000190H
$L78720:

; 212  : 				pLight->m_pParent = pLeaf;

	mov	DWORD PTR [edi+4], esi

; 213  : 				m_LightList.push_back(pLight);

	mov	esi, DWORD PTR [ebp+129116]
	push	ebx
	push	12					; 0000000cH
	mov	ebx, DWORD PTR [esi+4]
	call	??2@YAPAXI@Z				; operator new
	add	esp, 4
	mov	ecx, esi
	test	esi, esi
	jne	SHORT $L80865
	mov	ecx, eax
$L80865:
	test	ebx, ebx
	mov	DWORD PTR [eax], ecx
	jne	SHORT $L80867
	mov	ebx, eax
$L80867:
	mov	DWORD PTR [eax+4], ebx
	mov	DWORD PTR [esi+4], eax
	mov	ecx, DWORD PTR [eax+4]
	pop	ebx
	mov	DWORD PTR [ecx], eax
	add	eax, 8
	test	eax, eax
	je	SHORT $L80892
	mov	DWORD PTR [eax], edi
$L80892:
	inc	DWORD PTR [ebp+129120]
$L80853:
	pop	edi
	pop	esi
	pop	ebp

; 214  : 			}
; 215  : 		}
; 216  : 	}
; 217  : }

	add	esp, 20					; 00000014H
	ret	4
?AddLeafPoint@KIpoTree@@QAEXPAUKIpotLeaf@@@Z ENDP	; KIpoTree::AddLeafPoint
_TEXT	ENDS
;	COMDAT ?Breath@KLightBase@@UAEXXZ
_TEXT	SEGMENT
?Breath@KLightBase@@UAEXXZ PROC NEAR			; KLightBase::Breath, COMDAT

; 49   : 	virtual void Breath(){}

	ret	0
?Breath@KLightBase@@UAEXXZ ENDP				; KLightBase::Breath
_TEXT	ENDS
PUBLIC	?PluckRto@KIpoTree@@QAEXPAUKIpotRuntimeObj@@@Z	; KIpoTree::PluckRto
EXTRN	?Pluck@KIpotRuntimeObj@@QAEXXZ:NEAR		; KIpotRuntimeObj::Pluck
;	COMDAT ?PluckRto@KIpoTree@@QAEXPAUKIpotRuntimeObj@@@Z
_TEXT	SEGMENT
_pLeaf$ = 8
?PluckRto@KIpoTree@@QAEXPAUKIpotRuntimeObj@@@Z PROC NEAR ; KIpoTree::PluckRto, COMDAT

; 220  : {

	push	ebx

; 221  : 	pLeaf->Pluck();

	mov	ebx, DWORD PTR _pLeaf$[esp]
	push	esi
	push	edi
	mov	edi, ecx
	mov	ecx, ebx
	call	?Pluck@KIpotRuntimeObj@@QAEXXZ		; KIpotRuntimeObj::Pluck

; 222  : 	list<KLightBase*>::iterator i;
; 223  : 	for (i = m_LightList.begin(); i != m_LightList.end(); ++i)

	mov	eax, DWORD PTR [edi+129116]
	mov	esi, DWORD PTR [eax]
	cmp	esi, eax
	je	SHORT $L81086
$L80951:

; 224  : 	{
; 225  : 		if((*i)->m_pParent == pLeaf)

	mov	ecx, DWORD PTR [esi+8]
	cmp	DWORD PTR [ecx+4], ebx
	je	SHORT $L81091
	mov	esi, DWORD PTR [esi]
	cmp	esi, eax
	jne	SHORT $L80951
	pop	edi
	pop	esi
	pop	ebx

; 229  : 			break;
; 230  : 		}
; 231  : 	}
; 232  : }

	ret	4
$L81091:

; 226  : 		{
; 227  : 			delete (*i);

	mov	edx, DWORD PTR [esi+8]
	push	edx
	call	??3@YAXPAX@Z				; operator delete

; 228  : 			m_LightList.erase(i);

	mov	eax, DWORD PTR [esi+4]
	mov	ecx, DWORD PTR [esi]
	push	esi
	mov	DWORD PTR [eax], ecx
	mov	edx, DWORD PTR [esi]
	mov	eax, DWORD PTR [esi+4]
	mov	DWORD PTR [edx+4], eax
	call	??3@YAXPAX@Z				; operator delete
	mov	eax, DWORD PTR [edi+129120]
	add	esp, 8
	dec	eax
	mov	DWORD PTR [edi+129120], eax
$L81086:
	pop	edi
	pop	esi
	pop	ebx

; 229  : 			break;
; 230  : 		}
; 231  : 	}
; 232  : }

	ret	4
?PluckRto@KIpoTree@@QAEXPAUKIpotRuntimeObj@@@Z ENDP	; KIpoTree::PluckRto
_TEXT	ENDS
PUBLIC	?SetPermanentBranchPos@KIpoTree@@QAEXHHH@Z	; KIpoTree::SetPermanentBranchPos
EXTRN	?SetLine@KIpotBranch@@QAEXPAUtagPOINT@@0@Z:NEAR	; KIpotBranch::SetLine
;	COMDAT ?SetPermanentBranchPos@KIpoTree@@QAEXHHH@Z
_TEXT	SEGMENT
_nLeftX$ = 8
_nRightX$ = 12
_y$ = 16
_p1$ = -8
_p2$ = -16
?SetPermanentBranchPos@KIpoTree@@QAEXHHH@Z PROC NEAR	; KIpoTree::SetPermanentBranchPos, COMDAT

; 236  : 	POINT	p1, p2;
; 237  : 	if (nLeftX < nRightX)

	mov	eax, DWORD PTR _nLeftX$[esp-4]
	mov	edx, DWORD PTR _nRightX$[esp-4]
	sub	esp, 16					; 00000010H
	cmp	eax, edx
	jge	SHORT $L81096

; 238  : 	{
; 239  : 		p1.x = nLeftX;

	mov	DWORD PTR _p1$[esp+16], eax

; 240  : 		p2.x = nRightX;
; 241  : 	}
; 242  : 	else if (nLeftX > nRightX)

	jmp	SHORT $L81097
$L81096:
	jle	SHORT $L78745

; 243  : 	{
; 244  : 		p2.x = nLeftX;

	mov	DWORD PTR _p2$[esp+16], eax

; 245  : 		p1.x = nRightX;

	mov	DWORD PTR _p1$[esp+16], edx

; 246  : 	}
; 247  : 	else

	jmp	SHORT $L78746
$L78745:

; 248  : 	{
; 249  : 		p1.x = nLeftX;

	mov	DWORD PTR _p1$[esp+16], eax

; 250  : 		p2.x = nRightX + 2048;

	add	edx, 2048				; 00000800H
$L81097:
	mov	DWORD PTR _p2$[esp+16], edx
$L78746:

; 251  : 	}
; 252  : 	p2.y = p1.y = y;

	mov	eax, DWORD PTR _y$[esp+12]

; 253  : 	m_DefaultBranch.SetLine(&p1, &p2);

	lea	edx, DWORD PTR _p1$[esp+16]
	mov	DWORD PTR _p1$[esp+20], eax
	mov	DWORD PTR _p2$[esp+20], eax
	lea	eax, DWORD PTR _p2$[esp+16]
	add	ecx, 4
	push	eax
	push	edx
	call	?SetLine@KIpotBranch@@QAEXPAUtagPOINT@@0@Z ; KIpotBranch::SetLine

; 254  : }

	add	esp, 16					; 00000010H
	ret	12					; 0000000cH
?SetPermanentBranchPos@KIpoTree@@QAEXHHH@Z ENDP		; KIpoTree::SetPermanentBranchPos
_TEXT	ENDS
PUBLIC	?ObjectsCallback@KIpoTree@@CAXPAXPAUKIpotLeaf@@@Z ; KIpoTree::ObjectsCallback
PUBLIC	?StrewRtoLeafs@KIpoTree@@QAEXXZ			; KIpoTree::StrewRtoLeafs
EXTRN	?EnumerateObjects@KIpotBranch@@QAEXPAXP6AX0PAUKIpotLeaf@@@Z@Z:NEAR ; KIpotBranch::EnumerateObjects
;	COMDAT ?StrewRtoLeafs@KIpoTree@@QAEXXZ
_TEXT	SEGMENT
?StrewRtoLeafs@KIpoTree@@QAEXXZ PROC NEAR		; KIpoTree::StrewRtoLeafs, COMDAT

; 257  : {

	push	ebx
	push	esi
	mov	esi, ecx
	push	edi

; 258  : 	KIpotBranch* pBranch;
; 259  : 	if (m_pMainBranch)

	xor	ebx, ebx
	mov	edi, DWORD PTR [esi]
	cmp	edi, ebx

; 260  : 		pBranch = m_pMainBranch;
; 261  : 	else

	jne	SHORT $L81101

; 262  : 		pBranch = &m_DefaultBranch;

	lea	edi, DWORD PTR [esi+4]
$L81101:

; 263  : 
; 264  : 	KIpotRuntimeObj* pRto;
; 265  : 	while(pRto = (KIpotRuntimeObj*)m_PermanentLeaf.pBrother)

	mov	eax, DWORD PTR [esi+56]
	cmp	eax, ebx
	je	SHORT $L78756
$L78755:

; 266  : 	{
; 267  : 		m_PermanentLeaf.pBrother = pRto->pBrother;

	mov	ecx, DWORD PTR [eax+4]

; 268  : 		pRto->pAheadBrother = NULL;
; 269  : 		pRto->pBrother = NULL;
; 270  : 		pBranch->AddLeafPoint(pRto);

	push	eax
	mov	DWORD PTR [esi+56], ecx
	mov	ecx, edi
	mov	DWORD PTR [eax+48], ebx
	mov	DWORD PTR [eax+4], ebx
	call	?AddLeafPoint@KIpotBranch@@QAEXPAUKIpotLeaf@@@Z ; KIpotBranch::AddLeafPoint
	mov	eax, DWORD PTR [esi+56]
	cmp	eax, ebx
	jne	SHORT $L78755
$L78756:

; 271  : 	}
; 272  : 
; 273  : //	SetAmbient(0xff181818);
; 274  : 	
; 275  : 	// 清空遮挡信息
; 276  : 	for(int j=0; j<LIGHTING_GRID_WIDTH*LIGHTING_GRID_HEIGHT; j++)

	lea	eax, DWORD PTR [esi+88]
	mov	ecx, 4608				; 00001200H
$L78759:

; 277  : 	{
; 278  : 		pObstacle[j].nObstacle = 0;

	mov	DWORD PTR [eax], ebx
	add	eax, 12					; 0000000cH
	dec	ecx
	jne	SHORT $L78759

; 279  : 	}
; 280  : 
; 281  : 	// 遍历树，计算遮挡信息
; 282  : 	if (m_pMainBranch)

	mov	ecx, DWORD PTR [esi]

; 283  : 		m_pMainBranch->EnumerateObjects(this, ObjectsCallback);

	push	OFFSET FLAT:?ObjectsCallback@KIpoTree@@CAXPAXPAUKIpotLeaf@@@Z ; KIpoTree::ObjectsCallback
	cmp	ecx, ebx
	push	esi

; 284  : 	else

	jne	SHORT $L81105

; 285  : 		m_DefaultBranch.EnumerateObjects(this, ObjectsCallback);

	lea	ecx, DWORD PTR [esi+4]
$L81105:
	call	?EnumerateObjects@KIpotBranch@@QAEXPAXP6AX0PAUKIpotLeaf@@@Z@Z ; KIpotBranch::EnumerateObjects
	pop	edi
	pop	esi
	pop	ebx

; 286  : }

	ret	0
?StrewRtoLeafs@KIpoTree@@QAEXXZ ENDP			; KIpoTree::StrewRtoLeafs
_TEXT	ENDS
PUBLIC	?FillLineObstacle@KIpoTree@@AAEXHHHHH@Z		; KIpoTree::FillLineObstacle
;	COMDAT ?ObjectsCallback@KIpoTree@@CAXPAXPAUKIpotLeaf@@@Z
_TEXT	SEGMENT
_p$ = 8
_pLeaf$ = 12
?ObjectsCallback@KIpoTree@@CAXPAXPAUKIpotLeaf@@@Z PROC NEAR ; KIpoTree::ObjectsCallback, COMDAT

; 291  : 	_ASSERT(p);
; 292  : 	_ASSERT(pLeaf);
; 293  : 	static int nObstacleID = 1;
; 294  : 	nObstacleID++;
; 295  : 
; 296  : 	if(pLeaf->eLeafType == KIpotLeaf::IPOTL_T_RUNTIME_OBJ)

	mov	eax, DWORD PTR _pLeaf$[esp-4]
	push	ebx
	push	ebp
	mov	ebp, DWORD PTR _?nObstacleID@?1??ObjectsCallback@KIpoTree@@CAXPAXPAUKIpotLeaf@@@Z@4HA
	inc	ebp
	push	esi
	mov	DWORD PTR _?nObstacleID@?1??ObjectsCallback@KIpoTree@@CAXPAXPAUKIpotLeaf@@@Z@4HA, ebp
	mov	ecx, DWORD PTR [eax]
	cmp	ecx, 1
	push	edi
	je	$L78787

; 297  : 		return;
; 298  : 
; 299  : 	KIpoTree *pTree = (KIpoTree*)p;
; 300  : 	KIpotBuildinObj* pObj = (KIpotBuildinObj*)pLeaf;
; 301  : 	KBuildinObj* pBio = ((KIpotBuildinObj*)pLeaf)->pBio;

	mov	ecx, DWORD PTR [eax+48]

; 302  : 	if((pBio->Props & SPBIO_P_BLOCK_LIGHT_MASK) == SPBIO_P_BLOCK_LIGHT_NONE)

	mov	ecx, DWORD PTR [ecx]
	and	ecx, 48					; 00000030H
	je	$L78787

; 303  : 		return;
; 304  : 
; 305  : 	if((pBio->Props & SPBIO_P_BLOCK_LIGHT_MASK) == SPBIO_P_BLOCK_LIGHT_BOTTOM)

	cmp	ecx, 16					; 00000010H
	jne	SHORT $L78780

; 306  : 	{
; 307  : 		// 按线段处理遮挡
; 308  : 		pTree->FillLineObstacle(pObj->oPosition.x - pTree->m_nLeftTopX, pObj->oPosition.y - pTree->m_nLeftTopY, 
; 309  : 								pObj->oEndPos.x - pTree->m_nLeftTopX, pObj->oEndPos.y - pTree->m_nLeftTopY, nObstacleID);

	mov	ecx, DWORD PTR _p$[esp+12]
	mov	edi, DWORD PTR [eax+32]
	push	ebp
	mov	edx, DWORD PTR [ecx+80]
	mov	esi, DWORD PTR [ecx+76]
	sub	edi, edx
	push	edi
	mov	edi, DWORD PTR [eax+28]
	sub	edi, esi
	push	edi
	mov	edi, DWORD PTR [eax+20]
	mov	eax, DWORD PTR [eax+16]
	sub	edi, edx
	sub	eax, esi
	push	edi
	push	eax
	call	?FillLineObstacle@KIpoTree@@AAEXHHHHH@Z	; KIpoTree::FillLineObstacle
	pop	edi
	pop	esi
	pop	ebp
	pop	ebx

; 328  : 		}
; 329  : 	}
; 330  : }

	ret	0
$L78780:

; 310  : 	}
; 311  : 	else if((pBio->Props & SPBIO_P_BLOCK_LIGHT_MASK) == SPBIO_P_BLOCK_LIGHT_CIRCLE)

	cmp	ecx, 32					; 00000020H
	jne	SHORT $L78787

; 312  : 	{
; 313  : 		// 按圆处理光线遮挡，忽略半径，都按一个格子处理
; 314  : 		int nX = pObj->oPosition.x;
; 315  : 		int nY = pObj->oPosition.y;
; 316  : 		int nIdx;
; 317  : 		if(nX < pTree->m_nLeftTopX || nY < pTree->m_nLeftTopY ||
; 318  : 				nX >= pTree->m_nLeftTopX + AREGION_WIDTH * 3 || nY >= pTree->m_nLeftTopY + AREGION_HEIGHT * 3)

	mov	ebx, DWORD PTR _p$[esp+12]
	mov	esi, DWORD PTR [eax+16]
	mov	eax, DWORD PTR [eax+20]
	mov	edi, DWORD PTR [ebx+76]
	cmp	esi, edi
	jl	SHORT $L78787
	mov	ecx, DWORD PTR [ebx+80]
	cmp	eax, ecx
	jl	SHORT $L78787
	lea	edx, DWORD PTR [edi+1536]
	cmp	esi, edx
	jge	SHORT $L78787
	lea	edx, DWORD PTR [ecx+3072]
	cmp	eax, edx
	jge	SHORT $L78787

; 319  : 			return;
; 320  : 		else
; 321  : 		{
; 322  : 			nX = (nX - pTree->m_nLeftTopX) / LIGHTING_GRID_SIZEX;
; 323  : 			nY = (nY - pTree->m_nLeftTopY) / LIGHTING_GRID_SIZEY;

	sub	eax, ecx
	cdq
	and	edx, 31					; 0000001fH
	add	eax, edx
	sar	eax, 5

; 324  : 			nIdx = nY * LIGHTING_GRID_WIDTH + nX;

	lea	ecx, DWORD PTR [eax+eax*2]
	mov	eax, esi
	sub	eax, edi
	cdq
	and	edx, 31					; 0000001fH
	add	eax, edx
	shl	ecx, 4
	sar	eax, 5
	add	ecx, eax

; 325  : 			pTree->pObstacle[nIdx].nObstacle = nObstacleID;

	lea	eax, DWORD PTR [ecx+ecx*2]
	lea	eax, DWORD PTR [ebx+eax*4]
	mov	DWORD PTR [eax+88], ebp

; 326  : 			// 将方向的x分量设为0，表示不考虑方向
; 327  : 			pTree->pObstacle[nIdx].vDir.fX = 0.0f;

	mov	DWORD PTR [eax+92], 0
$L78787:
	pop	edi
	pop	esi
	pop	ebp
	pop	ebx

; 328  : 		}
; 329  : 	}
; 330  : }

	ret	0
?ObjectsCallback@KIpoTree@@CAXPAXPAUKIpotLeaf@@@Z ENDP	; KIpoTree::ObjectsCallback
_TEXT	ENDS
PUBLIC	__real@4@40048000000000000000
PUBLIC	__real@4@c0048000000000000000
;	COMDAT __real@4@40048000000000000000
; File D:\swrod3\SwordOnline\Sources\Core\Src\Scene\KIpoTree.cpp
CONST	SEGMENT
__real@4@40048000000000000000 DD 042000000r	; 32
CONST	ENDS
;	COMDAT __real@4@c0048000000000000000
CONST	SEGMENT
__real@4@c0048000000000000000 DD 0c2000000r	; -32
CONST	ENDS
;	COMDAT ?FillLineObstacle@KIpoTree@@AAEXHHHHH@Z
_TEXT	SEGMENT
_x1$ = 8
_y1$ = 12
_x2$ = 16
_y2$ = 20
_nObstacleID$ = 24
_fy1$ = 12
_fdx$ = 8
_fdy$ = -36
_gStepX$ = 16
_gStepY$ = 12
_gx1$ = -28
_gy1$ = -20
_gx2$ = -16
_gy2$ = -12
_vDir$ = -8
_fFlope1$ = -24
?FillLineObstacle@KIpoTree@@AAEXHHHHH@Z PROC NEAR	; KIpoTree::FillLineObstacle, COMDAT

; 333  : {

	sub	esp, 36					; 00000024H
	push	ebx

; 334  : 	if(x1 >= x2)

	mov	ebx, DWORD PTR _x2$[esp+36]
	push	ebp
	mov	ebp, DWORD PTR _x1$[esp+40]
	push	esi
	push	edi
	cmp	ebp, ebx
	mov	edi, ecx
	jge	$L78857

; 335  : 		return;
; 336  : 
; 337  : 	float fx1, fy1, fx2, fy2, fdx, fdy, fStepX, fStepY;
; 338  : 	int gStepX, gStepY, gx, gy, nIdx, gx1, gy1, gx2, gy2;
; 339  : 	fx1 = x1, fy1 = y1, fx2 = x2, fy2 = y2;

	fild	DWORD PTR _x1$[esp+48]
	fild	DWORD PTR _y1$[esp+48]

; 340  : 	fdx = fabs(fx2 - fx1);

	fild	DWORD PTR _x2$[esp+48]
	fsub	ST(0), ST(2)
	fabs
	fstp	DWORD PTR _fdx$[esp+48]

; 341  : 	fdy = fabs(fy2 - fy1);

	fild	DWORD PTR _y2$[esp+48]

; 342  : 	KVector2 vDir;
; 343  : 	vDir.fX = fdx;

	mov	eax, DWORD PTR _fdx$[esp+48]
	mov	DWORD PTR _vDir$[esp+52], eax

; 344  : 	vDir.fY = fdy;
; 345  : 	float fFlope1, fFlope2;
; 346  : 	gx1 = x1 / LIGHTING_GRID_SIZEX;

	mov	eax, ebp
	fsub	ST(0), ST(1)
	cdq
	fabs
	fstp	DWORD PTR _fdy$[esp+52]

; 347  : 	gy1 = y1 / LIGHTING_GRID_SIZEX;
; 348  : 	gx2 = x2 / LIGHTING_GRID_SIZEX;
; 349  : 	gy2 = y2 / LIGHTING_GRID_SIZEX;
; 350  : 
; 351  : 	fFlope1 = fdy / fdx;

	fld	DWORD PTR _fdy$[esp+52]
	fdiv	DWORD PTR _fdx$[esp+48]
	and	edx, 31					; 0000001fH
	mov	ecx, DWORD PTR _fdy$[esp+52]
	add	eax, edx
	mov	DWORD PTR _vDir$[esp+56], ecx
	mov	esi, eax
	mov	eax, DWORD PTR _y1$[esp+48]
	cdq
	and	edx, 31					; 0000001fH
	add	eax, edx
	mov	ecx, eax
	mov	eax, ebx
	cdq
	and	edx, 31					; 0000001fH
	add	eax, edx
	mov	ebx, eax
	mov	eax, DWORD PTR _y2$[esp+48]
	cdq
	and	edx, 31					; 0000001fH
	add	edx, eax
	sar	esi, 5
	sar	ecx, 5
	sar	ebx, 5
	sar	edx, 5
	mov	DWORD PTR _gx1$[esp+52], esi
	mov	DWORD PTR _gy1$[esp+52], ecx
	mov	DWORD PTR _gx2$[esp+52], ebx
	mov	DWORD PTR _gy2$[esp+52], edx
	fstp	DWORD PTR -32+[esp+52]

; 352  : 
; 353  : 	// 斜率小于45度的情况
; 354  : 	if(fdx >= fdy)

	fld	DWORD PTR _fdx$[esp+48]
	fcomp	DWORD PTR _fdy$[esp+52]
	mov	eax, DWORD PTR -32+[esp+52]
	mov	DWORD PTR _fFlope1$[esp+52], eax
	fnstsw	ax
	test	ah, 1
	jne	$L78818

; 355  : 	{
; 356  : 		if(gx1 == gx2)

	cmp	esi, ebx
	je	$L81124

; 357  : 			return;
; 358  : 
; 359  : 		if(x2 > x1)

	mov	edx, DWORD PTR _x2$[esp+48]
	or	eax, -1
	cmp	edx, ebp
	mov	ecx, 1
	jle	SHORT $L78820

; 360  : 		{
; 361  : 			gStepX = 1;
; 362  : 			fStepX = LIGHTING_GRID_SIZEX;

	fld	DWORD PTR __real@4@40048000000000000000
	mov	DWORD PTR _gStepX$[esp+48], ecx

; 363  : 		}
; 364  : 		else

	jmp	SHORT $L78821
$L78820:

; 365  : 		{
; 366  : 			gStepX = -1;
; 367  : 			fStepX = -LIGHTING_GRID_SIZEX;

	fld	DWORD PTR __real@4@c0048000000000000000
	mov	DWORD PTR _gStepX$[esp+48], eax
$L78821:

; 368  : 		}
; 369  : 		if(y2 > y1)

	mov	edx, DWORD PTR _y1$[esp+48]
	mov	esi, DWORD PTR _y2$[esp+48]
	cmp	esi, edx
	jle	SHORT $L78822

; 370  : 		{
; 371  : 			gStepY = 1;
; 372  : 			fStepY = fdy / fdx * LIGHTING_GRID_SIZEX;

	fld	DWORD PTR -32+[esp+52]
	fmul	DWORD PTR __real@4@40048000000000000000
	mov	DWORD PTR _gStepY$[esp+48], ecx

; 373  : 		}
; 374  : 		else

	jmp	SHORT $L81122
$L78822:

; 375  : 		{
; 376  : 			gStepY = -1;
; 377  : 			fStepY = -fdy / fdx * LIGHTING_GRID_SIZEX;

	fld	DWORD PTR -32+[esp+52]
	fmul	DWORD PTR __real@4@c0048000000000000000
	mov	DWORD PTR _gStepY$[esp+48], eax
$L81122:
	mov	ebx, DWORD PTR _nObstacleID$[esp+48]
	mov	ebp, DWORD PTR _vDir$[esp+52]
$L78825:

; 378  : 		}
; 379  : 		while(1)
; 380  : 		{
; 381  : 			int nx = (int)fx1;
; 382  : 			int ny = (int)fy1;
; 383  : 
; 384  : 			gx = nx / LIGHTING_GRID_SIZEX;

	fld	ST(3)
	call	__ftol
	cdq

; 385  : 			gy = ny / LIGHTING_GRID_SIZEX;

	fld	ST(2)
	and	edx, 31					; 0000001fH
	add	eax, edx
	mov	esi, eax
	sar	esi, 5
	call	__ftol
	cdq
	and	edx, 31					; 0000001fH
	add	eax, edx
	sar	eax, 5

; 386  : 
; 387  : 			if(gx >0 && gx < LIGHTING_GRID_WIDTH - 1 && gy >0 && gy < LIGHTING_GRID_HEIGHT - 1)

	test	esi, esi
	jle	$L78833
	cmp	esi, 47					; 0000002fH
	jge	$L78833
	test	eax, eax
	jle	$L78833
	cmp	eax, 95					; 0000005fH
	jge	$L78833

; 388  : 			{
; 389  : 				nIdx = gy * LIGHTING_GRID_WIDTH + gx;

	lea	ecx, DWORD PTR [eax+eax*2]
	shl	ecx, 4
	lea	edx, DWORD PTR [ecx+esi]

; 390  : 				pObstacle[nIdx].nObstacle = nObstacleID;

	lea	ecx, DWORD PTR [edx+edx*2]
	lea	ecx, DWORD PTR [edi+ecx*4]
	mov	DWORD PTR [ecx+88], ebx

; 391  : 				pObstacle[nIdx].vDir = vDir;

	mov	DWORD PTR [ecx+92], ebp
	mov	ebp, DWORD PTR _vDir$[esp+56]
	mov	DWORD PTR [ecx+96], ebp

; 392  : 
; 393  : 				fFlope2 = fabs((gy + gStepY) * 32.0f - fy1) / fabs((gx + gStepX) * 32.0f - fx1);

	mov	ecx, DWORD PTR _gStepY$[esp+48]
	add	ecx, eax
	mov	ebp, DWORD PTR _gStepX$[esp+48]
	mov	DWORD PTR 20+[esp+48], ecx

; 394  : 				if(fFlope2 > fFlope1)

	fild	DWORD PTR 20+[esp+48]
	lea	eax, DWORD PTR [esi+ebp]
	mov	DWORD PTR 20+[esp+48], eax
	fmul	DWORD PTR __real@4@40048000000000000000
	fsub	ST(0), ST(3)
	fabs
	fild	DWORD PTR 20+[esp+48]
	fmul	DWORD PTR __real@4@40048000000000000000
	fsub	ST(0), ST(5)
	fabs
	fdivp	ST(1), ST(0)
	fcomp	DWORD PTR _fFlope1$[esp+52]
	fnstsw	ax
	test	ah, 65					; 00000041H
	jne	SHORT $L78832

; 395  : 				{
; 396  : 					nIdx = (gy + gStepY) * LIGHTING_GRID_WIDTH + gx;

	lea	eax, DWORD PTR [ecx+ecx*2]

; 397  : 					pObstacle[nIdx].nObstacle = nObstacleID;
; 398  : 					pObstacle[nIdx].vDir = vDir;

	mov	ebp, DWORD PTR _vDir$[esp+52]
	shl	eax, 4
	add	eax, esi
	mov	edx, DWORD PTR _vDir$[esp+56]
	lea	ecx, DWORD PTR [eax+eax*2]
	lea	eax, DWORD PTR [edi+ecx*4]
	mov	DWORD PTR [eax+88], ebx
	mov	DWORD PTR [eax+92], ebp
	mov	DWORD PTR [eax+96], edx

; 399  : 				}
; 400  : 				else

	jmp	SHORT $L78833
$L78832:

; 401  : 				{
; 402  : 					nIdx = gy * LIGHTING_GRID_WIDTH + gx + gStepX;

	lea	eax, DWORD PTR [edx+ebp]

; 403  : 					pObstacle[nIdx].nObstacle = nObstacleID;
; 404  : 					pObstacle[nIdx].vDir = vDir;

	mov	ebp, DWORD PTR _vDir$[esp+52]
	mov	ecx, DWORD PTR _vDir$[esp+56]
	lea	eax, DWORD PTR [eax+eax*2]
	lea	eax, DWORD PTR [edi+eax*4]
	mov	DWORD PTR [eax+88], ebx
	mov	DWORD PTR [eax+92], ebp
	mov	DWORD PTR [eax+96], ecx
$L78833:

; 410  : 			gx1 += gStepX;

	mov	eax, DWORD PTR _gx1$[esp+52]
	mov	edx, DWORD PTR _gStepX$[esp+48]

; 411  : 			if(gx1 == gx2)

	mov	ecx, DWORD PTR _gx2$[esp+52]
	add	eax, edx
	fld	ST(1)
	faddp	ST(4), ST(0)
	cmp	eax, ecx
	mov	DWORD PTR _gx1$[esp+52], eax
	fld	ST(0)
	faddp	ST(3), ST(0)
	jne	$L78825

; 415  : 				if(gx >0 && gx < LIGHTING_GRID_WIDTH - 1 && gy >0 && gy < LIGHTING_GRID_HEIGHT - 1)
; 416  : 				{
; 417  : 					nIdx = gy * LIGHTING_GRID_WIDTH + gx;
; 418  : 					pObstacle[nIdx].nObstacle = nObstacleID;
; 419  : 					pObstacle[nIdx].vDir = vDir;
; 420  : 				}
; 421  : 				return;

	jmp	$L81128
$L78818:

; 422  : 			}
; 423  : 		}
; 424  : 	}
; 425  : 	// 斜率大于45度的情况
; 426  : 	else
; 427  : 	{
; 428  : 		if(gy1 == gy2)

	cmp	ecx, edx
	je	$L81124

; 429  : 			return;
; 430  : 
; 431  : 		if(y2 > y1)

	mov	edx, DWORD PTR _y1$[esp+48]
	mov	esi, DWORD PTR _y2$[esp+48]
	or	eax, -1
	cmp	esi, edx
	mov	ecx, 1
	jle	SHORT $L78840

; 432  : 		{
; 433  : 			gStepY = 1;
; 434  : 			fStepY = LIGHTING_GRID_SIZEX;

	fld	DWORD PTR __real@4@40048000000000000000
	mov	DWORD PTR _gStepY$[esp+48], ecx

; 435  : 		}
; 436  : 		else

	jmp	SHORT $L78841
$L78840:

; 437  : 		{
; 438  : 			gStepY = -1;
; 439  : 			fStepY = -LIGHTING_GRID_SIZEX;

	fld	DWORD PTR __real@4@c0048000000000000000
	mov	DWORD PTR _gStepY$[esp+48], eax
$L78841:

; 440  : 		}
; 441  : 		if(x2 > x1)

	cmp	DWORD PTR _x2$[esp+48], ebp
	jle	SHORT $L78842

; 442  : 		{
; 443  : 			gStepX = 1;
; 444  : 			fStepX = fdx / fdy * LIGHTING_GRID_SIZEX;

	fld	DWORD PTR _fdx$[esp+48]
	fdiv	DWORD PTR _fdy$[esp+52]
	mov	DWORD PTR _gStepX$[esp+48], ecx
	fmul	DWORD PTR __real@4@40048000000000000000

; 445  : 		}
; 446  : 		else

	jmp	SHORT $L81123
$L78842:

; 447  : 		{
; 448  : 			gStepX = -1;
; 449  : 			fStepX = -fdx / fdy * LIGHTING_GRID_SIZEX;

	fld	DWORD PTR _fdx$[esp+48]
	fdiv	DWORD PTR _fdy$[esp+52]
	mov	DWORD PTR _gStepX$[esp+48], eax
	fmul	DWORD PTR __real@4@c0048000000000000000
$L81123:
	mov	ebx, DWORD PTR _nObstacleID$[esp+48]
	mov	ebp, DWORD PTR _vDir$[esp+52]
$L78845:

; 450  : 		}
; 451  : 		while(1)
; 452  : 		{
; 453  : 			int nx = (int)fx1;
; 454  : 			int ny = (int)fy1;
; 455  : 
; 456  : 			gx = nx / LIGHTING_GRID_SIZEX;

	fld	ST(3)
	call	__ftol
	cdq

; 457  : 			gy = ny / LIGHTING_GRID_SIZEX;

	fld	ST(2)
	and	edx, 31					; 0000001fH
	add	eax, edx
	mov	esi, eax
	sar	esi, 5
	call	__ftol
	cdq
	and	edx, 31					; 0000001fH
	add	eax, edx
	sar	eax, 5

; 458  : 
; 459  : 			if(gx >0 && gx < LIGHTING_GRID_WIDTH - 1 && gy >0 && gy < LIGHTING_GRID_HEIGHT - 1)

	test	esi, esi
	jle	$L78853
	cmp	esi, 47					; 0000002fH
	jge	$L78853
	test	eax, eax
	jle	$L78853
	cmp	eax, 95					; 0000005fH
	jge	$L78853

; 460  : 			{
; 461  : 				nIdx = gy * LIGHTING_GRID_WIDTH + gx;

	lea	ecx, DWORD PTR [eax+eax*2]
	shl	ecx, 4
	lea	edx, DWORD PTR [ecx+esi]

; 462  : 				pObstacle[nIdx].nObstacle = nObstacleID;

	lea	ecx, DWORD PTR [edx+edx*2]
	lea	ecx, DWORD PTR [edi+ecx*4]
	mov	DWORD PTR [ecx+88], ebx

; 463  : 				pObstacle[nIdx].vDir = vDir;

	mov	DWORD PTR [ecx+92], ebp
	mov	ebp, DWORD PTR _vDir$[esp+56]
	mov	DWORD PTR [ecx+96], ebp

; 464  : 
; 465  : 				fFlope2 = fabs((gy + gStepY) * 32.0f - fy1) / fabs((gx + gStepX) * 32.0f - fx1);

	mov	ecx, DWORD PTR _gStepY$[esp+48]
	add	ecx, eax
	mov	ebp, DWORD PTR _gStepX$[esp+48]
	mov	DWORD PTR 20+[esp+48], ecx

; 466  : 				if(fFlope2 > fFlope1)

	fild	DWORD PTR 20+[esp+48]
	lea	eax, DWORD PTR [esi+ebp]
	mov	DWORD PTR 20+[esp+48], eax
	fmul	DWORD PTR __real@4@40048000000000000000
	fsub	ST(0), ST(3)
	fabs
	fild	DWORD PTR 20+[esp+48]
	fmul	DWORD PTR __real@4@40048000000000000000
	fsub	ST(0), ST(5)
	fabs
	fdivp	ST(1), ST(0)
	fcomp	DWORD PTR _fFlope1$[esp+52]
	fnstsw	ax
	test	ah, 65					; 00000041H
	jne	SHORT $L78852

; 467  : 				{
; 468  : 					nIdx = (gy + gStepY) * LIGHTING_GRID_WIDTH + gx;

	lea	eax, DWORD PTR [ecx+ecx*2]

; 469  : 					pObstacle[nIdx].nObstacle = nObstacleID;
; 470  : 					pObstacle[nIdx].vDir = vDir;

	mov	ebp, DWORD PTR _vDir$[esp+52]
	shl	eax, 4
	add	eax, esi
	mov	edx, DWORD PTR _vDir$[esp+56]
	lea	ecx, DWORD PTR [eax+eax*2]
	lea	eax, DWORD PTR [edi+ecx*4]
	mov	DWORD PTR [eax+88], ebx
	mov	DWORD PTR [eax+92], ebp
	mov	DWORD PTR [eax+96], edx

; 471  : 				}
; 472  : 				else

	jmp	SHORT $L78853
$L78852:

; 473  : 				{
; 474  : 					nIdx = gy * LIGHTING_GRID_WIDTH + gx + gStepX;

	lea	eax, DWORD PTR [edx+ebp]

; 475  : 					pObstacle[nIdx].nObstacle = nObstacleID;
; 476  : 					pObstacle[nIdx].vDir = vDir;

	mov	ebp, DWORD PTR _vDir$[esp+52]
	mov	ecx, DWORD PTR _vDir$[esp+56]
	lea	eax, DWORD PTR [eax+eax*2]
	lea	eax, DWORD PTR [edi+eax*4]
	mov	DWORD PTR [eax+88], ebx
	mov	DWORD PTR [eax+92], ebp
	mov	DWORD PTR [eax+96], ecx
$L78853:

; 482  : 			gy1 += gStepY;

	mov	eax, DWORD PTR _gy1$[esp+52]
	mov	edx, DWORD PTR _gStepY$[esp+48]

; 483  : 			if(gy1 == gy2)

	mov	ecx, DWORD PTR _gy2$[esp+52]
	add	eax, edx
	fld	ST(0)
	faddp	ST(4), ST(0)
	fld	ST(1)
	cmp	eax, ecx
	mov	DWORD PTR _gy1$[esp+52], eax
	faddp	ST(3), ST(0)
	jne	$L78845
$L81128:

; 477  : 				}
; 478  : 			}
; 479  : 
; 480  : 			fx1 += fStepX;
; 481  : 			fy1 += fStepY;

	fstp	ST(0)
	fstp	ST(0)
	fstp	DWORD PTR _fy1$[esp+48]

; 484  : 			{
; 485  : 				gx = ((int)fx1) / LIGHTING_GRID_SIZEX;

	call	__ftol
	cdq

; 486  : 				gy = ((int)fy1) / LIGHTING_GRID_SIZEX;

	fld	DWORD PTR _fy1$[esp+48]
	and	edx, 31					; 0000001fH
	add	eax, edx
	mov	esi, eax
	sar	esi, 5
	call	__ftol
	cdq
	and	edx, 31					; 0000001fH
	add	eax, edx
	sar	eax, 5

; 487  : 				if(gx >0 && gx < LIGHTING_GRID_WIDTH - 1 && gy >0 && gy < LIGHTING_GRID_HEIGHT - 1)

	test	esi, esi
	jle	SHORT $L78857
	cmp	esi, 47					; 0000002fH
	jge	SHORT $L78857
	test	eax, eax
	jle	SHORT $L78857
	cmp	eax, 95					; 0000005fH
	jge	SHORT $L78857

; 488  : 				{
; 489  : 					nIdx = gy * LIGHTING_GRID_WIDTH + gx;

	lea	eax, DWORD PTR [eax+eax*2]
	shl	eax, 4
	add	eax, esi

; 490  : 					pObstacle[nIdx].nObstacle = nObstacleID;

	lea	edx, DWORD PTR [eax+eax*2]

; 491  : 					pObstacle[nIdx].vDir = vDir;

	mov	eax, DWORD PTR _vDir$[esp+56]
	lea	edi, DWORD PTR [edi+edx*4]
	mov	DWORD PTR [edi+88], ebx
	mov	DWORD PTR [edi+92], ebp
	mov	DWORD PTR [edi+96], eax
	pop	edi
	pop	esi
	pop	ebp
	pop	ebx

; 492  : 				}
; 493  : 				return;
; 494  : 			}
; 495  : 		}
; 496  : 	}
; 497  : }

	add	esp, 36					; 00000024H
	ret	20					; 00000014H
$L81124:

; 405  : 				}
; 406  : 			}
; 407  : 
; 408  : 			fx1 += fStepX;
; 409  : 			fy1 += fStepY;

	fstp	ST(0)

; 412  : 			{
; 413  : 				gx = ((int)fx1) / LIGHTING_GRID_SIZEX;
; 414  : 				gy = ((int)fy1) / LIGHTING_GRID_SIZEX;

	fstp	ST(0)
$L78857:
	pop	edi
	pop	esi
	pop	ebp
	pop	ebx

; 492  : 				}
; 493  : 				return;
; 494  : 			}
; 495  : 		}
; 496  : 	}
; 497  : }

	add	esp, 36					; 00000024H
	ret	20					; 00000014H
?FillLineObstacle@KIpoTree@@AAEXHHHHH@Z ENDP		; KIpoTree::FillLineObstacle
_TEXT	ENDS
PUBLIC	?CanLighting@KIpoTree@@AAE_NHHHH@Z		; KIpoTree::CanLighting
PUBLIC	__real@4@3fff8000000000000000
EXTRN	__chkstk:NEAR
;	COMDAT __real@4@3fff8000000000000000
; File D:\Program Files\Microsoft Visual Studio\VC98\INCLUDE\list
CONST	SEGMENT
__real@4@3fff8000000000000000 DD 03f800000r	; 1
CONST	ENDS
;	COMDAT ?RenderLightMap@KIpoTree@@QAEXXZ
_TEXT	SEGMENT
_ptp$ = -55296
_i$ = -55464
_pLight$78879 = -55428
_nLightPosX$78880 = -55444
_nLightPosY$78881 = -55472
_nLightGridX$78882 = -55456
_nr$78888 = -55420
_ng$78889 = -55424
_nb$78890 = -55416
_x$78896 = -55404
_y$78897 = -55408
_gx$78898 = -55452
_nGridRadius$78900 = -55396
_r$78901 = -55412
_pU$ = -55476
_pD$ = -55480
?RenderLightMap@KIpoTree@@QAEXXZ PROC NEAR		; KIpoTree::RenderLightMap, COMDAT

; 644  : {

	mov	eax, 55484				; 0000d8bcH
	call	__chkstk
	push	ebx
	mov	ebx, ecx

; 645  : 	int nn = m_LightList.size();
; 646  : 	int j, nIdx, nLightID=1;
; 647  : 	KLColor ptp[LIGHTING_GRID_WIDTH * LIGHTING_GRID_HEIGHT];
; 648  : 
; 649  : 	// 按环境光清空光照图
; 650  : 	DWORD dwR, dwG, dwB;
; 651  : 	dwR = (m_dwAmbient & 0x00ff0000) >>16;
; 652  : 	dwG = (m_dwAmbient & 0x0000ff00) >>8;

	xor	edx, edx
	xor	ecx, ecx
	mov	eax, DWORD PTR [ebx+84]
	push	ebp
	mov	DWORD PTR -55456+[esp+55492], eax
	mov	dl, ah
	mov	cl, BYTE PTR -55456+[esp+55494]
	push	esi

; 653  : 	dwB = m_dwAmbient & 0x000000ff;

	and	eax, 255				; 000000ffH
	push	edi
	mov	esi, ecx
	mov	edi, eax
	lea	ecx, DWORD PTR _ptp$[esp+55504]
	lea	eax, DWORD PTR [ebx+55388]
	mov	ebp, 4608				; 00001200H
$L78869:

; 654  : 	for(j=0; j<LIGHTING_GRID_WIDTH*LIGHTING_GRID_HEIGHT; j++)
; 655  : 	{
; 656  : 			ptp[j].r = pLColor[j].r = dwR;

	mov	DWORD PTR [eax-4], esi
	mov	DWORD PTR [ecx-4], esi

; 657  : 			ptp[j].g = pLColor[j].g = dwG;

	mov	DWORD PTR [eax], edx
	mov	DWORD PTR [ecx], edx

; 658  : 			ptp[j].b = pLColor[j].b = dwB;

	mov	DWORD PTR [eax+4], edi
	mov	DWORD PTR [ecx+4], edi
	add	eax, 12					; 0000000cH
	add	ecx, 12					; 0000000cH
	dec	ebp
	jne	SHORT $L78869

; 659  : 	}
; 660  : 
; 661  : 	list<KLightBase*>::iterator i;
; 662  : 	// 计算每一个光源的光照结果
; 663  : 	for (i = m_LightList.begin(); i != m_LightList.end(); ++i)

	mov	eax, DWORD PTR [ebx+129116]
	mov	ecx, DWORD PTR [eax]
	cmp	ecx, eax
	mov	DWORD PTR _i$[esp+55500], ecx
	je	$L78878
$L81174:

; 664  : 	{
; 665  : 		nLightID++;
; 666  : 		KLightBase *pLight = *i;

	mov	edx, DWORD PTR _i$[esp+55500]

; 667  : 		// 光源相对于九区域左上角的坐标
; 668  : 		int nLightPosX = pLight->m_oPosition.nX - m_nLeftTopX;

	mov	ecx, DWORD PTR [ebx+76]
	mov	eax, DWORD PTR [edx+8]
	mov	DWORD PTR _pLight$78879[esp+55500], eax
	mov	edi, DWORD PTR [eax+8]
	sub	edi, ecx

; 669  : 		int nLightPosY = pLight->m_oPosition.nY - m_nLeftTopY;

	mov	ecx, DWORD PTR [eax+12]
	mov	eax, DWORD PTR [ebx+80]
	mov	DWORD PTR _nLightPosX$78880[esp+55500], edi
	sub	ecx, eax

; 670  : 		// 光源的格子坐标
; 671  : 		int nLightGridX = nLightPosX / LIGHTING_GRID_SIZEX;

	mov	eax, edi
	cdq
	and	edx, 31					; 0000001fH
	mov	DWORD PTR _nLightPosY$78881[esp+55500], ecx
	add	eax, edx
	mov	esi, eax

; 672  : 		int nLightGridY = nLightPosY / LIGHTING_GRID_SIZEY;

	mov	eax, ecx
	cdq
	and	edx, 31					; 0000001fH
	add	eax, edx
	mov	ecx, eax
	sar	esi, 5
	sar	ecx, 5

; 673  : 		if(nLightGridX < 0 || nLightGridX >= LIGHTING_GRID_WIDTH || 
; 674  : 			nLightGridY < 0 || nLightGridY >= LIGHTING_GRID_HEIGHT)

	test	esi, esi
	mov	DWORD PTR _nLightGridX$78882[esp+55500], esi
	jl	$L78877
	cmp	esi, 48					; 00000030H
	jge	$L78877
	test	ecx, ecx
	jl	$L78877
	cmp	ecx, 96					; 00000060H
	jge	$L78877

; 675  : 			continue;
; 676  : 		// 光源所在格子中心的坐标
; 677  : 		int nLightGridCenterX = nLightGridX * LIGHTING_GRID_SIZEX + LIGHTING_GRID_SIZEX / 2;
; 678  : 		int nLightGridCenterY = nLightGridY * LIGHTING_GRID_SIZEY + LIGHTING_GRID_SIZEY / 2;
; 679  : 
; 680  : 		// 获取光源的r，g，b分量
; 681  : 		unsigned int nr, ng, nb;
; 682  : 		if(pLight->m_nRadius == 400)

	mov	eax, DWORD PTR _pLight$78879[esp+55500]
	mov	ebp, ecx
	shl	esi, 5
	mov	edx, DWORD PTR [eax+24]
	add	esi, 16					; 00000010H
	shl	ebp, 5
	add	ebp, 16					; 00000010H
	cmp	edx, 400				; 00000190H
	mov	DWORD PTR -55484+[esp+55500], edx
	jne	SHORT $L78891

; 683  : 			pLight->m_dwColor = 0xffffffff;

	mov	DWORD PTR [eax+20], -1
$L78891:

; 684  : 		nr = (pLight->m_dwColor & 0x00ff0000) >> 18;

	mov	edx, DWORD PTR [eax+20]

; 685  : 		ng = (pLight->m_dwColor & 0x0000ff00) >> 10;
; 686  : 		nb = (pLight->m_dwColor & 0x000000ff) >> 2;
; 687  : 
; 688  : 		float fr = (float)pLight->m_nRadius * (float)pLight->m_nRadius;
; 689  : 
; 690  : 		int j, x, y, gx, gy;
; 691  : 		int nGridRadius = pLight->m_nRadius / LIGHTING_GRID_SIZEX;
; 692  : 
; 693  : 		gy = nLightGridY - (nGridRadius - 1);
; 694  : 		// 从中心点向外扩展计算光照强度
; 695  : 		for(int r=0; r<nGridRadius; r++)

	mov	DWORD PTR _r$78901[esp+55500], 0
	mov	eax, edx
	shr	eax, 18					; 00000012H
	and	eax, 63					; 0000003fH
	mov	DWORD PTR _nr$78888[esp+55500], eax
	mov	eax, edx
	shr	eax, 10					; 0000000aH
	and	eax, 63					; 0000003fH
	shr	edx, 2
	mov	DWORD PTR _ng$78889[esp+55500], eax
	mov	eax, DWORD PTR -55484+[esp+55500]
	and	edx, 63					; 0000003fH
	mov	DWORD PTR _nb$78890[esp+55500], edx
	cdq
	and	edx, 31					; 0000001fH
	add	eax, edx
	sar	eax, 5
	test	eax, eax
	mov	DWORD PTR _nGridRadius$78900[esp+55500], eax
	jle	$L78877
	mov	eax, DWORD PTR _nLightGridX$78882[esp+55500]
	or	edx, -1
	mov	DWORD PTR -55480+[esp+55500], eax
	lea	eax, DWORD PTR [ecx+ecx*2]
	lea	ecx, DWORD PTR [ecx+ecx*2+3]
	mov	DWORD PTR -55476+[esp+55500], edx
	shl	ecx, 4
	mov	DWORD PTR -55440+[esp+55500], ecx
	lea	ecx, DWORD PTR [ebp+32]
	shl	eax, 4
	sub	ebp, esi
	mov	DWORD PTR -55432+[esp+55500], esi
	mov	DWORD PTR -55448+[esp+55500], esi
	mov	DWORD PTR -55468+[esp+55500], eax
	mov	DWORD PTR -55436+[esp+55500], ecx
	mov	DWORD PTR -55400+[esp+55500], ebp
$L78902:

; 698  : 			y = nLightGridCenterY - r * LIGHTING_GRID_SIZEY;

	mov	eax, DWORD PTR -55436+[esp+55500]
	mov	esi, DWORD PTR -55448+[esp+55500]

; 699  : 			gx = nLightGridX - r;

	mov	ecx, DWORD PTR -55480+[esp+55500]
	mov	DWORD PTR _x$78896[esp+55500], esi
	lea	ebp, DWORD PTR [eax-32]

; 700  : 			gy = nLightGridY - r;
; 701  : 			for(j=0; j<(r * 2 + 1); j++)

	lea	eax, DWORD PTR [edx+2]
	test	eax, eax
	mov	DWORD PTR _y$78897[esp+55500], ebp
	mov	DWORD PTR _gx$78898[esp+55500], ecx
	jle	$L78907

; 696  : 		{
; 697  : 			x = nLightGridCenterX - r * LIGHTING_GRID_SIZEX;

	mov	DWORD PTR -55484+[esp+55500], eax
$L78905:

; 702  : 			{
; 703  : 				if(CanLighting(x, y, nLightPosX, nLightPosY))

	mov	edx, DWORD PTR _nLightPosY$78881[esp+55500]
	mov	ecx, ebx
	push	edx
	push	edi
	push	ebp
	push	esi
	call	?CanLighting@KIpoTree@@AAE_NHHHH@Z	; KIpoTree::CanLighting
	test	al, al
	je	$L78908

; 704  : 				{
; 705  : 					float f = sqrt((x - nLightPosX) * (x - nLightPosX) + (y - nLightPosY) * 
; 706  : 							(y - nLightPosY)) / pLight->m_nRadius;

	mov	ecx, esi
	mov	eax, ebp
	mov	ebp, DWORD PTR _nLightPosY$78881[esp+55500]
	sub	ecx, edi
	mov	edx, ecx
	sub	eax, ebp
	imul	edx, ecx
	mov	ecx, eax
	imul	ecx, eax
	add	edx, ecx
	mov	DWORD PTR -55460+[esp+55500], edx
	mov	edx, DWORD PTR _pLight$78879[esp+55500]
	fild	DWORD PTR -55460+[esp+55500]
	fsqrt
	fidiv	DWORD PTR [edx+24]

; 707  : 					if(f > 1.0f)

	fcom	DWORD PTR __real@4@3fff8000000000000000
	fnstsw	ax
	test	ah, 65					; 00000041H
	jne	SHORT $L78910
	fstp	ST(0)

; 708  : 						f = 1.0f;

	fld	DWORD PTR __real@4@3fff8000000000000000
$L78910:

; 709  : 					f = 1.0f - f;
; 710  : 
; 711  : 					nIdx = gy * LIGHTING_GRID_WIDTH + gx;

	mov	eax, DWORD PTR -55440+[esp+55500]
	mov	ecx, DWORD PTR _gx$78898[esp+55500]
	fsubr	DWORD PTR __real@4@3fff8000000000000000
	lea	esi, DWORD PTR [eax+ecx-48]

; 712  : 					pLColor[nIdx].r += (unsigned int)(nr * f);

	mov	eax, DWORD PTR _nr$78888[esp+55500]
	xor	ebp, ebp
	mov	DWORD PTR -55392+[esp+55500], eax
	mov	DWORD PTR -55392+[esp+55504], ebp
	lea	edx, DWORD PTR [esi+esi*2]
	fild	QWORD PTR -55392+[esp+55500]
	lea	edi, DWORD PTR [ebx+edx*4]
	fmul	ST(0), ST(1)
	call	__ftol
	mov	ecx, DWORD PTR [edi+55384]

; 713  : 					pLColor[nIdx].g += (unsigned int)(ng * f);

	mov	DWORD PTR -55336+[esp+55504], ebp
	add	ecx, eax
	mov	DWORD PTR [edi+55384], ecx
	mov	ecx, DWORD PTR _ng$78889[esp+55500]
	mov	DWORD PTR -55336+[esp+55500], ecx
	fild	QWORD PTR -55336+[esp+55500]
	fmul	ST(0), ST(1)
	call	__ftol
	mov	edx, DWORD PTR [edi+55388]

; 714  : 					pLColor[nIdx].b += (unsigned int)(nb * f);

	mov	DWORD PTR -55368+[esp+55504], ebp
	add	edx, eax
	mov	eax, DWORD PTR _nb$78890[esp+55500]
	mov	DWORD PTR -55368+[esp+55500], eax
	mov	DWORD PTR [edi+55388], edx
	fild	QWORD PTR -55368+[esp+55500]
	lea	edx, DWORD PTR [esi+esi*2+13848]
	fmul	ST(0), ST(1)
	lea	esi, DWORD PTR [ebx+edx*4]
	call	__ftol
	mov	ecx, DWORD PTR [esi]
	mov	edi, DWORD PTR _nLightPosX$78880[esp+55500]
	mov	ebp, DWORD PTR _y$78897[esp+55500]
	add	ecx, eax
	mov	DWORD PTR [esi], ecx
	mov	esi, DWORD PTR _x$78896[esp+55500]
	fstp	ST(0)
$L78908:

; 715  : 				}
; 716  : 
; 717  : 				x += LIGHTING_GRID_SIZEX;
; 718  : 				gx += 1;

	mov	ecx, DWORD PTR _gx$78898[esp+55500]
	mov	eax, DWORD PTR -55484+[esp+55500]
	add	esi, 32					; 00000020H
	inc	ecx
	dec	eax
	mov	DWORD PTR _x$78896[esp+55500], esi
	mov	DWORD PTR _gx$78898[esp+55500], ecx
	mov	DWORD PTR -55484+[esp+55500], eax
	jne	$L78905

; 700  : 			gy = nLightGridY - r;
; 701  : 			for(j=0; j<(r * 2 + 1); j++)

	mov	edx, DWORD PTR -55476+[esp+55500]
$L78907:

; 719  : 			}
; 720  : 
; 721  : 			if(r == 0)

	cmp	edx, -1
	je	$L78903

; 725  : 			y = nLightGridCenterY + r * LIGHTING_GRID_SIZEY;

	mov	ecx, DWORD PTR -55400+[esp+55500]
	mov	eax, DWORD PTR -55432+[esp+55500]
	mov	ebp, DWORD PTR -55448+[esp+55500]
	lea	esi, DWORD PTR [ecx+eax]

; 726  : 			gx = nLightGridX - r;

	mov	ecx, DWORD PTR -55480+[esp+55500]

; 727  : 			gy = nLightGridY + r;
; 728  : 			for(j=0; j<(r * 2 + 1); j++)

	lea	eax, DWORD PTR [edx+2]
	mov	DWORD PTR _y$78897[esp+55500], esi
	test	eax, eax
	mov	DWORD PTR _gx$78898[esp+55500], ecx
	jle	$L78917

; 722  : 				continue;
; 723  : 
; 724  : 			x = nLightGridCenterX - r * LIGHTING_GRID_SIZEX;

	mov	DWORD PTR -55484+[esp+55500], eax
$L78915:

; 729  : 			{
; 730  : 				if(CanLighting(x, y, nLightPosX, nLightPosY))

	mov	edx, DWORD PTR _nLightPosY$78881[esp+55500]
	mov	ecx, ebx
	push	edx
	push	edi
	push	esi
	push	ebp
	call	?CanLighting@KIpoTree@@AAE_NHHHH@Z	; KIpoTree::CanLighting
	test	al, al
	je	$L78918

; 731  : 				{
; 732  : 					float f = sqrt((x - nLightPosX) * (x - nLightPosX) + (y - nLightPosY) * 
; 733  : 							(y - nLightPosY)) / pLight->m_nRadius;

	mov	ecx, ebp
	mov	eax, esi
	mov	esi, DWORD PTR _nLightPosY$78881[esp+55500]
	sub	ecx, edi
	mov	edx, ecx
	sub	eax, esi
	imul	edx, ecx
	mov	ecx, eax
	imul	ecx, eax
	add	edx, ecx
	mov	DWORD PTR -55460+[esp+55500], edx
	mov	edx, DWORD PTR _pLight$78879[esp+55500]
	fild	DWORD PTR -55460+[esp+55500]
	fsqrt
	fidiv	DWORD PTR [edx+24]

; 734  : 					if(f > 1.0f)

	fcom	DWORD PTR __real@4@3fff8000000000000000
	fnstsw	ax
	test	ah, 65					; 00000041H
	jne	SHORT $L78920
	fstp	ST(0)

; 735  : 						f = 1.0f;

	fld	DWORD PTR __real@4@3fff8000000000000000
$L78920:

; 736  : 					f = 1.0f - f;
; 737  : 
; 738  : 					nIdx = gy * LIGHTING_GRID_WIDTH + gx;

	mov	eax, DWORD PTR -55468+[esp+55500]
	mov	ecx, DWORD PTR _gx$78898[esp+55500]
	fsubr	DWORD PTR __real@4@3fff8000000000000000
	lea	esi, DWORD PTR [eax+ecx]

; 739  : 					pLColor[nIdx].r += (unsigned int)(nr * f);

	mov	eax, DWORD PTR _nr$78888[esp+55500]
	mov	DWORD PTR -55304+[esp+55500], eax
	mov	DWORD PTR -55304+[esp+55504], 0
	fild	QWORD PTR -55304+[esp+55500]
	lea	edx, DWORD PTR [esi+esi*2]
	fmul	ST(0), ST(1)
	lea	edi, DWORD PTR [ebx+edx*4]
	call	__ftol
	mov	ecx, DWORD PTR [edi+55384]

; 740  : 					pLColor[nIdx].g += (unsigned int)(ng * f);

	mov	DWORD PTR -55352+[esp+55504], 0
	add	ecx, eax
	mov	DWORD PTR [edi+55384], ecx
	mov	ecx, DWORD PTR _ng$78889[esp+55500]
	mov	DWORD PTR -55352+[esp+55500], ecx
	fild	QWORD PTR -55352+[esp+55500]
	fmul	ST(0), ST(1)
	call	__ftol
	mov	edx, DWORD PTR [edi+55388]

; 741  : 					pLColor[nIdx].b += (unsigned int)(nb * f);

	mov	DWORD PTR -55320+[esp+55504], 0
	add	edx, eax
	mov	eax, DWORD PTR _nb$78890[esp+55500]
	mov	DWORD PTR -55320+[esp+55500], eax
	mov	DWORD PTR [edi+55388], edx
	fild	QWORD PTR -55320+[esp+55500]
	lea	edx, DWORD PTR [esi+esi*2+13848]
	fmul	ST(0), ST(1)
	lea	esi, DWORD PTR [ebx+edx*4]
	call	__ftol
	mov	ecx, DWORD PTR [esi]
	mov	edi, DWORD PTR _nLightPosX$78880[esp+55500]
	add	ecx, eax
	mov	DWORD PTR [esi], ecx
	mov	esi, DWORD PTR _y$78897[esp+55500]
	fstp	ST(0)
$L78918:

; 742  : 				}
; 743  : 
; 744  : 				x += LIGHTING_GRID_SIZEX;
; 745  : 				gx += 1;

	mov	ecx, DWORD PTR _gx$78898[esp+55500]
	mov	eax, DWORD PTR -55484+[esp+55500]
	add	ebp, 32					; 00000020H
	inc	ecx
	dec	eax
	mov	DWORD PTR _gx$78898[esp+55500], ecx
	mov	DWORD PTR -55484+[esp+55500], eax
	jne	$L78915

; 727  : 			gy = nLightGridY + r;
; 728  : 			for(j=0; j<(r * 2 + 1); j++)

	mov	edx, DWORD PTR -55476+[esp+55500]
$L78917:

; 746  : 			}
; 747  : 
; 748  : 			x = nLightGridCenterX - r * LIGHTING_GRID_SIZEX;
; 749  : 			y = nLightGridCenterY - (r - 1) * LIGHTING_GRID_SIZEY;

	mov	ebp, DWORD PTR -55436+[esp+55500]

; 750  : 			gx = nLightGridX - r;
; 751  : 			gy = nLightGridY - (r - 1);
; 752  : 			for(j=0; j<(r * 2 - 1); j++)

	test	edx, edx
	jle	$L78926
	mov	ecx, DWORD PTR -55440+[esp+55500]
	mov	eax, DWORD PTR -55480+[esp+55500]
	add	eax, ecx
	mov	DWORD PTR -55484+[esp+55500], edx
	lea	ecx, DWORD PTR [eax+eax*2]
	lea	esi, DWORD PTR [ebx+ecx*4+55388]
$L78924:

; 753  : 			{
; 754  : 				if(CanLighting(x, y, nLightPosX, nLightPosY))

	mov	edx, DWORD PTR _nLightPosY$78881[esp+55500]
	mov	eax, DWORD PTR -55448+[esp+55500]
	push	edx
	push	edi
	push	ebp
	push	eax
	mov	ecx, ebx
	call	?CanLighting@KIpoTree@@AAE_NHHHH@Z	; KIpoTree::CanLighting
	test	al, al
	je	$L78927

; 755  : 				{
; 756  : 					float f = sqrt((x - nLightPosX) * (x - nLightPosX) + (y - nLightPosY) * 
; 757  : 							(y - nLightPosY)) / pLight->m_nRadius;

	mov	ecx, DWORD PTR _nLightPosY$78881[esp+55500]
	mov	eax, ebp
	sub	eax, ecx
	mov	ecx, DWORD PTR -55448+[esp+55500]
	sub	ecx, edi
	mov	edx, ecx
	imul	edx, ecx
	mov	ecx, eax
	imul	ecx, eax
	add	edx, ecx
	mov	DWORD PTR -55460+[esp+55500], edx
	mov	edx, DWORD PTR _pLight$78879[esp+55500]
	fild	DWORD PTR -55460+[esp+55500]
	fsqrt
	fidiv	DWORD PTR [edx+24]

; 758  : 					if(f > 1.0f)

	fcom	DWORD PTR __real@4@3fff8000000000000000
	fnstsw	ax
	test	ah, 65					; 00000041H
	jne	SHORT $L78929
	fstp	ST(0)

; 759  : 						f = 1.0f;

	fld	DWORD PTR __real@4@3fff8000000000000000
$L78929:

; 760  : 					f = 1.0f - f;
; 761  : 
; 762  : 					nIdx = gy * LIGHTING_GRID_WIDTH + gx;
; 763  : 					pLColor[nIdx].r += (unsigned int)(nr * f);

	mov	eax, DWORD PTR _nr$78888[esp+55500]
	mov	DWORD PTR -55384+[esp+55504], 0
	fsubr	DWORD PTR __real@4@3fff8000000000000000
	mov	DWORD PTR -55384+[esp+55500], eax
	fild	QWORD PTR -55384+[esp+55500]
	fmul	ST(0), ST(1)
	call	__ftol
	mov	ecx, DWORD PTR [esi-4]

; 764  : 					pLColor[nIdx].g += (unsigned int)(ng * f);

	mov	DWORD PTR -55376+[esp+55504], 0
	add	ecx, eax
	mov	DWORD PTR [esi-4], ecx
	mov	ecx, DWORD PTR _ng$78889[esp+55500]
	mov	DWORD PTR -55376+[esp+55500], ecx
	fild	QWORD PTR -55376+[esp+55500]
	fmul	ST(0), ST(1)
	call	__ftol
	mov	edx, DWORD PTR [esi]

; 765  : 					pLColor[nIdx].b += (unsigned int)(nb * f);

	mov	DWORD PTR -55360+[esp+55504], 0
	add	edx, eax
	mov	DWORD PTR [esi], edx
	mov	edx, DWORD PTR _nb$78890[esp+55500]
	mov	DWORD PTR -55360+[esp+55500], edx
	fild	QWORD PTR -55360+[esp+55500]
	fmul	ST(0), ST(1)
	call	__ftol
	mov	ecx, DWORD PTR [esi+4]
	add	ecx, eax
	fstp	ST(0)
	mov	DWORD PTR [esi+4], ecx
$L78927:
	mov	eax, DWORD PTR -55484+[esp+55500]

; 766  : 				}
; 767  : 
; 768  : 				y += LIGHTING_GRID_SIZEX;

	add	ebp, 32					; 00000020H

; 769  : 				gy += 1;

	add	esi, 576				; 00000240H
	dec	eax
	mov	DWORD PTR -55484+[esp+55500], eax
	jne	$L78924

; 750  : 			gx = nLightGridX - r;
; 751  : 			gy = nLightGridY - (r - 1);
; 752  : 			for(j=0; j<(r * 2 - 1); j++)

	mov	edx, DWORD PTR -55476+[esp+55500]
$L78926:

; 770  : 			}
; 771  : 
; 772  : 			x = nLightGridCenterX + r * LIGHTING_GRID_SIZEX;
; 773  : 			y = nLightGridCenterY - (r - 1) * LIGHTING_GRID_SIZEY;

	mov	ebp, DWORD PTR -55436+[esp+55500]

; 774  : 			gx = nLightGridX + r;
; 775  : 			gy = nLightGridY - (r - 1);
; 776  : 			for(j=0; j<(r * 2 - 1); j++)

	test	edx, edx
	jle	$L78903
	mov	eax, DWORD PTR -55440+[esp+55500]
	mov	ecx, DWORD PTR _r$78901[esp+55500]
	add	eax, ecx
	mov	ecx, DWORD PTR _nLightGridX$78882[esp+55500]
	add	eax, ecx
	mov	DWORD PTR -55484+[esp+55500], edx
	lea	eax, DWORD PTR [eax+eax*2]
	lea	esi, DWORD PTR [ebx+eax*4+55388]
$L78933:

; 777  : 			{
; 778  : 				if(CanLighting(x, y, nLightPosX, nLightPosY))

	mov	ecx, DWORD PTR _nLightPosY$78881[esp+55500]
	mov	edx, DWORD PTR -55432+[esp+55500]
	push	ecx
	push	edi
	push	ebp
	push	edx
	mov	ecx, ebx
	call	?CanLighting@KIpoTree@@AAE_NHHHH@Z	; KIpoTree::CanLighting
	test	al, al
	je	$L78936

; 779  : 				{
; 780  : 					float f = sqrt((x - nLightPosX) * (x - nLightPosX) + (y - nLightPosY) * 
; 781  : 							(y - nLightPosY)) / pLight->m_nRadius;

	mov	ecx, DWORD PTR _nLightPosY$78881[esp+55500]
	mov	eax, ebp
	sub	eax, ecx
	mov	ecx, DWORD PTR -55432+[esp+55500]
	sub	ecx, edi
	mov	edx, ecx
	imul	edx, ecx
	mov	ecx, eax
	imul	ecx, eax
	add	edx, ecx
	mov	DWORD PTR -55460+[esp+55500], edx
	mov	edx, DWORD PTR _pLight$78879[esp+55500]
	fild	DWORD PTR -55460+[esp+55500]
	fsqrt
	fidiv	DWORD PTR [edx+24]

; 782  : 					if(f > 1.0f)

	fcom	DWORD PTR __real@4@3fff8000000000000000
	fnstsw	ax
	test	ah, 65					; 00000041H
	jne	SHORT $L78938
	fstp	ST(0)

; 783  : 						f = 1.0f;

	fld	DWORD PTR __real@4@3fff8000000000000000
$L78938:

; 784  : 					f = 1.0f - f;
; 785  : 
; 786  : 					nIdx = gy * LIGHTING_GRID_WIDTH + gx;
; 787  : 					pLColor[nIdx].r += (unsigned int)(nr * f);

	mov	eax, DWORD PTR _nr$78888[esp+55500]
	mov	DWORD PTR -55344+[esp+55504], 0
	fsubr	DWORD PTR __real@4@3fff8000000000000000
	mov	DWORD PTR -55344+[esp+55500], eax
	fild	QWORD PTR -55344+[esp+55500]
	fmul	ST(0), ST(1)
	call	__ftol
	mov	ecx, DWORD PTR [esi-4]

; 788  : 					pLColor[nIdx].g += (unsigned int)(ng * f);

	mov	DWORD PTR -55328+[esp+55504], 0
	add	ecx, eax
	mov	DWORD PTR [esi-4], ecx
	mov	ecx, DWORD PTR _ng$78889[esp+55500]
	mov	DWORD PTR -55328+[esp+55500], ecx
	fild	QWORD PTR -55328+[esp+55500]
	fmul	ST(0), ST(1)
	call	__ftol
	mov	edx, DWORD PTR [esi]

; 789  : 					pLColor[nIdx].b += (unsigned int)(nb * f);

	mov	DWORD PTR -55312+[esp+55504], 0
	add	edx, eax
	mov	DWORD PTR [esi], edx
	mov	edx, DWORD PTR _nb$78890[esp+55500]
	mov	DWORD PTR -55312+[esp+55500], edx
	fild	QWORD PTR -55312+[esp+55500]
	fmul	ST(0), ST(1)
	call	__ftol
	mov	ecx, DWORD PTR [esi+4]
	add	ecx, eax
	fstp	ST(0)
	mov	DWORD PTR [esi+4], ecx
$L78936:
	mov	eax, DWORD PTR -55484+[esp+55500]

; 790  : 				}
; 791  : 
; 792  : 				y += LIGHTING_GRID_SIZEX;

	add	ebp, 32					; 00000020H

; 793  : 				gy += 1;

	add	esi, 576				; 00000240H
	dec	eax
	mov	DWORD PTR -55484+[esp+55500], eax
	jne	$L78933

; 774  : 			gx = nLightGridX + r;
; 775  : 			gy = nLightGridY - (r - 1);
; 776  : 			for(j=0; j<(r * 2 - 1); j++)

	mov	edx, DWORD PTR -55476+[esp+55500]
$L78903:

; 685  : 		ng = (pLight->m_dwColor & 0x0000ff00) >> 10;
; 686  : 		nb = (pLight->m_dwColor & 0x000000ff) >> 2;
; 687  : 
; 688  : 		float fr = (float)pLight->m_nRadius * (float)pLight->m_nRadius;
; 689  : 
; 690  : 		int j, x, y, gx, gy;
; 691  : 		int nGridRadius = pLight->m_nRadius / LIGHTING_GRID_SIZEX;
; 692  : 
; 693  : 		gy = nLightGridY - (nGridRadius - 1);
; 694  : 		// 从中心点向外扩展计算光照强度
; 695  : 		for(int r=0; r<nGridRadius; r++)

	mov	esi, DWORD PTR -55468+[esp+55500]
	mov	ebp, DWORD PTR -55432+[esp+55500]
	mov	ecx, 48					; 00000030H
	mov	eax, DWORD PTR _r$78901[esp+55500]
	add	esi, ecx
	inc	eax
	mov	DWORD PTR -55468+[esp+55500], esi
	mov	esi, 32					; 00000020H
	add	ebp, esi
	add	edx, 2
	mov	DWORD PTR -55432+[esp+55500], ebp
	mov	ebp, DWORD PTR -55448+[esp+55500]
	sub	ebp, esi
	mov	DWORD PTR _r$78901[esp+55500], eax
	mov	DWORD PTR -55448+[esp+55500], ebp
	mov	ebp, DWORD PTR -55436+[esp+55500]
	sub	ebp, esi
	mov	esi, DWORD PTR -55440+[esp+55500]
	mov	DWORD PTR -55436+[esp+55500], ebp
	mov	ebp, DWORD PTR -55480+[esp+55500]
	sub	esi, ecx
	mov	ecx, DWORD PTR _nGridRadius$78900[esp+55500]
	dec	ebp
	cmp	eax, ecx
	mov	DWORD PTR -55440+[esp+55500], esi
	mov	DWORD PTR -55480+[esp+55500], ebp
	mov	DWORD PTR -55476+[esp+55500], edx
	jl	$L78902
$L78877:

; 659  : 	}
; 660  : 
; 661  : 	list<KLightBase*>::iterator i;
; 662  : 	// 计算每一个光源的光照结果
; 663  : 	for (i = m_LightList.begin(); i != m_LightList.end(); ++i)

	mov	eax, DWORD PTR _i$[esp+55500]
	mov	ecx, DWORD PTR [ebx+129116]
	mov	eax, DWORD PTR [eax]
	cmp	eax, ecx
	mov	DWORD PTR _i$[esp+55500], eax
	jne	$L81174
$L78878:

; 794  : 			}
; 795  : 		}
; 796  : 	}
; 797  : 
; 798  : 	// 对光照图进行过滤，使阴影边沿平滑
; 799  : 	KLColor *pO, *pL, *pR, *pU, *pD, *pDest;
; 800  : 	for(int m=1; m<LIGHTING_GRID_HEIGHT-1;m++)

	lea	ecx, DWORD PTR _ptp$[esp+56088]
	lea	ebp, DWORD PTR [ebx+55984]
	mov	DWORD PTR -55464+[esp+55500], ecx
	mov	DWORD PTR -55468+[esp+55500], ebp
	mov	DWORD PTR -55444+[esp+55500], 94	; 0000005eH
	jmp	SHORT $L78949
$L81234:
	mov	ebp, DWORD PTR -55468+[esp+55500]
	mov	ecx, DWORD PTR -55464+[esp+55500]
$L78949:

; 801  : 	{
; 802  : 		int nIdx = m * LIGHTING_GRID_WIDTH + 1;
; 803  : 		pDest = ptp + nIdx;
; 804  : 		pO = pLColor + nIdx;
; 805  : 		pL = pO - 1;
; 806  : 		pR = pO + 1;
; 807  : 		pU = pO - LIGHTING_GRID_WIDTH;

	lea	edx, DWORD PTR [ebp-588]

; 808  : 		pD = pO + LIGHTING_GRID_WIDTH;

	lea	eax, DWORD PTR [ebp+564]
	mov	DWORD PTR _pU$[esp+55500], edx
	mov	DWORD PTR _pD$[esp+55500], eax
	mov	edx, ecx
	lea	eax, DWORD PTR _ptp$[esp+55500]
	sub	edx, eax
	lea	edi, DWORD PTR [ebp-24]
	mov	DWORD PTR -55456+[esp+55500], 46	; 0000002eH
	lea	esi, DWORD PTR [edx+ebx+55392]
$L78954:

; 809  : 		for(int n=1; n<LIGHTING_GRID_WIDTH-1;n++)
; 810  : 		{
; 811  : 			pDest->r = (pO->r + pR->r + pL->r + pU->r + pD->r) / 5;

	mov	edx, DWORD PTR [esi-8]
	mov	eax, DWORD PTR [edi]
	add	edx, eax
	mov	eax, DWORD PTR _pD$[esp+55500]
	add	edx, DWORD PTR [eax]
	mov	eax, DWORD PTR _pU$[esp+55500]
	add	edx, DWORD PTR [eax]
	mov	eax, DWORD PTR [ebp]
	add	edx, eax
	mov	eax, -858993459				; cccccccdH
	mul	edx

; 812  : 			pDest->g = (pO->g + pR->g + pL->g + pU->g + pD->g) / 5;

	mov	eax, DWORD PTR _pU$[esp+55500]
	shr	edx, 2
	mov	DWORD PTR [ecx], edx
	mov	edx, DWORD PTR _pD$[esp+55500]
	mov	edx, DWORD PTR [edx+4]
	add	edx, DWORD PTR [eax+4]
	mov	eax, DWORD PTR [ebp+4]
	add	edx, eax
	mov	eax, DWORD PTR [edi+4]
	add	edx, eax
	mov	eax, DWORD PTR [esi-4]
	add	edx, eax
	mov	eax, -858993459				; cccccccdH
	mul	edx

; 813  : 			pDest->b = (pO->b + pR->b + pL->b + pU->b + pD->b) / 5;

	mov	eax, DWORD PTR _pU$[esp+55500]
	shr	edx, 2
	mov	DWORD PTR [ecx+4], edx
	mov	edx, DWORD PTR _pD$[esp+55500]
	mov	edx, DWORD PTR [edx+8]
	add	edx, DWORD PTR [eax+8]
	mov	eax, DWORD PTR [ebp+8]
	add	edx, eax
	mov	eax, DWORD PTR [edi+8]
	add	edx, eax
	mov	eax, DWORD PTR [esi]
	add	edx, eax
	mov	eax, -858993459				; cccccccdH
	mul	edx
	shr	edx, 2
	mov	DWORD PTR [ecx+8], edx

; 814  : 			pDest++, pO++, pL++, pR++, pU++, pD++;

	mov	edx, DWORD PTR _pU$[esp+55500]
	mov	eax, 12					; 0000000cH
	add	edx, eax
	add	ecx, eax
	mov	DWORD PTR _pU$[esp+55500], edx
	mov	edx, DWORD PTR _pD$[esp+55500]
	add	esi, eax
	add	edi, eax
	add	ebp, eax
	add	edx, eax
	mov	eax, DWORD PTR -55456+[esp+55500]
	mov	DWORD PTR _pD$[esp+55500], edx
	dec	eax
	mov	DWORD PTR -55456+[esp+55500], eax
	jne	$L78954
	mov	edx, DWORD PTR -55464+[esp+55500]
	mov	ecx, DWORD PTR -55468+[esp+55500]
	mov	eax, 576				; 00000240H
	add	edx, eax
	add	ecx, eax
	mov	eax, DWORD PTR -55444+[esp+55500]
	mov	DWORD PTR -55464+[esp+55500], edx
	dec	eax
	mov	DWORD PTR -55468+[esp+55500], ecx
	mov	DWORD PTR -55444+[esp+55500], eax
	jne	$L81234

; 815  : 		}
; 816  : 	}
; 817  : 
; 818  : 	// 将r，g，b的值限制在0xff之内，防止色彩错误
; 819  : 	for(j=0; j<LIGHTING_GRID_WIDTH*LIGHTING_GRID_HEIGHT; j++)

	lea	eax, DWORD PTR _ptp$[esp+55504]
	lea	ecx, DWORD PTR [ebx+110680]
	mov	esi, 4608				; 00001200H
$L78957:

; 820  : 	{
; 821  : 		if(ptp[j].r > 0xff)

	mov	edi, DWORD PTR [eax-4]
	mov	edx, 255				; 000000ffH
	cmp	edi, edx
	jbe	SHORT $L78960

; 822  : 			ptp[j].r = 0xff;

	mov	DWORD PTR [eax-4], edx
$L78960:

; 823  : 		if(ptp[j].g > 0xff)

	cmp	DWORD PTR [eax], edx
	jbe	SHORT $L78961

; 824  : 			ptp[j].g = 0xff;

	mov	DWORD PTR [eax], edx
$L78961:

; 825  : 		if(ptp[j].b > 0xff)

	cmp	DWORD PTR [eax+4], edx
	jbe	SHORT $L78962

; 826  : 			ptp[j].b = 0xff;

	mov	DWORD PTR [eax+4], edx
$L78962:

; 827  : 		pLightingArray[j] = 0xff000000 | (ptp[j].r<<16) | (ptp[j].g<<8) | ptp[j].b;

	mov	edx, DWORD PTR [eax-4]
	mov	ebx, DWORD PTR [eax]
	mov	ebp, DWORD PTR [eax+4]
	or	edx, -256				; ffffff00H
	shl	edx, 8
	or	edx, ebx
	add	ecx, 4
	shl	edx, 8
	or	edx, ebp
	add	eax, 12					; 0000000cH
	mov	DWORD PTR [ecx-4], edx
	dec	esi
	jne	SHORT $L78957
	pop	edi
	pop	esi
	pop	ebp
	pop	ebx

; 828  : 	}
; 829  : }

	add	esp, 55484				; 0000d8bcH
	ret	0
?RenderLightMap@KIpoTree@@QAEXXZ ENDP			; KIpoTree::RenderLightMap
_TEXT	ENDS
PUBLIC	__real@4@00000000000000000000
;	COMDAT __real@4@00000000000000000000
; File D:\swrod3\SwordOnline\Sources\Core\Src\Scene\KIpoTree.cpp
CONST	SEGMENT
__real@4@00000000000000000000 DD 000000000r	; 0
CONST	ENDS
;	COMDAT ?CanLighting@KIpoTree@@AAE_NHHHH@Z
_TEXT	SEGMENT
_x1$ = 8
_y1$ = 12
_x2$ = 16
_y2$ = 20
_this$ = -28
_gy2$ = -24
_nObstacle$ = -32
_vDir$ = -16
_vLight$ = -8
_fdx$ = 8
_fdy$ = 20
?CanLighting@KIpoTree@@AAE_NHHHH@Z PROC NEAR		; KIpoTree::CanLighting, COMDAT

; 832  : {

	sub	esp, 32					; 00000020H
	push	ebx
	push	ebp
	push	esi

; 833  : 	int gx1, gy1, gx2, gy2, gStep, gx, gy, nIdx;
; 834  : 	gx1 = x1 / LIGHTING_GRID_SIZEX;

	mov	esi, DWORD PTR _x1$[esp+40]
	mov	eax, esi
	push	edi
	cdq
	and	edx, 31					; 0000001fH
	mov	DWORD PTR _this$[esp+48], ecx
	add	eax, edx
	mov	ebx, eax

; 835  : 	gy1 = y1 / LIGHTING_GRID_SIZEX;

	mov	eax, DWORD PTR _y1$[esp+44]
	cdq
	and	edx, 31					; 0000001fH
	add	eax, edx
	mov	edi, eax

; 836  : 	gx2 = x2 / LIGHTING_GRID_SIZEX;

	mov	eax, DWORD PTR _x2$[esp+44]
	cdq
	and	edx, 31					; 0000001fH
	add	eax, edx
	mov	ebp, eax

; 837  : 	gy2 = y2 / LIGHTING_GRID_SIZEX;

	mov	eax, DWORD PTR _y2$[esp+44]
	cdq
	and	edx, 31					; 0000001fH
	add	edx, eax
	sar	ebx, 5
	sar	ebp, 5
	sar	edi, 5
	sar	edx, 5

; 838  : 	if(gx1 == gx2 && gy1 == gy2)

	cmp	ebx, ebp
	mov	DWORD PTR _gy2$[esp+48], edx
	jne	SHORT $L78978
	cmp	edi, edx
	jne	SHORT $L78978
	pop	edi
	pop	esi
	pop	ebp

; 839  : 		return true;

	mov	al, 1
	pop	ebx

; 940  : 		}
; 941  : 	}
; 942  : }

	add	esp, 32					; 00000020H
	ret	16					; 00000010H
$L78978:

; 840  : 
; 841  : 	int nObstacle = pObstacle[gy1 * LIGHTING_GRID_WIDTH + gx1].nObstacle;

	lea	eax, DWORD PTR [edi+edi*2]
	shl	eax, 4
	add	eax, ebx
	lea	eax, DWORD PTR [eax+eax*2]
	lea	eax, DWORD PTR [ecx+eax*4]
	mov	ecx, DWORD PTR [eax+88]
	mov	DWORD PTR _nObstacle$[esp+48], ecx

; 842  : 	KVector2 vDir = pObstacle[gy1 * LIGHTING_GRID_WIDTH + gx1].vDir;

	mov	ecx, DWORD PTR [eax+92]
	mov	eax, DWORD PTR [eax+96]
	mov	DWORD PTR _vDir$[esp+48], ecx
	mov	DWORD PTR _vDir$[esp+52], eax

; 843  : 	KVector2 vLight;
; 844  : 	vLight.fX = x1 - x2;

	mov	eax, DWORD PTR _x2$[esp+44]
	mov	ecx, esi
	sub	ecx, eax

; 845  : 	vLight.fY = y1 - y2;

	mov	eax, DWORD PTR _y1$[esp+44]
	mov	DWORD PTR -20+[esp+48], ecx
	mov	ecx, DWORD PTR _y2$[esp+44]
	fild	DWORD PTR -20+[esp+48]
	sub	eax, ecx
	mov	DWORD PTR -20+[esp+48], eax
	fstp	DWORD PTR _vLight$[esp+48]
	fild	DWORD PTR -20+[esp+48]
	fstp	DWORD PTR _vLight$[esp+52]

; 846  : 
; 847  : 	float fx1, fy1, fx2, fy2, fdx, fdy, fStepX, fStepY;
; 848  : 	fx1 = x1, fy1 = y1, fx2 = x2, fy2 = y2;

	fild	DWORD PTR _x1$[esp+44]
	fild	DWORD PTR _y1$[esp+44]

; 849  : 	fdx = fabs(fx2 - fx1);

	fild	DWORD PTR _x2$[esp+44]
	fsub	ST(0), ST(2)
	fabs
	fst	DWORD PTR _fdx$[esp+44]

; 850  : 	fdy = fabs(fy2 - fy1);

	fild	DWORD PTR _y2$[esp+44]
	fsub	ST(0), ST(2)
	fabs
	fstp	DWORD PTR _fdy$[esp+44]

; 851  : 
; 852  : 	// 斜率小于45度的情况
; 853  : 	if(fdx >= fdy)

	fcomp	DWORD PTR _fdy$[esp+44]
	fnstsw	ax
	test	ah, 1
	jne	$L78990

; 854  : 	{
; 855  : 		// 计算线段前进累加值
; 856  : 		if(x2 > x1)

	cmp	DWORD PTR _x2$[esp+44], esi
	jle	SHORT $L78991

; 857  : 		{
; 858  : 			gStep = 1;
; 859  : 			fStepX = LIGHTING_GRID_SIZEX;

	fld	DWORD PTR __real@4@40048000000000000000
	mov	edi, 1

; 860  : 		}
; 861  : 		else

	jmp	SHORT $L78992
$L78991:

; 862  : 		{
; 863  : 			gStep = -1;
; 864  : 			fStepX = -LIGHTING_GRID_SIZEX;

	fld	DWORD PTR __real@4@c0048000000000000000
	or	edi, -1
$L78992:

; 865  : 		}
; 866  : 		if(y2 > y1)

	mov	eax, DWORD PTR _y1$[esp+44]

; 867  : 			fStepY = fdy / fdx * LIGHTING_GRID_SIZEX;

	fld	DWORD PTR _fdy$[esp+44]
	fdiv	DWORD PTR _fdx$[esp+44]
	cmp	ecx, eax
	jle	SHORT $L78993
	fmul	DWORD PTR __real@4@40048000000000000000

; 868  : 		else

	jmp	SHORT $L78996
$L78993:

; 869  : 			fStepY = -fdy / fdx * LIGHTING_GRID_SIZEX;

	fmul	DWORD PTR __real@4@c0048000000000000000
$L78996:

; 872  : 		{
; 873  : 			fx1 += fStepX;

	fld	ST(1)
	faddp	ST(4), ST(0)

; 874  : 			fy1 += fStepY;
; 875  : 			gx1 += gStep;

	add	ebx, edi

; 876  : 			if(gx1 == gx2)

	cmp	ebx, ebp
	fld	ST(0)
	faddp	ST(3), ST(0)
	je	SHORT $L81251

; 883  : 					else
; 884  : 						return false;
; 885  : 				}
; 886  : 				else
; 887  : 					return true;
; 888  : 			}
; 889  : 
; 890  : 			gx = ((int)fx1) / LIGHTING_GRID_SIZEX;
; 891  : 			gy = ((int)fy1) / LIGHTING_GRID_SIZEX;
; 892  : 			nIdx = gy * LIGHTING_GRID_WIDTH + gx;

	fld	ST(2)
	call	__ftol
	cdq
	fld	ST(3)
	and	edx, 31					; 0000001fH
	add	eax, edx
	sar	eax, 5
	lea	esi, DWORD PTR [eax+eax*2]
	shl	esi, 4
	call	__ftol
	cdq
	and	edx, 31					; 0000001fH
	add	eax, edx

; 893  : 			// 检查是否碰到挡光障碍
; 894  : 			if(pObstacle[nIdx].nObstacle != 0 && pObstacle[nIdx].nObstacle != nObstacle)

	mov	edx, DWORD PTR _this$[esp+48]
	sar	eax, 5
	add	esi, eax
	lea	ecx, DWORD PTR [esi+esi*2]
	mov	eax, DWORD PTR [edx+ecx*4+88]
	test	eax, eax
	je	SHORT $L78996
	cmp	eax, DWORD PTR _nObstacle$[esp+48]
	jne	$L81250

; 870  : 
; 871  : 		while(1)

	jmp	SHORT $L78996
$L81251:

; 877  : 			{
; 878  : 				// 没有碰到障碍，根据这点本身是否障碍和障碍方向判断是否受光
; 879  : 				if(nObstacle && vDir.fX != 0.0f)

	mov	eax, DWORD PTR _nObstacle$[esp+48]
	fstp	ST(0)
	fstp	ST(0)
	fstp	ST(0)
	test	eax, eax
	fstp	ST(0)
	je	SHORT $L78999
	fld	DWORD PTR _vDir$[esp+48]
	fcomp	DWORD PTR __real@4@00000000000000000000
	fnstsw	ax
	test	ah, 64					; 00000040H
	jne	SHORT $L78999

; 880  : 				{
; 881  : 					if(vDir.fX * vLight.fY - vDir.fY * vLight.fX < 0.0f)

	fld	DWORD PTR _vDir$[esp+48]
	fmul	DWORD PTR _vLight$[esp+52]
	fld	DWORD PTR _vDir$[esp+52]
	fmul	DWORD PTR _vLight$[esp+48]
	fsubp	ST(1), ST(0)
	fcomp	DWORD PTR __real@4@00000000000000000000
	fnstsw	ax
	test	ah, 1
	je	$L79016
$L78999:
	pop	edi
	pop	esi
	pop	ebp

; 882  : 						return true;

	mov	al, 1
	pop	ebx

; 940  : 		}
; 941  : 	}
; 942  : }

	add	esp, 32					; 00000020H
	ret	16					; 00000010H
$L78990:

; 895  : 				return false;
; 896  : 		}
; 897  : 	}
; 898  : 	// 斜率大于45度的情况
; 899  : 	else
; 900  : 	{
; 901  : 		if(y2 > y1)

	cmp	ecx, DWORD PTR _y1$[esp+44]
	jle	SHORT $L79007

; 902  : 		{
; 903  : 			gStep = 1;
; 904  : 			fStepY = LIGHTING_GRID_SIZEX;

	fld	DWORD PTR __real@4@40048000000000000000
	mov	ebx, 1

; 905  : 		}
; 906  : 		else

	jmp	SHORT $L79008
$L79007:

; 907  : 		{
; 908  : 			gStep = -1;
; 909  : 			fStepY = -LIGHTING_GRID_SIZEX;

	fld	DWORD PTR __real@4@c0048000000000000000
	or	ebx, -1
$L79008:

; 910  : 		}
; 911  : 		if(x2 > x1)

	mov	eax, DWORD PTR _x2$[esp+44]

; 912  : 			fStepX = fdx / fdy * LIGHTING_GRID_SIZEX;

	fld	DWORD PTR _fdx$[esp+44]
	fdiv	DWORD PTR _fdy$[esp+44]
	cmp	eax, esi
	jle	SHORT $L79009
	fmul	DWORD PTR __real@4@40048000000000000000

; 913  : 		else

	jmp	SHORT $L79012
$L79009:

; 914  : 			fStepX = -fdx / fdy * LIGHTING_GRID_SIZEX;

	fmul	DWORD PTR __real@4@c0048000000000000000

; 915  : 		while(1)

	jmp	SHORT $L79012
$L81260:
	mov	edx, DWORD PTR _gy2$[esp+48]
$L79012:

; 916  : 		{
; 917  : 			fx1 += fStepX;

	fld	ST(0)
	faddp	ST(4), ST(0)

; 918  : 			fy1 += fStepY;
; 919  : 			gy1 += gStep;

	add	edi, ebx
	fld	ST(1)

; 920  : 			if(gy1 == gy2)

	cmp	edi, edx
	faddp	ST(3), ST(0)
	je	$L81251

; 921  : 			{
; 922  : 				// 没有碰到障碍，根据这点本身是否障碍和障碍方向判断是否受光
; 923  : 				if(nObstacle && vDir.fX != 0.0f)
; 924  : 				{
; 925  : 					if(vDir.fX * vLight.fY - vDir.fY * vLight.fX < 0.0f)
; 926  : 						return true;
; 927  : 					else
; 928  : 						return false;
; 929  : 				}
; 930  : 				else
; 931  : 					return true;
; 932  : 			}
; 933  : 
; 934  : 			gx = ((int)fx1) / LIGHTING_GRID_SIZEX;
; 935  : 			gy = ((int)fy1) / LIGHTING_GRID_SIZEX;
; 936  : 			nIdx = gy * LIGHTING_GRID_WIDTH + gx;

	fld	ST(2)
	call	__ftol
	cdq
	fld	ST(3)
	and	edx, 31					; 0000001fH
	add	eax, edx
	sar	eax, 5
	lea	esi, DWORD PTR [eax+eax*2]
	shl	esi, 4
	call	__ftol
	cdq
	and	edx, 31					; 0000001fH

; 937  : 			// 检查是否碰到挡光障碍
; 938  : 			if(pObstacle[nIdx].nObstacle != 0 && pObstacle[nIdx].nObstacle != nObstacle)

	mov	ecx, DWORD PTR _this$[esp+48]
	add	eax, edx
	sar	eax, 5
	add	esi, eax
	lea	eax, DWORD PTR [esi+esi*2]
	mov	eax, DWORD PTR [ecx+eax*4+88]
	test	eax, eax
	je	SHORT $L81260
	cmp	eax, DWORD PTR _nObstacle$[esp+48]
	je	SHORT $L81260
$L81250:

; 921  : 			{
; 922  : 				// 没有碰到障碍，根据这点本身是否障碍和障碍方向判断是否受光
; 923  : 				if(nObstacle && vDir.fX != 0.0f)
; 924  : 				{
; 925  : 					if(vDir.fX * vLight.fY - vDir.fY * vLight.fX < 0.0f)
; 926  : 						return true;
; 927  : 					else
; 928  : 						return false;
; 929  : 				}
; 930  : 				else
; 931  : 					return true;
; 932  : 			}
; 933  : 
; 934  : 			gx = ((int)fx1) / LIGHTING_GRID_SIZEX;
; 935  : 			gy = ((int)fy1) / LIGHTING_GRID_SIZEX;
; 936  : 			nIdx = gy * LIGHTING_GRID_WIDTH + gx;

	fstp	ST(0)
	fstp	ST(0)
	fstp	ST(0)
	fstp	ST(0)
$L79016:
	pop	edi
	pop	esi
	pop	ebp

; 939  : 				return false;

	xor	al, al
	pop	ebx

; 940  : 		}
; 941  : 	}
; 942  : }

	add	esp, 32					; 00000020H
	ret	16					; 00000010H
?CanLighting@KIpoTree@@AAE_NHHHH@Z ENDP			; KIpoTree::CanLighting
_TEXT	ENDS
PUBLIC	__real@4@3ffee000000000000000
PUBLIC	?AddBuildinLight@KIpoTree@@QAEXPAUKBuildInLightInfo@@H@Z ; KIpoTree::AddBuildinLight
EXTRN	__imp_?g_Random@@YAII@Z:NEAR
;	COMDAT __real@4@3ffee000000000000000
; File D:\Program Files\Microsoft Visual Studio\VC98\INCLUDE\list
CONST	SEGMENT
__real@4@3ffee000000000000000 DD 03f600000r	; 0.875
CONST	ENDS
;	COMDAT ?AddBuildinLight@KIpoTree@@QAEXPAUKBuildInLightInfo@@H@Z
_TEXT	SEGMENT
_pLights$ = 8
_nCount$ = 12
_this$ = -20
_nMinRange$ = -12
_nMaxRange$ = 12
?AddBuildinLight@KIpoTree@@QAEXPAUKBuildInLightInfo@@H@Z PROC NEAR ; KIpoTree::AddBuildinLight, COMDAT

; 945  : {

	sub	esp, 20					; 00000014H

; 946  : 	int nMinRange, nMaxRange;
; 947  : 
; 948  : 	for(int i=0; i<nCount; i++)

	mov	eax, DWORD PTR _nCount$[esp+16]
	mov	DWORD PTR _this$[esp+20], ecx
	test	eax, eax
	jle	$L79032
	mov	ecx, DWORD PTR _pLights$[esp+16]
	push	ebx
	push	ebp
	push	esi
	push	edi
	lea	edi, DWORD PTR [ecx+20]
	mov	DWORD PTR 8+[esp+32], eax
$L79030:

; 949  : 	{
; 950  : 		// 增加一个光源
; 951  : 		KSelfBreathLight *pLight = new KSelfBreathLight;

	push	52					; 00000034H
	call	??2@YAPAXI@Z				; operator new
	add	esp, 4
	test	eax, eax
	je	$L79031
	mov	ecx, eax
	call	??0KSelfBreathLight@@QAE@XZ		; KSelfBreathLight::KSelfBreathLight
	mov	esi, eax

; 952  : 		if(pLight)

	test	esi, esi
	je	$L79031

; 953  : 		{
; 954  : 			// 保证nMaxRange大于nMinRange
; 955  : 			if(pLights[i].nMaxRange >= pLights[i].nMinRange)

	mov	ecx, DWORD PTR [edi]
	mov	edx, DWORD PTR [edi-4]
	cmp	ecx, edx
	jl	SHORT $L79039

; 956  : 				nMaxRange = pLights[i].nMaxRange, nMinRange = pLights[i].nMinRange;

	mov	eax, ecx
	mov	ecx, edx
	mov	DWORD PTR _nMaxRange$[esp+32], eax

; 957  : 			else

	jmp	SHORT $L79040
$L79039:

; 958  : 				nMaxRange = pLights[i].nMinRange, nMinRange = pLights[i].nMaxRange;

	mov	eax, edx
	mov	DWORD PTR _nMaxRange$[esp+32], eax
$L79040:

; 959  : 			// 半径为负值，忽略这个光源
; 960  : 			if(nMinRange < 0)

	test	ecx, ecx
	jl	$L79031

; 961  : 			{
; 962  : 				_ASSERT(0);
; 963  : 				continue;
; 964  : 			}
; 965  : 
; 966  : 			nMinRange = nMaxRange - 8;
; 967  : 
; 968  : 			pLight->m_dwColor = pLights[i].dwColor;

	mov	edx, DWORD PTR [edi-8]

; 969  : 			pLight->m_oPosition.nX = pLights[i].oPos.x;
; 970  : 			pLight->m_oPosition.nY = pLights[i].oPos.y;
; 971  : 			pLight->m_oPosition.nZ = pLights[i].oPos.z;
; 972  : 			pLight->m_nRadius = nMinRange + g_Random(nMaxRange - nMinRange);

	mov	ebp, DWORD PTR __imp_?g_Random@@YAII@Z
	mov	DWORD PTR [esi+20], edx
	mov	ecx, DWORD PTR [edi-20]
	mov	DWORD PTR [esi+8], ecx
	mov	edx, DWORD PTR [edi-16]
	lea	ebx, DWORD PTR [eax-8]
	mov	DWORD PTR [esi+12], edx
	mov	ecx, DWORD PTR [edi-12]
	sub	eax, ebx
	push	eax
	mov	DWORD PTR _nMinRange$[esp+40], ebx
	mov	DWORD PTR [esi+16], ecx
	call	ebp
	add	eax, ebx

; 973  : 			pLight->fRadius = pLight->m_nRadius;
; 974  : 			pLight->m_pParent = NULL;

	xor	ebx, ebx
	mov	DWORD PTR -16+[esp+40], eax

; 975  : 			pLight->fMaxRange = nMaxRange;
; 976  : 			pLight->fMinRange = nMinRange;
; 977  : 			pLight->fCycle = 60;
; 978  : 			pLight->fCycle = pLight->fCycle * 0.875f + g_Random(60 / 4);

	push	15					; 0000000fH
	fild	DWORD PTR -16+[esp+44]
	mov	DWORD PTR [esi+24], eax
	mov	DWORD PTR [esi+4], ebx
	mov	DWORD PTR [esi+40], 1114636288		; 42700000H
	fstp	DWORD PTR [esi+36]
	fild	DWORD PTR _nMaxRange$[esp+40]
	fstp	DWORD PTR [esi+32]
	fild	DWORD PTR _nMinRange$[esp+44]
	fstp	DWORD PTR [esi+28]
	call	ebp
	mov	DWORD PTR -8+[esp+44], eax
	mov	DWORD PTR -8+[esp+48], ebx
	fild	QWORD PTR -8+[esp+44]
	fld	DWORD PTR [esi+40]
	fmul	DWORD PTR __real@4@3ffee000000000000000

; 979  : 			m_LightList.push_back(pLight);

	mov	edx, DWORD PTR _this$[esp+44]
	push	12					; 0000000cH
	faddp	ST(1), ST(0)
	fstp	DWORD PTR [esi+40]
	mov	ebx, DWORD PTR [edx+129116]
	mov	ebp, DWORD PTR [ebx+4]
	call	??2@YAPAXI@Z				; operator new
	add	esp, 12					; 0000000cH
	mov	ecx, ebx
	test	ebx, ebx
	jne	SHORT $L81461
	mov	ecx, eax
$L81461:
	test	ebp, ebp
	mov	DWORD PTR [eax], ecx
	jne	SHORT $L81463
	mov	ebp, eax
$L81463:
	mov	DWORD PTR [eax+4], ebp
	mov	DWORD PTR [ebx+4], eax
	mov	ecx, DWORD PTR [eax+4]
	mov	DWORD PTR [ecx], eax
	add	eax, 8
	test	eax, eax
	je	SHORT $L81488
	mov	DWORD PTR [eax], esi
$L81488:
	mov	eax, DWORD PTR _this$[esp+36]
	inc	DWORD PTR [eax+129120]
$L79031:
	mov	eax, DWORD PTR 8+[esp+32]
	add	edi, 28					; 0000001cH
	dec	eax
	mov	DWORD PTR 8+[esp+32], eax
	jne	$L79030
	pop	edi
	pop	esi
	pop	ebp
	pop	ebx
$L79032:

; 980  : 		}
; 981  : 	}
; 982  : }

	add	esp, 20					; 00000014H
	ret	8
?AddBuildinLight@KIpoTree@@QAEXPAUKBuildInLightInfo@@H@Z ENDP ; KIpoTree::AddBuildinLight
_TEXT	ENDS
;	COMDAT ??1?$list@PAVKLightBase@@V?$allocator@PAVKLightBase@@@std@@@std@@QAE@XZ
_TEXT	SEGMENT
??1?$list@PAVKLightBase@@V?$allocator@PAVKLightBase@@@std@@@std@@QAE@XZ PROC NEAR ; std::list<KLightBase *,std::allocator<KLightBase *> >::~list<KLightBase *,std::allocator<KLightBase *> >, COMDAT

; 151  : 		{erase(begin(), end());

	push	ebx
	push	esi
	push	edi
	mov	edi, ecx
	mov	ebx, DWORD PTR [edi+4]
	mov	esi, DWORD PTR [ebx]
	cmp	esi, ebx
	je	SHORT $L81674
$L81673:
	mov	eax, esi
	mov	esi, DWORD PTR [esi]
	push	eax
	mov	ecx, DWORD PTR [eax+4]
	mov	edx, DWORD PTR [eax]
	mov	DWORD PTR [ecx], edx
	mov	ecx, DWORD PTR [eax]
	mov	edx, DWORD PTR [eax+4]
	mov	DWORD PTR [ecx+4], edx
	call	??3@YAXPAX@Z				; operator delete
	mov	ecx, DWORD PTR [edi+8]
	add	esp, 4
	dec	ecx
	cmp	esi, ebx
	mov	DWORD PTR [edi+8], ecx
	jne	SHORT $L81673
$L81674:

; 152  : 		_Freenode(_Head);

	mov	eax, DWORD PTR [edi+4]
	push	eax
	call	??3@YAXPAX@Z				; operator delete
	add	esp, 4

; 153  : 		_Head = 0, _Size = 0; }

	xor	eax, eax
	mov	DWORD PTR [edi+4], eax
	mov	DWORD PTR [edi+8], eax
	pop	edi
	pop	esi
	pop	ebx
	ret	0
??1?$list@PAVKLightBase@@V?$allocator@PAVKLightBase@@@std@@@std@@QAE@XZ ENDP ; std::list<KLightBase *,std::allocator<KLightBase *> >::~list<KLightBase *,std::allocator<KLightBase *> >
_TEXT	ENDS
END
