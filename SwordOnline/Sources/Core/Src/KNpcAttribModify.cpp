#include "KCore.h"
#include "KNpc.h"
#include "KPlayer.h"
#include "KNpcAttribModify.h"

#ifndef max
#define max(a,b)            (((a) > (b)) ? (a) : (b))
#endif

KNpcAttribModify	g_NpcAttribModify;
KNpcAttribModify::KNpcAttribModify()
{
	ZeroMemory(ProcessFunc, sizeof(ProcessFunc));
	ProcessFunc[magic_physicsresmax_p] = &KNpcAttribModify::PhysicsResMaxP;
	ProcessFunc[magic_coldresmax_p] = &KNpcAttribModify::ColdResMaxP;
	ProcessFunc[magic_fireresmax_p] = &KNpcAttribModify::FireResMaxP;
	ProcessFunc[magic_lightingresmax_p] = &KNpcAttribModify::LightingResMaxP;
	ProcessFunc[magic_poisonresmax_p] = &KNpcAttribModify::PoisonResMaxP;
	ProcessFunc[magic_allresmax_p] = &KNpcAttribModify::AllResMaxP;
	ProcessFunc[magic_lifepotion_v] = &KNpcAttribModify::LifePotionV;
	ProcessFunc[magic_manapotion_v] = &KNpcAttribModify::ManaPotionV;
	ProcessFunc[magic_meleedamagereturn_v] = &KNpcAttribModify::MeleeDamageReturnV;
	ProcessFunc[magic_meleedamagereturn_p] = &KNpcAttribModify::MeleeDamageReturnP;
	ProcessFunc[magic_rangedamagereturn_v] = &KNpcAttribModify::RangeDamageReturnV;
	ProcessFunc[magic_rangedamagereturn_p] = &KNpcAttribModify::RangeDamageReturnP;
	ProcessFunc[magic_damagetomana_p] = &KNpcAttribModify::Damage2ManaP;
	ProcessFunc[magic_adddefense_v] = &KNpcAttribModify::ArmorDefenseV;			// 与装备加防御统一处理
	ProcessFunc[magic_poisonenhance_p] = &KNpcAttribModify::PoisonEnhanceP;
	ProcessFunc[magic_lightingenhance_p] = &KNpcAttribModify::LightingEnhanceP;
	ProcessFunc[magic_fireenhance_p] = &KNpcAttribModify::FireEnhanceP;
	ProcessFunc[magic_coldenhance_p] = &KNpcAttribModify::ColdEnhanceP;
	ProcessFunc[magic_armordefense_v] = &KNpcAttribModify::ArmorDefenseV;
	ProcessFunc[magic_lifemax_v] = &KNpcAttribModify::LifeMaxV;
	ProcessFunc[magic_lifemax_p] = &KNpcAttribModify::LifeMaxP;
	ProcessFunc[magic_life_v] = &KNpcAttribModify::LifeV;
	ProcessFunc[magic_lifereplenish_v] = &KNpcAttribModify::LifeReplenishV;
	ProcessFunc[magic_manamax_v] = &KNpcAttribModify::ManaMaxV;
	ProcessFunc[magic_manamax_p] = &KNpcAttribModify::ManaMaxP;
	ProcessFunc[magic_mana_v] = &KNpcAttribModify::ManaV;
	ProcessFunc[magic_manareplenish_v] = &KNpcAttribModify::ManaReplenishV;
	ProcessFunc[magic_staminamax_v] = &KNpcAttribModify::StaminaMaxV;
	ProcessFunc[magic_staminamax_p] = &KNpcAttribModify::StaminaMaxP;
	ProcessFunc[magic_stamina_v] = &KNpcAttribModify::StaminaV;
	ProcessFunc[magic_staminareplenish_v] = &KNpcAttribModify::StaminaReplenishV;
	ProcessFunc[magic_strength_v] = &KNpcAttribModify::StrengthV;
	ProcessFunc[magic_dexterity_v] = &KNpcAttribModify::DexterityV;
	ProcessFunc[magic_vitality_v] = &KNpcAttribModify::VitalityV;
	ProcessFunc[magic_energy_v] = &KNpcAttribModify::EnergyV;
	ProcessFunc[magic_poisonres_p] = &KNpcAttribModify::PoisonresP;
	ProcessFunc[magic_fireres_p] = &KNpcAttribModify::FireresP;
	ProcessFunc[magic_lightingres_p] = &KNpcAttribModify::LightingresP;
	ProcessFunc[magic_physicsres_p] = &KNpcAttribModify::PhysicsresP;
	ProcessFunc[magic_coldres_p] = &KNpcAttribModify::ColdresP;
	ProcessFunc[magic_freezetimereduce_p] = &KNpcAttribModify::FreezeTimeReduceP;
	ProcessFunc[magic_burntimereduce_p] = &KNpcAttribModify::BurnTimeReduceP;
	ProcessFunc[magic_poisontimereduce_p] = &KNpcAttribModify::PoisonTimeReduceP;
	ProcessFunc[magic_poisondamagereduce_v] = &KNpcAttribModify::PoisonDamageReduceV;
	ProcessFunc[magic_stuntimereduce_p] = &KNpcAttribModify::StunTimeReduceP;
	ProcessFunc[magic_fastwalkrun_p] = &KNpcAttribModify::FastWalkRunP;
	ProcessFunc[magic_visionradius_p] = &KNpcAttribModify::VisionRadiusP;
	ProcessFunc[magic_fasthitrecover_v] = &KNpcAttribModify::FastHitRecoverV;
	ProcessFunc[magic_allres_p] = &KNpcAttribModify::AllresP;
	ProcessFunc[magic_attackrating_v] = &KNpcAttribModify::AttackRatingV;
	ProcessFunc[magic_attackratingenhance_v] = &KNpcAttribModify::AttackRatingV;
	ProcessFunc[magic_attackrating_p] = &KNpcAttribModify::AttackRatingP;
	ProcessFunc[magic_attackratingenhance_p] = &KNpcAttribModify::AttackRatingP;
	ProcessFunc[magic_attackspeed_v] = &KNpcAttribModify::AttackSpeedV;
	ProcessFunc[magic_castspeed_v] = &KNpcAttribModify::CastSpeedV;
	ProcessFunc[magic_addphysicsdamage_v] = &KNpcAttribModify::AddPhysicsDamageV;
	ProcessFunc[magic_addfiredamage_v] = &KNpcAttribModify::AddFireDamageV;
	ProcessFunc[magic_addcolddamage_v] = &KNpcAttribModify::AddColdDamageV;
	ProcessFunc[magic_addlightingdamage_v] = &KNpcAttribModify::AddLightingDamageV;
	ProcessFunc[magic_addpoisondamage_v] = &KNpcAttribModify::AddPoisonDamageV;
	ProcessFunc[magic_addphysicsdamage_p] = &KNpcAttribModify::AddPhysicsDamageP;
	ProcessFunc[magic_slowmissle_b] = &KNpcAttribModify::SlowMissleB;
	ProcessFunc[magic_changecamp_b] = &KNpcAttribModify::ChangeCampV;
	ProcessFunc[magic_physicsarmor_v] = &KNpcAttribModify::PhysicsArmorV;
	ProcessFunc[magic_coldarmor_v] = &KNpcAttribModify::ColdArmorV;
	ProcessFunc[magic_firearmor_v] = &KNpcAttribModify::FireArmorV;
	ProcessFunc[magic_poisonarmor_v] = &KNpcAttribModify::PoisonArmorV;
	ProcessFunc[magic_lightingarmor_v] = &KNpcAttribModify::LightingArmorV;
	ProcessFunc[magic_lucky_v] = &KNpcAttribModify::LuckyV;
	ProcessFunc[magic_steallife_p] = &KNpcAttribModify::StealLifeP;
	ProcessFunc[magic_steallifeenhance_p] = &KNpcAttribModify::StealLifeP;
	ProcessFunc[magic_stealstamina_p] = &KNpcAttribModify::StealStaminaP;
	ProcessFunc[magic_stealstaminaenhance_p] = &KNpcAttribModify::StealStaminaP;
	ProcessFunc[magic_stealmana_p] = &KNpcAttribModify::StealManaP;
	ProcessFunc[magic_stealmanaenhance_p] = &KNpcAttribModify::StealManaP;
	ProcessFunc[magic_allskill_v] = &KNpcAttribModify::AllSkillV;
	ProcessFunc[magic_metalskill_v] = &KNpcAttribModify::MetalSkillV;
	ProcessFunc[magic_woodskill_v] = &KNpcAttribModify::WoodSkillV;
	ProcessFunc[magic_waterskill_v] = &KNpcAttribModify::WaterSkillV;
	ProcessFunc[magic_fireskill_v] = &KNpcAttribModify::FireSkillV;
	ProcessFunc[magic_earthskill_v] = &KNpcAttribModify::EarthSkillV;
	ProcessFunc[magic_knockback_p] = &KNpcAttribModify::KnockBackP;
	ProcessFunc[magic_knockbackenhance_p] = &KNpcAttribModify::KnockBackP;
	ProcessFunc[magic_deadlystrike_p] = &KNpcAttribModify::DeadlyStrikeP;
	ProcessFunc[magic_deadlystrikeenhance_p] = &KNpcAttribModify::DeadlyStrikeP;
	ProcessFunc[magic_badstatustimereduce_v] = &KNpcAttribModify::FatallyStrikeP;
	ProcessFunc[magic_manashield_p] = &KNpcAttribModify::ManaShieldP;
}

