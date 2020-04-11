local GarrisonConstants =
{
	Tables =
	{
		{
			Name = "FollowerAbilityCastResult",
			Type = "Enumeration",
			NumValues = 15,
			MinValue = 0,
			MaxValue = 14,
			Fields =
			{
				{ Name = "Success", Type = "FollowerAbilityCastResult", EnumValue = 0 },
				{ Name = "Failure", Type = "FollowerAbilityCastResult", EnumValue = 1 },
				{ Name = "NoPendingCast", Type = "FollowerAbilityCastResult", EnumValue = 2 },
				{ Name = "InvalidTarget", Type = "FollowerAbilityCastResult", EnumValue = 3 },
				{ Name = "InvalidFollowerSpell", Type = "FollowerAbilityCastResult", EnumValue = 4 },
				{ Name = "RerollNotAllowed", Type = "FollowerAbilityCastResult", EnumValue = 5 },
				{ Name = "SingleMissionDuration", Type = "FollowerAbilityCastResult", EnumValue = 6 },
				{ Name = "MustTargetFollower", Type = "FollowerAbilityCastResult", EnumValue = 7 },
				{ Name = "MustTargetTrait", Type = "FollowerAbilityCastResult", EnumValue = 8 },
				{ Name = "InvalidFollowerType", Type = "FollowerAbilityCastResult", EnumValue = 9 },
				{ Name = "MustBeUnique", Type = "FollowerAbilityCastResult", EnumValue = 10 },
				{ Name = "CannotTargetLimitedUseFollower", Type = "FollowerAbilityCastResult", EnumValue = 11 },
				{ Name = "MustTargetLimitedUseFollower", Type = "FollowerAbilityCastResult", EnumValue = 12 },
				{ Name = "AlreadyAtMaxDurability", Type = "FollowerAbilityCastResult", EnumValue = 13 },
				{ Name = "CannotTargetNonAutoMissionFollower", Type = "FollowerAbilityCastResult", EnumValue = 14 },
			},
		},
		{
			Name = "GarrAutoBoardIndex",
			Type = "Enumeration",
			NumValues = 14,
			MinValue = -1,
			MaxValue = 12,
			Fields =
			{
				{ Name = "None", Type = "GarrAutoBoardIndex", EnumValue = -1 },
				{ Name = "AllyLeftBack", Type = "GarrAutoBoardIndex", EnumValue = 0 },
				{ Name = "AllyRightBack", Type = "GarrAutoBoardIndex", EnumValue = 1 },
				{ Name = "AllyLeftFront", Type = "GarrAutoBoardIndex", EnumValue = 2 },
				{ Name = "AllyCenterFront", Type = "GarrAutoBoardIndex", EnumValue = 3 },
				{ Name = "AllyRightFront", Type = "GarrAutoBoardIndex", EnumValue = 4 },
				{ Name = "EnemyLeftFront", Type = "GarrAutoBoardIndex", EnumValue = 5 },
				{ Name = "EnemyCenterLeftFront", Type = "GarrAutoBoardIndex", EnumValue = 6 },
				{ Name = "EnemyCenterRightFront", Type = "GarrAutoBoardIndex", EnumValue = 7 },
				{ Name = "EnemyRightFront", Type = "GarrAutoBoardIndex", EnumValue = 8 },
				{ Name = "EnemyLeftBack", Type = "GarrAutoBoardIndex", EnumValue = 9 },
				{ Name = "EnemyCenterLeftBack", Type = "GarrAutoBoardIndex", EnumValue = 10 },
				{ Name = "EnemyCenterRightBack", Type = "GarrAutoBoardIndex", EnumValue = 11 },
				{ Name = "EnemyRightBack", Type = "GarrAutoBoardIndex", EnumValue = 12 },
			},
		},
		{
			Name = "GarrAutoEventFlags",
			Type = "Enumeration",
			NumValues = 4,
			MinValue = 0,
			MaxValue = 4,
			Fields =
			{
				{ Name = "None", Type = "GarrAutoEventFlags", EnumValue = 0 },
				{ Name = "AutoAttack", Type = "GarrAutoEventFlags", EnumValue = 1 },
				{ Name = "Passive", Type = "GarrAutoEventFlags", EnumValue = 2 },
				{ Name = "Environment", Type = "GarrAutoEventFlags", EnumValue = 4 },
			},
		},
		{
			Name = "GarrAutoMissionEventType",
			Type = "Enumeration",
			NumValues = 9,
			MinValue = 0,
			MaxValue = 8,
			Fields =
			{
				{ Name = "MeleeDamage", Type = "GarrAutoMissionEventType", EnumValue = 0 },
				{ Name = "RangeDamage", Type = "GarrAutoMissionEventType", EnumValue = 1 },
				{ Name = "SpellDamage", Type = "GarrAutoMissionEventType", EnumValue = 2 },
				{ Name = "Heal", Type = "GarrAutoMissionEventType", EnumValue = 3 },
				{ Name = "PeriodicDamage", Type = "GarrAutoMissionEventType", EnumValue = 4 },
				{ Name = "PeriodicHeal", Type = "GarrAutoMissionEventType", EnumValue = 5 },
				{ Name = "ApplyAura", Type = "GarrAutoMissionEventType", EnumValue = 6 },
				{ Name = "RemoveAura", Type = "GarrAutoMissionEventType", EnumValue = 7 },
				{ Name = "Died", Type = "GarrAutoMissionEventType", EnumValue = 8 },
			},
		},
		{
			Name = "GarrFollowerMissionCompleteState",
			Type = "Enumeration",
			NumValues = 4,
			MinValue = 0,
			MaxValue = 3,
			Fields =
			{
				{ Name = "Alive", Type = "GarrFollowerMissionCompleteState", EnumValue = 0 },
				{ Name = "KilledByMissionFailure", Type = "GarrFollowerMissionCompleteState", EnumValue = 1 },
				{ Name = "SavedByPreventDeath", Type = "GarrFollowerMissionCompleteState", EnumValue = 2 },
				{ Name = "OutOfDurability", Type = "GarrFollowerMissionCompleteState", EnumValue = 3 },
			},
		},
		{
			Name = "GarrFollowerQuality",
			Type = "Enumeration",
			NumValues = 6,
			MinValue = 1,
			MaxValue = 6,
			Fields =
			{
				{ Name = "Common", Type = "GarrFollowerQuality", EnumValue = 1 },
				{ Name = "Uncommon", Type = "GarrFollowerQuality", EnumValue = 2 },
				{ Name = "Rare", Type = "GarrFollowerQuality", EnumValue = 3 },
				{ Name = "Epic", Type = "GarrFollowerQuality", EnumValue = 4 },
				{ Name = "Legendary", Type = "GarrFollowerQuality", EnumValue = 5 },
				{ Name = "Title", Type = "GarrFollowerQuality", EnumValue = 6 },
			},
		},
		{
			Name = "GarrTalentCostType",
			Type = "Enumeration",
			NumValues = 2,
			MinValue = 0,
			MaxValue = 1,
			Fields =
			{
				{ Name = "Initial", Type = "GarrTalentCostType", EnumValue = 0 },
				{ Name = "Respec", Type = "GarrTalentCostType", EnumValue = 1 },
			},
		},
		{
			Name = "GarrTalentFeatureSubtype",
			Type = "Enumeration",
			NumValues = 5,
			MinValue = 0,
			MaxValue = 4,
			Fields =
			{
				{ Name = "Generic", Type = "GarrTalentFeatureSubtype", EnumValue = 0 },
				{ Name = "Bastion", Type = "GarrTalentFeatureSubtype", EnumValue = 1 },
				{ Name = "Revendreth", Type = "GarrTalentFeatureSubtype", EnumValue = 2 },
				{ Name = "Maldraxxus", Type = "GarrTalentFeatureSubtype", EnumValue = 3 },
				{ Name = "Ardenweald", Type = "GarrTalentFeatureSubtype", EnumValue = 4 },
			},
		},
		{
			Name = "GarrTalentFeatureType",
			Type = "Enumeration",
			NumValues = 7,
			MinValue = 0,
			MaxValue = 6,
			Fields =
			{
				{ Name = "Generic", Type = "GarrTalentFeatureType", EnumValue = 0 },
				{ Name = "AnimaDiversion", Type = "GarrTalentFeatureType", EnumValue = 1 },
				{ Name = "TravelPortals", Type = "GarrTalentFeatureType", EnumValue = 2 },
				{ Name = "Adventures", Type = "GarrTalentFeatureType", EnumValue = 3 },
				{ Name = "ReservoirUpgrades", Type = "GarrTalentFeatureType", EnumValue = 4 },
				{ Name = "SanctumUnique", Type = "GarrTalentFeatureType", EnumValue = 5 },
				{ Name = "SoulBinds", Type = "GarrTalentFeatureType", EnumValue = 6 },
			},
		},
		{
			Name = "GarrTalentResearchCostSource",
			Type = "Enumeration",
			NumValues = 2,
			MinValue = 0,
			MaxValue = 1,
			Fields =
			{
				{ Name = "Talent", Type = "GarrTalentResearchCostSource", EnumValue = 0 },
				{ Name = "Tree", Type = "GarrTalentResearchCostSource", EnumValue = 1 },
			},
		},
		{
			Name = "GarrTalentTreeType",
			Type = "Enumeration",
			NumValues = 2,
			MinValue = 0,
			MaxValue = 1,
			Fields =
			{
				{ Name = "Tiers", Type = "GarrTalentTreeType", EnumValue = 0 },
				{ Name = "Classic", Type = "GarrTalentTreeType", EnumValue = 1 },
			},
		},
		{
			Name = "GarrTalentType",
			Type = "Enumeration",
			NumValues = 4,
			MinValue = 0,
			MaxValue = 3,
			Fields =
			{
				{ Name = "Standard", Type = "GarrTalentType", EnumValue = 0 },
				{ Name = "Minor", Type = "GarrTalentType", EnumValue = 1 },
				{ Name = "Major", Type = "GarrTalentType", EnumValue = 2 },
				{ Name = "Socket", Type = "GarrTalentType", EnumValue = 3 },
			},
		},
		{
			Name = "GarrTalentUI",
			Type = "Enumeration",
			NumValues = 3,
			MinValue = 0,
			MaxValue = 2,
			Fields =
			{
				{ Name = "Generic", Type = "GarrTalentUI", EnumValue = 0 },
				{ Name = "CovenantSanctum", Type = "GarrTalentUI", EnumValue = 1 },
				{ Name = "SoulBinds", Type = "GarrTalentUI", EnumValue = 2 },
			},
		},
		{
			Name = "GarrisonFollowerType",
			Type = "Enumeration",
			NumValues = 5,
			MinValue = 1,
			MaxValue = 123,
			Fields =
			{
				{ Name = "FollowerType_6_0", Type = "GarrisonFollowerType", EnumValue = 1 },
				{ Name = "FollowerType_6_2", Type = "GarrisonFollowerType", EnumValue = 2 },
				{ Name = "FollowerType_7_0", Type = "GarrisonFollowerType", EnumValue = 4 },
				{ Name = "FollowerType_8_0", Type = "GarrisonFollowerType", EnumValue = 22 },
				{ Name = "FollowerType_9_0", Type = "GarrisonFollowerType", EnumValue = 123 },
			},
		},
		{
			Name = "GarrisonTalentAvailability",
			Type = "Enumeration",
			NumValues = 9,
			MinValue = 0,
			MaxValue = 8,
			Fields =
			{
				{ Name = "Available", Type = "GarrisonTalentAvailability", EnumValue = 0 },
				{ Name = "Unavailable", Type = "GarrisonTalentAvailability", EnumValue = 1 },
				{ Name = "UnavailableAnotherIsResearching", Type = "GarrisonTalentAvailability", EnumValue = 2 },
				{ Name = "UnavailableNotEnoughResources", Type = "GarrisonTalentAvailability", EnumValue = 3 },
				{ Name = "UnavailableNotEnoughGold", Type = "GarrisonTalentAvailability", EnumValue = 4 },
				{ Name = "UnavailableTierUnavailable", Type = "GarrisonTalentAvailability", EnumValue = 5 },
				{ Name = "UnavailablePlayerCondition", Type = "GarrisonTalentAvailability", EnumValue = 6 },
				{ Name = "UnavailableAlreadyHave", Type = "GarrisonTalentAvailability", EnumValue = 7 },
				{ Name = "UnavailableRequiresPrerequisiteTalent", Type = "GarrisonTalentAvailability", EnumValue = 8 },
			},
		},
		{
			Name = "GarrisonType",
			Type = "Enumeration",
			NumValues = 4,
			MinValue = 2,
			MaxValue = 111,
			Fields =
			{
				{ Name = "Type_6_0", Type = "GarrisonType", EnumValue = 2 },
				{ Name = "Type_7_0", Type = "GarrisonType", EnumValue = 3 },
				{ Name = "Type_8_0", Type = "GarrisonType", EnumValue = 9 },
				{ Name = "Type_9_0", Type = "GarrisonType", EnumValue = 111 },
			},
		},
	},
};

APIDocumentation:AddDocumentationTable(GarrisonConstants);