KNpcAttribModify::~KNpcAttribModify()
{
}

void KNpcAttribModify::ModifyAttrib(KNpc* pNpc, void* pData)
{
	if (!pData || !pNpc)
		return;

	KMagicAttrib* pMagic = (KMagicAttrib *)pData;

	if (pMagic->nAttribType < 0 || pMagic->nAttribType >= magic_normal_end || NULL == ProcessFunc[pMagic->nAttribType])
		return;
	
	(this->*ProcessFunc[pMagic->nAttribType])(pNpc, pData);
}

void KNpcAttribModify::AddColdDamageV(KNpc* pNpc, void* pData)
{	
#define	defNORMAL_COLD_TIME	60
	KMagicAttrib* pMagic = (KMagicAttrib *)pData;
	pNpc->m_CurrentColdDamage.nValue[0] += pMagic->nValue[0];
	pNpc->m_CurrentColdDamage.nValue[2] += pMagic->nValue[0];
	if (pNpc->m_CurrentColdDamage.nValue[0] > 0 && pNpc->m_CurrentColdDamage.nValue[2] > 0)
		pNpc->m_CurrentColdDamage.nValue[1] = defNORMAL_COLD_TIME;
	else
	{
		pNpc->m_CurrentColdDamage.nValue[0] = 0;
		pNpc->m_CurrentColdDamage.nValue[1] = 0;
		pNpc->m_CurrentColdDamage.nValue[2] = 0;
	}
	g_DebugLog("[VALUE] %s Ice damage increased (%d)", pNpc->Name, pMagic->nValue[0]);
}

void KNpcAttribModify::AddFireDamageV(KNpc* pNpc, void* pData)
{
	KMagicAttrib* pMagic = (KMagicAttrib *)pData;
	pNpc->m_CurrentFireDamage.nValue[0] += pMagic->nValue[0];
	pNpc->m_CurrentFireDamage.nValue[2] += pMagic->nValue[0];
	g_DebugLog("[VALUE] %s Fire damage increased (%d)", pNpc->Name, pMagic->nValue[0]);
}

void KNpcAttribModify::AddLightingDamageV(KNpc* pNpc, void* pData)
{
	KMagicAttrib* pMagic = (KMagicAttrib *)pData;
	pNpc->m_CurrentLightDamage.nValue[0] += pMagic->nValue[0];
	pNpc->m_CurrentLightDamage.nValue[2] += pMagic->nValue[0];
	g_DebugLog("[VALUE] %s Lightning damage increased (%d)", pNpc->Name, pMagic->nValue[0]);
}

void KNpcAttribModify::AddPhysicsDamageP(KNpc* pNpc, void* pData)
{
#define WEAPON_ALL			((MAX_MELEE_WEAPON) + 0)
#define	WEAPON_RANGE_ALL	((MAX_MELEE_WEAPON) + 1)
#define	WEAPON_MELEE_ALL	((MAX_MELEE_WEAPON) + 2)
#define	WEAPON_NONE			((MAX_MELEE_WEAPON) + 3)

	KMagicAttrib* pMagic = (KMagicAttrib *)pData;

	int nType = abs(pMagic->nValue[2]);

	if (nType == WEAPON_ALL)
	{
		for (int i = 0; i < MAX_MELEE_WEAPON; i++)
		{
			pNpc->m_CurrentMeleeEnhance[i] += pMagic->nValue[0];
		}
		pNpc->m_CurrentHandEnhance += pMagic->nValue[0];
		pNpc->m_CurrentRangeEnhance += pMagic->nValue[0];
		g_DebugLog("[VALUE] %s All physical attack increased by %d%%", pNpc->Name, pMagic->nValue[0]);
	}
	else if (nType == WEAPON_RANGE_ALL)
	{
		pNpc->m_CurrentRangeEnhance += pMagic->nValue[0];
		g_DebugLog("[VALUE] %s Ranged physical attack increased by %d%%", pNpc->Name, pMagic->nValue[0]);
	}
	else if (nType == WEAPON_NONE)
	{
		pNpc->m_CurrentHandEnhance += pMagic->nValue[0];
		g_DebugLog("[VALUE] %s Unarmed physical attack increased by %d%%", pNpc->Name, pMagic->nValue[0]);
	}
	else if (nType == WEAPON_MELEE_ALL)
	{
		for (int i = 0; i < MAX_MELEE_WEAPON; i++)
		{
			pNpc->m_CurrentMeleeEnhance[i] += pMagic->nValue[0];
		}
		g_DebugLog("[VALUE] %s Melee physical attack increased by %d%%", pNpc->Name, pMagic->nValue[0]);
	}
	else if (nType >= 0 && nType < MAX_MELEE_WEAPON)
	{
		pNpc->m_CurrentMeleeEnhance[nType] += pMagic->nValue[0];
		g_DebugLog("[VALUE] %s melee weapon %d physical attack increased by %d%%", pNpc->Name, nType, pMagic->nValue[0]);
	}
}

void KNpcAttribModify::AddPoisonDamageV(KNpc* pNpc, void* pData)
{
#define	defPOISON_DAMAGE_TIME		60
#define	defPOISON_DAMAGE_INTERVAL	10
	KMagicAttrib* pMagic = (KMagicAttrib *)pData;
	pNpc->m_CurrentPoisonDamage.nValue[0] += pMagic->nValue[0];

	if (pNpc->m_CurrentPoisonDamage.nValue[0] > 0)
	{
		pNpc->m_CurrentPoisonDamage.nValue[1] = defPOISON_DAMAGE_TIME;//pMagic->nValue[1];
		pNpc->m_CurrentPoisonDamage.nValue[2] = defPOISON_DAMAGE_INTERVAL;//pMagic->nValue[2];
	}
	else
	{
		pNpc->m_CurrentPoisonDamage.nValue[0] = 0;
		pNpc->m_CurrentPoisonDamage.nValue[1] = 0;
		pNpc->m_CurrentPoisonDamage.nValue[2] = 0;
	}	
	g_DebugLog("[VALUE] %s poison state: deals %d damage every %d frames, total duration %d frames", pNpc->Name, pNpc->m_CurrentPoisonDamage.nValue[2], pNpc->m_CurrentPoisonDamage.nValue[0], pNpc->m_CurrentPoisonDamage.nValue[1]);	
}

void KNpcAttribModify::AddPhysicsDamageV(KNpc* pNpc, void* pData)
{
	KMagicAttrib* pMagic = (KMagicAttrib *)pData;
//	pNpc->m_PhysicsDamage.nValue[0] += pMagic->nValue[0];
//	pNpc->m_PhysicsDamage.nValue[2] += pMagic->nValue[0];
	pNpc->m_CurrentAddPhysicsDamage += pMagic->nValue[0];
	g_DebugLog("[VALUE] %s physical damage increased (%d)", pNpc->Name, pMagic->nValue[0]);
}

void KNpcAttribModify::AllresP(KNpc* pNpc, void* pData)
{
	KMagicAttrib* pMagic = (KMagicAttrib *)pData;
	pNpc->m_CurrentFireResist += pMagic->nValue[0];
	pNpc->m_CurrentColdResist += pMagic->nValue[0];
	pNpc->m_CurrentLightResist += pMagic->nValue[0];
	pNpc->m_CurrentPoisonResist += pMagic->nValue[0];
	pNpc->m_CurrentPhysicsResist += pMagic->nValue[0];
	g_DebugLog("[VALUE] %s all resistances increased by %d", pNpc->Name, pMagic->nValue[0]);
}

void KNpcAttribModify::AllSkillV(KNpc* pNpc, void* pData)
{
	KMagicAttrib* pMagic = (KMagicAttrib *)pData;
	g_DebugLog("[VALUE] %s all resistances increased by %d", pNpc->Name, pMagic->nValue[0]);
}

void KNpcAttribModify::AttackRatingP(KNpc* pNpc, void* pData)
{
	KMagicAttrib* pMagic = (KMagicAttrib *)pData;
	pNpc->m_CurrentAttackRating += pNpc->m_AttackRating * pMagic->nValue[0] / 100;
	g_DebugLog("[VALUE] %s hit rate increased by %d%% (%d points)", pNpc->Name, pMagic->nValue[0], pNpc->m_AttackRating * pMagic->nValue[0] / 100);
}

void KNpcAttribModify::AttackRatingV(KNpc* pNpc, void* pData)
{
	KMagicAttrib* pMagic = (KMagicAttrib *)pData;
	pNpc->m_CurrentAttackRating += pMagic->nValue[0];
	g_DebugLog("[VALUE] %s all resistances increased by %d", pNpc->Name, pMagic->nValue[0]);
	
}

void KNpcAttribModify::AttackSpeedV(KNpc* pNpc, void* pData)
{
	KMagicAttrib* pMagic = (KMagicAttrib *)pData;
	pNpc->m_CurrentAttackSpeed += pMagic->nValue[0];
	g_DebugLog("[VALUE] %s attack speed increased by %d", pNpc->Name, pMagic->nValue[0]);
	
}

void KNpcAttribModify::BadStatusTimeReduceV(KNpc* pNpc, void* pData)
{
	KMagicAttrib* pMagic = (KMagicAttrib *)pData;
	return;
}

void KNpcAttribModify::BurnTimeReduceP(KNpc* pNpc, void* pData)
{
	return;
}

void KNpcAttribModify::CastSpeedV(KNpc* pNpc, void* pData)
{
	KMagicAttrib* pMagic = (KMagicAttrib *)pData;
	pNpc->m_CurrentCastSpeed += pMagic->nValue[0];
	g_DebugLog("[VALUE] %s cast speed increased by %d", pNpc->Name, pMagic->nValue[0]);
}

void KNpcAttribModify::ChangeCampV(KNpc* pNpc, void* pData)
{
	KMagicAttrib* pMagic = (KMagicAttrib *)pData;
	if (pNpc->m_Kind != kind_player)
	{
		if (pMagic->nValue[0] > 0 && pMagic->nValue[0] < camp_num)
			pNpc->m_CurrentCamp = pMagic->nValue[0];
		else
			pNpc->m_CurrentCamp = pNpc->m_Camp;
		g_DebugLog("[VALUE] %s current camp changed to %d", pNpc->Name, pMagic->nValue[0]);
	}
	
}

void KNpcAttribModify::ColdArmorV(KNpc* pNpc, void* pData)
{
	KMagicAttrib* pMagic = (KMagicAttrib *)pData;
	if (pMagic->nValue[0] > 0)
	{
		pNpc->m_ColdArmor.nValue[0] = pMagic->nValue[0];
		pNpc->m_ColdArmor.nTime = pMagic->nValue[1];
		g_DebugLog("[VALUE] %s Ice shield set to %d points, lasting %d frames", pNpc->Name, pMagic->nValue[0], pMagic->nValue[1]);	
	}
	else
	{
		pNpc->m_ColdArmor.nValue[0] = 0;
		pNpc->m_ColdArmor.nTime = 0;
		g_DebugLog("[VALUE] %s Ice shield disappeared", pNpc->Name);	
	}
}

void KNpcAttribModify::ColdresP(KNpc* pNpc, void* pData)
{
	KMagicAttrib* pMagic = (KMagicAttrib *)pData;
	pNpc->m_CurrentColdResist += pMagic->nValue[0];
	g_DebugLog("[VALUE] %s cold resistance increased by %d points", pNpc->Name, pMagic->nValue[0]);
}

void KNpcAttribModify::DeadlyStrikeP(KNpc* pNpc, void* pData)
{
	KMagicAttrib* pMagic = (KMagicAttrib *)pData;
	pNpc->m_CurrentDeadlyStrike += pMagic->nValue[0];
	g_DebugLog("[VALUE] %s critical hit chance increased by %d%%", pNpc->Name, pMagic->nValue[0]);
}

void KNpcAttribModify::DexterityV(KNpc* pNpc, void* pData)
{
	KMagicAttrib* pMagic = (KMagicAttrib *)pData;
	if (pNpc->m_Kind != kind_player)
		return;;
	if (pNpc->m_nPlayerIdx <= 0)
		return;
	Player[pNpc->m_nPlayerIdx].ChangeCurDexterity(pMagic->nValue[0]);
	g_DebugLog("[VALUE] %s current dexterity increased by %d points", pNpc->Name, pMagic->nValue[0]);	
}

void KNpcAttribModify::EarthSkillV(KNpc* pNpc, void* pData)
{
	KMagicAttrib* pMagic = (KMagicAttrib *)pData;
	g_DebugLog("[VALUE] %s earth-element skills +%d levels", pNpc->Name, pMagic->nValue[0]);
}

void KNpcAttribModify::EnergyV(KNpc* pNpc, void* pData)
{
	KMagicAttrib* pMagic = (KMagicAttrib *)pData;
	if (pNpc->m_Kind != kind_player)
		return;
	if (pNpc->m_nPlayerIdx <= 0)
		return;
	Player[pNpc->m_nPlayerIdx].ChangeCurEngergy(pMagic->nValue[0]);
	g_DebugLog("[VALUE] %s current energy increased by %d points", pNpc->Name, pMagic->nValue[0]);	
}

void KNpcAttribModify::FastHitRecoverV(KNpc* pNpc, void* pData)
{
	KMagicAttrib* pMagic = (KMagicAttrib *)pData;
	pNpc->m_CurrentHitRecover += pMagic->nValue[0];
	g_DebugLog("[VALUE] %s fast hit recovery increased by %d", pNpc->Name, pMagic->nValue[0]);
}

void KNpcAttribModify::FastWalkRunP(KNpc* pNpc, void* pData)
{
	KMagicAttrib* pMagic = (KMagicAttrib *)pData;
	// 文档要求修改为直接加点数
	pNpc->m_CurrentWalkSpeed += (pNpc->m_WalkSpeed * pMagic->nValue[0]) / 100;
	pNpc->m_CurrentRunSpeed += (pNpc->m_RunSpeed * pMagic->nValue[0]) / 100;
	g_DebugLog("[VALUE] %s movement speed increased by %d%%", pNpc->Name, pMagic->nValue[0]);	
}

void KNpcAttribModify::FireArmorV(KNpc* pNpc, void* pData)
{
	KMagicAttrib* pMagic = (KMagicAttrib *)pData;
	if (pMagic->nValue[0] > 0)
	{
		pNpc->m_FireArmor.nValue[0] = pMagic->nValue[0];
		pNpc->m_FireArmor.nTime = pMagic->nValue[1];
		g_DebugLog("[VALUE] %s fire shield set to %d points, lasting %d frames", pNpc->Name, pMagic->nValue[0], pMagic->nValue[1]);
	}
	else
	{
		pNpc->m_FireArmor.nValue[0] = 0;
		pNpc->m_FireArmor.nTime = 0;
		g_DebugLog("[VALUE] %s fire shield disappeared", pNpc->Name);
	}
}

void KNpcAttribModify::FireSkillV(KNpc* pNpc, void* pData)
{
	KMagicAttrib* pMagic = (KMagicAttrib *)pData;
	g_DebugLog("[VALUE] %s fire-element skills +%d levels", pNpc->Name, pMagic->nValue[0]);
}

void KNpcAttribModify::FreezeTimeReduceP(KNpc* pNpc, void* pData)
{
//	KMagicAttrib* pMagic = (KMagicAttrib *)pData;
//	pNpc->m_FreezeState.nTime *= (100 - pMagic->nValue[0]);
//	pNpc->m_FreezeState.nTime /= 100;
//	if (pNpc->m_FreezeState.nTime <= 0)
//	{
//		pNpc->m_FreezeState.nTime = 0;
//	}
//	g_DebugLog("[数值]%s冰冻时间减少百分之%d", pNpc->Name, pMagic->nValue[0]);
//	装备TODO	
	KMagicAttrib* pMagic = (KMagicAttrib *)pData;
	pNpc->m_CurrentFreezeTimeReducePercent += pMagic->nValue[0];
	g_DebugLog("[VALUE] %s freeze duration reduced by %d%%", pNpc->Name, pMagic->nValue[0]);
}

void KNpcAttribModify::KnockBackP(KNpc* pNpc, void* pData)
{
	KMagicAttrib* pMagic = (KMagicAttrib *)pData;
	pNpc->m_CurrentKnockBack += pMagic->nValue[0];
	g_DebugLog("[VALUE] %s knockback chance increased by %d%%", pNpc->Name, pMagic->nValue[0]);	
}

void KNpcAttribModify::LifeMaxP(KNpc* pNpc, void* pData)
{
	KMagicAttrib* pMagic = (KMagicAttrib *)pData;
	pNpc->m_CurrentLifeMax += pNpc->m_LifeMax * pMagic->nValue[0] / 100;
	g_DebugLog("[VALUE] %s max life increased by %d%% (%d points)", pNpc->Name, pMagic->nValue[0], pNpc->m_LifeMax * pMagic->nValue[0] / 100);	
}

void KNpcAttribModify::LifeMaxV(KNpc* pNpc, void* pData)
{
	KMagicAttrib* pMagic = (KMagicAttrib *)pData;
	pNpc->m_CurrentLifeMax += pMagic->nValue[0];
	g_DebugLog("[VALUE] %s max life increased by %d points", pNpc->Name, pMagic->nValue[0]);
}

void KNpcAttribModify::LifeReplenishV(KNpc* pNpc, void* pData)
{
	KMagicAttrib* pMagic = (KMagicAttrib*)pData;
	pNpc->m_CurrentLifeReplenish += pMagic->nValue[0];
	g_DebugLog("[VALUE] %s life regeneration speed increased by %d points",
		pNpc->Name, pMagic->nValue[0]);
}
void KNpcAttribModify::LifeV(KNpc* pNpc, void* pData)
{
	KMagicAttrib* pMagic = (KMagicAttrib *)pData;
	pNpc->m_CurrentLife += pMagic->nValue[0];
	g_DebugLog("[VALUE] %s life increased by %d points", pNpc->Name, pMagic->nValue[0]);
}

void KNpcAttribModify::LightingArmorV(KNpc* pNpc, void* pData)
{
	KMagicAttrib* pMagic = (KMagicAttrib *)pData;
	if (pMagic->nValue[0] > 0)
	{
		pNpc->m_LightArmor.nValue[0] = pMagic->nValue[0];
		pNpc->m_LightArmor.nTime = pMagic->nValue[1];
		g_DebugLog("[VALUE] %s lightning shield set to %d points, lasting %d frames", pNpc->Name, pMagic->nValue[0], pMagic->nValue[1]);	
	}
	else
	{
		pNpc->m_LightArmor.nValue[0] = 0;
		pNpc->m_LightArmor.nTime = 0;
		g_DebugLog("[VALUE] %s lightning shield disappeared", pNpc->Name);	
	}
}

void KNpcAttribModify::LightingresP(KNpc* pNpc, void* pData)
{
	KMagicAttrib* pMagic = (KMagicAttrib *)pData;
	pNpc->m_CurrentLightResist += pMagic->nValue[0];
	g_DebugLog("[VALUE] %s lightning resistance increased by %d points", pNpc->Name, pMagic->nValue[0]);	
}

void KNpcAttribModify::LuckyV(KNpc* pNpc, void* pData)
{
	KMagicAttrib* pMagic = (KMagicAttrib *)pData;
	if (pNpc->IsPlayer())
	{
		g_DebugLog("[VALUE] %s MF value increased by %d (not implemented)", pNpc->Name, pMagic->nValue[0]);
	}
}

void KNpcAttribModify::ManaMaxP(KNpc* pNpc, void* pData)
{
	KMagicAttrib* pMagic = (KMagicAttrib *)pData;
	pNpc->m_CurrentManaMax += pNpc->m_ManaMax * pMagic->nValue[0] / 100;
	g_DebugLog("[VALUE] %s max mana increased by %d%% (%d points)", pNpc->Name, pMagic->nValue[0], pNpc->m_ManaMax * pMagic->nValue[0] / 100);	
}

void KNpcAttribModify::ManaMaxV(KNpc* pNpc, void* pData)
{
	KMagicAttrib* pMagic = (KMagicAttrib *)pData;
	pNpc->m_CurrentManaMax += pMagic->nValue[0];
	g_DebugLog("[VALUE] %s max mana increased by %d points", pNpc->Name, pMagic->nValue[0]);
}

void KNpcAttribModify::ManaReplenishV(KNpc* pNpc, void* pData)
{
	KMagicAttrib* pMagic = (KMagicAttrib *)pData;
	pNpc->m_CurrentManaReplenish += pMagic->nValue[0];
	g_DebugLog("[VALUE] %s mana regeneration speed increased by %d points", pNpc->Name, pMagic->nValue[0]);
}

void KNpcAttribModify::ManaV(KNpc* pNpc, void* pData)
{
	KMagicAttrib* pMagic = (KMagicAttrib *)pData;
	pNpc->m_CurrentMana += pMagic->nValue[0];
	g_DebugLog("[VALUE] %s mana increased by %d points", pNpc->Name, pMagic->nValue[0]);
}

void KNpcAttribModify::ManaShieldP(KNpc* pNpc, void* pData)
{
	KMagicAttrib* pMagic = (KMagicAttrib *)pData;
	if (pMagic->nValue[0] > 0)
	{
		pNpc->m_ManaShield.nValue[0] = pMagic->nValue[0];
		pNpc->m_ManaShield.nTime = pMagic->nValue[1];
		g_DebugLog("[VALUE] %s mana shield absorbs %d%% damage, lasting %d frames", pNpc->Name, pMagic->nValue[0], pMagic->nValue[1]);	
	}
	else
	{
		pNpc->m_ManaShield.nValue[0] = 0;
		pNpc->m_ManaShield.nTime = 0;
		g_DebugLog("[Value]Damage absorption effect expired");
	}
}

void KNpcAttribModify::MeleeDamageReturnP(KNpc* pNpc, void* pData)
{
	KMagicAttrib* pMagic = (KMagicAttrib *)pData;
	pNpc->m_CurrentMeleeDmgRetPercent += pMagic->nValue[0];
	g_DebugLog("[Value]%s melee physical damage reflection percent increased by %d", pNpc->Name, pMagic->nValue[0]);
}

void KNpcAttribModify::MeleeDamageReturnV(KNpc* pNpc, void* pData)
{
	KMagicAttrib* pMagic = (KMagicAttrib *)pData;
	pNpc->m_CurrentMeleeDmgRet += pMagic->nValue[0];
	g_DebugLog("[Value]%s melee physical damage reflection increased by %d", pNpc->Name, pMagic->nValue[0]);
}

void KNpcAttribModify::MetalSkillV(KNpc* pNpc, void* pData)
{
	KMagicAttrib* pMagic = (KMagicAttrib *)pData;
	g_DebugLog("[Value]%s metal skill level increased by %d (not implemented yet", pNpc->Name, pMagic->nValue[0]);
}

void KNpcAttribModify::PhysicsArmorV(KNpc* pNpc, void* pData)
{
	KMagicAttrib* pMagic = (KMagicAttrib *)pData;
	if (pMagic->nValue[0] > 0)
	{
		pNpc->m_PhysicsArmor.nValue[0] = pMagic->nValue[0];
		pNpc->m_PhysicsArmor.nTime = pMagic->nValue[1];
		g_DebugLog("[Value]%s physical shield changed to %d, duration %d frames", pNpc->Name, pMagic->nValue[0], pMagic->nValue[1]);	
	}
	else
	{
		pNpc->m_PhysicsArmor.nValue[0] = 0;
		pNpc->m_PhysicsArmor.nTime = 0;
		g_DebugLog("[Value]%s physical shield expired", pNpc->Name);	
	}
}

void KNpcAttribModify::PhysicsresP(KNpc* pNpc, void* pData)
{
	KMagicAttrib* pMagic = (KMagicAttrib *)pData;
	pNpc->m_CurrentPhysicsResist += pMagic->nValue[0];
	g_DebugLog("[Value]%s physical resistance increased by %d", pNpc->Name, pMagic->nValue[0]);	
}

void KNpcAttribModify::Damage2ManaP(KNpc* pNpc, void* pData)
{
	KMagicAttrib* pMagic = (KMagicAttrib *)pData;
	pNpc->m_CurrentDamage2Mana += pMagic->nValue[0];
	g_DebugLog("[Value]%s damage-to-mana percent increased by %d", pNpc->Name, pMagic->nValue[0]);	
}

void KNpcAttribModify::PoisonArmorV(KNpc* pNpc, void* pData)
{
	KMagicAttrib* pMagic = (KMagicAttrib *)pData;
	if (pMagic->nValue[0] > 0)
	{
		pNpc->m_PoisonArmor.nValue[0] = pMagic->nValue[0];
		pNpc->m_PoisonArmor.nTime = pMagic->nValue[1];
		g_DebugLog("[Value]%s poison shield changed to %d, duration %d frames", pNpc->Name, pMagic->nValue[0], pMagic->nValue[1]);
	}
	else
	{
		pNpc->m_PoisonArmor.nValue[0] = 0;
		pNpc->m_PoisonArmor.nTime = 0;
		g_DebugLog("[Value]%s poison shield expired", pNpc->Name);
	}
}

void KNpcAttribModify::PoisonDamageReduceV(KNpc* pNpc, void* pData)
{
	KMagicAttrib* pMagic = (KMagicAttrib *)pData;
	pNpc->m_PoisonState.nValue[0] -= pMagic->nValue[0];
	if (pNpc->m_PoisonState.nValue[0] <= 0)
	{
		pNpc->m_PoisonState.nTime = 0;
	}
	g_DebugLog("[Value]%s poison damage reduced by %d", pNpc->Name, pMagic->nValue[0]);
}

void KNpcAttribModify::PoisonresP(KNpc* pNpc, void* pData)
{
	KMagicAttrib* pMagic = (KMagicAttrib *)pData;
	pNpc->m_CurrentPoisonResist += pMagic->nValue[0];
	g_DebugLog("[Value]%s poison resistance increased by %d", pNpc->Name, pMagic->nValue[0]);
}

void KNpcAttribModify::PoisonTimeReduceP(KNpc* pNpc, void* pData)
{
// 装备里，需要修改TODO
//	KMagicAttrib* pMagic = (KMagicAttrib *)pData;
//	pNpc->m_PoisonState.nTime *= (100 - pMagic->nValue[0]);
//	pNpc->m_PoisonState.nTime /= 100;
//	if (pNpc->m_PoisonState.nTime <= 0)
//	{
//		pNpc->m_PoisonState.nTime = 0;
//	}
//	g_DebugLog("[数值]%s中毒时间减少百分之%d", pNpc->Name, pMagic->nValue[0]);	
	KMagicAttrib* pMagic = (KMagicAttrib *)pData;
	pNpc->m_CurrentPoisonTimeReducePercent += pMagic->nValue[0];
	g_DebugLog("[Value]%s poison duration reduced by %d percent", pNpc->Name, pMagic->nValue[0]);	
}

void KNpcAttribModify::RangeDamageReturnV(KNpc* pNpc, void* pData)
{
	KMagicAttrib* pMagic = (KMagicAttrib *)pData;
	pNpc->m_CurrentRangeDmgRet += pMagic->nValue[0];
	g_DebugLog("[Value]%s ranged damage reflection increased by %d", pNpc->Name, pMagic->nValue[0]);
}

void KNpcAttribModify::RangeDamageReturnP(KNpc* pNpc, void* pData)
{
	KMagicAttrib* pMagic = (KMagicAttrib *)pData;
	pNpc->m_CurrentRangeDmgRetPercent += pMagic->nValue[0];
	g_DebugLog("[Value]%s ranged damage reflection percent increased by %d", pNpc->Name, pMagic->nValue[0]);
}

void KNpcAttribModify::SlowMissleB(KNpc* pNpc, void* pData)
{
	KMagicAttrib* pMagic = (KMagicAttrib *)pData;

	if (pMagic->nValue[0] > 0)
		pNpc->m_CurrentSlowMissle = 1;
	else
		pNpc->m_CurrentSlowMissle = 0;
	g_DebugLog("[Value]%s projectile slow state changed to %d", pNpc->Name, pMagic->nValue[0]);
}

void KNpcAttribModify::StaminaMaxP(KNpc* pNpc, void* pData)
{
	KMagicAttrib* pMagic = (KMagicAttrib *)pData;
	pNpc->m_CurrentStaminaMax += pNpc->m_StaminaMax * pMagic->nValue[0] / 100;
	g_DebugLog("[Value]%s stamina max increased by %d%% (%d points)", pNpc->Name, pMagic->nValue[0], pNpc->m_StaminaMax * pMagic->nValue[0] / 100);	
}

void KNpcAttribModify::StaminaMaxV(KNpc* pNpc, void* pData)
{
	KMagicAttrib* pMagic = (KMagicAttrib *)pData;
	pNpc->m_CurrentStaminaMax += pMagic->nValue[0];
	g_DebugLog("[Value]%s stamina max increased by %d", pNpc->Name, pMagic->nValue[0]);
}

void KNpcAttribModify::StaminaReplenishV(KNpc* pNpc, void* pData)
{
	KMagicAttrib* pMagic = (KMagicAttrib *)pData;
	pNpc->m_CurrentStaminaGain += pMagic->nValue[0];
	g_DebugLog("[Value]%s stamina recovery speed increased by %d", pNpc->Name, pMagic->nValue[0]);
}

void KNpcAttribModify::StaminaV(KNpc* pNpc, void* pData)
{
	KMagicAttrib* pMagic = (KMagicAttrib *)pData;
	pNpc->m_CurrentStamina += pMagic->nValue[0];
	g_DebugLog("[Value]%s stamina increased by %d", pNpc->Name, pMagic->nValue[0]);
}


void KNpcAttribModify::StealLifeP(KNpc* pNpc, void* pData)
{
	KMagicAttrib* pMagic = (KMagicAttrib *)pData;
	pNpc->m_CurrentLifeStolen += pMagic->nValue[0];
	g_DebugLog("[Value]%s life steal percent is now %d (increased by %d)", pNpc->Name, pNpc->m_CurrentLifeStolen, pMagic->nValue[0]);	
}

void KNpcAttribModify::StealManaP(KNpc* pNpc, void* pData)
{
	KMagicAttrib* pMagic = (KMagicAttrib *)pData;
	pNpc->m_CurrentManaStolen += pMagic->nValue[0];
	g_DebugLog("[Value]%s mana steal percent is now %d (increased by %d)", pNpc->Name, pNpc->m_CurrentManaStolen, pMagic->nValue[0]);	
}

void KNpcAttribModify::StealStaminaP(KNpc* pNpc, void* pData)
{
	KMagicAttrib* pMagic = (KMagicAttrib *)pData;
	pNpc->m_CurrentStaminaStolen += pMagic->nValue[0];
	g_DebugLog("[Value]%s stamina steal percent is now %d (increased by %d)", pNpc->Name, pNpc->m_CurrentStaminaStolen, pMagic->nValue[0]);	
}

void KNpcAttribModify::StrengthV(KNpc* pNpc, void* pData)
{
	KMagicAttrib* pMagic = (KMagicAttrib *)pData;
	if (pNpc->m_Kind != kind_player)
		return;
	if (pNpc->m_nPlayerIdx <= 0)
		return;
	Player[pNpc->m_nPlayerIdx].ChangeCurStrength(pMagic->nValue[0]);
	g_DebugLog("[Value]%s current strength increased by %d", pNpc->Name, pMagic->nValue[0]);
}

void KNpcAttribModify::StunTimeReduceP(KNpc* pNpc, void* pData)
{
// 装备，需要修改TODO
//	KMagicAttrib* pMagic = (KMagicAttrib *)pData;
//	pNpc->m_StunState.nTime -= pMagic->nValue[0];
//	if (pNpc->m_StunState.nTime <= 0)
//	{
//		pNpc->m_StunState.nTime = 0;
//	}
//	g_DebugLog("[数值]%s眩晕时间减少%d", pNpc->Name, pMagic->nValue[0]);	
	KMagicAttrib* pMagic = (KMagicAttrib *)pData;
	pNpc->m_CurrentStunTimeReducePercent += pMagic->nValue[0];
	g_DebugLog("[Value]%s stun duration reduced by %d", pNpc->Name, pMagic->nValue[0]);
}

void KNpcAttribModify::VisionRadiusP(KNpc* pNpc, void* pData)
{
	KMagicAttrib* pMagic = (KMagicAttrib *)pData;
	pNpc->m_CurrentVisionRadius += pMagic->nValue[0];
	g_DebugLog("[Value]%s vision radius increased by %d", pNpc->Name, pMagic->nValue[0]);	
}

void KNpcAttribModify::VitalityV(KNpc* pNpc, void* pData)
{
	KMagicAttrib* pMagic = (KMagicAttrib *)pData;
	if (pNpc->m_Kind != kind_player)
		return;
	if (pNpc->m_nPlayerIdx <= 0)
		return;
	Player[pNpc->m_nPlayerIdx].ChangeCurVitality(pMagic->nValue[0]);
	g_DebugLog("[Value]%s current vitality increased by %d", pNpc->Name, pMagic->nValue[0]);
}

void KNpcAttribModify::WaterSkillV(KNpc* pNpc, void* pData)
{
	KMagicAttrib* pMagic = (KMagicAttrib *)pData;
	g_DebugLog("[Value]%s water skill level increased by %d (not implemented)", pNpc->Name, pMagic->nValue[0]);
}

void KNpcAttribModify::WoodSkillV(KNpc* pNpc, void* pData)
{
	KMagicAttrib* pMagic = (KMagicAttrib *)pData;
	g_DebugLog("[Value]%s wood skill level increased by %d (not implemented)", pNpc->Name, pMagic->nValue[0]);	
}

void KNpcAttribModify::FireresP(KNpc* pNpc, void* pData)
{
	KMagicAttrib* pMagic = (KMagicAttrib *)pData;
	pNpc->m_CurrentFireResist += pMagic->nValue[0];
	g_DebugLog("[Value]%s fire resistance increased by %d", pNpc->Name, pMagic->nValue[0]);
}

void KNpcAttribModify::ArmorDefenseV(KNpc* pNpc, void* pData)
{
	KMagicAttrib* pMagic = (KMagicAttrib *)pData;
	pNpc->m_CurrentDefend += pMagic->nValue[0];
	g_DebugLog("[Value]%s defense increased by %d", pNpc->Name, pMagic->nValue[0]);
}

void KNpcAttribModify::ColdEnhanceP(KNpc* pNpc, void* pData)
{
	KMagicAttrib* pMagic = (KMagicAttrib *)pData;
	pNpc->m_CurrentColdEnhance += pMagic->nValue[0];
	g_DebugLog("[Value]%s cold damage enhance increased by %d", pNpc->Name, pMagic->nValue[0]);
}

void KNpcAttribModify::FireEnhanceP(KNpc* pNpc, void* pData)
{
	KMagicAttrib* pMagic = (KMagicAttrib *)pData;
	pNpc->m_CurrentFireEnhance += pMagic->nValue[0];
	g_DebugLog("[Value]%s fire damage enhance increased by %d", pNpc->Name, pMagic->nValue[0]);
}

void KNpcAttribModify::LightingEnhanceP(KNpc* pNpc, void* pData)
{
	KMagicAttrib* pMagic = (KMagicAttrib *)pData;
	pNpc->m_CurrentLightEnhance += pMagic->nValue[0];
	g_DebugLog("[Value]%s lightning damage enhance increased by %d", pNpc->Name, pMagic->nValue[0]);
}

void KNpcAttribModify::PoisonEnhanceP(KNpc* pNpc, void* pData)
{
	KMagicAttrib* pMagic = (KMagicAttrib *)pData;
	pNpc->m_CurrentPoisonEnhance += pMagic->nValue[0];
	g_DebugLog("[Value]%s poison damage enhance increased by %d", pNpc->Name, pMagic->nValue[0]);
}

void KNpcAttribModify::LifePotionV(KNpc* pNpc, void* pData)
{
	KMagicAttrib* pMagic = (KMagicAttrib *)pData;

	if (pMagic->nValue[1] <= 0)
		return;
	int nX1, nY1, nX2, nY2;
	nX1 = pNpc->m_LifeState.nValue[0];
	nY1 = pNpc->m_LifeState.nTime;
	nX2 = pMagic->nValue[0];
	nY2 = pMagic->nValue[1];
	pNpc->m_LifeState.nTime = max(nY1, nY2);
	// 传入参数保证时间大于零，所以最大值一定大于零，所以不用判断除零
	pNpc->m_LifeState.nValue[0] = (nX1 * nY1 + nX2 * nY2) / pNpc->m_LifeState.nTime;
	g_DebugLog("[Value]%s drank a health potion, gains the effect: recover %d HP every 10 frames for %d frames", pNpc->Name,
		pNpc->m_LifeState.nTime, 
		pNpc->m_LifeState.nValue[0]);
}

void KNpcAttribModify::ManaPotionV(KNpc* pNpc, void* pData)
{
	KMagicAttrib* pMagic = (KMagicAttrib *)pData;

	if (pMagic->nValue[1] <= 0)
		return;
	int nX1, nY1, nX2, nY2;
	nX1 = pNpc->m_ManaState.nValue[0];
	nY1 = pNpc->m_ManaState.nTime;
	nX2 = pMagic->nValue[0];
	nY2 = pMagic->nValue[1];
	pNpc->m_ManaState.nTime = max(nY1, nY2);
	// 传入参数保证时间大于零，所以最大值一定大于零，所以不用判断除零
	pNpc->m_ManaState.nValue[0] = (nX1 * nY1 + nX2 * nY2) / pNpc->m_ManaState.nTime;
	g_DebugLog("[Value]%s drank a mana potion, gains the effect: recover %d mana every 10 frames for %d frames", pNpc->Name,
		pNpc->m_ManaState.nTime, 
		pNpc->m_ManaState.nValue[0]);
}

void KNpcAttribModify::PhysicsResMaxP(KNpc* pNpc, void* pData)
{
	KMagicAttrib* pMagic = (KMagicAttrib *)pData;

	pNpc->m_CurrentPhysicsResistMax += pMagic->nValue[0];
	g_DebugLog("[Value]%s max physical resistance increased by %d", pNpc->Name, pMagic->nValue[0]);	
}

void KNpcAttribModify::ColdResMaxP(KNpc* pNpc, void* pData)
{
	KMagicAttrib* pMagic = (KMagicAttrib *)pData;
	pNpc->m_CurrentColdResistMax += pMagic->nValue[0];
	g_DebugLog("[Value]%s max cold resistance increased by %d", pNpc->Name, pMagic->nValue[0]);	
}

void KNpcAttribModify::FireResMaxP(KNpc* pNpc, void* pData)
{
	KMagicAttrib* pMagic = (KMagicAttrib *)pData;
	pNpc->m_CurrentFireResistMax += pMagic->nValue[0];
	g_DebugLog("[Value]%s fire resistance max increased by %d", pNpc->Name, pMagic->nValue[0]);	
}

void KNpcAttribModify::LightingResMaxP(KNpc* pNpc, void* pData)
{
	KMagicAttrib* pMagic = (KMagicAttrib *)pData;
	pNpc->m_CurrentLightResistMax += pMagic->nValue[0];
	g_DebugLog("[Value]%s lightning resistance max increased by %d", pNpc->Name, pMagic->nValue[0]);	
}

void KNpcAttribModify::PoisonResMaxP(KNpc* pNpc, void* pData)
{
	KMagicAttrib* pMagic = (KMagicAttrib *)pData;
	pNpc->m_CurrentPoisonResistMax += pMagic->nValue[0];
	g_DebugLog("[Value]%s poison resistance max increased by %d", pNpc->Name, pMagic->nValue[0]);	
}

void KNpcAttribModify::AllResMaxP(KNpc* pNpc, void* pData)
{
	KMagicAttrib* pMagic = (KMagicAttrib *)pData;
	pNpc->m_CurrentFireResistMax += pMagic->nValue[0];
	pNpc->m_CurrentColdResistMax += pMagic->nValue[0];
	pNpc->m_CurrentLightResistMax += pMagic->nValue[0];
	pNpc->m_CurrentPoisonResistMax += pMagic->nValue[0];
	pNpc->m_CurrentPhysicsResistMax += pMagic->nValue[0];
	g_DebugLog("[Value]%s five resistance max increased by %d", pNpc->Name, pMagic->nValue[0]);
}

void KNpcAttribModify::FatallyStrikeP(KNpc* pNpc, void* pData)
{
}

void KNpcAttribModify::MixPoisonDamage(KMagicAttrib* pDes, KMagicAttrib* pSrc)
{
	int d1, d2, t1, t2, c1, c2;
	d1 = pDes->nValue[0];
	d2 = pSrc->nValue[0];
	t1 = pDes->nValue[1];
	t2 = pSrc->nValue[1];
	c1 = pDes->nValue[2];
	c2 = pSrc->nValue[2];
	if (c1 == 0 || d1 == 0)
	{
		memcpy(pDes, pSrc, sizeof(KMagicAttrib));
		return;
	}
	if (c2 == 0 || d2 == 0)
	{
		return;
	}
	pDes->nValue[0] = ((c1 + c2) * d1 / c1 + (c1 + c2) * d2 / c2) / 2;
	pDes->nValue[1] = (t1 * d1 * c2 + t2 *d2 * c1) /(d1 * c2 + d2 * c1);
	pDes->nValue[2] = (c1 + c2) / 2;
}
