local AccountInfo =
{
	Name = "AccountInfo",
	Type = "System",
	Namespace = "C_AccountInfo",

	Functions =
	{
		{
			Name = "GetIDFromBattleNetAccountGUID",
			Type = "Function",

			Arguments =
			{
				{ Name = "battleNetAccountGUID", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "battleNetAccountID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "IsGUIDBattleNetAccountType",
			Type = "Function",

			Arguments =
			{
				{ Name = "guid", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "isBNet", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsGUIDRelatedToLocalAccount",
			Type = "Function",

			Arguments =
			{
				{ Name = "guid", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "isLocalUser", Type = "bool", Nilable = false },
			},
		},
	},

	Events =
	{
	},

	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(AccountInfo);local AchievementInfo =
{
	Name = "AchievementInfo",
	Type = "System",
	Namespace = "C_AchievementInfo",

	Functions =
	{
		{
			Name = "GetRewardItemID",
			Type = "Function",

			Arguments =
			{
				{ Name = "achievementID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "rewardItemID", Type = "number", Nilable = true },
			},
		},
		{
			Name = "GetSupercedingAchievements",
			Type = "Function",

			Arguments =
			{
				{ Name = "achievementID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "supercedingAchievements", Type = "table", InnerType = "number", Nilable = false },
			},
		},
		{
			Name = "IsValidAchievement",
			Type = "Function",

			Arguments =
			{
				{ Name = "achievementId", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "isValidAchievement", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "SetPortraitTexture",
			Type = "Function",

			Arguments =
			{
				{ Name = "textureObject", Type = "table", Nilable = false },
			},
		},
	},

	Events =
	{
		{
			Name = "AchievementEarned",
			Type = "Event",
			LiteralName = "ACHIEVEMENT_EARNED",
			Payload =
			{
				{ Name = "achievementID", Type = "number", Nilable = false },
				{ Name = "alreadyEarned", Type = "bool", Nilable = true },
			},
		},
		{
			Name = "AchievementPlayerName",
			Type = "Event",
			LiteralName = "ACHIEVEMENT_PLAYER_NAME",
			Payload =
			{
				{ Name = "achievementID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "AchievementSearchUpdated",
			Type = "Event",
			LiteralName = "ACHIEVEMENT_SEARCH_UPDATED",
		},
		{
			Name = "CriteriaComplete",
			Type = "Event",
			LiteralName = "CRITERIA_COMPLETE",
			Payload =
			{
				{ Name = "criteriaID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "CriteriaEarned",
			Type = "Event",
			LiteralName = "CRITERIA_EARNED",
			Payload =
			{
				{ Name = "achievementID", Type = "number", Nilable = false },
				{ Name = "description", Type = "string", Nilable = false },
			},
		},
		{
			Name = "CriteriaUpdate",
			Type = "Event",
			LiteralName = "CRITERIA_UPDATE",
		},
		{
			Name = "InspectAchievementReady",
			Type = "Event",
			LiteralName = "INSPECT_ACHIEVEMENT_READY",
			Payload =
			{
				{ Name = "guid", Type = "string", Nilable = false },
			},
		},
		{
			Name = "ReceivedAchievementList",
			Type = "Event",
			LiteralName = "RECEIVED_ACHIEVEMENT_LIST",
		},
		{
			Name = "ReceivedAchievementMemberList",
			Type = "Event",
			LiteralName = "RECEIVED_ACHIEVEMENT_MEMBER_LIST",
			Payload =
			{
				{ Name = "achievementID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "TrackedAchievementListChanged",
			Type = "Event",
			LiteralName = "TRACKED_ACHIEVEMENT_LIST_CHANGED",
			Payload =
			{
				{ Name = "achievementID", Type = "number", Nilable = true },
				{ Name = "added", Type = "bool", Nilable = true },
			},
		},
		{
			Name = "TrackedAchievementUpdate",
			Type = "Event",
			LiteralName = "TRACKED_ACHIEVEMENT_UPDATE",
			Payload =
			{
				{ Name = "achievementID", Type = "number", Nilable = false },
				{ Name = "criteriaID", Type = "number", Nilable = true },
				{ Name = "elapsed", Type = "number", Nilable = true },
				{ Name = "duration", Type = "number", Nilable = true },
			},
		},
	},

	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(AchievementInfo);local ActionBarFrame =
{
	Name = "ActionBar",
	Type = "System",
	Namespace = "C_ActionBar",

	Functions =
	{
		{
			Name = "FindFlyoutActionButtons",
			Type = "Function",

			Arguments =
			{
				{ Name = "flyoutID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "slots", Type = "table", InnerType = "number", Nilable = false },
			},
		},
		{
			Name = "FindPetActionButtons",
			Type = "Function",

			Arguments =
			{
				{ Name = "petActionID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "slots", Type = "table", InnerType = "number", Nilable = false },
			},
		},
		{
			Name = "FindSpellActionButtons",
			Type = "Function",

			Arguments =
			{
				{ Name = "spellID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "slots", Type = "table", InnerType = "number", Nilable = false },
			},
		},
		{
			Name = "GetBonusBarIndexForSlot",
			Type = "Function",

			Arguments =
			{
				{ Name = "slotID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "bonusBarIndex", Type = "number", Nilable = true },
			},
		},
		{
			Name = "GetPetActionPetBarIndices",
			Type = "Function",

			Arguments =
			{
				{ Name = "petActionID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "slots", Type = "table", InnerType = "number", Nilable = false },
			},
		},
		{
			Name = "HasFlyoutActionButtons",
			Type = "Function",

			Arguments =
			{
				{ Name = "flyoutID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "hasFlyoutActionButtons", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "HasPetActionButtons",
			Type = "Function",

			Arguments =
			{
				{ Name = "petActionID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "hasPetActionButtons", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "HasPetActionPetBarIndices",
			Type = "Function",

			Arguments =
			{
				{ Name = "petActionID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "hasPetActionPetBarIndices", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "HasSpellActionButtons",
			Type = "Function",

			Arguments =
			{
				{ Name = "spellID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "hasSpellActionButtons", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsAutoCastPetAction",
			Type = "Function",

			Arguments =
			{
				{ Name = "slotID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "isAutoCastPetAction", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsEnabledAutoCastPetAction",
			Type = "Function",

			Arguments =
			{
				{ Name = "slotID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "isEnabledAutoCastPetAction", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsHarmfulAction",
			Type = "Function",

			Arguments =
			{
				{ Name = "actionID", Type = "number", Nilable = false },
				{ Name = "useNeutral", Type = "bool", Nilable = false },
			},

			Returns =
			{
				{ Name = "isHarmful", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsHelpfulAction",
			Type = "Function",

			Arguments =
			{
				{ Name = "actionID", Type = "number", Nilable = false },
				{ Name = "useNeutral", Type = "bool", Nilable = false },
			},

			Returns =
			{
				{ Name = "isHelpful", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsOnBarOrSpecialBar",
			Type = "Function",

			Arguments =
			{
				{ Name = "spellID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "isOnBarOrSpecialBar", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ShouldOverrideBarShowHealthBar",
			Type = "Function",

			Returns =
			{
				{ Name = "showHealthBar", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ShouldOverrideBarShowManaBar",
			Type = "Function",

			Returns =
			{
				{ Name = "showManaBar", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ToggleAutoCastPetAction",
			Type = "Function",

			Arguments =
			{
				{ Name = "slotID", Type = "number", Nilable = false },
			},
		},
	},

	Events =
	{
		{
			Name = "ActionbarHidegrid",
			Type = "Event",
			LiteralName = "ACTIONBAR_HIDEGRID",
		},
		{
			Name = "ActionbarPageChanged",
			Type = "Event",
			LiteralName = "ACTIONBAR_PAGE_CHANGED",
		},
		{
			Name = "ActionbarShowBottomleft",
			Type = "Event",
			LiteralName = "ACTIONBAR_SHOW_BOTTOMLEFT",
		},
		{
			Name = "ActionbarShowgrid",
			Type = "Event",
			LiteralName = "ACTIONBAR_SHOWGRID",
		},
		{
			Name = "ActionbarSlotChanged",
			Type = "Event",
			LiteralName = "ACTIONBAR_SLOT_CHANGED",
			Payload =
			{
				{ Name = "slot", Type = "number", Nilable = false },
			},
		},
		{
			Name = "ActionbarUpdateCooldown",
			Type = "Event",
			LiteralName = "ACTIONBAR_UPDATE_COOLDOWN",
		},
		{
			Name = "ActionbarUpdateState",
			Type = "Event",
			LiteralName = "ACTIONBAR_UPDATE_STATE",
		},
		{
			Name = "ActionbarUpdateUsable",
			Type = "Event",
			LiteralName = "ACTIONBAR_UPDATE_USABLE",
		},
		{
			Name = "PetBarUpdate",
			Type = "Event",
			LiteralName = "PET_BAR_UPDATE",
		},
		{
			Name = "UpdateBonusActionbar",
			Type = "Event",
			LiteralName = "UPDATE_BONUS_ACTIONBAR",
		},
		{
			Name = "UpdateExtraActionbar",
			Type = "Event",
			LiteralName = "UPDATE_EXTRA_ACTIONBAR",
		},
		{
			Name = "UpdateMultiCastActionbar",
			Type = "Event",
			LiteralName = "UPDATE_MULTI_CAST_ACTIONBAR",
		},
		{
			Name = "UpdateOverrideActionbar",
			Type = "Event",
			LiteralName = "UPDATE_OVERRIDE_ACTIONBAR",
		},
	},

	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(ActionBarFrame);local AddOns =
{
	Name = "AddOns",
	Type = "System",
	Namespace = "C_AddOns",

	Functions =
	{
	},

	Events =
	{
		{
			Name = "AddonLoaded",
			Type = "Event",
			LiteralName = "ADDON_LOADED",
			Payload =
			{
				{ Name = "addOnName", Type = "string", Nilable = false },
			},
		},
		{
			Name = "AddonsUnloading",
			Type = "Event",
			LiteralName = "ADDONS_UNLOADING",
			Payload =
			{
				{ Name = "closingClient", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "SavedVariablesTooLarge",
			Type = "Event",
			LiteralName = "SAVED_VARIABLES_TOO_LARGE",
			Payload =
			{
				{ Name = "addOnName", Type = "string", Nilable = false },
			},
		},
	},

	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(AddOns);local AdventureJournal =
{
	Name = "AdventureJournal",
	Type = "System",
	Namespace = "C_AdventureJournal",

	Functions =
	{
	},

	Events =
	{
		{
			Name = "AjDungeonAction",
			Type = "Event",
			LiteralName = "AJ_DUNGEON_ACTION",
			Payload =
			{
				{ Name = "lfgDungeonID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "AjOpen",
			Type = "Event",
			LiteralName = "AJ_OPEN",
		},
		{
			Name = "AjPveLfgAction",
			Type = "Event",
			LiteralName = "AJ_PVE_LFG_ACTION",
		},
		{
			Name = "AjPvpAction",
			Type = "Event",
			LiteralName = "AJ_PVP_ACTION",
			Payload =
			{
				{ Name = "battleMasterListID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "AjPvpLfgAction",
			Type = "Event",
			LiteralName = "AJ_PVP_LFG_ACTION",
		},
		{
			Name = "AjPvpRbgAction",
			Type = "Event",
			LiteralName = "AJ_PVP_RBG_ACTION",
		},
		{
			Name = "AjPvpSkirmishAction",
			Type = "Event",
			LiteralName = "AJ_PVP_SKIRMISH_ACTION",
		},
		{
			Name = "AjQuestLogOpen",
			Type = "Event",
			LiteralName = "AJ_QUEST_LOG_OPEN",
			Payload =
			{
				{ Name = "questID", Type = "number", Nilable = false },
				{ Name = "uiMapID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "AjRaidAction",
			Type = "Event",
			LiteralName = "AJ_RAID_ACTION",
			Payload =
			{
				{ Name = "lfgDungeonID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "AjRefreshDisplay",
			Type = "Event",
			LiteralName = "AJ_REFRESH_DISPLAY",
			Payload =
			{
				{ Name = "newAdventureNotice", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "AjRewardDataReceived",
			Type = "Event",
			LiteralName = "AJ_REWARD_DATA_RECEIVED",
		},
	},

	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(AdventureJournal);local AdventureMap =
{
	Name = "AdventureMap",
	Type = "System",
	Namespace = "C_AdventureMap",

	Functions =
	{
	},

	Events =
	{
		{
			Name = "AdventureMapClose",
			Type = "Event",
			LiteralName = "ADVENTURE_MAP_CLOSE",
		},
		{
			Name = "AdventureMapOpen",
			Type = "Event",
			LiteralName = "ADVENTURE_MAP_OPEN",
			Payload =
			{
				{ Name = "followerTypeID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "AdventureMapQuestUpdate",
			Type = "Event",
			LiteralName = "ADVENTURE_MAP_QUEST_UPDATE",
			Payload =
			{
				{ Name = "questID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "AdventureMapUpdateInsets",
			Type = "Event",
			LiteralName = "ADVENTURE_MAP_UPDATE_INSETS",
		},
		{
			Name = "AdventureMapUpdatePois",
			Type = "Event",
			LiteralName = "ADVENTURE_MAP_UPDATE_POIS",
		},
	},

	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(AdventureMap);local AlliedRacesFrame =
{
	Name = "AlliedRaces",
	Type = "System",
	Namespace = "C_AlliedRaces",

	Functions =
	{
		{
			Name = "ClearAlliedRaceDetailsGiver",
			Type = "Function",
		},
		{
			Name = "GetAllRacialAbilitiesFromID",
			Type = "Function",

			Arguments =
			{
				{ Name = "raceID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "allDisplayInfo", Type = "table", InnerType = "AlliedRaceRacialAbility", Nilable = false },
			},
		},
		{
			Name = "GetRaceInfoByID",
			Type = "Function",

			Arguments =
			{
				{ Name = "raceID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "info", Type = "AlliedRaceInfo", Nilable = false },
			},
		},
	},

	Events =
	{
		{
			Name = "AlliedRaceClose",
			Type = "Event",
			LiteralName = "ALLIED_RACE_CLOSE",
		},
		{
			Name = "AlliedRaceOpen",
			Type = "Event",
			LiteralName = "ALLIED_RACE_OPEN",
			Payload =
			{
				{ Name = "raceID", Type = "number", Nilable = false },
			},
		},
	},

	Tables =
	{
		{
			Name = "AlliedRaceInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "raceID", Type = "number", Nilable = false },
				{ Name = "maleModelID", Type = "number", Nilable = false },
				{ Name = "femaleModelID", Type = "number", Nilable = false },
				{ Name = "achievementID", Type = "number", Nilable = false },
				{ Name = "maleName", Type = "string", Nilable = false },
				{ Name = "femaleName", Type = "string", Nilable = false },
				{ Name = "description", Type = "string", Nilable = false },
				{ Name = "crestAtlas", Type = "string", Nilable = false },
				{ Name = "modelBackgroundAtlas", Type = "string", Nilable = false },
				{ Name = "raceFileString", Type = "string", Nilable = false },
				{ Name = "bannerColor", Type = "table", Mixin = "ColorMixin", Nilable = false },
			},
		},
		{
			Name = "AlliedRaceRacialAbility",
			Type = "Structure",
			Fields =
			{
				{ Name = "description", Type = "string", Nilable = false },
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "icon", Type = "number", Nilable = false },
			},
		},
	},
};

APIDocumentation:AddDocumentationTable(AlliedRacesFrame);local AnimaDiversionUI =
{
	Name = "AnimaDiversionInfo",
	Type = "System",
	Namespace = "C_AnimaDiversion",

	Functions =
	{
		{
			Name = "CloseUI",
			Type = "Function",
		},
		{
			Name = "GetAnimaDiversionNodes",
			Type = "Function",

			Returns =
			{
				{ Name = "animaNodes", Type = "table", InnerType = "AnimaDiversionNodeInfo", Nilable = false },
			},
		},
		{
			Name = "GetOriginPosition",
			Type = "Function",

			Returns =
			{
				{ Name = "normalizedPosition", Type = "table", Mixin = "Vector2DMixin", Nilable = true },
			},
		},
		{
			Name = "GetReinforceProgress",
			Type = "Function",

			Returns =
			{
				{ Name = "progress", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetTextureKit",
			Type = "Function",

			Returns =
			{
				{ Name = "textureKit", Type = "string", Nilable = false },
			},
		},
		{
			Name = "OpenAnimaDiversionUI",
			Type = "Function",
		},
		{
			Name = "SelectAnimaNode",
			Type = "Function",

			Arguments =
			{
				{ Name = "talentID", Type = "number", Nilable = false },
				{ Name = "temporary", Type = "bool", Nilable = false },
			},
		},
	},

	Events =
	{
		{
			Name = "AnimaDiversionClose",
			Type = "Event",
			LiteralName = "ANIMA_DIVERSION_CLOSE",
		},
		{
			Name = "AnimaDiversionOpen",
			Type = "Event",
			LiteralName = "ANIMA_DIVERSION_OPEN",
			Payload =
			{
				{ Name = "info", Type = "AnimaDiversionFrameInfo", Nilable = false },
			},
		},
		{
			Name = "AnimaDiversionTalentUpdated",
			Type = "Event",
			LiteralName = "ANIMA_DIVERSION_TALENT_UPDATED",
		},
	},

	Tables =
	{
		{
			Name = "AnimaDiversionNodeState",
			Type = "Enumeration",
			NumValues = 4,
			MinValue = 0,
			MaxValue = 3,
			Fields =
			{
				{ Name = "Unavailable", Type = "AnimaDiversionNodeState", EnumValue = 0 },
				{ Name = "Available", Type = "AnimaDiversionNodeState", EnumValue = 1 },
				{ Name = "SelectedTemporary", Type = "AnimaDiversionNodeState", EnumValue = 2 },
				{ Name = "SelectedPermanent", Type = "AnimaDiversionNodeState", EnumValue = 3 },
			},
		},
		{
			Name = "AnimaDiversionCostInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "currencyID", Type = "number", Nilable = false },
				{ Name = "quantity", Type = "number", Nilable = false },
			},
		},
		{
			Name = "AnimaDiversionFrameInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "textureKit", Type = "string", Nilable = false },
				{ Name = "title", Type = "string", Nilable = false },
				{ Name = "mapID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "AnimaDiversionNodeInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "talentID", Type = "number", Nilable = false },
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "description", Type = "string", Nilable = false },
				{ Name = "costs", Type = "table", InnerType = "AnimaDiversionCostInfo", Nilable = false },
				{ Name = "currencyID", Type = "number", Nilable = false },
				{ Name = "icon", Type = "number", Nilable = false },
				{ Name = "normalizedPosition", Type = "table", Mixin = "Vector2DMixin", Nilable = false },
				{ Name = "state", Type = "AnimaDiversionNodeState", Nilable = false },
			},
		},
	},
};

APIDocumentation:AddDocumentationTable(AnimaDiversionUI);local AreaPoiInfo =
{
	Name = "AreaPoiInfo",
	Type = "System",
	Namespace = "C_AreaPoiInfo",

	Functions =
	{
		{
			Name = "GetAreaPOIForMap",
			Type = "Function",

			Arguments =
			{
				{ Name = "uiMapID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "areaPoiIDs", Type = "table", InnerType = "number", Nilable = false },
			},
		},
		{
			Name = "GetAreaPOIInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "uiMapID", Type = "number", Nilable = false },
				{ Name = "areaPoiID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "poiInfo", Type = "AreaPOIInfo", Nilable = false },
			},
		},
		{
			Name = "GetAreaPOISecondsLeft",
			Type = "Function",
			Documentation = { "Returns the number of seconds until the POI expires." },

			Arguments =
			{
				{ Name = "areaPoiID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "secondsLeft", Type = "number", Nilable = false },
			},
		},
		{
			Name = "IsAreaPOITimed",
			Type = "Function",
			Documentation = { "This statically determines if the POI is timed, GetAreaPOITimeLeft retrieves the value from the server and may return nothing for long intervals" },

			Arguments =
			{
				{ Name = "areaPoiID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "isTimed", Type = "bool", Nilable = false },
			},
		},
	},

	Events =
	{
		{
			Name = "AreaPoisUpdated",
			Type = "Event",
			LiteralName = "AREA_POIS_UPDATED",
		},
	},

	Tables =
	{
		{
			Name = "AreaPOIInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "areaPoiID", Type = "number", Nilable = false },
				{ Name = "position", Type = "table", Mixin = "Vector2DMixin", Nilable = false },
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "description", Type = "string", Nilable = true },
				{ Name = "textureIndex", Type = "number", Nilable = true },
				{ Name = "widgetSetID", Type = "number", Nilable = true },
				{ Name = "atlasName", Type = "string", Nilable = true },
			},
		},
	},
};

APIDocumentation:AddDocumentationTable(AreaPoiInfo);local ArtifactUI =
{
	Name = "ArtifactUI",
	Type = "System",
	Namespace = "C_ArtifactUI",

	Functions =
	{
		{
			Name = "AddPower",
			Type = "Function",

			Arguments =
			{
				{ Name = "powerID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "success", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ApplyCursorRelicToSlot",
			Type = "Function",

			Arguments =
			{
				{ Name = "relicSlotIndex", Type = "number", Nilable = false },
			},
		},
		{
			Name = "CanApplyArtifactRelic",
			Type = "Function",

			Arguments =
			{
				{ Name = "relicItemID", Type = "number", Nilable = false },
				{ Name = "onlyUnlocked", Type = "bool", Nilable = false },
			},

			Returns =
			{
				{ Name = "canApply", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "CanApplyCursorRelicToSlot",
			Type = "Function",

			Arguments =
			{
				{ Name = "relicSlotIndex", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "canApply", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "CanApplyRelicItemIDToEquippedArtifactSlot",
			Type = "Function",

			Arguments =
			{
				{ Name = "relicItemID", Type = "number", Nilable = false },
				{ Name = "relicSlotIndex", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "canApply", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "CanApplyRelicItemIDToSlot",
			Type = "Function",

			Arguments =
			{
				{ Name = "relicItemID", Type = "number", Nilable = false },
				{ Name = "relicSlotIndex", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "canApply", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "CheckRespecNPC",
			Type = "Function",

			Returns =
			{
				{ Name = "canRespec", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "Clear",
			Type = "Function",
		},
		{
			Name = "ClearForgeCamera",
			Type = "Function",
		},
		{
			Name = "ConfirmRespec",
			Type = "Function",
		},
		{
			Name = "DoesEquippedArtifactHaveAnyRelicsSlotted",
			Type = "Function",

			Returns =
			{
				{ Name = "hasAnyRelicsSlotted", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "GetAppearanceInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "appearanceSetIndex", Type = "number", Nilable = false },
				{ Name = "appearanceIndex", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "artifactAppearanceID", Type = "number", Nilable = false },
				{ Name = "appearanceName", Type = "string", Nilable = false },
				{ Name = "displayIndex", Type = "number", Nilable = false },
				{ Name = "unlocked", Type = "bool", Nilable = false },
				{ Name = "failureDescription", Type = "string", Nilable = true },
				{ Name = "uiCameraID", Type = "number", Nilable = false },
				{ Name = "altHandCameraID", Type = "number", Nilable = true },
				{ Name = "swatchColorR", Type = "number", Nilable = false },
				{ Name = "swatchColorG", Type = "number", Nilable = false },
				{ Name = "swatchColorB", Type = "number", Nilable = false },
				{ Name = "modelOpacity", Type = "number", Nilable = false },
				{ Name = "modelSaturation", Type = "number", Nilable = false },
				{ Name = "obtainable", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "GetAppearanceInfoByID",
			Type = "Function",

			Arguments =
			{
				{ Name = "artifactAppearanceID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "artifactAppearanceSetID", Type = "number", Nilable = false },
				{ Name = "artifactAppearanceID", Type = "number", Nilable = false },
				{ Name = "appearanceName", Type = "string", Nilable = false },
				{ Name = "displayIndex", Type = "number", Nilable = false },
				{ Name = "unlocked", Type = "bool", Nilable = false },
				{ Name = "failureDescription", Type = "string", Nilable = true },
				{ Name = "uiCameraID", Type = "number", Nilable = false },
				{ Name = "altHandCameraID", Type = "number", Nilable = true },
				{ Name = "swatchColorR", Type = "number", Nilable = false },
				{ Name = "swatchColorG", Type = "number", Nilable = false },
				{ Name = "swatchColorB", Type = "number", Nilable = false },
				{ Name = "modelOpacity", Type = "number", Nilable = false },
				{ Name = "modelSaturation", Type = "number", Nilable = false },
				{ Name = "obtainable", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "GetAppearanceSetInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "appearanceSetIndex", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "artifactAppearanceSetID", Type = "number", Nilable = false },
				{ Name = "appearanceSetName", Type = "string", Nilable = false },
				{ Name = "appearanceSetDescription", Type = "string", Nilable = false },
				{ Name = "numAppearances", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetArtifactArtInfo",
			Type = "Function",

			Returns =
			{
				{ Name = "artifactArtInfo", Type = "ArtifactArtInfo", Nilable = false },
			},
		},
		{
			Name = "GetArtifactInfo",
			Type = "Function",

			Returns =
			{
				{ Name = "itemID", Type = "number", Nilable = false },
				{ Name = "altItemID", Type = "number", Nilable = true },
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "icon", Type = "number", Nilable = false },
				{ Name = "xp", Type = "number", Nilable = false },
				{ Name = "pointsSpent", Type = "number", Nilable = false },
				{ Name = "quality", Type = "number", Nilable = false },
				{ Name = "artifactAppearanceID", Type = "number", Nilable = false },
				{ Name = "appearanceModID", Type = "number", Nilable = false },
				{ Name = "itemAppearanceID", Type = "number", Nilable = true },
				{ Name = "altItemAppearanceID", Type = "number", Nilable = true },
				{ Name = "altOnTop", Type = "bool", Nilable = false },
				{ Name = "tier", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetArtifactItemID",
			Type = "Function",

			Returns =
			{
				{ Name = "itemID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetArtifactTier",
			Type = "Function",

			Returns =
			{
				{ Name = "tier", Type = "number", Nilable = true },
			},
		},
		{
			Name = "GetArtifactXPRewardTargetInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "artifactCategoryID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "icon", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetCostForPointAtRank",
			Type = "Function",

			Arguments =
			{
				{ Name = "rank", Type = "number", Nilable = false },
				{ Name = "tier", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "cost", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetEquippedArtifactArtInfo",
			Type = "Function",

			Returns =
			{
				{ Name = "artifactArtInfo", Type = "ArtifactArtInfo", Nilable = false },
			},
		},
		{
			Name = "GetEquippedArtifactInfo",
			Type = "Function",

			Returns =
			{
				{ Name = "itemID", Type = "number", Nilable = false },
				{ Name = "altItemID", Type = "number", Nilable = true },
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "icon", Type = "number", Nilable = false },
				{ Name = "xp", Type = "number", Nilable = false },
				{ Name = "pointsSpent", Type = "number", Nilable = false },
				{ Name = "quality", Type = "number", Nilable = false },
				{ Name = "artifactAppearanceID", Type = "number", Nilable = false },
				{ Name = "appearanceModID", Type = "number", Nilable = false },
				{ Name = "itemAppearanceID", Type = "number", Nilable = true },
				{ Name = "altItemAppearanceID", Type = "number", Nilable = true },
				{ Name = "altOnTop", Type = "bool", Nilable = false },
				{ Name = "tier", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetEquippedArtifactItemID",
			Type = "Function",

			Returns =
			{
				{ Name = "itemID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetEquippedArtifactNumRelicSlots",
			Type = "Function",

			Arguments =
			{
				{ Name = "onlyUnlocked", Type = "bool", Nilable = false, Default = false, Documentation = { "If true then only the relic slots that are unlocked will be considered." } },
			},

			Returns =
			{
				{ Name = "numRelicSlots", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetEquippedArtifactRelicInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "relicSlotIndex", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "icon", Type = "number", Nilable = false },
				{ Name = "slotTypeName", Type = "string", Nilable = false, Documentation = { "Matches the socket identifiers used in the socketing system." } },
				{ Name = "link", Type = "string", Nilable = false },
			},
		},
		{
			Name = "GetEquippedRelicLockedReason",
			Type = "Function",

			Arguments =
			{
				{ Name = "relicSlotIndex", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "lockedReason", Type = "string", Nilable = true },
			},
		},
		{
			Name = "GetForgeRotation",
			Type = "Function",

			Returns =
			{
				{ Name = "forgeRotationX", Type = "number", Nilable = false },
				{ Name = "forgeRotationY", Type = "number", Nilable = false },
				{ Name = "forgeRotationZ", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetItemLevelIncreaseProvidedByRelic",
			Type = "Function",

			Arguments =
			{
				{ Name = "itemLinkOrID", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "itemIevelIncrease", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetMetaPowerInfo",
			Type = "Function",

			Returns =
			{
				{ Name = "spellID", Type = "number", Nilable = false, StrideIndex = 1 },
				{ Name = "powerCost", Type = "number", Nilable = false, StrideIndex = 2 },
				{ Name = "currentRank", Type = "number", Nilable = false, StrideIndex = 3 },
			},
		},
		{
			Name = "GetNumAppearanceSets",
			Type = "Function",

			Returns =
			{
				{ Name = "numAppearanceSets", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetNumObtainedArtifacts",
			Type = "Function",

			Returns =
			{
				{ Name = "numObtainedArtifacts", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetNumRelicSlots",
			Type = "Function",

			Arguments =
			{
				{ Name = "onlyUnlocked", Type = "bool", Nilable = false, Default = false, Documentation = { "If true then only the relic slots that are unlocked will be considered." } },
			},

			Returns =
			{
				{ Name = "numRelicSlots", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetPointsRemaining",
			Type = "Function",

			Returns =
			{
				{ Name = "pointsRemaining", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetPowerHyperlink",
			Type = "Function",

			Arguments =
			{
				{ Name = "powerID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "link", Type = "string", Nilable = false },
			},
		},
		{
			Name = "GetPowerInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "powerID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "powerInfo", Type = "ArtifactPowerInfo", Nilable = false },
			},
		},
		{
			Name = "GetPowerLinks",
			Type = "Function",

			Arguments =
			{
				{ Name = "powerID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "linkingPowerID", Type = "table", InnerType = "number", Nilable = false },
			},
		},
		{
			Name = "GetPowers",
			Type = "Function",

			Returns =
			{
				{ Name = "powerID", Type = "table", InnerType = "number", Nilable = false },
			},
		},
		{
			Name = "GetPowersAffectedByRelic",
			Type = "Function",

			Arguments =
			{
				{ Name = "relicSlotIndex", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "powerIDs", Type = "number", Nilable = false, StrideIndex = 1 },
			},
		},
		{
			Name = "GetPowersAffectedByRelicItemLink",
			Type = "Function",

			Arguments =
			{
				{ Name = "relicItemInfo", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "powerIDs", Type = "number", Nilable = false, StrideIndex = 1 },
			},
		},
		{
			Name = "GetPreviewAppearance",
			Type = "Function",

			Returns =
			{
				{ Name = "artifactAppearanceID", Type = "number", Nilable = true },
			},
		},
		{
			Name = "GetRelicInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "relicSlotIndex", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "icon", Type = "number", Nilable = false },
				{ Name = "slotTypeName", Type = "string", Nilable = false, Documentation = { "Matches the socket identifiers used in the socketing system." } },
				{ Name = "link", Type = "string", Nilable = false },
			},
		},
		{
			Name = "GetRelicInfoByItemID",
			Type = "Function",

			Arguments =
			{
				{ Name = "itemID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "icon", Type = "number", Nilable = false },
				{ Name = "slotTypeName", Type = "string", Nilable = false, Documentation = { "Matches the socket identifiers used in the socketing system." } },
				{ Name = "link", Type = "string", Nilable = false },
			},
		},
		{
			Name = "GetRelicLockedReason",
			Type = "Function",

			Arguments =
			{
				{ Name = "relicSlotIndex", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "lockedReason", Type = "string", Nilable = true },
			},
		},
		{
			Name = "GetRelicSlotType",
			Type = "Function",

			Arguments =
			{
				{ Name = "relicSlotIndex", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "slotTypeName", Type = "string", Nilable = false },
			},
		},
		{
			Name = "GetRespecArtifactArtInfo",
			Type = "Function",

			Returns =
			{
				{ Name = "artifactArtInfo", Type = "ArtifactArtInfo", Nilable = false },
			},
		},
		{
			Name = "GetRespecArtifactInfo",
			Type = "Function",

			Returns =
			{
				{ Name = "itemID", Type = "number", Nilable = false },
				{ Name = "altItemID", Type = "number", Nilable = true },
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "icon", Type = "number", Nilable = false },
				{ Name = "xp", Type = "number", Nilable = false },
				{ Name = "pointsSpent", Type = "number", Nilable = false },
				{ Name = "quality", Type = "number", Nilable = false },
				{ Name = "artifactAppearanceID", Type = "number", Nilable = false },
				{ Name = "appearanceModID", Type = "number", Nilable = false },
				{ Name = "itemAppearanceID", Type = "number", Nilable = true },
				{ Name = "altItemAppearanceID", Type = "number", Nilable = true },
				{ Name = "altOnTop", Type = "bool", Nilable = false },
				{ Name = "tier", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetRespecCost",
			Type = "Function",

			Returns =
			{
				{ Name = "cost", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetTotalPowerCost",
			Type = "Function",

			Arguments =
			{
				{ Name = "startingTrait", Type = "number", Nilable = false },
				{ Name = "numTraits", Type = "number", Nilable = false },
				{ Name = "artifactTier", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "totalArtifactPowerCost", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetTotalPurchasedRanks",
			Type = "Function",

			Returns =
			{
				{ Name = "totalPurchasedRanks", Type = "number", Nilable = false },
			},
		},
		{
			Name = "IsArtifactDisabled",
			Type = "Function",

			Returns =
			{
				{ Name = "artifactDisabled", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsAtForge",
			Type = "Function",

			Returns =
			{
				{ Name = "isAtForge", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsEquippedArtifactDisabled",
			Type = "Function",

			Returns =
			{
				{ Name = "artifactDisabled", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsEquippedArtifactMaxed",
			Type = "Function",

			Returns =
			{
				{ Name = "artifactMaxed", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsMaxedByRulesOrEffect",
			Type = "Function",

			Returns =
			{
				{ Name = "isEffectivelyMaxed", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsPowerKnown",
			Type = "Function",

			Arguments =
			{
				{ Name = "powerID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "known", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsViewedArtifactEquipped",
			Type = "Function",

			Returns =
			{
				{ Name = "isViewedArtifactEquipped", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "SetAppearance",
			Type = "Function",

			Arguments =
			{
				{ Name = "artifactAppearanceID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "SetForgeCamera",
			Type = "Function",
		},
		{
			Name = "SetForgeRotation",
			Type = "Function",

			Arguments =
			{
				{ Name = "forgeRotationX", Type = "number", Nilable = false },
				{ Name = "forgeRotationY", Type = "number", Nilable = false },
				{ Name = "forgeRotationZ", Type = "number", Nilable = false },
			},
		},
		{
			Name = "SetPreviewAppearance",
			Type = "Function",
			Documentation = { "Call without an argument to clear the preview." },

			Arguments =
			{
				{ Name = "artifactAppearanceID", Type = "number", Nilable = false, Default = 0 },
			},
		},
		{
			Name = "ShouldSuppressForgeRotation",
			Type = "Function",

			Returns =
			{
				{ Name = "shouldSuppressForgeRotation", Type = "bool", Nilable = false },
			},
		},
	},

	Events =
	{
		{
			Name = "ArtifactClose",
			Type = "Event",
			LiteralName = "ARTIFACT_CLOSE",
		},
		{
			Name = "ArtifactEndgameRefund",
			Type = "Event",
			LiteralName = "ARTIFACT_ENDGAME_REFUND",
			Payload =
			{
				{ Name = "numRefundedPowers", Type = "number", Nilable = false },
				{ Name = "refundedTier", Type = "number", Nilable = false },
				{ Name = "bagOrSlotIndex", Type = "number", Nilable = false },
				{ Name = "slotIndex", Type = "number", Nilable = true },
			},
		},
		{
			Name = "ArtifactRelicForgeClose",
			Type = "Event",
			LiteralName = "ARTIFACT_RELIC_FORGE_CLOSE",
		},
		{
			Name = "ArtifactRelicForgePreviewRelicChanged",
			Type = "Event",
			LiteralName = "ARTIFACT_RELIC_FORGE_PREVIEW_RELIC_CHANGED",
		},
		{
			Name = "ArtifactRelicForgeUpdate",
			Type = "Event",
			LiteralName = "ARTIFACT_RELIC_FORGE_UPDATE",
		},
		{
			Name = "ArtifactRelicInfoReceived",
			Type = "Event",
			LiteralName = "ARTIFACT_RELIC_INFO_RECEIVED",
		},
		{
			Name = "ArtifactRespecPrompt",
			Type = "Event",
			LiteralName = "ARTIFACT_RESPEC_PROMPT",
		},
		{
			Name = "ArtifactTierChanged",
			Type = "Event",
			LiteralName = "ARTIFACT_TIER_CHANGED",
			Payload =
			{
				{ Name = "newTier", Type = "number", Nilable = false },
				{ Name = "bagOrSlotIndex", Type = "number", Nilable = false },
				{ Name = "slotIndex", Type = "number", Nilable = true },
			},
		},
		{
			Name = "ArtifactUpdate",
			Type = "Event",
			LiteralName = "ARTIFACT_UPDATE",
			Payload =
			{
				{ Name = "newItem", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ArtifactXpUpdate",
			Type = "Event",
			LiteralName = "ARTIFACT_XP_UPDATE",
		},
	},

	Tables =
	{
		{
			Name = "ArtifactArtInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "textureKit", Type = "string", Nilable = false },
				{ Name = "titleName", Type = "string", Nilable = false },
				{ Name = "titleColor", Type = "table", Mixin = "ColorMixin", Nilable = false },
				{ Name = "barConnectedColor", Type = "table", Mixin = "ColorMixin", Nilable = false },
				{ Name = "barDisconnectedColor", Type = "table", Mixin = "ColorMixin", Nilable = false },
				{ Name = "uiModelSceneID", Type = "number", Nilable = false },
				{ Name = "spellVisualKitID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "ArtifactPowerInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "spellID", Type = "number", Nilable = false },
				{ Name = "cost", Type = "number", Nilable = false },
				{ Name = "currentRank", Type = "number", Nilable = false },
				{ Name = "maxRank", Type = "number", Nilable = false },
				{ Name = "bonusRanks", Type = "number", Nilable = false },
				{ Name = "numMaxRankBonusFromTier", Type = "number", Nilable = false },
				{ Name = "prereqsMet", Type = "bool", Nilable = false },
				{ Name = "isStart", Type = "bool", Nilable = false },
				{ Name = "isGoldMedal", Type = "bool", Nilable = false },
				{ Name = "isFinal", Type = "bool", Nilable = false },
				{ Name = "tier", Type = "number", Nilable = false },
				{ Name = "position", Type = "table", Mixin = "Vector2DMixin", Nilable = false },
				{ Name = "offset", Type = "table", Mixin = "Vector2DMixin", Nilable = true },
				{ Name = "linearIndex", Type = "number", Nilable = true },
			},
		},
	},
};

APIDocumentation:AddDocumentationTable(ArtifactUI);local AuctionHouse =
{
	Name = "AuctionHouse",
	Type = "System",
	Namespace = "C_AuctionHouse",

	Functions =
	{
		{
			Name = "CalculateCommodityDeposit",
			Type = "Function",

			Arguments =
			{
				{ Name = "itemID", Type = "number", Nilable = false },
				{ Name = "duration", Type = "number", Nilable = false },
				{ Name = "quantity", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "depositCost", Type = "number", Nilable = true },
			},
		},
		{
			Name = "CalculateItemDeposit",
			Type = "Function",

			Arguments =
			{
				{ Name = "item", Type = "table", Mixin = "ItemLocationMixin", Nilable = false },
				{ Name = "duration", Type = "number", Nilable = false },
				{ Name = "quantity", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "depositCost", Type = "number", Nilable = true },
			},
		},
		{
			Name = "CanCancelAuction",
			Type = "Function",

			Arguments =
			{
				{ Name = "ownedAuctionID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "canCancelAuction", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "CancelAuction",
			Type = "Function",

			Arguments =
			{
				{ Name = "ownedAuctionID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "CancelCommoditiesPurchase",
			Type = "Function",
		},
		{
			Name = "CancelSell",
			Type = "Function",
		},
		{
			Name = "CloseAuctionHouse",
			Type = "Function",
		},
		{
			Name = "ConfirmCommoditiesPurchase",
			Type = "Function",

			Arguments =
			{
				{ Name = "itemID", Type = "number", Nilable = false },
				{ Name = "quantity", Type = "number", Nilable = false },
			},
		},
		{
			Name = "FavoritesAreAvailable",
			Type = "Function",

			Returns =
			{
				{ Name = "favoritesAreAvailable", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "GetAuctionItemSubClasses",
			Type = "Function",

			Arguments =
			{
				{ Name = "classID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "subClasses", Type = "table", InnerType = "number", Nilable = false },
			},
		},
		{
			Name = "GetAvailablePostCount",
			Type = "Function",

			Arguments =
			{
				{ Name = "item", Type = "table", Mixin = "ItemLocationMixin", Nilable = false },
			},

			Returns =
			{
				{ Name = "listCount", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetBidInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "bidIndex", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "bid", Type = "BidInfo", Nilable = true },
			},
		},
		{
			Name = "GetBidType",
			Type = "Function",

			Arguments =
			{
				{ Name = "bidTypeIndex", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "typeItemKey", Type = "ItemKey", Nilable = true },
			},
		},
		{
			Name = "GetBrowseResults",
			Type = "Function",

			Returns =
			{
				{ Name = "browseResults", Type = "table", InnerType = "BrowseResultInfo", Nilable = false },
			},
		},
		{
			Name = "GetCancelCost",
			Type = "Function",

			Arguments =
			{
				{ Name = "ownedAuctionID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "cancelCost", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetCommoditySearchResultInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "itemID", Type = "number", Nilable = false },
				{ Name = "commoditySearchResultIndex", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "result", Type = "CommoditySearchResultInfo", Nilable = true },
			},
		},
		{
			Name = "GetCommoditySearchResultsQuantity",
			Type = "Function",

			Arguments =
			{
				{ Name = "itemID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "totalQuantity", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetExtraBrowseInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "itemKey", Type = "ItemKey", Nilable = false },
			},

			Returns =
			{
				{ Name = "extraInfo", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetFilterGroups",
			Type = "Function",

			Returns =
			{
				{ Name = "filterGroups", Type = "table", InnerType = "AuctionHouseFilterGroup", Nilable = false },
			},
		},
		{
			Name = "GetItemCommodityStatus",
			Type = "Function",

			Arguments =
			{
				{ Name = "item", Type = "table", Mixin = "ItemLocationMixin", Nilable = false },
			},

			Returns =
			{
				{ Name = "isCommodity", Type = "ItemCommodityStatus", Nilable = false },
			},
		},
		{
			Name = "GetItemKeyFromItem",
			Type = "Function",

			Arguments =
			{
				{ Name = "item", Type = "table", Mixin = "ItemLocationMixin", Nilable = false },
			},

			Returns =
			{
				{ Name = "itemKey", Type = "ItemKey", Nilable = false },
			},
		},
		{
			Name = "GetItemKeyInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "itemKey", Type = "ItemKey", Nilable = false },
				{ Name = "restrictQualityToFilter", Type = "bool", Nilable = false, Default = false },
			},

			Returns =
			{
				{ Name = "itemKeyInfo", Type = "ItemKeyInfo", Nilable = true },
			},
		},
		{
			Name = "GetItemKeyRequiredLevel",
			Type = "Function",

			Arguments =
			{
				{ Name = "itemKey", Type = "ItemKey", Nilable = false },
			},

			Returns =
			{
				{ Name = "requiredLevel", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetItemSearchResultInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "itemKey", Type = "ItemKey", Nilable = false },
				{ Name = "itemSearchResultIndex", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "result", Type = "ItemSearchResultInfo", Nilable = true },
			},
		},
		{
			Name = "GetItemSearchResultsQuantity",
			Type = "Function",

			Arguments =
			{
				{ Name = "itemKey", Type = "ItemKey", Nilable = false },
			},

			Returns =
			{
				{ Name = "totalQuantity", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetMaxBidItemBid",
			Type = "Function",

			Returns =
			{
				{ Name = "maxBid", Type = "number", Nilable = true },
			},
		},
		{
			Name = "GetMaxBidItemBuyout",
			Type = "Function",

			Returns =
			{
				{ Name = "maxBuyout", Type = "number", Nilable = true },
			},
		},
		{
			Name = "GetMaxCommoditySearchResultPrice",
			Type = "Function",

			Arguments =
			{
				{ Name = "itemID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "maxUnitPrice", Type = "number", Nilable = true },
			},
		},
		{
			Name = "GetMaxItemSearchResultBid",
			Type = "Function",

			Arguments =
			{
				{ Name = "itemKey", Type = "ItemKey", Nilable = false },
			},

			Returns =
			{
				{ Name = "maxBid", Type = "number", Nilable = true },
			},
		},
		{
			Name = "GetMaxItemSearchResultBuyout",
			Type = "Function",

			Arguments =
			{
				{ Name = "itemKey", Type = "ItemKey", Nilable = false },
			},

			Returns =
			{
				{ Name = "maxBuyout", Type = "number", Nilable = true },
			},
		},
		{
			Name = "GetMaxOwnedAuctionBid",
			Type = "Function",

			Returns =
			{
				{ Name = "maxBid", Type = "number", Nilable = true },
			},
		},
		{
			Name = "GetMaxOwnedAuctionBuyout",
			Type = "Function",

			Returns =
			{
				{ Name = "maxBuyout", Type = "number", Nilable = true },
			},
		},
		{
			Name = "GetNumBidTypes",
			Type = "Function",

			Returns =
			{
				{ Name = "numBidTypes", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetNumBids",
			Type = "Function",

			Returns =
			{
				{ Name = "numBids", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetNumCommoditySearchResults",
			Type = "Function",

			Arguments =
			{
				{ Name = "itemID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "numSearchResults", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetNumItemSearchResults",
			Type = "Function",

			Arguments =
			{
				{ Name = "itemKey", Type = "ItemKey", Nilable = false },
			},

			Returns =
			{
				{ Name = "numItemSearchResults", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetNumOwnedAuctionTypes",
			Type = "Function",

			Returns =
			{
				{ Name = "numOwnedAuctionTypes", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetNumOwnedAuctions",
			Type = "Function",

			Returns =
			{
				{ Name = "numOwnedAuctions", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetNumReplicateItems",
			Type = "Function",

			Returns =
			{
				{ Name = "numReplicateItems", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetOwnedAuctionInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "ownedAuctionIndex", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "ownedAuction", Type = "OwnedAuctionInfo", Nilable = true },
			},
		},
		{
			Name = "GetOwnedAuctionType",
			Type = "Function",

			Arguments =
			{
				{ Name = "ownedAuctionTypeIndex", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "typeItemKey", Type = "ItemKey", Nilable = true },
			},
		},
		{
			Name = "GetQuoteDurationRemaining",
			Type = "Function",

			Returns =
			{
				{ Name = "quoteDurationSeconds", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetReplicateItemBattlePetInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "index", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "creatureID", Type = "number", Nilable = false },
				{ Name = "displayID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetReplicateItemInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "index", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "name", Type = "string", Nilable = true },
				{ Name = "texture", Type = "number", Nilable = true },
				{ Name = "count", Type = "number", Nilable = false },
				{ Name = "qualityID", Type = "number", Nilable = false },
				{ Name = "usable", Type = "bool", Nilable = true },
				{ Name = "level", Type = "number", Nilable = false },
				{ Name = "levelType", Type = "string", Nilable = true },
				{ Name = "minBid", Type = "number", Nilable = false },
				{ Name = "minIncrement", Type = "number", Nilable = false },
				{ Name = "buyoutPrice", Type = "number", Nilable = false },
				{ Name = "bidAmount", Type = "number", Nilable = false },
				{ Name = "highBidder", Type = "string", Nilable = true },
				{ Name = "bidderFullName", Type = "string", Nilable = true },
				{ Name = "owner", Type = "string", Nilable = true },
				{ Name = "ownerFullName", Type = "string", Nilable = true },
				{ Name = "saleStatus", Type = "number", Nilable = false },
				{ Name = "itemID", Type = "number", Nilable = false },
				{ Name = "hasAllInfo", Type = "bool", Nilable = true },
			},
		},
		{
			Name = "GetReplicateItemLink",
			Type = "Function",

			Arguments =
			{
				{ Name = "index", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "itemLink", Type = "string", Nilable = true },
			},
		},
		{
			Name = "GetReplicateItemTimeLeft",
			Type = "Function",

			Arguments =
			{
				{ Name = "index", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "timeLeft", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetTimeLeftBandInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "timeLeftBand", Type = "AuctionHouseTimeLeftBand", Nilable = false },
			},

			Returns =
			{
				{ Name = "timeLeftMinSeconds", Type = "number", Nilable = false },
				{ Name = "timeLeftMaxSeconds", Type = "number", Nilable = false },
			},
		},
		{
			Name = "HasFavorites",
			Type = "Function",

			Returns =
			{
				{ Name = "hasFavorites", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "HasFullBidResults",
			Type = "Function",

			Returns =
			{
				{ Name = "hasFullBidResults", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "HasFullBrowseResults",
			Type = "Function",

			Returns =
			{
				{ Name = "hasFullBrowseResults", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "HasFullCommoditySearchResults",
			Type = "Function",

			Arguments =
			{
				{ Name = "itemID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "hasFullResults", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "HasFullItemSearchResults",
			Type = "Function",

			Arguments =
			{
				{ Name = "itemKey", Type = "ItemKey", Nilable = false },
			},

			Returns =
			{
				{ Name = "hasFullResults", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "HasFullOwnedAuctionResults",
			Type = "Function",

			Returns =
			{
				{ Name = "hasFullOwnedAuctionResults", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "HasMaxFavorites",
			Type = "Function",

			Returns =
			{
				{ Name = "hasMaxFavorites", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "HasSearchResults",
			Type = "Function",

			Arguments =
			{
				{ Name = "itemKey", Type = "ItemKey", Nilable = false },
			},

			Returns =
			{
				{ Name = "hasSearchResults", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsFavoriteItem",
			Type = "Function",

			Arguments =
			{
				{ Name = "itemKey", Type = "ItemKey", Nilable = false },
			},

			Returns =
			{
				{ Name = "isFavorite", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsSellItemValid",
			Type = "Function",

			Arguments =
			{
				{ Name = "item", Type = "table", Mixin = "ItemLocationMixin", Nilable = false },
				{ Name = "displayError", Type = "bool", Nilable = false, Default = true },
			},

			Returns =
			{
				{ Name = "valid", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsThrottledMessageSystemReady",
			Type = "Function",

			Returns =
			{
				{ Name = "canSendThrottledMessage", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "MakeItemKey",
			Type = "Function",

			Arguments =
			{
				{ Name = "itemID", Type = "number", Nilable = false },
				{ Name = "itemLevel", Type = "number", Nilable = false, Default = 0 },
				{ Name = "itemSuffix", Type = "number", Nilable = false, Default = 0 },
				{ Name = "battlePetSpeciesID", Type = "number", Nilable = false, Default = 0 },
			},

			Returns =
			{
				{ Name = "itemKey", Type = "ItemKey", Nilable = false },
			},
		},
		{
			Name = "PlaceBid",
			Type = "Function",

			Arguments =
			{
				{ Name = "auctionID", Type = "number", Nilable = false },
				{ Name = "bidAmount", Type = "number", Nilable = false },
			},
		},
		{
			Name = "PostCommodity",
			Type = "Function",

			Arguments =
			{
				{ Name = "item", Type = "table", Mixin = "ItemLocationMixin", Nilable = false },
				{ Name = "duration", Type = "number", Nilable = false },
				{ Name = "quantity", Type = "number", Nilable = false },
				{ Name = "unitPrice", Type = "number", Nilable = false },
			},
		},
		{
			Name = "PostItem",
			Type = "Function",

			Arguments =
			{
				{ Name = "item", Type = "table", Mixin = "ItemLocationMixin", Nilable = false },
				{ Name = "duration", Type = "number", Nilable = false },
				{ Name = "quantity", Type = "number", Nilable = false },
				{ Name = "bid", Type = "number", Nilable = true },
				{ Name = "buyout", Type = "number", Nilable = true },
			},
		},
		{
			Name = "QueryBids",
			Type = "Function",

			Arguments =
			{
				{ Name = "sorts", Type = "table", InnerType = "AuctionHouseSortType", Nilable = false },
				{ Name = "auctionIDs", Type = "table", InnerType = "number", Nilable = false },
			},
		},
		{
			Name = "QueryOwnedAuctions",
			Type = "Function",

			Arguments =
			{
				{ Name = "sorts", Type = "table", InnerType = "AuctionHouseSortType", Nilable = false },
			},
		},
		{
			Name = "RefreshCommoditySearchResults",
			Type = "Function",

			Arguments =
			{
				{ Name = "itemID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "RefreshItemSearchResults",
			Type = "Function",

			Arguments =
			{
				{ Name = "itemKey", Type = "ItemKey", Nilable = false },
			},
		},
		{
			Name = "ReplicateItems",
			Type = "Function",
			Documentation = { "This function should be used in place of an 'allItem' QueryAuctionItems call to query the entire auction house." },
		},
		{
			Name = "RequestMoreBrowseResults",
			Type = "Function",
		},
		{
			Name = "RequestMoreCommoditySearchResults",
			Type = "Function",

			Arguments =
			{
				{ Name = "itemID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "hasFullResults", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "RequestMoreItemSearchResults",
			Type = "Function",

			Arguments =
			{
				{ Name = "itemKey", Type = "ItemKey", Nilable = false },
			},

			Returns =
			{
				{ Name = "hasFullResults", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "RequestOwnedAuctionBidderInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "auctionID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "bidderName", Type = "string", Nilable = true },
			},
		},
		{
			Name = "SearchForFavorites",
			Type = "Function",

			Arguments =
			{
				{ Name = "sorts", Type = "table", InnerType = "AuctionHouseSortType", Nilable = false },
			},
		},
		{
			Name = "SearchForItemKeys",
			Type = "Function",

			Arguments =
			{
				{ Name = "itemKeys", Type = "table", InnerType = "ItemKey", Nilable = false },
				{ Name = "sorts", Type = "table", InnerType = "AuctionHouseSortType", Nilable = false },
			},
		},
		{
			Name = "SendBrowseQuery",
			Type = "Function",

			Arguments =
			{
				{ Name = "query", Type = "AuctionHouseBrowseQuery", Nilable = false },
			},
		},
		{
			Name = "SendSearchQuery",
			Type = "Function",
			Documentation = { "Search queries are restricted to 100 calls per minute. These should not be used to query the entire auction house. See ReplicateItems" },

			Arguments =
			{
				{ Name = "itemKey", Type = "ItemKey", Nilable = false },
				{ Name = "sorts", Type = "table", InnerType = "AuctionHouseSortType", Nilable = false },
				{ Name = "separateOwnerItems", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "SendSellSearchQuery",
			Type = "Function",
			Documentation = { "Search queries are restricted to 100 calls per minute. These should not be used to query the entire auction house. See ReplicateItems" },

			Arguments =
			{
				{ Name = "itemKey", Type = "ItemKey", Nilable = false },
				{ Name = "sorts", Type = "table", InnerType = "AuctionHouseSortType", Nilable = false },
				{ Name = "separateOwnerItems", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "SetFavoriteItem",
			Type = "Function",

			Arguments =
			{
				{ Name = "itemKey", Type = "ItemKey", Nilable = false },
				{ Name = "setFavorite", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "StartCommoditiesPurchase",
			Type = "Function",

			Arguments =
			{
				{ Name = "itemID", Type = "number", Nilable = false },
				{ Name = "quantity", Type = "number", Nilable = false },
			},
		},
	},

	Events =
	{
		{
			Name = "AuctionCanceled",
			Type = "Event",
			LiteralName = "AUCTION_CANCELED",
			Payload =
			{
				{ Name = "auctionID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "AuctionHouseAuctionCreated",
			Type = "Event",
			LiteralName = "AUCTION_HOUSE_AUCTION_CREATED",
			Documentation = { "This signal is not used in the base UI but is included for AddOn ease-of-use." },
			Payload =
			{
				{ Name = "auctionID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "AuctionHouseBrowseFailure",
			Type = "Event",
			LiteralName = "AUCTION_HOUSE_BROWSE_FAILURE",
		},
		{
			Name = "AuctionHouseBrowseResultsAdded",
			Type = "Event",
			LiteralName = "AUCTION_HOUSE_BROWSE_RESULTS_ADDED",
			Payload =
			{
				{ Name = "addedBrowseResults", Type = "table", InnerType = "BrowseResultInfo", Nilable = false },
			},
		},
		{
			Name = "AuctionHouseBrowseResultsUpdated",
			Type = "Event",
			LiteralName = "AUCTION_HOUSE_BROWSE_RESULTS_UPDATED",
		},
		{
			Name = "AuctionHouseClosed",
			Type = "Event",
			LiteralName = "AUCTION_HOUSE_CLOSED",
		},
		{
			Name = "AuctionHouseDisabled",
			Type = "Event",
			LiteralName = "AUCTION_HOUSE_DISABLED",
		},
		{
			Name = "AuctionHouseFavoritesUpdated",
			Type = "Event",
			LiteralName = "AUCTION_HOUSE_FAVORITES_UPDATED",
		},
		{
			Name = "AuctionHouseNewBidReceived",
			Type = "Event",
			LiteralName = "AUCTION_HOUSE_NEW_BID_RECEIVED",
			Payload =
			{
				{ Name = "auctionID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "AuctionHouseNewResultsReceived",
			Type = "Event",
			LiteralName = "AUCTION_HOUSE_NEW_RESULTS_RECEIVED",
			Documentation = { "This signal is not used in the base UI but is included for AddOn ease-of-use. Payload is nil for browse queries." },
			Payload =
			{
				{ Name = "itemKey", Type = "ItemKey", Nilable = true },
			},
		},
		{
			Name = "AuctionHouseScriptDeprecated",
			Type = "Event",
			LiteralName = "AUCTION_HOUSE_SCRIPT_DEPRECATED",
		},
		{
			Name = "AuctionHouseShow",
			Type = "Event",
			LiteralName = "AUCTION_HOUSE_SHOW",
		},
		{
			Name = "AuctionHouseThrottledMessageDropped",
			Type = "Event",
			LiteralName = "AUCTION_HOUSE_THROTTLED_MESSAGE_DROPPED",
		},
		{
			Name = "AuctionHouseThrottledMessageQueued",
			Type = "Event",
			LiteralName = "AUCTION_HOUSE_THROTTLED_MESSAGE_QUEUED",
		},
		{
			Name = "AuctionHouseThrottledMessageResponseReceived",
			Type = "Event",
			LiteralName = "AUCTION_HOUSE_THROTTLED_MESSAGE_RESPONSE_RECEIVED",
		},
		{
			Name = "AuctionHouseThrottledMessageSent",
			Type = "Event",
			LiteralName = "AUCTION_HOUSE_THROTTLED_MESSAGE_SENT",
		},
		{
			Name = "AuctionHouseThrottledSystemReady",
			Type = "Event",
			LiteralName = "AUCTION_HOUSE_THROTTLED_SYSTEM_READY",
		},
		{
			Name = "AuctionMultisellFailure",
			Type = "Event",
			LiteralName = "AUCTION_MULTISELL_FAILURE",
		},
		{
			Name = "AuctionMultisellStart",
			Type = "Event",
			LiteralName = "AUCTION_MULTISELL_START",
			Payload =
			{
				{ Name = "numRepetitions", Type = "number", Nilable = false },
			},
		},
		{
			Name = "AuctionMultisellUpdate",
			Type = "Event",
			LiteralName = "AUCTION_MULTISELL_UPDATE",
			Payload =
			{
				{ Name = "createdCount", Type = "number", Nilable = false },
				{ Name = "totalToCreate", Type = "number", Nilable = false },
			},
		},
		{
			Name = "BidAdded",
			Type = "Event",
			LiteralName = "BID_ADDED",
			Payload =
			{
				{ Name = "bidID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "BidsUpdated",
			Type = "Event",
			LiteralName = "BIDS_UPDATED",
		},
		{
			Name = "CommodityPriceUnavailable",
			Type = "Event",
			LiteralName = "COMMODITY_PRICE_UNAVAILABLE",
		},
		{
			Name = "CommodityPriceUpdated",
			Type = "Event",
			LiteralName = "COMMODITY_PRICE_UPDATED",
			Payload =
			{
				{ Name = "updatedUnitPrice", Type = "number", Nilable = false },
				{ Name = "updatedTotalPrice", Type = "number", Nilable = false },
			},
		},
		{
			Name = "CommodityPurchaseFailed",
			Type = "Event",
			LiteralName = "COMMODITY_PURCHASE_FAILED",
		},
		{
			Name = "CommodityPurchaseSucceeded",
			Type = "Event",
			LiteralName = "COMMODITY_PURCHASE_SUCCEEDED",
		},
		{
			Name = "CommodityPurchased",
			Type = "Event",
			LiteralName = "COMMODITY_PURCHASED",
			Payload =
			{
				{ Name = "itemID", Type = "number", Nilable = false },
				{ Name = "quantity", Type = "number", Nilable = false },
			},
		},
		{
			Name = "CommoditySearchResultsAdded",
			Type = "Event",
			LiteralName = "COMMODITY_SEARCH_RESULTS_ADDED",
			Payload =
			{
				{ Name = "itemID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "CommoditySearchResultsUpdated",
			Type = "Event",
			LiteralName = "COMMODITY_SEARCH_RESULTS_UPDATED",
			Payload =
			{
				{ Name = "itemID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "ExtraBrowseInfoReceived",
			Type = "Event",
			LiteralName = "EXTRA_BROWSE_INFO_RECEIVED",
			Payload =
			{
				{ Name = "itemID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "ItemKeyItemInfoReceived",
			Type = "Event",
			LiteralName = "ITEM_KEY_ITEM_INFO_RECEIVED",
			Payload =
			{
				{ Name = "itemID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "ItemPurchased",
			Type = "Event",
			LiteralName = "ITEM_PURCHASED",
			Payload =
			{
				{ Name = "itemID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "ItemSearchResultsAdded",
			Type = "Event",
			LiteralName = "ITEM_SEARCH_RESULTS_ADDED",
			Payload =
			{
				{ Name = "itemKey", Type = "ItemKey", Nilable = false },
			},
		},
		{
			Name = "ItemSearchResultsUpdated",
			Type = "Event",
			LiteralName = "ITEM_SEARCH_RESULTS_UPDATED",
			Payload =
			{
				{ Name = "itemKey", Type = "ItemKey", Nilable = false },
				{ Name = "newAuctionID", Type = "number", Nilable = true },
			},
		},
		{
			Name = "OwnedAuctionBidderInfoReceived",
			Type = "Event",
			LiteralName = "OWNED_AUCTION_BIDDER_INFO_RECEIVED",
			Payload =
			{
				{ Name = "auctionID", Type = "number", Nilable = false },
				{ Name = "bidderName", Type = "string", Nilable = false },
			},
		},
		{
			Name = "OwnedAuctionsUpdated",
			Type = "Event",
			LiteralName = "OWNED_AUCTIONS_UPDATED",
		},
		{
			Name = "ReplicateItemListUpdate",
			Type = "Event",
			LiteralName = "REPLICATE_ITEM_LIST_UPDATE",
		},
	},

	Tables =
	{
		{
			Name = "AuctionHouseFilterCategory",
			Type = "Enumeration",
			NumValues = 3,
			MinValue = 0,
			MaxValue = 2,
			Fields =
			{
				{ Name = "Uncategorized", Type = "AuctionHouseFilterCategory", EnumValue = 0 },
				{ Name = "Equipment", Type = "AuctionHouseFilterCategory", EnumValue = 1 },
				{ Name = "Rarity", Type = "AuctionHouseFilterCategory", EnumValue = 2 },
			},
		},
		{
			Name = "AuctionStatus",
			Type = "Enumeration",
			NumValues = 2,
			MinValue = 0,
			MaxValue = 1,
			Fields =
			{
				{ Name = "Active", Type = "AuctionStatus", EnumValue = 0 },
				{ Name = "Sold", Type = "AuctionStatus", EnumValue = 1 },
			},
		},
		{
			Name = "ItemCommodityStatus",
			Type = "Enumeration",
			NumValues = 3,
			MinValue = 0,
			MaxValue = 2,
			Fields =
			{
				{ Name = "Unknown", Type = "ItemCommodityStatus", EnumValue = 0 },
				{ Name = "Item", Type = "ItemCommodityStatus", EnumValue = 1 },
				{ Name = "Commodity", Type = "ItemCommodityStatus", EnumValue = 2 },
			},
		},
		{
			Name = "AuctionHouseBrowseQuery",
			Type = "Structure",
			Fields =
			{
				{ Name = "searchString", Type = "string", Nilable = false },
				{ Name = "sorts", Type = "table", InnerType = "AuctionHouseSortType", Nilable = false },
				{ Name = "minLevel", Type = "number", Nilable = true },
				{ Name = "maxLevel", Type = "number", Nilable = true },
				{ Name = "filters", Type = "table", InnerType = "AuctionHouseFilter", Nilable = true },
				{ Name = "itemClassFilters", Type = "table", InnerType = "AuctionHouseItemClassFilter", Nilable = true },
			},
		},
		{
			Name = "AuctionHouseFilterGroup",
			Type = "Structure",
			Fields =
			{
				{ Name = "category", Type = "AuctionHouseFilterCategory", Nilable = false },
				{ Name = "filters", Type = "table", InnerType = "AuctionHouseFilter", Nilable = false },
			},
		},
		{
			Name = "AuctionHouseItemClassFilter",
			Type = "Structure",
			Fields =
			{
				{ Name = "classID", Type = "number", Nilable = false },
				{ Name = "subClassID", Type = "number", Nilable = true },
				{ Name = "inventoryType", Type = "number", Nilable = true },
			},
		},
		{
			Name = "AuctionHouseSortType",
			Type = "Structure",
			Fields =
			{
				{ Name = "sortOrder", Type = "AuctionHouseSortOrder", Nilable = false },
				{ Name = "reverseSort", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "BidInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "auctionID", Type = "number", Nilable = false },
				{ Name = "itemKey", Type = "ItemKey", Nilable = false },
				{ Name = "itemLink", Type = "string", Nilable = true },
				{ Name = "timeLeft", Type = "AuctionHouseTimeLeftBand", Nilable = false },
				{ Name = "minBid", Type = "number", Nilable = true },
				{ Name = "bidAmount", Type = "number", Nilable = true },
				{ Name = "buyoutAmount", Type = "number", Nilable = true },
				{ Name = "bidder", Type = "string", Nilable = true },
			},
		},
		{
			Name = "BrowseResultInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "itemKey", Type = "ItemKey", Nilable = false },
				{ Name = "appearanceLink", Type = "string", Nilable = true },
				{ Name = "totalQuantity", Type = "number", Nilable = false },
				{ Name = "minPrice", Type = "number", Nilable = false },
				{ Name = "containsOwnerItem", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "CommoditySearchResultInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "itemID", Type = "number", Nilable = false },
				{ Name = "quantity", Type = "number", Nilable = false },
				{ Name = "unitPrice", Type = "number", Nilable = false },
				{ Name = "auctionID", Type = "number", Nilable = false },
				{ Name = "owners", Type = "table", InnerType = "string", Nilable = false },
				{ Name = "timeLeftSeconds", Type = "number", Nilable = true },
				{ Name = "numOwnerItems", Type = "number", Nilable = false },
				{ Name = "containsOwnerItem", Type = "bool", Nilable = false },
				{ Name = "containsAccountItem", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ItemKey",
			Type = "Structure",
			Fields =
			{
				{ Name = "itemID", Type = "number", Nilable = false },
				{ Name = "itemLevel", Type = "number", Nilable = false, Default = 0 },
				{ Name = "itemSuffix", Type = "number", Nilable = false, Default = 0 },
				{ Name = "battlePetSpeciesID", Type = "number", Nilable = false, Default = 0 },
			},
		},
		{
			Name = "ItemKeyInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "itemName", Type = "string", Nilable = false },
				{ Name = "battlePetLink", Type = "string", Nilable = true },
				{ Name = "appearanceLink", Type = "string", Nilable = true },
				{ Name = "quality", Type = "number", Nilable = false },
				{ Name = "iconFileID", Type = "number", Nilable = false },
				{ Name = "isPet", Type = "bool", Nilable = false },
				{ Name = "isCommodity", Type = "bool", Nilable = false },
				{ Name = "isEquipment", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ItemSearchResultInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "itemKey", Type = "ItemKey", Nilable = false },
				{ Name = "owners", Type = "table", InnerType = "string", Nilable = false },
				{ Name = "timeLeft", Type = "AuctionHouseTimeLeftBand", Nilable = false },
				{ Name = "auctionID", Type = "number", Nilable = false },
				{ Name = "quantity", Type = "number", Nilable = false },
				{ Name = "itemLink", Type = "string", Nilable = true },
				{ Name = "containsOwnerItem", Type = "bool", Nilable = false },
				{ Name = "containsAccountItem", Type = "bool", Nilable = false },
				{ Name = "containsSocketedItem", Type = "bool", Nilable = false },
				{ Name = "bidder", Type = "string", Nilable = true },
				{ Name = "minBid", Type = "number", Nilable = true },
				{ Name = "bidAmount", Type = "number", Nilable = true },
				{ Name = "buyoutAmount", Type = "number", Nilable = true },
				{ Name = "timeLeftSeconds", Type = "number", Nilable = true },
			},
		},
		{
			Name = "OwnedAuctionInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "auctionID", Type = "number", Nilable = false },
				{ Name = "itemKey", Type = "ItemKey", Nilable = false },
				{ Name = "itemLink", Type = "string", Nilable = true },
				{ Name = "status", Type = "AuctionStatus", Nilable = false },
				{ Name = "quantity", Type = "number", Nilable = false },
				{ Name = "timeLeftSeconds", Type = "number", Nilable = true },
				{ Name = "timeLeft", Type = "AuctionHouseTimeLeftBand", Nilable = true },
				{ Name = "bidAmount", Type = "number", Nilable = true },
				{ Name = "buyoutAmount", Type = "number", Nilable = true },
				{ Name = "bidder", Type = "string", Nilable = true },
			},
		},
	},
};

APIDocumentation:AddDocumentationTable(AuctionHouse);local AzeriteEmpoweredItem =
{
	Name = "AzeriteEmpoweredItem",
	Type = "System",
	Namespace = "C_AzeriteEmpoweredItem",

	Functions =
	{
		{
			Name = "CanSelectPower",
			Type = "Function",

			Arguments =
			{
				{ Name = "azeriteEmpoweredItemLocation", Type = "table", Mixin = "ItemLocationMixin", Nilable = false },
				{ Name = "powerID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "canSelect", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "CloseAzeriteEmpoweredItemRespec",
			Type = "Function",
		},
		{
			Name = "ConfirmAzeriteEmpoweredItemRespec",
			Type = "Function",

			Arguments =
			{
				{ Name = "azeriteEmpoweredItemLocation", Type = "table", Mixin = "ItemLocationMixin", Nilable = false },
			},
		},
		{
			Name = "GetAllTierInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "azeriteEmpoweredItemLocation", Type = "table", Mixin = "ItemLocationMixin", Nilable = false },
			},

			Returns =
			{
				{ Name = "tierInfo", Type = "table", InnerType = "AzeriteEmpoweredItemTierInfo", Nilable = false },
			},
		},
		{
			Name = "GetAllTierInfoByItemID",
			Type = "Function",

			Arguments =
			{
				{ Name = "itemInfo", Type = "string", Nilable = false },
				{ Name = "classID", Type = "number", Nilable = true, Documentation = { "Specify a class ID to get tier information about that class, otherwise uses the player's class if left nil" } },
			},

			Returns =
			{
				{ Name = "tierInfo", Type = "table", InnerType = "AzeriteEmpoweredItemTierInfo", Nilable = false },
			},
		},
		{
			Name = "GetAzeriteEmpoweredItemRespecCost",
			Type = "Function",

			Returns =
			{
				{ Name = "cost", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetPowerInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "powerID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "powerInfo", Type = "AzeriteEmpoweredItemPowerInfo", Nilable = false },
			},
		},
		{
			Name = "GetPowerText",
			Type = "Function",

			Arguments =
			{
				{ Name = "azeriteEmpoweredItemLocation", Type = "table", Mixin = "ItemLocationMixin", Nilable = false },
				{ Name = "powerID", Type = "number", Nilable = false },
				{ Name = "level", Type = "AzeritePowerLevel", Nilable = false },
			},

			Returns =
			{
				{ Name = "powerText", Type = "AzeriteEmpoweredItemPowerText", Nilable = false },
			},
		},
		{
			Name = "GetSpecsForPower",
			Type = "Function",

			Arguments =
			{
				{ Name = "powerID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "specInfo", Type = "table", InnerType = "AzeriteSpecInfo", Nilable = false },
			},
		},
		{
			Name = "HasAnyUnselectedPowers",
			Type = "Function",

			Arguments =
			{
				{ Name = "azeriteEmpoweredItemLocation", Type = "table", Mixin = "ItemLocationMixin", Nilable = false },
			},

			Returns =
			{
				{ Name = "hasAnyUnselectedPowers", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "HasBeenViewed",
			Type = "Function",

			Arguments =
			{
				{ Name = "azeriteEmpoweredItemLocation", Type = "table", Mixin = "ItemLocationMixin", Nilable = false },
			},

			Returns =
			{
				{ Name = "hasBeenViewed", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsAzeriteEmpoweredItem",
			Type = "Function",

			Arguments =
			{
				{ Name = "itemLocation", Type = "table", Mixin = "ItemLocationMixin", Nilable = false },
			},

			Returns =
			{
				{ Name = "isAzeriteEmpoweredItem", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsAzeriteEmpoweredItemByID",
			Type = "Function",

			Arguments =
			{
				{ Name = "itemInfo", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "isAzeriteEmpoweredItem", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsAzeritePreviewSourceDisplayable",
			Type = "Function",

			Arguments =
			{
				{ Name = "itemInfo", Type = "string", Nilable = false },
				{ Name = "classID", Type = "number", Nilable = true, Documentation = { "Specify a class ID to determine if its displayable for that class, otherwise uses the player's class if left nil" } },
			},

			Returns =
			{
				{ Name = "isAzeritePreviewSourceDisplayable", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsHeartOfAzerothEquipped",
			Type = "Function",

			Returns =
			{
				{ Name = "isHeartOfAzerothEquipped", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsPowerAvailableForSpec",
			Type = "Function",

			Arguments =
			{
				{ Name = "powerID", Type = "number", Nilable = false },
				{ Name = "specID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "isPowerAvailableForSpec", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsPowerSelected",
			Type = "Function",

			Arguments =
			{
				{ Name = "azeriteEmpoweredItemLocation", Type = "table", Mixin = "ItemLocationMixin", Nilable = false },
				{ Name = "powerID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "isSelected", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "SelectPower",
			Type = "Function",

			Arguments =
			{
				{ Name = "azeriteEmpoweredItemLocation", Type = "table", Mixin = "ItemLocationMixin", Nilable = false },
				{ Name = "powerID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "success", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "SetHasBeenViewed",
			Type = "Function",

			Arguments =
			{
				{ Name = "azeriteEmpoweredItemLocation", Type = "table", Mixin = "ItemLocationMixin", Nilable = false },
			},
		},
	},

	Events =
	{
		{
			Name = "AzeriteEmpoweredItemEquippedStatusChanged",
			Type = "Event",
			LiteralName = "AZERITE_EMPOWERED_ITEM_EQUIPPED_STATUS_CHANGED",
			Payload =
			{
				{ Name = "isHeartEquipped", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "AzeriteEmpoweredItemSelectionUpdated",
			Type = "Event",
			LiteralName = "AZERITE_EMPOWERED_ITEM_SELECTION_UPDATED",
			Payload =
			{
				{ Name = "azeriteEmpoweredItemLocation", Type = "table", Mixin = "ItemLocationMixin", Nilable = false },
			},
		},
		{
			Name = "RespecAzeriteEmpoweredItemClosed",
			Type = "Event",
			LiteralName = "RESPEC_AZERITE_EMPOWERED_ITEM_CLOSED",
		},
		{
			Name = "RespecAzeriteEmpoweredItemOpened",
			Type = "Event",
			LiteralName = "RESPEC_AZERITE_EMPOWERED_ITEM_OPENED",
		},
	},

	Tables =
	{
		{
			Name = "AzeritePowerLevel",
			Type = "Enumeration",
			NumValues = 3,
			MinValue = 0,
			MaxValue = 2,
			Fields =
			{
				{ Name = "Base", Type = "AzeritePowerLevel", EnumValue = 0 },
				{ Name = "Upgraded", Type = "AzeritePowerLevel", EnumValue = 1 },
				{ Name = "Downgraded", Type = "AzeritePowerLevel", EnumValue = 2 },
			},
		},
		{
			Name = "AzeriteEmpoweredItemPowerInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "azeritePowerID", Type = "number", Nilable = false },
				{ Name = "spellID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "AzeriteEmpoweredItemPowerText",
			Type = "Structure",
			Fields =
			{
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "description", Type = "string", Nilable = false },
			},
		},
		{
			Name = "AzeriteEmpoweredItemTierInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "azeritePowerIDs", Type = "table", InnerType = "number", Nilable = false },
				{ Name = "unlockLevel", Type = "number", Nilable = false },
			},
		},
		{
			Name = "AzeriteSpecInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "classID", Type = "number", Nilable = false },
				{ Name = "specID", Type = "number", Nilable = false },
			},
		},
	},
};

APIDocumentation:AddDocumentationTable(AzeriteEmpoweredItem);local AzeriteEssence =
{
	Name = "AzeriteEssence",
	Type = "System",
	Namespace = "C_AzeriteEssence",

	Functions =
	{
		{
			Name = "ActivateEssence",
			Type = "Function",

			Arguments =
			{
				{ Name = "essenceID", Type = "number", Nilable = false },
				{ Name = "milestoneID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "CanActivateEssence",
			Type = "Function",

			Arguments =
			{
				{ Name = "essenceID", Type = "number", Nilable = false },
				{ Name = "milestoneID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "canActivate", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "CanDeactivateEssence",
			Type = "Function",

			Arguments =
			{
				{ Name = "milestoneID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "canDeactivate", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "CanOpenUI",
			Type = "Function",

			Returns =
			{
				{ Name = "canOpen", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ClearPendingActivationEssence",
			Type = "Function",
		},
		{
			Name = "CloseForge",
			Type = "Function",
		},
		{
			Name = "GetEssenceHyperlink",
			Type = "Function",

			Arguments =
			{
				{ Name = "essenceID", Type = "number", Nilable = false },
				{ Name = "rank", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "link", Type = "string", Nilable = false },
			},
		},
		{
			Name = "GetEssenceInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "essenceID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "info", Type = "AzeriteEssenceInfo", Nilable = false },
			},
		},
		{
			Name = "GetEssences",
			Type = "Function",

			Returns =
			{
				{ Name = "essences", Type = "table", InnerType = "AzeriteEssenceInfo", Nilable = false },
			},
		},
		{
			Name = "GetMilestoneEssence",
			Type = "Function",

			Arguments =
			{
				{ Name = "milestoneID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "essenceID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetMilestoneInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "milestoneID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "info", Type = "AzeriteMilestoneInfo", Nilable = false },
			},
		},
		{
			Name = "GetMilestoneSpell",
			Type = "Function",

			Arguments =
			{
				{ Name = "milestoneID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "spellID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetMilestones",
			Type = "Function",

			Returns =
			{
				{ Name = "milestones", Type = "table", InnerType = "AzeriteMilestoneInfo", Nilable = false },
			},
		},
		{
			Name = "GetNumUnlockedEssences",
			Type = "Function",

			Returns =
			{
				{ Name = "numUnlockedEssences", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetNumUsableEssences",
			Type = "Function",

			Returns =
			{
				{ Name = "numUsableEssences", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetPendingActivationEssence",
			Type = "Function",

			Returns =
			{
				{ Name = "essenceID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "HasNeverActivatedAnyEssences",
			Type = "Function",

			Returns =
			{
				{ Name = "hasNeverActivatedAnyEssences", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "HasPendingActivationEssence",
			Type = "Function",

			Returns =
			{
				{ Name = "hasEssence", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsAtForge",
			Type = "Function",

			Returns =
			{
				{ Name = "isAtForge", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "SetPendingActivationEssence",
			Type = "Function",

			Arguments =
			{
				{ Name = "essenceID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "UnlockMilestone",
			Type = "Function",

			Arguments =
			{
				{ Name = "milestoneID", Type = "number", Nilable = false },
			},
		},
	},

	Events =
	{
		{
			Name = "AzeriteEssenceActivated",
			Type = "Event",
			LiteralName = "AZERITE_ESSENCE_ACTIVATED",
			Payload =
			{
				{ Name = "slot", Type = "AzeriteEssence", Nilable = false },
				{ Name = "essenceID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "AzeriteEssenceActivationFailed",
			Type = "Event",
			LiteralName = "AZERITE_ESSENCE_ACTIVATION_FAILED",
			Payload =
			{
				{ Name = "slot", Type = "AzeriteEssence", Nilable = false },
				{ Name = "essenceID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "AzeriteEssenceChanged",
			Type = "Event",
			LiteralName = "AZERITE_ESSENCE_CHANGED",
			Payload =
			{
				{ Name = "essenceID", Type = "number", Nilable = false },
				{ Name = "newRank", Type = "number", Nilable = false },
			},
		},
		{
			Name = "AzeriteEssenceForgeClose",
			Type = "Event",
			LiteralName = "AZERITE_ESSENCE_FORGE_CLOSE",
		},
		{
			Name = "AzeriteEssenceForgeOpen",
			Type = "Event",
			LiteralName = "AZERITE_ESSENCE_FORGE_OPEN",
		},
		{
			Name = "AzeriteEssenceMilestoneUnlocked",
			Type = "Event",
			LiteralName = "AZERITE_ESSENCE_MILESTONE_UNLOCKED",
			Payload =
			{
				{ Name = "milestoneID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "AzeriteEssenceUpdate",
			Type = "Event",
			LiteralName = "AZERITE_ESSENCE_UPDATE",
		},
		{
			Name = "PendingAzeriteEssenceChanged",
			Type = "Event",
			LiteralName = "PENDING_AZERITE_ESSENCE_CHANGED",
			Payload =
			{
				{ Name = "essenceID", Type = "number", Nilable = true },
			},
		},
	},

	Tables =
	{
		{
			Name = "AzeriteEssence",
			Type = "Enumeration",
			NumValues = 4,
			MinValue = 0,
			MaxValue = 3,
			Fields =
			{
				{ Name = "MainSlot", Type = "AzeriteEssence", EnumValue = 0 },
				{ Name = "PassiveOneSlot", Type = "AzeriteEssence", EnumValue = 1 },
				{ Name = "PassiveTwoSlot", Type = "AzeriteEssence", EnumValue = 2 },
				{ Name = "PassiveThreeSlot", Type = "AzeriteEssence", EnumValue = 3 },
			},
		},
		{
			Name = "AzeriteEssenceInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "ID", Type = "number", Nilable = false },
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "rank", Type = "number", Nilable = false },
				{ Name = "unlocked", Type = "bool", Nilable = false },
				{ Name = "valid", Type = "bool", Nilable = false },
				{ Name = "icon", Type = "number", Nilable = false },
			},
		},
		{
			Name = "AzeriteMilestoneInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "ID", Type = "number", Nilable = false },
				{ Name = "requiredLevel", Type = "number", Nilable = false },
				{ Name = "canUnlock", Type = "bool", Nilable = false },
				{ Name = "unlocked", Type = "bool", Nilable = false },
				{ Name = "rank", Type = "number", Nilable = true },
				{ Name = "slot", Type = "AzeriteEssence", Nilable = true },
			},
		},
	},
};

APIDocumentation:AddDocumentationTable(AzeriteEssence);local AzeriteItem =
{
	Name = "AzeriteItem",
	Type = "System",
	Namespace = "C_AzeriteItem",

	Functions =
	{
		{
			Name = "FindActiveAzeriteItem",
			Type = "Function",

			Returns =
			{
				{ Name = "activeAzeriteItemLocation", Type = "table", Mixin = "ItemLocationMixin", Nilable = false },
			},
		},
		{
			Name = "GetAzeriteItemXPInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "azeriteItemLocation", Type = "table", Mixin = "ItemLocationMixin", Nilable = false },
			},

			Returns =
			{
				{ Name = "xp", Type = "number", Nilable = false },
				{ Name = "totalLevelXP", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetPowerLevel",
			Type = "Function",

			Arguments =
			{
				{ Name = "azeriteItemLocation", Type = "table", Mixin = "ItemLocationMixin", Nilable = false },
			},

			Returns =
			{
				{ Name = "powerLevel", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetUnlimitedPowerLevel",
			Type = "Function",

			Arguments =
			{
				{ Name = "azeriteItemLocation", Type = "table", Mixin = "ItemLocationMixin", Nilable = false },
			},

			Returns =
			{
				{ Name = "powerLevel", Type = "number", Nilable = false },
			},
		},
		{
			Name = "HasActiveAzeriteItem",
			Type = "Function",

			Returns =
			{
				{ Name = "hasActiveAzeriteItem", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsAzeriteItem",
			Type = "Function",

			Arguments =
			{
				{ Name = "itemLocation", Type = "table", Mixin = "ItemLocationMixin", Nilable = false },
			},

			Returns =
			{
				{ Name = "isAzeriteItem", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsAzeriteItemAtMaxLevel",
			Type = "Function",

			Returns =
			{
				{ Name = "isAtMax", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsAzeriteItemByID",
			Type = "Function",

			Arguments =
			{
				{ Name = "itemInfo", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "isAzeriteItem", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsAzeriteItemEnabled",
			Type = "Function",

			Arguments =
			{
				{ Name = "azeriteItemLocation", Type = "table", Mixin = "ItemLocationMixin", Nilable = false },
			},

			Returns =
			{
				{ Name = "isEnabled", Type = "bool", Nilable = false },
			},
		},
	},

	Events =
	{
		{
			Name = "AzeriteItemEnabledStateChanged",
			Type = "Event",
			LiteralName = "AZERITE_ITEM_ENABLED_STATE_CHANGED",
			Payload =
			{
				{ Name = "enabled", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "AzeriteItemExperienceChanged",
			Type = "Event",
			LiteralName = "AZERITE_ITEM_EXPERIENCE_CHANGED",
			Payload =
			{
				{ Name = "azeriteItemLocation", Type = "table", Mixin = "ItemLocationMixin", Nilable = false },
				{ Name = "oldExperienceAmount", Type = "number", Nilable = false },
				{ Name = "newExperienceAmount", Type = "number", Nilable = false },
			},
		},
		{
			Name = "AzeriteItemPowerLevelChanged",
			Type = "Event",
			LiteralName = "AZERITE_ITEM_POWER_LEVEL_CHANGED",
			Payload =
			{
				{ Name = "azeriteItemLocation", Type = "table", Mixin = "ItemLocationMixin", Nilable = false },
				{ Name = "oldPowerLevel", Type = "number", Nilable = false },
				{ Name = "newPowerLevel", Type = "number", Nilable = false },
				{ Name = "unlockedEmpoweredItemsInfo", Type = "table", InnerType = "UnlockedAzeriteEmpoweredItems", Nilable = false },
			},
		},
	},

	Tables =
	{
		{
			Name = "UnlockedAzeriteEmpoweredItems",
			Type = "Structure",
			Fields =
			{
				{ Name = "unlockedItem", Type = "table", Mixin = "ItemLocationMixin", Nilable = false },
				{ Name = "tierIndex", Type = "number", Nilable = false },
			},
		},
	},
};

APIDocumentation:AddDocumentationTable(AzeriteItem);local Bank =
{
	Name = "Bank",
	Type = "System",
	Namespace = "C_Bank",

	Functions =
	{
	},

	Events =
	{
		{
			Name = "BankBagSlotFlagsUpdated",
			Type = "Event",
			LiteralName = "BANK_BAG_SLOT_FLAGS_UPDATED",
			Payload =
			{
				{ Name = "slot", Type = "number", Nilable = false },
			},
		},
		{
			Name = "BankframeClosed",
			Type = "Event",
			LiteralName = "BANKFRAME_CLOSED",
		},
		{
			Name = "BankframeOpened",
			Type = "Event",
			LiteralName = "BANKFRAME_OPENED",
		},
		{
			Name = "PlayerbankbagslotsChanged",
			Type = "Event",
			LiteralName = "PLAYERBANKBAGSLOTS_CHANGED",
		},
		{
			Name = "PlayerbankslotsChanged",
			Type = "Event",
			LiteralName = "PLAYERBANKSLOTS_CHANGED",
			Payload =
			{
				{ Name = "slot", Type = "number", Nilable = false },
			},
		},
		{
			Name = "PlayerreagentbankslotsChanged",
			Type = "Event",
			LiteralName = "PLAYERREAGENTBANKSLOTS_CHANGED",
			Payload =
			{
				{ Name = "slot", Type = "number", Nilable = false },
			},
		},
		{
			Name = "ReagentbankPurchased",
			Type = "Event",
			LiteralName = "REAGENTBANK_PURCHASED",
		},
		{
			Name = "ReagentbankUpdate",
			Type = "Event",
			LiteralName = "REAGENTBANK_UPDATE",
		},
	},

	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(Bank);local BarberShop =
{
	Name = "BarberShop",
	Type = "System",
	Namespace = "C_BarberShop",

	Functions =
	{
		{
			Name = "ApplyCustomizationChoices",
			Type = "Function",

			Returns =
			{
				{ Name = "success", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "Cancel",
			Type = "Function",
		},
		{
			Name = "ClearPreviewChoices",
			Type = "Function",
		},
		{
			Name = "GetAvailableCustomizations",
			Type = "Function",

			Returns =
			{
				{ Name = "categories", Type = "table", InnerType = "CharCustomizationCategory", Nilable = false },
			},
		},
		{
			Name = "GetCurrentCameraZoom",
			Type = "Function",

			Returns =
			{
				{ Name = "zoomLevel", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetCurrentCharacterData",
			Type = "Function",

			Returns =
			{
				{ Name = "characterData", Type = "BarberShopCharacterData", Nilable = false },
			},
		},
		{
			Name = "GetCurrentCost",
			Type = "Function",

			Returns =
			{
				{ Name = "cost", Type = "number", Nilable = false },
			},
		},
		{
			Name = "IsViewingAlteredForm",
			Type = "Function",

			Returns =
			{
				{ Name = "isViewingAlteredForm", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "OldBarberShopLoaded",
			Type = "Function",
		},
		{
			Name = "PreviewCustomizationChoice",
			Type = "Function",

			Arguments =
			{
				{ Name = "optionID", Type = "number", Nilable = false },
				{ Name = "choiceID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "ResetCameraRotation",
			Type = "Function",
		},
		{
			Name = "ResetCustomizationChoices",
			Type = "Function",
		},
		{
			Name = "RotateCamera",
			Type = "Function",

			Arguments =
			{
				{ Name = "diffDegrees", Type = "number", Nilable = false },
			},
		},
		{
			Name = "SetCameraDistanceOffset",
			Type = "Function",

			Arguments =
			{
				{ Name = "offset", Type = "number", Nilable = false },
			},
		},
		{
			Name = "SetCameraZoomLevel",
			Type = "Function",

			Arguments =
			{
				{ Name = "zoomLevel", Type = "number", Nilable = false },
				{ Name = "keepCustomZoom", Type = "bool", Nilable = true },
			},
		},
		{
			Name = "SetCustomizationChoice",
			Type = "Function",

			Arguments =
			{
				{ Name = "optionID", Type = "number", Nilable = false },
				{ Name = "choiceID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "SetModelDressState",
			Type = "Function",

			Arguments =
			{
				{ Name = "dressedState", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "SetSelectedSex",
			Type = "Function",

			Arguments =
			{
				{ Name = "sex", Type = "number", Nilable = false },
			},
		},
		{
			Name = "SetViewingAlteredForm",
			Type = "Function",

			Arguments =
			{
				{ Name = "isViewingAlteredForm", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "SetViewingShapeshiftForm",
			Type = "Function",

			Arguments =
			{
				{ Name = "shapeshiftFormID", Type = "number", Nilable = true },
			},
		},
		{
			Name = "ZoomCamera",
			Type = "Function",

			Arguments =
			{
				{ Name = "zoomAmount", Type = "number", Nilable = false },
			},
		},
	},

	Events =
	{
		{
			Name = "BarberShopAppearanceApplied",
			Type = "Event",
			LiteralName = "BARBER_SHOP_APPEARANCE_APPLIED",
		},
		{
			Name = "BarberShopClose",
			Type = "Event",
			LiteralName = "BARBER_SHOP_CLOSE",
		},
		{
			Name = "BarberShopCostUpdate",
			Type = "Event",
			LiteralName = "BARBER_SHOP_COST_UPDATE",
		},
		{
			Name = "BarberShopForceCustomizationsUpdate",
			Type = "Event",
			LiteralName = "BARBER_SHOP_FORCE_CUSTOMIZATIONS_UPDATE",
		},
		{
			Name = "BarberShopOpen",
			Type = "Event",
			LiteralName = "BARBER_SHOP_OPEN",
		},
		{
			Name = "BarberShopResult",
			Type = "Event",
			LiteralName = "BARBER_SHOP_RESULT",
			Payload =
			{
				{ Name = "success", Type = "bool", Nilable = false },
			},
		},
	},

	Tables =
	{
		{
			Name = "BarberShopCharacterData",
			Type = "Structure",
			Fields =
			{
				{ Name = "raceData", Type = "BarberShopRaceData", Nilable = false },
				{ Name = "sex", Type = "number", Nilable = false },
			},
		},
		{
			Name = "BarberShopRaceData",
			Type = "Structure",
			Fields =
			{
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "fileName", Type = "string", Nilable = false },
				{ Name = "alternateFormRaceData", Type = "CharacterAlternateFormData", Nilable = true },
			},
		},
	},
};

APIDocumentation:AddDocumentationTable(BarberShop);local BattleNet =
{
	Name = "BattleNet",
	Type = "System",
	Namespace = "C_BattleNet",

	Functions =
	{
		{
			Name = "GetAccountInfoByGUID",
			Type = "Function",

			Arguments =
			{
				{ Name = "guid", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "accountInfo", Type = "BNetAccountInfo", Nilable = true },
			},
		},
		{
			Name = "GetAccountInfoByID",
			Type = "Function",

			Arguments =
			{
				{ Name = "id", Type = "number", Nilable = false },
				{ Name = "wowAccountGUID", Type = "string", Nilable = true },
			},

			Returns =
			{
				{ Name = "accountInfo", Type = "BNetAccountInfo", Nilable = true },
			},
		},
		{
			Name = "GetFriendAccountInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "friendIndex", Type = "number", Nilable = false },
				{ Name = "wowAccountGUID", Type = "string", Nilable = true },
			},

			Returns =
			{
				{ Name = "accountInfo", Type = "BNetAccountInfo", Nilable = true },
			},
		},
		{
			Name = "GetFriendGameAccountInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "friendIndex", Type = "number", Nilable = false },
				{ Name = "accountIndex", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "gameAccountInfo", Type = "BNetGameAccountInfo", Nilable = true },
			},
		},
		{
			Name = "GetFriendNumGameAccounts",
			Type = "Function",

			Arguments =
			{
				{ Name = "friendIndex", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "numGameAccounts", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetGameAccountInfoByGUID",
			Type = "Function",

			Arguments =
			{
				{ Name = "guid", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "gameAccountInfo", Type = "BNetGameAccountInfo", Nilable = true },
			},
		},
		{
			Name = "GetGameAccountInfoByID",
			Type = "Function",

			Arguments =
			{
				{ Name = "id", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "gameAccountInfo", Type = "BNetGameAccountInfo", Nilable = true },
			},
		},
	},

	Events =
	{
	},

	Tables =
	{
		{
			Name = "BNetAccountInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "bnetAccountID", Type = "number", Nilable = false },
				{ Name = "accountName", Type = "string", Nilable = false },
				{ Name = "battleTag", Type = "string", Nilable = false },
				{ Name = "isFriend", Type = "bool", Nilable = false },
				{ Name = "isBattleTagFriend", Type = "bool", Nilable = false },
				{ Name = "lastOnlineTime", Type = "number", Nilable = false },
				{ Name = "isAFK", Type = "bool", Nilable = false },
				{ Name = "isDND", Type = "bool", Nilable = false },
				{ Name = "isFavorite", Type = "bool", Nilable = false },
				{ Name = "appearOffline", Type = "bool", Nilable = false },
				{ Name = "customMessage", Type = "string", Nilable = false },
				{ Name = "customMessageTime", Type = "number", Nilable = false },
				{ Name = "note", Type = "string", Nilable = false },
				{ Name = "rafLinkType", Type = "RafLinkType", Nilable = false },
				{ Name = "gameAccountInfo", Type = "BNetGameAccountInfo", Nilable = false },
			},
		},
		{
			Name = "BNetGameAccountInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "gameAccountID", Type = "number", Nilable = true },
				{ Name = "clientProgram", Type = "string", Nilable = false },
				{ Name = "isOnline", Type = "bool", Nilable = false },
				{ Name = "isGameBusy", Type = "bool", Nilable = false },
				{ Name = "isGameAFK", Type = "bool", Nilable = false },
				{ Name = "wowProjectID", Type = "number", Nilable = true },
				{ Name = "characterName", Type = "string", Nilable = true },
				{ Name = "realmName", Type = "string", Nilable = true },
				{ Name = "realmDisplayName", Type = "string", Nilable = true },
				{ Name = "realmID", Type = "number", Nilable = true },
				{ Name = "factionName", Type = "string", Nilable = true },
				{ Name = "raceName", Type = "string", Nilable = true },
				{ Name = "className", Type = "string", Nilable = true },
				{ Name = "areaName", Type = "string", Nilable = true },
				{ Name = "characterLevel", Type = "number", Nilable = true },
				{ Name = "richPresence", Type = "string", Nilable = true },
				{ Name = "playerGuid", Type = "string", Nilable = true },
				{ Name = "isWowMobile", Type = "bool", Nilable = false },
				{ Name = "canSummon", Type = "bool", Nilable = false },
				{ Name = "hasFocus", Type = "bool", Nilable = false },
			},
		},
	},
};

APIDocumentation:AddDocumentationTable(BattleNet);local BattlePet =
{
	Name = "BattlePet",
	Type = "System",
	Namespace = "C_BattlePet",

	Functions =
	{
	},

	Events =
	{
		{
			Name = "PetBattleAbilityChanged",
			Type = "Event",
			LiteralName = "PET_BATTLE_ABILITY_CHANGED",
			Payload =
			{
				{ Name = "owner", Type = "number", Nilable = false },
				{ Name = "petIndex", Type = "number", Nilable = false },
				{ Name = "abilityID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "PetBattleActionSelected",
			Type = "Event",
			LiteralName = "PET_BATTLE_ACTION_SELECTED",
		},
		{
			Name = "PetBattleAuraApplied",
			Type = "Event",
			LiteralName = "PET_BATTLE_AURA_APPLIED",
			Payload =
			{
				{ Name = "owner", Type = "number", Nilable = false },
				{ Name = "petIndex", Type = "number", Nilable = false },
				{ Name = "auraInstanceID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "PetBattleAuraCanceled",
			Type = "Event",
			LiteralName = "PET_BATTLE_AURA_CANCELED",
			Payload =
			{
				{ Name = "owner", Type = "number", Nilable = false },
				{ Name = "petIndex", Type = "number", Nilable = false },
				{ Name = "auraInstanceID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "PetBattleAuraChanged",
			Type = "Event",
			LiteralName = "PET_BATTLE_AURA_CHANGED",
			Payload =
			{
				{ Name = "owner", Type = "number", Nilable = false },
				{ Name = "petIndex", Type = "number", Nilable = false },
				{ Name = "auraInstanceID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "PetBattleCaptured",
			Type = "Event",
			LiteralName = "PET_BATTLE_CAPTURED",
			Payload =
			{
				{ Name = "owner", Type = "number", Nilable = false },
				{ Name = "petIndex", Type = "number", Nilable = false },
			},
		},
		{
			Name = "PetBattleClose",
			Type = "Event",
			LiteralName = "PET_BATTLE_CLOSE",
		},
		{
			Name = "PetBattleFinalRound",
			Type = "Event",
			LiteralName = "PET_BATTLE_FINAL_ROUND",
			Payload =
			{
				{ Name = "owner", Type = "number", Nilable = false },
			},
		},
		{
			Name = "PetBattleHealthChanged",
			Type = "Event",
			LiteralName = "PET_BATTLE_HEALTH_CHANGED",
			Payload =
			{
				{ Name = "owner", Type = "number", Nilable = false },
				{ Name = "petIndex", Type = "number", Nilable = false },
				{ Name = "healthChange", Type = "number", Nilable = false },
			},
		},
		{
			Name = "PetBattleLevelChanged",
			Type = "Event",
			LiteralName = "PET_BATTLE_LEVEL_CHANGED",
			Payload =
			{
				{ Name = "owner", Type = "number", Nilable = false },
				{ Name = "petIndex", Type = "number", Nilable = false },
				{ Name = "newLevel", Type = "number", Nilable = false },
			},
		},
		{
			Name = "PetBattleMaxHealthChanged",
			Type = "Event",
			LiteralName = "PET_BATTLE_MAX_HEALTH_CHANGED",
			Payload =
			{
				{ Name = "owner", Type = "number", Nilable = false },
				{ Name = "petIndex", Type = "number", Nilable = false },
				{ Name = "healthChange", Type = "number", Nilable = false },
			},
		},
		{
			Name = "PetBattleOpeningDone",
			Type = "Event",
			LiteralName = "PET_BATTLE_OPENING_DONE",
		},
		{
			Name = "PetBattleOpeningStart",
			Type = "Event",
			LiteralName = "PET_BATTLE_OPENING_START",
		},
		{
			Name = "PetBattleOver",
			Type = "Event",
			LiteralName = "PET_BATTLE_OVER",
		},
		{
			Name = "PetBattleOverrideAbility",
			Type = "Event",
			LiteralName = "PET_BATTLE_OVERRIDE_ABILITY",
			Payload =
			{
				{ Name = "abilityIndex", Type = "number", Nilable = false },
			},
		},
		{
			Name = "PetBattlePetChanged",
			Type = "Event",
			LiteralName = "PET_BATTLE_PET_CHANGED",
			Payload =
			{
				{ Name = "owner", Type = "number", Nilable = false },
			},
		},
		{
			Name = "PetBattlePetRoundPlaybackComplete",
			Type = "Event",
			LiteralName = "PET_BATTLE_PET_ROUND_PLAYBACK_COMPLETE",
			Payload =
			{
				{ Name = "roundNumber", Type = "number", Nilable = false },
			},
		},
		{
			Name = "PetBattlePetRoundResults",
			Type = "Event",
			LiteralName = "PET_BATTLE_PET_ROUND_RESULTS",
			Payload =
			{
				{ Name = "roundNumber", Type = "number", Nilable = false },
			},
		},
		{
			Name = "PetBattlePetTypeChanged",
			Type = "Event",
			LiteralName = "PET_BATTLE_PET_TYPE_CHANGED",
			Payload =
			{
				{ Name = "owner", Type = "number", Nilable = false },
				{ Name = "petIndex", Type = "number", Nilable = false },
				{ Name = "stateValue", Type = "number", Nilable = false },
			},
		},
		{
			Name = "PetBattlePvpDuelRequestCancel",
			Type = "Event",
			LiteralName = "PET_BATTLE_PVP_DUEL_REQUEST_CANCEL",
		},
		{
			Name = "PetBattlePvpDuelRequested",
			Type = "Event",
			LiteralName = "PET_BATTLE_PVP_DUEL_REQUESTED",
			Payload =
			{
				{ Name = "fullName", Type = "string", Nilable = false },
			},
		},
		{
			Name = "PetBattleQueueProposalAccepted",
			Type = "Event",
			LiteralName = "PET_BATTLE_QUEUE_PROPOSAL_ACCEPTED",
		},
		{
			Name = "PetBattleQueueProposalDeclined",
			Type = "Event",
			LiteralName = "PET_BATTLE_QUEUE_PROPOSAL_DECLINED",
		},
		{
			Name = "PetBattleQueueProposeMatch",
			Type = "Event",
			LiteralName = "PET_BATTLE_QUEUE_PROPOSE_MATCH",
		},
		{
			Name = "PetBattleQueueStatus",
			Type = "Event",
			LiteralName = "PET_BATTLE_QUEUE_STATUS",
		},
		{
			Name = "PetBattleXpChanged",
			Type = "Event",
			LiteralName = "PET_BATTLE_XP_CHANGED",
			Payload =
			{
				{ Name = "owner", Type = "number", Nilable = false },
				{ Name = "petIndex", Type = "number", Nilable = false },
				{ Name = "xpChange", Type = "number", Nilable = false },
			},
		},
	},

	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(BattlePet);local BlackMarketInfo =
{
	Name = "BlackMarketInfo",
	Type = "System",
	Namespace = "C_BlackMarketInfo",

	Functions =
	{
	},

	Events =
	{
		{
			Name = "BlackMarketBidResult",
			Type = "Event",
			LiteralName = "BLACK_MARKET_BID_RESULT",
			Payload =
			{
				{ Name = "marketID", Type = "number", Nilable = false },
				{ Name = "resultCode", Type = "number", Nilable = false },
			},
		},
		{
			Name = "BlackMarketClose",
			Type = "Event",
			LiteralName = "BLACK_MARKET_CLOSE",
		},
		{
			Name = "BlackMarketItemUpdate",
			Type = "Event",
			LiteralName = "BLACK_MARKET_ITEM_UPDATE",
		},
		{
			Name = "BlackMarketOpen",
			Type = "Event",
			LiteralName = "BLACK_MARKET_OPEN",
		},
		{
			Name = "BlackMarketOutbid",
			Type = "Event",
			LiteralName = "BLACK_MARKET_OUTBID",
			Payload =
			{
				{ Name = "marketID", Type = "number", Nilable = false },
				{ Name = "itemID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "BlackMarketUnavailable",
			Type = "Event",
			LiteralName = "BLACK_MARKET_UNAVAILABLE",
		},
		{
			Name = "BlackMarketWon",
			Type = "Event",
			LiteralName = "BLACK_MARKET_WON",
			Payload =
			{
				{ Name = "marketID", Type = "number", Nilable = false },
				{ Name = "itemID", Type = "number", Nilable = false },
			},
		},
	},

	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(BlackMarketInfo);local Browser =
{
	Name = "Browser",
	Type = "System",
	Namespace = "C_Browser",

	Functions =
	{
	},

	Events =
	{
		{
			Name = "SimpleBrowserWebError",
			Type = "Event",
			LiteralName = "SIMPLE_BROWSER_WEB_ERROR",
			Payload =
			{
				{ Name = "errorCode", Type = "number", Nilable = false },
			},
		},
		{
			Name = "SimpleBrowserWebProxyFailed",
			Type = "Event",
			LiteralName = "SIMPLE_BROWSER_WEB_PROXY_FAILED",
		},
		{
			Name = "SimpleCheckoutClosed",
			Type = "Event",
			LiteralName = "SIMPLE_CHECKOUT_CLOSED",
		},
	},

	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(Browser);local CVar =
{
	Name = "CVarScripts",
	Type = "System",
	Namespace = "C_CVar",

	Functions =
	{
		{
			Name = "GetCVar",
			Type = "Function",

			Arguments =
			{
				{ Name = "name", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "value", Type = "string", Nilable = true },
			},
		},
		{
			Name = "GetCVarBitfield",
			Type = "Function",

			Arguments =
			{
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "index", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "value", Type = "bool", Nilable = true },
			},
		},
		{
			Name = "GetCVarBool",
			Type = "Function",

			Arguments =
			{
				{ Name = "name", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "value", Type = "bool", Nilable = true },
			},
		},
		{
			Name = "GetCVarDefault",
			Type = "Function",

			Arguments =
			{
				{ Name = "name", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "defaultValue", Type = "string", Nilable = true },
			},
		},
		{
			Name = "RegisterCVar",
			Type = "Function",

			Arguments =
			{
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "value", Type = "string", Nilable = true },
			},
		},
		{
			Name = "ResetTestCVars",
			Type = "Function",
		},
		{
			Name = "SetCVar",
			Type = "Function",

			Arguments =
			{
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "value", Type = "string", Nilable = true },
				{ Name = "scriptCVar", Type = "string", Nilable = true },
			},

			Returns =
			{
				{ Name = "success", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "SetCVarBitfield",
			Type = "Function",

			Arguments =
			{
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "index", Type = "number", Nilable = false },
				{ Name = "value", Type = "bool", Nilable = false },
				{ Name = "scriptCVar", Type = "string", Nilable = true },
			},

			Returns =
			{
				{ Name = "success", Type = "bool", Nilable = false },
			},
		},
	},

	Events =
	{
	},

	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(CVar);local Calendar =
{
	Name = "Calendar",
	Type = "System",
	Namespace = "C_Calendar",

	Functions =
	{
		{
			Name = "AddEvent",
			Type = "Function",
		},
		{
			Name = "AreNamesReady",
			Type = "Function",

			Returns =
			{
				{ Name = "ready", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "CanAddEvent",
			Type = "Function",

			Returns =
			{
				{ Name = "canAddEvent", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "CanSendInvite",
			Type = "Function",

			Returns =
			{
				{ Name = "canSendInvite", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "CloseEvent",
			Type = "Function",
		},
		{
			Name = "ContextMenuEventCanComplain",
			Type = "Function",

			Arguments =
			{
				{ Name = "offsetMonths", Type = "number", Nilable = false },
				{ Name = "monthDay", Type = "number", Nilable = false },
				{ Name = "eventIndex", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "canComplain", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ContextMenuEventCanEdit",
			Type = "Function",

			Arguments =
			{
				{ Name = "offsetMonths", Type = "number", Nilable = false },
				{ Name = "monthDay", Type = "number", Nilable = false },
				{ Name = "eventIndex", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "canEdit", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ContextMenuEventCanRemove",
			Type = "Function",

			Arguments =
			{
				{ Name = "offsetMonths", Type = "number", Nilable = false },
				{ Name = "monthDay", Type = "number", Nilable = false },
				{ Name = "eventIndex", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "canRemove", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ContextMenuEventClipboard",
			Type = "Function",

			Returns =
			{
				{ Name = "exists", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ContextMenuEventComplain",
			Type = "Function",
		},
		{
			Name = "ContextMenuEventCopy",
			Type = "Function",
		},
		{
			Name = "ContextMenuEventGetCalendarType",
			Type = "Function",

			Returns =
			{
				{ Name = "calendarType", Type = "string", Nilable = true },
			},
		},
		{
			Name = "ContextMenuEventPaste",
			Type = "Function",

			Arguments =
			{
				{ Name = "offsetMonths", Type = "number", Nilable = false },
				{ Name = "monthDay", Type = "number", Nilable = false },
			},
		},
		{
			Name = "ContextMenuEventRemove",
			Type = "Function",
		},
		{
			Name = "ContextMenuEventSignUp",
			Type = "Function",
		},
		{
			Name = "ContextMenuGetEventIndex",
			Type = "Function",

			Returns =
			{
				{ Name = "info", Type = "CalendarEventIndexInfo", Nilable = false },
			},
		},
		{
			Name = "ContextMenuInviteAvailable",
			Type = "Function",
		},
		{
			Name = "ContextMenuInviteDecline",
			Type = "Function",
		},
		{
			Name = "ContextMenuInviteRemove",
			Type = "Function",
		},
		{
			Name = "ContextMenuInviteTentative",
			Type = "Function",
		},
		{
			Name = "ContextMenuSelectEvent",
			Type = "Function",

			Arguments =
			{
				{ Name = "offsetMonths", Type = "number", Nilable = false },
				{ Name = "monthDay", Type = "number", Nilable = false },
				{ Name = "eventIndex", Type = "number", Nilable = false },
			},
		},
		{
			Name = "CreateCommunitySignUpEvent",
			Type = "Function",
		},
		{
			Name = "CreateGuildAnnouncementEvent",
			Type = "Function",
		},
		{
			Name = "CreateGuildSignUpEvent",
			Type = "Function",
		},
		{
			Name = "CreatePlayerEvent",
			Type = "Function",
		},
		{
			Name = "EventAvailable",
			Type = "Function",
		},
		{
			Name = "EventCanEdit",
			Type = "Function",

			Returns =
			{
				{ Name = "canEdit", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "EventClearAutoApprove",
			Type = "Function",
		},
		{
			Name = "EventClearLocked",
			Type = "Function",
		},
		{
			Name = "EventClearModerator",
			Type = "Function",

			Arguments =
			{
				{ Name = "inviteIndex", Type = "number", Nilable = false },
			},
		},
		{
			Name = "EventDecline",
			Type = "Function",
		},
		{
			Name = "EventGetCalendarType",
			Type = "Function",

			Returns =
			{
				{ Name = "calendarType", Type = "string", Nilable = true },
			},
		},
		{
			Name = "EventGetClubId",
			Type = "Function",

			Returns =
			{
				{ Name = "info", Type = "string", Nilable = true },
			},
		},
		{
			Name = "EventGetInvite",
			Type = "Function",

			Arguments =
			{
				{ Name = "eventIndex", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "info", Type = "CalendarEventInviteInfo", Nilable = false },
			},
		},
		{
			Name = "EventGetInviteResponseTime",
			Type = "Function",

			Arguments =
			{
				{ Name = "eventIndex", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "time", Type = "CalendarTime", Nilable = false },
			},
		},
		{
			Name = "EventGetInviteSortCriterion",
			Type = "Function",

			Returns =
			{
				{ Name = "criterion", Type = "string", Nilable = false },
				{ Name = "reverse", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "EventGetSelectedInvite",
			Type = "Function",

			Returns =
			{
				{ Name = "inviteIndex", Type = "number", Nilable = true },
			},
		},
		{
			Name = "EventGetStatusOptions",
			Type = "Function",

			Arguments =
			{
				{ Name = "eventIndex", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "options", Type = "table", InnerType = "CalendarEventStatusOption", Nilable = false },
			},
		},
		{
			Name = "EventGetTextures",
			Type = "Function",

			Arguments =
			{
				{ Name = "eventType", Type = "CalendarEventType", Nilable = false },
			},

			Returns =
			{
				{ Name = "textures", Type = "table", InnerType = "CalendarEventTextureInfo", Nilable = false },
			},
		},
		{
			Name = "EventGetTypes",
			Type = "Function",

			Returns =
			{
				{ Name = "types", Type = "table", InnerType = "string", Nilable = false },
			},
		},
		{
			Name = "EventGetTypesDisplayOrdered",
			Type = "Function",

			Returns =
			{
				{ Name = "infos", Type = "table", InnerType = "CalendarEventTypeDisplayInfo", Nilable = false },
			},
		},
		{
			Name = "EventHasPendingInvite",
			Type = "Function",

			Returns =
			{
				{ Name = "hasPendingInvite", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "EventHaveSettingsChanged",
			Type = "Function",

			Returns =
			{
				{ Name = "haveSettingsChanged", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "EventInvite",
			Type = "Function",

			Arguments =
			{
				{ Name = "name", Type = "string", Nilable = false },
			},
		},
		{
			Name = "EventRemoveInvite",
			Type = "Function",

			Arguments =
			{
				{ Name = "inviteIndex", Type = "number", Nilable = false },
			},
		},
		{
			Name = "EventRemoveInviteByGuid",
			Type = "Function",

			Arguments =
			{
				{ Name = "guid", Type = "string", Nilable = false },
			},
		},
		{
			Name = "EventSelectInvite",
			Type = "Function",

			Arguments =
			{
				{ Name = "inviteIndex", Type = "number", Nilable = false },
			},
		},
		{
			Name = "EventSetAutoApprove",
			Type = "Function",
		},
		{
			Name = "EventSetClubId",
			Type = "Function",

			Arguments =
			{
				{ Name = "clubId", Type = "string", Nilable = true },
			},
		},
		{
			Name = "EventSetDate",
			Type = "Function",

			Arguments =
			{
				{ Name = "month", Type = "number", Nilable = false },
				{ Name = "monthDay", Type = "number", Nilable = false },
				{ Name = "year", Type = "number", Nilable = false },
			},
		},
		{
			Name = "EventSetDescription",
			Type = "Function",

			Arguments =
			{
				{ Name = "description", Type = "string", Nilable = false },
			},
		},
		{
			Name = "EventSetInviteStatus",
			Type = "Function",

			Arguments =
			{
				{ Name = "eventIndex", Type = "number", Nilable = false },
				{ Name = "status", Type = "CalendarStatus", Nilable = false },
			},
		},
		{
			Name = "EventSetLocked",
			Type = "Function",
		},
		{
			Name = "EventSetModerator",
			Type = "Function",

			Arguments =
			{
				{ Name = "inviteIndex", Type = "number", Nilable = false },
			},
		},
		{
			Name = "EventSetTextureID",
			Type = "Function",

			Arguments =
			{
				{ Name = "textureIndex", Type = "number", Nilable = false },
			},
		},
		{
			Name = "EventSetTime",
			Type = "Function",

			Arguments =
			{
				{ Name = "hour", Type = "number", Nilable = false },
				{ Name = "minute", Type = "number", Nilable = false },
			},
		},
		{
			Name = "EventSetTitle",
			Type = "Function",

			Arguments =
			{
				{ Name = "title", Type = "string", Nilable = false },
			},
		},
		{
			Name = "EventSetType",
			Type = "Function",

			Arguments =
			{
				{ Name = "typeIndex", Type = "CalendarEventType", Nilable = false },
			},
		},
		{
			Name = "EventSignUp",
			Type = "Function",
		},
		{
			Name = "EventSortInvites",
			Type = "Function",

			Arguments =
			{
				{ Name = "criterion", Type = "string", Nilable = false },
				{ Name = "reverse", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "EventTentative",
			Type = "Function",
		},
		{
			Name = "GetClubCalendarEvents",
			Type = "Function",

			Arguments =
			{
				{ Name = "clubId", Type = "string", Nilable = false },
				{ Name = "startTime", Type = "CalendarTime", Nilable = false },
				{ Name = "endTime", Type = "CalendarTime", Nilable = false },
			},

			Returns =
			{
				{ Name = "events", Type = "table", InnerType = "CalendarDayEvent", Nilable = false },
			},
		},
		{
			Name = "GetDayEvent",
			Type = "Function",

			Arguments =
			{
				{ Name = "monthOffset", Type = "number", Nilable = false },
				{ Name = "monthDay", Type = "number", Nilable = false },
				{ Name = "index", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "event", Type = "CalendarDayEvent", Nilable = false },
			},
		},
		{
			Name = "GetDefaultGuildFilter",
			Type = "Function",

			Returns =
			{
				{ Name = "info", Type = "CalendarGuildFilterInfo", Nilable = false },
			},
		},
		{
			Name = "GetEventIndex",
			Type = "Function",

			Returns =
			{
				{ Name = "info", Type = "CalendarEventIndexInfo", Nilable = false },
			},
		},
		{
			Name = "GetEventIndexInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "eventID", Type = "string", Nilable = false },
				{ Name = "monthOffset", Type = "number", Nilable = true },
				{ Name = "monthDay", Type = "number", Nilable = true },
			},

			Returns =
			{
				{ Name = "eventIndexInfo", Type = "CalendarEventIndexInfo", Nilable = true },
			},
		},
		{
			Name = "GetEventInfo",
			Type = "Function",

			Returns =
			{
				{ Name = "info", Type = "CalendarEventInfo", Nilable = false },
			},
		},
		{
			Name = "GetFirstPendingInvite",
			Type = "Function",

			Arguments =
			{
				{ Name = "offsetMonths", Type = "number", Nilable = false },
				{ Name = "monthDay", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "firstPendingInvite", Type = "number", Nilable = true },
			},
		},
		{
			Name = "GetGuildEventInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "index", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "info", Type = "CalendarGuildEventInfo", Nilable = false },
			},
		},
		{
			Name = "GetGuildEventSelectionInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "index", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "info", Type = "CalendarEventIndexInfo", Nilable = false },
			},
		},
		{
			Name = "GetHolidayInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "monthOffset", Type = "number", Nilable = false },
				{ Name = "monthDay", Type = "number", Nilable = false },
				{ Name = "index", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "event", Type = "CalendarHolidayInfo", Nilable = false },
			},
		},
		{
			Name = "GetMaxCreateDate",
			Type = "Function",

			Returns =
			{
				{ Name = "maxCreateDate", Type = "CalendarTime", Nilable = false },
			},
		},
		{
			Name = "GetMinDate",
			Type = "Function",

			Returns =
			{
				{ Name = "minDate", Type = "CalendarTime", Nilable = false },
			},
		},
		{
			Name = "GetMonthInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "offsetMonths", Type = "number", Nilable = false, Default = 0 },
			},

			Returns =
			{
				{ Name = "monthInfo", Type = "CalendarMonthInfo", Nilable = false },
			},
		},
		{
			Name = "GetNextClubId",
			Type = "Function",

			Returns =
			{
				{ Name = "clubId", Type = "string", Nilable = true },
			},
		},
		{
			Name = "GetNumDayEvents",
			Type = "Function",

			Arguments =
			{
				{ Name = "offsetMonths", Type = "number", Nilable = false },
				{ Name = "monthDay", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "numDayEvents", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetNumGuildEvents",
			Type = "Function",

			Returns =
			{
				{ Name = "numGuildEvents", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetNumInvites",
			Type = "Function",

			Returns =
			{
				{ Name = "num", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetNumPendingInvites",
			Type = "Function",

			Returns =
			{
				{ Name = "num", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetRaidInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "offsetMonths", Type = "number", Nilable = false },
				{ Name = "monthDay", Type = "number", Nilable = false },
				{ Name = "eventIndex", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "info", Type = "CalendarRaidInfo", Nilable = false },
			},
		},
		{
			Name = "IsActionPending",
			Type = "Function",

			Returns =
			{
				{ Name = "actionPending", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsEventOpen",
			Type = "Function",

			Returns =
			{
				{ Name = "isOpen", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "MassInviteCommunity",
			Type = "Function",

			Arguments =
			{
				{ Name = "clubId", Type = "string", Nilable = false },
				{ Name = "minLevel", Type = "number", Nilable = false },
				{ Name = "maxLevel", Type = "number", Nilable = false },
				{ Name = "maxRankOrder", Type = "number", Nilable = true },
			},
		},
		{
			Name = "MassInviteGuild",
			Type = "Function",

			Arguments =
			{
				{ Name = "minLevel", Type = "number", Nilable = false },
				{ Name = "maxLevel", Type = "number", Nilable = false },
				{ Name = "maxRankOrder", Type = "number", Nilable = false },
			},
		},
		{
			Name = "OpenCalendar",
			Type = "Function",
		},
		{
			Name = "OpenEvent",
			Type = "Function",

			Arguments =
			{
				{ Name = "offsetMonths", Type = "number", Nilable = false },
				{ Name = "monthDay", Type = "number", Nilable = false },
				{ Name = "index", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "success", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "RemoveEvent",
			Type = "Function",
		},
		{
			Name = "SetAbsMonth",
			Type = "Function",

			Arguments =
			{
				{ Name = "month", Type = "number", Nilable = false },
				{ Name = "year", Type = "number", Nilable = false },
			},
		},
		{
			Name = "SetMonth",
			Type = "Function",

			Arguments =
			{
				{ Name = "offsetMonths", Type = "number", Nilable = false },
			},
		},
		{
			Name = "SetNextClubId",
			Type = "Function",

			Arguments =
			{
				{ Name = "clubId", Type = "string", Nilable = true },
			},
		},
		{
			Name = "UpdateEvent",
			Type = "Function",
		},
	},

	Events =
	{
		{
			Name = "CalendarActionPending",
			Type = "Event",
			LiteralName = "CALENDAR_ACTION_PENDING",
			Payload =
			{
				{ Name = "pending", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "CalendarCloseEvent",
			Type = "Event",
			LiteralName = "CALENDAR_CLOSE_EVENT",
		},
		{
			Name = "CalendarEventAlarm",
			Type = "Event",
			LiteralName = "CALENDAR_EVENT_ALARM",
			Payload =
			{
				{ Name = "title", Type = "string", Nilable = false },
				{ Name = "hour", Type = "number", Nilable = false },
				{ Name = "minute", Type = "number", Nilable = false },
			},
		},
		{
			Name = "CalendarNewEvent",
			Type = "Event",
			LiteralName = "CALENDAR_NEW_EVENT",
			Payload =
			{
				{ Name = "isCopy", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "CalendarOpenEvent",
			Type = "Event",
			LiteralName = "CALENDAR_OPEN_EVENT",
			Payload =
			{
				{ Name = "calendarType", Type = "string", Nilable = false },
			},
		},
		{
			Name = "CalendarUpdateError",
			Type = "Event",
			LiteralName = "CALENDAR_UPDATE_ERROR",
			Payload =
			{
				{ Name = "errorReason", Type = "string", Nilable = false },
			},
		},
		{
			Name = "CalendarUpdateErrorWithCount",
			Type = "Event",
			LiteralName = "CALENDAR_UPDATE_ERROR_WITH_COUNT",
			Payload =
			{
				{ Name = "errorReason", Type = "string", Nilable = false },
				{ Name = "count", Type = "number", Nilable = false },
			},
		},
		{
			Name = "CalendarUpdateErrorWithPlayerName",
			Type = "Event",
			LiteralName = "CALENDAR_UPDATE_ERROR_WITH_PLAYER_NAME",
			Payload =
			{
				{ Name = "errorReason", Type = "string", Nilable = false },
				{ Name = "playerName", Type = "string", Nilable = false },
			},
		},
		{
			Name = "CalendarUpdateEvent",
			Type = "Event",
			LiteralName = "CALENDAR_UPDATE_EVENT",
		},
		{
			Name = "CalendarUpdateEventList",
			Type = "Event",
			LiteralName = "CALENDAR_UPDATE_EVENT_LIST",
		},
		{
			Name = "CalendarUpdateGuildEvents",
			Type = "Event",
			LiteralName = "CALENDAR_UPDATE_GUILD_EVENTS",
		},
		{
			Name = "CalendarUpdateInviteList",
			Type = "Event",
			LiteralName = "CALENDAR_UPDATE_INVITE_LIST",
			Payload =
			{
				{ Name = "hasCompleteList", Type = "bool", Nilable = true },
			},
		},
		{
			Name = "CalendarUpdatePendingInvites",
			Type = "Event",
			LiteralName = "CALENDAR_UPDATE_PENDING_INVITES",
		},
	},

	Tables =
	{
		{
			Name = "CalendarDayEvent",
			Type = "Structure",
			Fields =
			{
				{ Name = "eventID", Type = "string", Nilable = false },
				{ Name = "title", Type = "string", Nilable = false },
				{ Name = "isCustomTitle", Type = "bool", Nilable = false },
				{ Name = "startTime", Type = "CalendarTime", Nilable = false },
				{ Name = "endTime", Type = "CalendarTime", Nilable = false },
				{ Name = "calendarType", Type = "string", Nilable = false },
				{ Name = "sequenceType", Type = "string", Nilable = false },
				{ Name = "eventType", Type = "CalendarEventType", Nilable = false },
				{ Name = "iconTexture", Type = "number", Nilable = true },
				{ Name = "modStatus", Type = "string", Nilable = false },
				{ Name = "inviteStatus", Type = "number", Nilable = false },
				{ Name = "invitedBy", Type = "string", Nilable = false },
				{ Name = "difficulty", Type = "number", Nilable = false },
				{ Name = "inviteType", Type = "number", Nilable = false },
				{ Name = "sequenceIndex", Type = "number", Nilable = false },
				{ Name = "numSequenceDays", Type = "number", Nilable = false },
				{ Name = "difficultyName", Type = "string", Nilable = false },
				{ Name = "dontDisplayBanner", Type = "bool", Nilable = false },
				{ Name = "dontDisplayEnd", Type = "bool", Nilable = false },
				{ Name = "clubID", Type = "string", Nilable = false },
				{ Name = "isLocked", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "CalendarEventIndexInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "offsetMonths", Type = "number", Nilable = false },
				{ Name = "monthDay", Type = "number", Nilable = false },
				{ Name = "eventIndex", Type = "number", Nilable = false },
			},
		},
		{
			Name = "CalendarEventInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "title", Type = "string", Nilable = false },
				{ Name = "description", Type = "string", Nilable = false },
				{ Name = "creator", Type = "string", Nilable = true },
				{ Name = "eventType", Type = "CalendarEventType", Nilable = false },
				{ Name = "repeatOption", Type = "number", Nilable = false },
				{ Name = "maxSize", Type = "number", Nilable = false },
				{ Name = "textureIndex", Type = "number", Nilable = true },
				{ Name = "time", Type = "CalendarTime", Nilable = false },
				{ Name = "lockoutTime", Type = "CalendarTime", Nilable = false },
				{ Name = "isLocked", Type = "bool", Nilable = false },
				{ Name = "isAutoApprove", Type = "bool", Nilable = false },
				{ Name = "hasPendingInvite", Type = "bool", Nilable = false },
				{ Name = "inviteStatus", Type = "number", Nilable = true },
				{ Name = "inviteType", Type = "number", Nilable = true },
				{ Name = "calendarType", Type = "string", Nilable = false },
				{ Name = "communityName", Type = "string", Nilable = true },
			},
		},
		{
			Name = "CalendarEventInviteInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "name", Type = "string", Nilable = true },
				{ Name = "level", Type = "number", Nilable = false },
				{ Name = "className", Type = "string", Nilable = true },
				{ Name = "classFilename", Type = "string", Nilable = true },
				{ Name = "inviteStatus", Type = "number", Nilable = true },
				{ Name = "modStatus", Type = "string", Nilable = true },
				{ Name = "inviteIsMine", Type = "bool", Nilable = false },
				{ Name = "type", Type = "number", Nilable = false },
				{ Name = "notes", Type = "string", Nilable = false },
				{ Name = "classID", Type = "number", Nilable = true },
				{ Name = "guid", Type = "string", Nilable = false },
			},
		},
		{
			Name = "CalendarEventStatusOption",
			Type = "Structure",
			Fields =
			{
				{ Name = "status", Type = "CalendarStatus", Nilable = false },
				{ Name = "statusString", Type = "string", Nilable = false },
			},
		},
		{
			Name = "CalendarEventTextureInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "title", Type = "string", Nilable = false },
				{ Name = "iconTexture", Type = "number", Nilable = false },
				{ Name = "expansionLevel", Type = "number", Nilable = false },
				{ Name = "difficultyId", Type = "number", Nilable = true },
				{ Name = "mapId", Type = "number", Nilable = true },
				{ Name = "isLfr", Type = "bool", Nilable = true },
			},
		},
		{
			Name = "CalendarEventTypeDisplayInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "displayString", Type = "string", Nilable = false },
				{ Name = "eventType", Type = "CalendarEventType", Nilable = false },
			},
		},
		{
			Name = "CalendarGuildEventInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "eventID", Type = "string", Nilable = false },
				{ Name = "year", Type = "number", Nilable = false },
				{ Name = "month", Type = "number", Nilable = false },
				{ Name = "monthDay", Type = "number", Nilable = false },
				{ Name = "weekday", Type = "number", Nilable = false },
				{ Name = "hour", Type = "number", Nilable = false },
				{ Name = "minute", Type = "number", Nilable = false },
				{ Name = "eventType", Type = "CalendarEventType", Nilable = false },
				{ Name = "title", Type = "string", Nilable = false },
				{ Name = "calendarType", Type = "string", Nilable = false },
				{ Name = "texture", Type = "number", Nilable = false },
				{ Name = "inviteStatus", Type = "number", Nilable = false },
				{ Name = "clubID", Type = "string", Nilable = false },
			},
		},
		{
			Name = "CalendarGuildFilterInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "minLevel", Type = "number", Nilable = false },
				{ Name = "maxLevel", Type = "number", Nilable = false },
				{ Name = "rank", Type = "number", Nilable = false },
			},
		},
		{
			Name = "CalendarHolidayInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "description", Type = "string", Nilable = false },
				{ Name = "texture", Type = "number", Nilable = false },
				{ Name = "startTime", Type = "CalendarTime", Nilable = true },
				{ Name = "endTime", Type = "CalendarTime", Nilable = true },
			},
		},
		{
			Name = "CalendarMonthInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "month", Type = "number", Nilable = false },
				{ Name = "year", Type = "number", Nilable = false },
				{ Name = "numDays", Type = "number", Nilable = false },
				{ Name = "firstWeekday", Type = "number", Nilable = false },
			},
		},
		{
			Name = "CalendarRaidInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "calendarType", Type = "string", Nilable = false },
				{ Name = "raidID", Type = "number", Nilable = false },
				{ Name = "time", Type = "CalendarTime", Nilable = false },
				{ Name = "difficulty", Type = "number", Nilable = false },
				{ Name = "difficultyName", Type = "string", Nilable = true },
			},
		},
	},
};

APIDocumentation:AddDocumentationTable(Calendar);local ChallengeModeInfo =
{
	Name = "ChallengeModeInfo",
	Type = "System",
	Namespace = "C_ChallengeMode",

	Functions =
	{
		{
			Name = "ClearKeystone",
			Type = "Function",
		},
		{
			Name = "CloseKeystoneFrame",
			Type = "Function",
		},
		{
			Name = "GetActiveChallengeMapID",
			Type = "Function",

			Returns =
			{
				{ Name = "mapChallengeModeID", Type = "number", Nilable = true },
			},
		},
		{
			Name = "GetActiveKeystoneInfo",
			Type = "Function",

			Returns =
			{
				{ Name = "activeKeystoneLevel", Type = "number", Nilable = false },
				{ Name = "activeAffixIDs", Type = "table", InnerType = "number", Nilable = false },
				{ Name = "wasActiveKeystoneCharged", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "GetAffixInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "affixID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "description", Type = "string", Nilable = false },
				{ Name = "filedataid", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetCompletionInfo",
			Type = "Function",

			Returns =
			{
				{ Name = "mapChallengeModeID", Type = "number", Nilable = false },
				{ Name = "level", Type = "number", Nilable = false },
				{ Name = "time", Type = "number", Nilable = false },
				{ Name = "onTime", Type = "bool", Nilable = false },
				{ Name = "keystoneUpgradeLevels", Type = "number", Nilable = false },
				{ Name = "practiceRun", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "GetDeathCount",
			Type = "Function",

			Returns =
			{
				{ Name = "numDeaths", Type = "number", Nilable = false },
				{ Name = "timeLost", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetGuildLeaders",
			Type = "Function",

			Returns =
			{
				{ Name = "topAttempt", Type = "table", InnerType = "ChallengeModeGuildTopAttempt", Nilable = false },
			},
		},
		{
			Name = "GetMapTable",
			Type = "Function",

			Returns =
			{
				{ Name = "mapChallengeModeIDs", Type = "table", InnerType = "number", Nilable = false },
			},
		},
		{
			Name = "GetMapUIInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "mapChallengeModeID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "id", Type = "number", Nilable = false },
				{ Name = "timeLimit", Type = "number", Nilable = false },
				{ Name = "texture", Type = "number", Nilable = true },
				{ Name = "backgroundTexture", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetPowerLevelDamageHealthMod",
			Type = "Function",

			Arguments =
			{
				{ Name = "powerLevel", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "damageMod", Type = "number", Nilable = false },
				{ Name = "healthMod", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetSlottedKeystoneInfo",
			Type = "Function",

			Returns =
			{
				{ Name = "mapChallengeModeID", Type = "number", Nilable = false },
				{ Name = "affixIDs", Type = "table", InnerType = "number", Nilable = false },
				{ Name = "keystoneLevel", Type = "number", Nilable = false },
			},
		},
		{
			Name = "HasSlottedKeystone",
			Type = "Function",

			Returns =
			{
				{ Name = "hasSlottedKeystone", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsChallengeModeActive",
			Type = "Function",

			Returns =
			{
				{ Name = "challengeModeActive", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "RemoveKeystone",
			Type = "Function",

			Returns =
			{
				{ Name = "removalSuccessful", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "RequestLeaders",
			Type = "Function",

			Arguments =
			{
				{ Name = "mapChallengeModeID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "Reset",
			Type = "Function",
		},
		{
			Name = "SetKeystoneTooltip",
			Type = "Function",
		},
		{
			Name = "SlotKeystone",
			Type = "Function",
		},
		{
			Name = "StartChallengeMode",
			Type = "Function",

			Returns =
			{
				{ Name = "success", Type = "bool", Nilable = false },
			},
		},
	},

	Events =
	{
		{
			Name = "ChallengeModeCompleted",
			Type = "Event",
			LiteralName = "CHALLENGE_MODE_COMPLETED",
		},
		{
			Name = "ChallengeModeDeathCountUpdated",
			Type = "Event",
			LiteralName = "CHALLENGE_MODE_DEATH_COUNT_UPDATED",
		},
		{
			Name = "ChallengeModeKeystoneReceptableOpen",
			Type = "Event",
			LiteralName = "CHALLENGE_MODE_KEYSTONE_RECEPTABLE_OPEN",
		},
		{
			Name = "ChallengeModeKeystoneSlotted",
			Type = "Event",
			LiteralName = "CHALLENGE_MODE_KEYSTONE_SLOTTED",
			Payload =
			{
				{ Name = "keystoneID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "ChallengeModeLeadersUpdate",
			Type = "Event",
			LiteralName = "CHALLENGE_MODE_LEADERS_UPDATE",
		},
		{
			Name = "ChallengeModeMapsUpdate",
			Type = "Event",
			LiteralName = "CHALLENGE_MODE_MAPS_UPDATE",
		},
		{
			Name = "ChallengeModeMemberInfoUpdated",
			Type = "Event",
			LiteralName = "CHALLENGE_MODE_MEMBER_INFO_UPDATED",
		},
		{
			Name = "ChallengeModeReset",
			Type = "Event",
			LiteralName = "CHALLENGE_MODE_RESET",
			Payload =
			{
				{ Name = "mapID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "ChallengeModeStart",
			Type = "Event",
			LiteralName = "CHALLENGE_MODE_START",
			Payload =
			{
				{ Name = "mapID", Type = "number", Nilable = false },
			},
		},
	},

	Tables =
	{
		{
			Name = "ChallengeModeGuildAttemptMember",
			Type = "Structure",
			Fields =
			{
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "classFileName", Type = "string", Nilable = false },
			},
		},
		{
			Name = "ChallengeModeGuildTopAttempt",
			Type = "Structure",
			Fields =
			{
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "classFileName", Type = "string", Nilable = false },
				{ Name = "keystoneLevel", Type = "number", Nilable = false },
				{ Name = "mapChallengeModeID", Type = "number", Nilable = false },
				{ Name = "isYou", Type = "bool", Nilable = false },
				{ Name = "members", Type = "table", InnerType = "ChallengeModeGuildAttemptMember", Nilable = false },
			},
		},
	},
};

APIDocumentation:AddDocumentationTable(ChallengeModeInfo);local ChatBubbles =
{
	Name = "ChatBubbles",
	Type = "System",
	Namespace = "C_ChatBubbles",

	Functions =
	{
		{
			Name = "GetAllChatBubbles",
			Type = "Function",

			Arguments =
			{
				{ Name = "includeForbidden", Type = "bool", Nilable = false, Default = false },
			},

			Returns =
			{
				{ Name = "chatBubbles", Type = "table", InnerType = "table", Nilable = false },
			},
		},
	},

	Events =
	{
	},

	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(ChatBubbles);local ChatInfo =
{
	Name = "ChatInfo",
	Type = "System",
	Namespace = "C_ChatInfo",

	Functions =
	{
		{
			Name = "GetChannelRosterInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "channelIndex", Type = "number", Nilable = false },
				{ Name = "rosterIndex", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "owner", Type = "bool", Nilable = false },
				{ Name = "moderator", Type = "bool", Nilable = false },
				{ Name = "guid", Type = "string", Nilable = false },
			},
		},
		{
			Name = "GetChannelRuleset",
			Type = "Function",

			Arguments =
			{
				{ Name = "channelIndex", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "ruleset", Type = "ChatChannelRuleset", Nilable = false },
			},
		},
		{
			Name = "GetChannelRulesetForChannelID",
			Type = "Function",

			Arguments =
			{
				{ Name = "channelID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "ruleset", Type = "ChatChannelRuleset", Nilable = false },
			},
		},
		{
			Name = "GetChannelShortcutForChannelID",
			Type = "Function",

			Arguments =
			{
				{ Name = "channelID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "shortcut", Type = "string", Nilable = false },
			},
		},
		{
			Name = "GetClubStreamIDs",
			Type = "Function",

			Arguments =
			{
				{ Name = "clubID", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "ids", Type = "table", InnerType = "string", Nilable = false },
			},
		},
		{
			Name = "GetNumActiveChannels",
			Type = "Function",

			Returns =
			{
				{ Name = "numChannels", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetRegisteredAddonMessagePrefixes",
			Type = "Function",

			Returns =
			{
				{ Name = "registeredPrefixes", Type = "table", InnerType = "string", Nilable = false },
			},
		},
		{
			Name = "IsAddonMessagePrefixRegistered",
			Type = "Function",

			Arguments =
			{
				{ Name = "prefix", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "isRegistered", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsPartyChannelType",
			Type = "Function",

			Arguments =
			{
				{ Name = "channelType", Type = "ChatChannelType", Nilable = false },
			},

			Returns =
			{
				{ Name = "isPartyChannelType", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsValidChatLine",
			Type = "Function",

			Arguments =
			{
				{ Name = "chatLine", Type = "number", Nilable = true },
			},

			Returns =
			{
				{ Name = "isValid", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "RegisterAddonMessagePrefix",
			Type = "Function",
			Documentation = { "Registers interest in addon messages with this prefix, cannot be an empty string." },

			Arguments =
			{
				{ Name = "prefix", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "successfulRequest", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ReplaceIconAndGroupExpressions",
			Type = "Function",

			Arguments =
			{
				{ Name = "input", Type = "string", Nilable = false },
				{ Name = "noIconReplacement", Type = "bool", Nilable = true },
				{ Name = "noGroupReplacement", Type = "bool", Nilable = true },
			},

			Returns =
			{
				{ Name = "output", Type = "string", Nilable = false },
			},
		},
		{
			Name = "ResetDefaultZoneChannels",
			Type = "Function",
		},
		{
			Name = "SendAddonMessage",
			Type = "Function",
			Documentation = { "Sends a text payload to other clients specified by chatChannel and target which are registered to listen for prefix." },

			Arguments =
			{
				{ Name = "prefix", Type = "string", Nilable = false },
				{ Name = "message", Type = "string", Nilable = false },
				{ Name = "chatType", Type = "string", Nilable = true, Documentation = { "ChatType, defaults to SLASH_CMD_PARTY." } },
				{ Name = "target", Type = "string", Nilable = true, Documentation = { "Only applies for targeted channels" } },
			},

			Returns =
			{
				{ Name = "success", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "SendAddonMessageLogged",
			Type = "Function",
			Documentation = { "Sends a text payload to other clients specified by chatChannel and target which are registered to listen for prefix. Intended for plain text payloads; logged and throttled." },

			Arguments =
			{
				{ Name = "prefix", Type = "string", Nilable = false },
				{ Name = "message", Type = "string", Nilable = false },
				{ Name = "chatType", Type = "string", Nilable = true, Documentation = { "ChatType, defaults to SLASH_CMD_PARTY." } },
				{ Name = "target", Type = "string", Nilable = true, Documentation = { "Only applies for targeted channels" } },
			},

			Returns =
			{
				{ Name = "success", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "SwapChatChannelsByChannelIndex",
			Type = "Function",

			Arguments =
			{
				{ Name = "firstChannelIndex", Type = "number", Nilable = false },
				{ Name = "secondChannelIndex", Type = "number", Nilable = false },
			},
		},
	},

	Events =
	{
		{
			Name = "AlternativeDefaultLanguageChanged",
			Type = "Event",
			LiteralName = "ALTERNATIVE_DEFAULT_LANGUAGE_CHANGED",
		},
		{
			Name = "BnChatMsgAddon",
			Type = "Event",
			LiteralName = "BN_CHAT_MSG_ADDON",
			Payload =
			{
				{ Name = "prefix", Type = "string", Nilable = false },
				{ Name = "text", Type = "string", Nilable = false },
				{ Name = "channel", Type = "string", Nilable = false },
				{ Name = "senderID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "ChannelCountUpdate",
			Type = "Event",
			LiteralName = "CHANNEL_COUNT_UPDATE",
			Payload =
			{
				{ Name = "displayIndex", Type = "number", Nilable = false },
				{ Name = "count", Type = "number", Nilable = false },
			},
		},
		{
			Name = "ChannelFlagsUpdated",
			Type = "Event",
			LiteralName = "CHANNEL_FLAGS_UPDATED",
			Payload =
			{
				{ Name = "displayIndex", Type = "number", Nilable = false },
			},
		},
		{
			Name = "ChannelInviteRequest",
			Type = "Event",
			LiteralName = "CHANNEL_INVITE_REQUEST",
			Payload =
			{
				{ Name = "channelID", Type = "string", Nilable = false },
				{ Name = "name", Type = "string", Nilable = false },
			},
		},
		{
			Name = "ChannelLeft",
			Type = "Event",
			LiteralName = "CHANNEL_LEFT",
			Payload =
			{
				{ Name = "chatChannelID", Type = "number", Nilable = false },
				{ Name = "name", Type = "string", Nilable = false },
			},
		},
		{
			Name = "ChannelPasswordRequest",
			Type = "Event",
			LiteralName = "CHANNEL_PASSWORD_REQUEST",
			Payload =
			{
				{ Name = "channelID", Type = "string", Nilable = false },
			},
		},
		{
			Name = "ChannelRosterUpdate",
			Type = "Event",
			LiteralName = "CHANNEL_ROSTER_UPDATE",
			Payload =
			{
				{ Name = "displayIndex", Type = "number", Nilable = false },
				{ Name = "count", Type = "number", Nilable = false },
			},
		},
		{
			Name = "ChannelUiUpdate",
			Type = "Event",
			LiteralName = "CHANNEL_UI_UPDATE",
		},
		{
			Name = "ChatCombatMsgArenaPointsGain",
			Type = "Event",
			LiteralName = "CHAT_COMBAT_MSG_ARENA_POINTS_GAIN",
			Payload =
			{
				{ Name = "text", Type = "string", Nilable = false },
				{ Name = "playerName", Type = "string", Nilable = false },
				{ Name = "languageName", Type = "string", Nilable = false },
				{ Name = "channelName", Type = "string", Nilable = false },
				{ Name = "playerName2", Type = "string", Nilable = false },
				{ Name = "specialFlags", Type = "string", Nilable = false },
				{ Name = "zoneChannelID", Type = "number", Nilable = false },
				{ Name = "channelIndex", Type = "number", Nilable = false },
				{ Name = "channelBaseName", Type = "string", Nilable = false },
				{ Name = "unused", Type = "number", Nilable = false },
				{ Name = "lineID", Type = "number", Nilable = false },
				{ Name = "guid", Type = "string", Nilable = false },
				{ Name = "bnSenderID", Type = "number", Nilable = false },
				{ Name = "isMobile", Type = "bool", Nilable = false },
				{ Name = "isSubtitle", Type = "bool", Nilable = false },
				{ Name = "hideSenderInLetterbox", Type = "bool", Nilable = false },
				{ Name = "supressRaidIcons", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ChatMsgAchievement",
			Type = "Event",
			LiteralName = "CHAT_MSG_ACHIEVEMENT",
			Payload =
			{
				{ Name = "text", Type = "string", Nilable = false },
				{ Name = "playerName", Type = "string", Nilable = false },
				{ Name = "languageName", Type = "string", Nilable = false },
				{ Name = "channelName", Type = "string", Nilable = false },
				{ Name = "playerName2", Type = "string", Nilable = false },
				{ Name = "specialFlags", Type = "string", Nilable = false },
				{ Name = "zoneChannelID", Type = "number", Nilable = false },
				{ Name = "channelIndex", Type = "number", Nilable = false },
				{ Name = "channelBaseName", Type = "string", Nilable = false },
				{ Name = "unused", Type = "number", Nilable = false },
				{ Name = "lineID", Type = "number", Nilable = false },
				{ Name = "guid", Type = "string", Nilable = false },
				{ Name = "bnSenderID", Type = "number", Nilable = false },
				{ Name = "isMobile", Type = "bool", Nilable = false },
				{ Name = "isSubtitle", Type = "bool", Nilable = false },
				{ Name = "hideSenderInLetterbox", Type = "bool", Nilable = false },
				{ Name = "supressRaidIcons", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ChatMsgAddon",
			Type = "Event",
			LiteralName = "CHAT_MSG_ADDON",
			Payload =
			{
				{ Name = "prefix", Type = "string", Nilable = false },
				{ Name = "text", Type = "string", Nilable = false },
				{ Name = "channel", Type = "string", Nilable = false },
				{ Name = "sender", Type = "string", Nilable = false },
				{ Name = "target", Type = "string", Nilable = false },
				{ Name = "zoneChannelID", Type = "number", Nilable = false },
				{ Name = "localID", Type = "number", Nilable = false },
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "instanceID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "ChatMsgAddonLogged",
			Type = "Event",
			LiteralName = "CHAT_MSG_ADDON_LOGGED",
			Payload =
			{
				{ Name = "prefix", Type = "string", Nilable = false },
				{ Name = "text", Type = "string", Nilable = false },
				{ Name = "channel", Type = "string", Nilable = false },
				{ Name = "sender", Type = "string", Nilable = false },
				{ Name = "target", Type = "string", Nilable = false },
				{ Name = "zoneChannelID", Type = "number", Nilable = false },
				{ Name = "localID", Type = "number", Nilable = false },
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "instanceID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "ChatMsgAfk",
			Type = "Event",
			LiteralName = "CHAT_MSG_AFK",
			Payload =
			{
				{ Name = "text", Type = "string", Nilable = false },
				{ Name = "playerName", Type = "string", Nilable = false },
				{ Name = "languageName", Type = "string", Nilable = false },
				{ Name = "channelName", Type = "string", Nilable = false },
				{ Name = "playerName2", Type = "string", Nilable = false },
				{ Name = "specialFlags", Type = "string", Nilable = false },
				{ Name = "zoneChannelID", Type = "number", Nilable = false },
				{ Name = "channelIndex", Type = "number", Nilable = false },
				{ Name = "channelBaseName", Type = "string", Nilable = false },
				{ Name = "unused", Type = "number", Nilable = false },
				{ Name = "lineID", Type = "number", Nilable = false },
				{ Name = "guid", Type = "string", Nilable = false },
				{ Name = "bnSenderID", Type = "number", Nilable = false },
				{ Name = "isMobile", Type = "bool", Nilable = false },
				{ Name = "isSubtitle", Type = "bool", Nilable = false },
				{ Name = "hideSenderInLetterbox", Type = "bool", Nilable = false },
				{ Name = "supressRaidIcons", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ChatMsgBgSystemAlliance",
			Type = "Event",
			LiteralName = "CHAT_MSG_BG_SYSTEM_ALLIANCE",
			Payload =
			{
				{ Name = "text", Type = "string", Nilable = false },
				{ Name = "playerName", Type = "string", Nilable = false },
				{ Name = "languageName", Type = "string", Nilable = false },
				{ Name = "channelName", Type = "string", Nilable = false },
				{ Name = "playerName2", Type = "string", Nilable = false },
				{ Name = "specialFlags", Type = "string", Nilable = false },
				{ Name = "zoneChannelID", Type = "number", Nilable = false },
				{ Name = "channelIndex", Type = "number", Nilable = false },
				{ Name = "channelBaseName", Type = "string", Nilable = false },
				{ Name = "unused", Type = "number", Nilable = false },
				{ Name = "lineID", Type = "number", Nilable = false },
				{ Name = "guid", Type = "string", Nilable = false },
				{ Name = "bnSenderID", Type = "number", Nilable = false },
				{ Name = "isMobile", Type = "bool", Nilable = false },
				{ Name = "isSubtitle", Type = "bool", Nilable = false },
				{ Name = "hideSenderInLetterbox", Type = "bool", Nilable = false },
				{ Name = "supressRaidIcons", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ChatMsgBgSystemHorde",
			Type = "Event",
			LiteralName = "CHAT_MSG_BG_SYSTEM_HORDE",
			Payload =
			{
				{ Name = "text", Type = "string", Nilable = false },
				{ Name = "playerName", Type = "string", Nilable = false },
				{ Name = "languageName", Type = "string", Nilable = false },
				{ Name = "channelName", Type = "string", Nilable = false },
				{ Name = "playerName2", Type = "string", Nilable = false },
				{ Name = "specialFlags", Type = "string", Nilable = false },
				{ Name = "zoneChannelID", Type = "number", Nilable = false },
				{ Name = "channelIndex", Type = "number", Nilable = false },
				{ Name = "channelBaseName", Type = "string", Nilable = false },
				{ Name = "unused", Type = "number", Nilable = false },
				{ Name = "lineID", Type = "number", Nilable = false },
				{ Name = "guid", Type = "string", Nilable = false },
				{ Name = "bnSenderID", Type = "number", Nilable = false },
				{ Name = "isMobile", Type = "bool", Nilable = false },
				{ Name = "isSubtitle", Type = "bool", Nilable = false },
				{ Name = "hideSenderInLetterbox", Type = "bool", Nilable = false },
				{ Name = "supressRaidIcons", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ChatMsgBgSystemNeutral",
			Type = "Event",
			LiteralName = "CHAT_MSG_BG_SYSTEM_NEUTRAL",
			Payload =
			{
				{ Name = "text", Type = "string", Nilable = false },
				{ Name = "playerName", Type = "string", Nilable = false },
				{ Name = "languageName", Type = "string", Nilable = false },
				{ Name = "channelName", Type = "string", Nilable = false },
				{ Name = "playerName2", Type = "string", Nilable = false },
				{ Name = "specialFlags", Type = "string", Nilable = false },
				{ Name = "zoneChannelID", Type = "number", Nilable = false },
				{ Name = "channelIndex", Type = "number", Nilable = false },
				{ Name = "channelBaseName", Type = "string", Nilable = false },
				{ Name = "unused", Type = "number", Nilable = false },
				{ Name = "lineID", Type = "number", Nilable = false },
				{ Name = "guid", Type = "string", Nilable = false },
				{ Name = "bnSenderID", Type = "number", Nilable = false },
				{ Name = "isMobile", Type = "bool", Nilable = false },
				{ Name = "isSubtitle", Type = "bool", Nilable = false },
				{ Name = "hideSenderInLetterbox", Type = "bool", Nilable = false },
				{ Name = "supressRaidIcons", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ChatMsgBn",
			Type = "Event",
			LiteralName = "CHAT_MSG_BN",
			Payload =
			{
				{ Name = "text", Type = "string", Nilable = false },
				{ Name = "playerName", Type = "string", Nilable = false },
				{ Name = "languageName", Type = "string", Nilable = false },
				{ Name = "channelName", Type = "string", Nilable = false },
				{ Name = "playerName2", Type = "string", Nilable = false },
				{ Name = "specialFlags", Type = "string", Nilable = false },
				{ Name = "zoneChannelID", Type = "number", Nilable = false },
				{ Name = "channelIndex", Type = "number", Nilable = false },
				{ Name = "channelBaseName", Type = "string", Nilable = false },
				{ Name = "unused", Type = "number", Nilable = false },
				{ Name = "lineID", Type = "number", Nilable = false },
				{ Name = "guid", Type = "string", Nilable = false },
				{ Name = "bnSenderID", Type = "number", Nilable = false },
				{ Name = "isMobile", Type = "bool", Nilable = false },
				{ Name = "isSubtitle", Type = "bool", Nilable = false },
				{ Name = "hideSenderInLetterbox", Type = "bool", Nilable = false },
				{ Name = "supressRaidIcons", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ChatMsgBnInlineToastAlert",
			Type = "Event",
			LiteralName = "CHAT_MSG_BN_INLINE_TOAST_ALERT",
			Payload =
			{
				{ Name = "text", Type = "string", Nilable = false },
				{ Name = "playerName", Type = "string", Nilable = false },
				{ Name = "languageName", Type = "string", Nilable = false },
				{ Name = "channelName", Type = "string", Nilable = false },
				{ Name = "playerName2", Type = "string", Nilable = false },
				{ Name = "specialFlags", Type = "string", Nilable = false },
				{ Name = "zoneChannelID", Type = "number", Nilable = false },
				{ Name = "channelIndex", Type = "number", Nilable = false },
				{ Name = "channelBaseName", Type = "string", Nilable = false },
				{ Name = "unused", Type = "number", Nilable = false },
				{ Name = "lineID", Type = "number", Nilable = false },
				{ Name = "guid", Type = "string", Nilable = false },
				{ Name = "bnSenderID", Type = "number", Nilable = false },
				{ Name = "isMobile", Type = "bool", Nilable = false },
				{ Name = "isSubtitle", Type = "bool", Nilable = false },
				{ Name = "hideSenderInLetterbox", Type = "bool", Nilable = false },
				{ Name = "supressRaidIcons", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ChatMsgBnInlineToastBroadcast",
			Type = "Event",
			LiteralName = "CHAT_MSG_BN_INLINE_TOAST_BROADCAST",
			Payload =
			{
				{ Name = "text", Type = "string", Nilable = false },
				{ Name = "playerName", Type = "string", Nilable = false },
				{ Name = "languageName", Type = "string", Nilable = false },
				{ Name = "channelName", Type = "string", Nilable = false },
				{ Name = "playerName2", Type = "string", Nilable = false },
				{ Name = "specialFlags", Type = "string", Nilable = false },
				{ Name = "zoneChannelID", Type = "number", Nilable = false },
				{ Name = "channelIndex", Type = "number", Nilable = false },
				{ Name = "channelBaseName", Type = "string", Nilable = false },
				{ Name = "unused", Type = "number", Nilable = false },
				{ Name = "lineID", Type = "number", Nilable = false },
				{ Name = "guid", Type = "string", Nilable = false },
				{ Name = "bnSenderID", Type = "number", Nilable = false },
				{ Name = "isMobile", Type = "bool", Nilable = false },
				{ Name = "isSubtitle", Type = "bool", Nilable = false },
				{ Name = "hideSenderInLetterbox", Type = "bool", Nilable = false },
				{ Name = "supressRaidIcons", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ChatMsgBnInlineToastBroadcastInform",
			Type = "Event",
			LiteralName = "CHAT_MSG_BN_INLINE_TOAST_BROADCAST_INFORM",
			Payload =
			{
				{ Name = "text", Type = "string", Nilable = false },
				{ Name = "playerName", Type = "string", Nilable = false },
				{ Name = "languageName", Type = "string", Nilable = false },
				{ Name = "channelName", Type = "string", Nilable = false },
				{ Name = "playerName2", Type = "string", Nilable = false },
				{ Name = "specialFlags", Type = "string", Nilable = false },
				{ Name = "zoneChannelID", Type = "number", Nilable = false },
				{ Name = "channelIndex", Type = "number", Nilable = false },
				{ Name = "channelBaseName", Type = "string", Nilable = false },
				{ Name = "unused", Type = "number", Nilable = false },
				{ Name = "lineID", Type = "number", Nilable = false },
				{ Name = "guid", Type = "string", Nilable = false },
				{ Name = "bnSenderID", Type = "number", Nilable = false },
				{ Name = "isMobile", Type = "bool", Nilable = false },
				{ Name = "isSubtitle", Type = "bool", Nilable = false },
				{ Name = "hideSenderInLetterbox", Type = "bool", Nilable = false },
				{ Name = "supressRaidIcons", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ChatMsgBnInlineToastConversation",
			Type = "Event",
			LiteralName = "CHAT_MSG_BN_INLINE_TOAST_CONVERSATION",
			Payload =
			{
				{ Name = "text", Type = "string", Nilable = false },
				{ Name = "playerName", Type = "string", Nilable = false },
				{ Name = "languageName", Type = "string", Nilable = false },
				{ Name = "channelName", Type = "string", Nilable = false },
				{ Name = "playerName2", Type = "string", Nilable = false },
				{ Name = "specialFlags", Type = "string", Nilable = false },
				{ Name = "zoneChannelID", Type = "number", Nilable = false },
				{ Name = "channelIndex", Type = "number", Nilable = false },
				{ Name = "channelBaseName", Type = "string", Nilable = false },
				{ Name = "unused", Type = "number", Nilable = false },
				{ Name = "lineID", Type = "number", Nilable = false },
				{ Name = "guid", Type = "string", Nilable = false },
				{ Name = "bnSenderID", Type = "number", Nilable = false },
				{ Name = "isMobile", Type = "bool", Nilable = false },
				{ Name = "isSubtitle", Type = "bool", Nilable = false },
				{ Name = "hideSenderInLetterbox", Type = "bool", Nilable = false },
				{ Name = "supressRaidIcons", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ChatMsgBnWhisper",
			Type = "Event",
			LiteralName = "CHAT_MSG_BN_WHISPER",
			Payload =
			{
				{ Name = "text", Type = "string", Nilable = false },
				{ Name = "playerName", Type = "string", Nilable = false },
				{ Name = "languageName", Type = "string", Nilable = false },
				{ Name = "channelName", Type = "string", Nilable = false },
				{ Name = "playerName2", Type = "string", Nilable = false },
				{ Name = "specialFlags", Type = "string", Nilable = false },
				{ Name = "zoneChannelID", Type = "number", Nilable = false },
				{ Name = "channelIndex", Type = "number", Nilable = false },
				{ Name = "channelBaseName", Type = "string", Nilable = false },
				{ Name = "unused", Type = "number", Nilable = false },
				{ Name = "lineID", Type = "number", Nilable = false },
				{ Name = "guid", Type = "string", Nilable = false },
				{ Name = "bnSenderID", Type = "number", Nilable = false },
				{ Name = "isMobile", Type = "bool", Nilable = false },
				{ Name = "isSubtitle", Type = "bool", Nilable = false },
				{ Name = "hideSenderInLetterbox", Type = "bool", Nilable = false },
				{ Name = "supressRaidIcons", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ChatMsgBnWhisperInform",
			Type = "Event",
			LiteralName = "CHAT_MSG_BN_WHISPER_INFORM",
			Payload =
			{
				{ Name = "text", Type = "string", Nilable = false },
				{ Name = "playerName", Type = "string", Nilable = false },
				{ Name = "languageName", Type = "string", Nilable = false },
				{ Name = "channelName", Type = "string", Nilable = false },
				{ Name = "playerName2", Type = "string", Nilable = false },
				{ Name = "specialFlags", Type = "string", Nilable = false },
				{ Name = "zoneChannelID", Type = "number", Nilable = false },
				{ Name = "channelIndex", Type = "number", Nilable = false },
				{ Name = "channelBaseName", Type = "string", Nilable = false },
				{ Name = "unused", Type = "number", Nilable = false },
				{ Name = "lineID", Type = "number", Nilable = false },
				{ Name = "guid", Type = "string", Nilable = false },
				{ Name = "bnSenderID", Type = "number", Nilable = false },
				{ Name = "isMobile", Type = "bool", Nilable = false },
				{ Name = "isSubtitle", Type = "bool", Nilable = false },
				{ Name = "hideSenderInLetterbox", Type = "bool", Nilable = false },
				{ Name = "supressRaidIcons", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ChatMsgBnWhisperPlayerOffline",
			Type = "Event",
			LiteralName = "CHAT_MSG_BN_WHISPER_PLAYER_OFFLINE",
			Payload =
			{
				{ Name = "text", Type = "string", Nilable = false },
				{ Name = "playerName", Type = "string", Nilable = false },
				{ Name = "languageName", Type = "string", Nilable = false },
				{ Name = "channelName", Type = "string", Nilable = false },
				{ Name = "playerName2", Type = "string", Nilable = false },
				{ Name = "specialFlags", Type = "string", Nilable = false },
				{ Name = "zoneChannelID", Type = "number", Nilable = false },
				{ Name = "channelIndex", Type = "number", Nilable = false },
				{ Name = "channelBaseName", Type = "string", Nilable = false },
				{ Name = "unused", Type = "number", Nilable = false },
				{ Name = "lineID", Type = "number", Nilable = false },
				{ Name = "guid", Type = "string", Nilable = false },
				{ Name = "bnSenderID", Type = "number", Nilable = false },
				{ Name = "isMobile", Type = "bool", Nilable = false },
				{ Name = "isSubtitle", Type = "bool", Nilable = false },
				{ Name = "hideSenderInLetterbox", Type = "bool", Nilable = false },
				{ Name = "supressRaidIcons", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ChatMsgChannel",
			Type = "Event",
			LiteralName = "CHAT_MSG_CHANNEL",
			Payload =
			{
				{ Name = "text", Type = "string", Nilable = false },
				{ Name = "playerName", Type = "string", Nilable = false },
				{ Name = "languageName", Type = "string", Nilable = false },
				{ Name = "channelName", Type = "string", Nilable = false },
				{ Name = "playerName2", Type = "string", Nilable = false },
				{ Name = "specialFlags", Type = "string", Nilable = false },
				{ Name = "zoneChannelID", Type = "number", Nilable = false },
				{ Name = "channelIndex", Type = "number", Nilable = false },
				{ Name = "channelBaseName", Type = "string", Nilable = false },
				{ Name = "unused", Type = "number", Nilable = false },
				{ Name = "lineID", Type = "number", Nilable = false },
				{ Name = "guid", Type = "string", Nilable = false },
				{ Name = "bnSenderID", Type = "number", Nilable = false },
				{ Name = "isMobile", Type = "bool", Nilable = false },
				{ Name = "isSubtitle", Type = "bool", Nilable = false },
				{ Name = "hideSenderInLetterbox", Type = "bool", Nilable = false },
				{ Name = "supressRaidIcons", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ChatMsgChannelJoin",
			Type = "Event",
			LiteralName = "CHAT_MSG_CHANNEL_JOIN",
			Payload =
			{
				{ Name = "text", Type = "string", Nilable = false },
				{ Name = "playerName", Type = "string", Nilable = false },
				{ Name = "languageName", Type = "string", Nilable = false },
				{ Name = "channelName", Type = "string", Nilable = false },
				{ Name = "playerName2", Type = "string", Nilable = false },
				{ Name = "specialFlags", Type = "string", Nilable = false },
				{ Name = "zoneChannelID", Type = "number", Nilable = false },
				{ Name = "channelIndex", Type = "number", Nilable = false },
				{ Name = "channelBaseName", Type = "string", Nilable = false },
				{ Name = "unused", Type = "number", Nilable = false },
				{ Name = "lineID", Type = "number", Nilable = false },
				{ Name = "guid", Type = "string", Nilable = false },
				{ Name = "bnSenderID", Type = "number", Nilable = false },
				{ Name = "isMobile", Type = "bool", Nilable = false },
				{ Name = "isSubtitle", Type = "bool", Nilable = false },
				{ Name = "hideSenderInLetterbox", Type = "bool", Nilable = false },
				{ Name = "supressRaidIcons", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ChatMsgChannelLeave",
			Type = "Event",
			LiteralName = "CHAT_MSG_CHANNEL_LEAVE",
			Payload =
			{
				{ Name = "text", Type = "string", Nilable = false },
				{ Name = "playerName", Type = "string", Nilable = false },
				{ Name = "languageName", Type = "string", Nilable = false },
				{ Name = "channelName", Type = "string", Nilable = false },
				{ Name = "playerName2", Type = "string", Nilable = false },
				{ Name = "specialFlags", Type = "string", Nilable = false },
				{ Name = "zoneChannelID", Type = "number", Nilable = false },
				{ Name = "channelIndex", Type = "number", Nilable = false },
				{ Name = "channelBaseName", Type = "string", Nilable = false },
				{ Name = "unused", Type = "number", Nilable = false },
				{ Name = "lineID", Type = "number", Nilable = false },
				{ Name = "guid", Type = "string", Nilable = false },
				{ Name = "bnSenderID", Type = "number", Nilable = false },
				{ Name = "isMobile", Type = "bool", Nilable = false },
				{ Name = "isSubtitle", Type = "bool", Nilable = false },
				{ Name = "hideSenderInLetterbox", Type = "bool", Nilable = false },
				{ Name = "supressRaidIcons", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ChatMsgChannelList",
			Type = "Event",
			LiteralName = "CHAT_MSG_CHANNEL_LIST",
			Payload =
			{
				{ Name = "text", Type = "string", Nilable = false },
				{ Name = "playerName", Type = "string", Nilable = false },
				{ Name = "languageName", Type = "string", Nilable = false },
				{ Name = "channelName", Type = "string", Nilable = false },
				{ Name = "playerName2", Type = "string", Nilable = false },
				{ Name = "specialFlags", Type = "string", Nilable = false },
				{ Name = "zoneChannelID", Type = "number", Nilable = false },
				{ Name = "channelIndex", Type = "number", Nilable = false },
				{ Name = "channelBaseName", Type = "string", Nilable = false },
				{ Name = "unused", Type = "number", Nilable = false },
				{ Name = "lineID", Type = "number", Nilable = false },
				{ Name = "guid", Type = "string", Nilable = false },
				{ Name = "bnSenderID", Type = "number", Nilable = false },
				{ Name = "isMobile", Type = "bool", Nilable = false },
				{ Name = "isSubtitle", Type = "bool", Nilable = false },
				{ Name = "hideSenderInLetterbox", Type = "bool", Nilable = false },
				{ Name = "supressRaidIcons", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ChatMsgChannelNotice",
			Type = "Event",
			LiteralName = "CHAT_MSG_CHANNEL_NOTICE",
			Payload =
			{
				{ Name = "text", Type = "string", Nilable = false },
				{ Name = "playerName", Type = "string", Nilable = false },
				{ Name = "languageName", Type = "string", Nilable = false },
				{ Name = "channelName", Type = "string", Nilable = false },
				{ Name = "playerName2", Type = "string", Nilable = false },
				{ Name = "specialFlags", Type = "string", Nilable = false },
				{ Name = "zoneChannelID", Type = "number", Nilable = false },
				{ Name = "channelIndex", Type = "number", Nilable = false },
				{ Name = "channelBaseName", Type = "string", Nilable = false },
				{ Name = "unused", Type = "number", Nilable = false },
				{ Name = "lineID", Type = "number", Nilable = false },
				{ Name = "guid", Type = "string", Nilable = false },
				{ Name = "bnSenderID", Type = "number", Nilable = false },
				{ Name = "isMobile", Type = "bool", Nilable = false },
				{ Name = "isSubtitle", Type = "bool", Nilable = false },
				{ Name = "hideSenderInLetterbox", Type = "bool", Nilable = false },
				{ Name = "supressRaidIcons", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ChatMsgChannelNoticeUser",
			Type = "Event",
			LiteralName = "CHAT_MSG_CHANNEL_NOTICE_USER",
			Payload =
			{
				{ Name = "text", Type = "string", Nilable = false },
				{ Name = "playerName", Type = "string", Nilable = false },
				{ Name = "languageName", Type = "string", Nilable = false },
				{ Name = "channelName", Type = "string", Nilable = false },
				{ Name = "playerName2", Type = "string", Nilable = false },
				{ Name = "specialFlags", Type = "string", Nilable = false },
				{ Name = "zoneChannelID", Type = "number", Nilable = false },
				{ Name = "channelIndex", Type = "number", Nilable = false },
				{ Name = "channelBaseName", Type = "string", Nilable = false },
				{ Name = "unused", Type = "number", Nilable = false },
				{ Name = "lineID", Type = "number", Nilable = false },
				{ Name = "guid", Type = "string", Nilable = false },
				{ Name = "bnSenderID", Type = "number", Nilable = false },
				{ Name = "isMobile", Type = "bool", Nilable = false },
				{ Name = "isSubtitle", Type = "bool", Nilable = false },
				{ Name = "hideSenderInLetterbox", Type = "bool", Nilable = false },
				{ Name = "supressRaidIcons", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ChatMsgCombatFactionChange",
			Type = "Event",
			LiteralName = "CHAT_MSG_COMBAT_FACTION_CHANGE",
			Payload =
			{
				{ Name = "text", Type = "string", Nilable = false },
				{ Name = "playerName", Type = "string", Nilable = false },
				{ Name = "languageName", Type = "string", Nilable = false },
				{ Name = "channelName", Type = "string", Nilable = false },
				{ Name = "playerName2", Type = "string", Nilable = false },
				{ Name = "specialFlags", Type = "string", Nilable = false },
				{ Name = "zoneChannelID", Type = "number", Nilable = false },
				{ Name = "channelIndex", Type = "number", Nilable = false },
				{ Name = "channelBaseName", Type = "string", Nilable = false },
				{ Name = "unused", Type = "number", Nilable = false },
				{ Name = "lineID", Type = "number", Nilable = false },
				{ Name = "guid", Type = "string", Nilable = false },
				{ Name = "bnSenderID", Type = "number", Nilable = false },
				{ Name = "isMobile", Type = "bool", Nilable = false },
				{ Name = "isSubtitle", Type = "bool", Nilable = false },
				{ Name = "hideSenderInLetterbox", Type = "bool", Nilable = false },
				{ Name = "supressRaidIcons", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ChatMsgCombatHonorGain",
			Type = "Event",
			LiteralName = "CHAT_MSG_COMBAT_HONOR_GAIN",
			Payload =
			{
				{ Name = "text", Type = "string", Nilable = false },
				{ Name = "playerName", Type = "string", Nilable = false },
				{ Name = "languageName", Type = "string", Nilable = false },
				{ Name = "channelName", Type = "string", Nilable = false },
				{ Name = "playerName2", Type = "string", Nilable = false },
				{ Name = "specialFlags", Type = "string", Nilable = false },
				{ Name = "zoneChannelID", Type = "number", Nilable = false },
				{ Name = "channelIndex", Type = "number", Nilable = false },
				{ Name = "channelBaseName", Type = "string", Nilable = false },
				{ Name = "unused", Type = "number", Nilable = false },
				{ Name = "lineID", Type = "number", Nilable = false },
				{ Name = "guid", Type = "string", Nilable = false },
				{ Name = "bnSenderID", Type = "number", Nilable = false },
				{ Name = "isMobile", Type = "bool", Nilable = false },
				{ Name = "isSubtitle", Type = "bool", Nilable = false },
				{ Name = "hideSenderInLetterbox", Type = "bool", Nilable = false },
				{ Name = "supressRaidIcons", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ChatMsgCombatMiscInfo",
			Type = "Event",
			LiteralName = "CHAT_MSG_COMBAT_MISC_INFO",
			Payload =
			{
				{ Name = "text", Type = "string", Nilable = false },
				{ Name = "playerName", Type = "string", Nilable = false },
				{ Name = "languageName", Type = "string", Nilable = false },
				{ Name = "channelName", Type = "string", Nilable = false },
				{ Name = "playerName2", Type = "string", Nilable = false },
				{ Name = "specialFlags", Type = "string", Nilable = false },
				{ Name = "zoneChannelID", Type = "number", Nilable = false },
				{ Name = "channelIndex", Type = "number", Nilable = false },
				{ Name = "channelBaseName", Type = "string", Nilable = false },
				{ Name = "unused", Type = "number", Nilable = false },
				{ Name = "lineID", Type = "number", Nilable = false },
				{ Name = "guid", Type = "string", Nilable = false },
				{ Name = "bnSenderID", Type = "number", Nilable = false },
				{ Name = "isMobile", Type = "bool", Nilable = false },
				{ Name = "isSubtitle", Type = "bool", Nilable = false },
				{ Name = "hideSenderInLetterbox", Type = "bool", Nilable = false },
				{ Name = "supressRaidIcons", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ChatMsgCombatXpGain",
			Type = "Event",
			LiteralName = "CHAT_MSG_COMBAT_XP_GAIN",
			Payload =
			{
				{ Name = "text", Type = "string", Nilable = false },
				{ Name = "playerName", Type = "string", Nilable = false },
				{ Name = "languageName", Type = "string", Nilable = false },
				{ Name = "channelName", Type = "string", Nilable = false },
				{ Name = "playerName2", Type = "string", Nilable = false },
				{ Name = "specialFlags", Type = "string", Nilable = false },
				{ Name = "zoneChannelID", Type = "number", Nilable = false },
				{ Name = "channelIndex", Type = "number", Nilable = false },
				{ Name = "channelBaseName", Type = "string", Nilable = false },
				{ Name = "unused", Type = "number", Nilable = false },
				{ Name = "lineID", Type = "number", Nilable = false },
				{ Name = "guid", Type = "string", Nilable = false },
				{ Name = "bnSenderID", Type = "number", Nilable = false },
				{ Name = "isMobile", Type = "bool", Nilable = false },
				{ Name = "isSubtitle", Type = "bool", Nilable = false },
				{ Name = "hideSenderInLetterbox", Type = "bool", Nilable = false },
				{ Name = "supressRaidIcons", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ChatMsgCommunitiesChannel",
			Type = "Event",
			LiteralName = "CHAT_MSG_COMMUNITIES_CHANNEL",
			Payload =
			{
				{ Name = "text", Type = "string", Nilable = false },
				{ Name = "playerName", Type = "string", Nilable = false },
				{ Name = "languageName", Type = "string", Nilable = false },
				{ Name = "channelName", Type = "string", Nilable = false },
				{ Name = "playerName2", Type = "string", Nilable = false },
				{ Name = "specialFlags", Type = "string", Nilable = false },
				{ Name = "zoneChannelID", Type = "number", Nilable = false },
				{ Name = "channelIndex", Type = "number", Nilable = false },
				{ Name = "channelBaseName", Type = "string", Nilable = false },
				{ Name = "unused", Type = "number", Nilable = false },
				{ Name = "lineID", Type = "number", Nilable = false },
				{ Name = "guid", Type = "string", Nilable = false },
				{ Name = "bnSenderID", Type = "number", Nilable = false },
				{ Name = "isMobile", Type = "bool", Nilable = false },
				{ Name = "isSubtitle", Type = "bool", Nilable = false },
				{ Name = "hideSenderInLetterbox", Type = "bool", Nilable = false },
				{ Name = "supressRaidIcons", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ChatMsgCurrency",
			Type = "Event",
			LiteralName = "CHAT_MSG_CURRENCY",
			Payload =
			{
				{ Name = "text", Type = "string", Nilable = false },
				{ Name = "playerName", Type = "string", Nilable = false },
				{ Name = "languageName", Type = "string", Nilable = false },
				{ Name = "channelName", Type = "string", Nilable = false },
				{ Name = "playerName2", Type = "string", Nilable = false },
				{ Name = "specialFlags", Type = "string", Nilable = false },
				{ Name = "zoneChannelID", Type = "number", Nilable = false },
				{ Name = "channelIndex", Type = "number", Nilable = false },
				{ Name = "channelBaseName", Type = "string", Nilable = false },
				{ Name = "unused", Type = "number", Nilable = false },
				{ Name = "lineID", Type = "number", Nilable = false },
				{ Name = "guid", Type = "string", Nilable = false },
				{ Name = "bnSenderID", Type = "number", Nilable = false },
				{ Name = "isMobile", Type = "bool", Nilable = false },
				{ Name = "isSubtitle", Type = "bool", Nilable = false },
				{ Name = "hideSenderInLetterbox", Type = "bool", Nilable = false },
				{ Name = "supressRaidIcons", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ChatMsgDnd",
			Type = "Event",
			LiteralName = "CHAT_MSG_DND",
			Payload =
			{
				{ Name = "text", Type = "string", Nilable = false },
				{ Name = "playerName", Type = "string", Nilable = false },
				{ Name = "languageName", Type = "string", Nilable = false },
				{ Name = "channelName", Type = "string", Nilable = false },
				{ Name = "playerName2", Type = "string", Nilable = false },
				{ Name = "specialFlags", Type = "string", Nilable = false },
				{ Name = "zoneChannelID", Type = "number", Nilable = false },
				{ Name = "channelIndex", Type = "number", Nilable = false },
				{ Name = "channelBaseName", Type = "string", Nilable = false },
				{ Name = "unused", Type = "number", Nilable = false },
				{ Name = "lineID", Type = "number", Nilable = false },
				{ Name = "guid", Type = "string", Nilable = false },
				{ Name = "bnSenderID", Type = "number", Nilable = false },
				{ Name = "isMobile", Type = "bool", Nilable = false },
				{ Name = "isSubtitle", Type = "bool", Nilable = false },
				{ Name = "hideSenderInLetterbox", Type = "bool", Nilable = false },
				{ Name = "supressRaidIcons", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ChatMsgEmote",
			Type = "Event",
			LiteralName = "CHAT_MSG_EMOTE",
			Payload =
			{
				{ Name = "text", Type = "string", Nilable = false },
				{ Name = "playerName", Type = "string", Nilable = false },
				{ Name = "languageName", Type = "string", Nilable = false },
				{ Name = "channelName", Type = "string", Nilable = false },
				{ Name = "playerName2", Type = "string", Nilable = false },
				{ Name = "specialFlags", Type = "string", Nilable = false },
				{ Name = "zoneChannelID", Type = "number", Nilable = false },
				{ Name = "channelIndex", Type = "number", Nilable = false },
				{ Name = "channelBaseName", Type = "string", Nilable = false },
				{ Name = "unused", Type = "number", Nilable = false },
				{ Name = "lineID", Type = "number", Nilable = false },
				{ Name = "guid", Type = "string", Nilable = false },
				{ Name = "bnSenderID", Type = "number", Nilable = false },
				{ Name = "isMobile", Type = "bool", Nilable = false },
				{ Name = "isSubtitle", Type = "bool", Nilable = false },
				{ Name = "hideSenderInLetterbox", Type = "bool", Nilable = false },
				{ Name = "supressRaidIcons", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ChatMsgFiltered",
			Type = "Event",
			LiteralName = "CHAT_MSG_FILTERED",
			Payload =
			{
				{ Name = "text", Type = "string", Nilable = false },
				{ Name = "playerName", Type = "string", Nilable = false },
				{ Name = "languageName", Type = "string", Nilable = false },
				{ Name = "channelName", Type = "string", Nilable = false },
				{ Name = "playerName2", Type = "string", Nilable = false },
				{ Name = "specialFlags", Type = "string", Nilable = false },
				{ Name = "zoneChannelID", Type = "number", Nilable = false },
				{ Name = "channelIndex", Type = "number", Nilable = false },
				{ Name = "channelBaseName", Type = "string", Nilable = false },
				{ Name = "unused", Type = "number", Nilable = false },
				{ Name = "lineID", Type = "number", Nilable = false },
				{ Name = "guid", Type = "string", Nilable = false },
				{ Name = "bnSenderID", Type = "number", Nilable = false },
				{ Name = "isMobile", Type = "bool", Nilable = false },
				{ Name = "isSubtitle", Type = "bool", Nilable = false },
				{ Name = "hideSenderInLetterbox", Type = "bool", Nilable = false },
				{ Name = "supressRaidIcons", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ChatMsgGuild",
			Type = "Event",
			LiteralName = "CHAT_MSG_GUILD",
			Payload =
			{
				{ Name = "text", Type = "string", Nilable = false },
				{ Name = "playerName", Type = "string", Nilable = false },
				{ Name = "languageName", Type = "string", Nilable = false },
				{ Name = "channelName", Type = "string", Nilable = false },
				{ Name = "playerName2", Type = "string", Nilable = false },
				{ Name = "specialFlags", Type = "string", Nilable = false },
				{ Name = "zoneChannelID", Type = "number", Nilable = false },
				{ Name = "channelIndex", Type = "number", Nilable = false },
				{ Name = "channelBaseName", Type = "string", Nilable = false },
				{ Name = "unused", Type = "number", Nilable = false },
				{ Name = "lineID", Type = "number", Nilable = false },
				{ Name = "guid", Type = "string", Nilable = false },
				{ Name = "bnSenderID", Type = "number", Nilable = false },
				{ Name = "isMobile", Type = "bool", Nilable = false },
				{ Name = "isSubtitle", Type = "bool", Nilable = false },
				{ Name = "hideSenderInLetterbox", Type = "bool", Nilable = false },
				{ Name = "supressRaidIcons", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ChatMsgGuildAchievement",
			Type = "Event",
			LiteralName = "CHAT_MSG_GUILD_ACHIEVEMENT",
			Payload =
			{
				{ Name = "text", Type = "string", Nilable = false },
				{ Name = "playerName", Type = "string", Nilable = false },
				{ Name = "languageName", Type = "string", Nilable = false },
				{ Name = "channelName", Type = "string", Nilable = false },
				{ Name = "playerName2", Type = "string", Nilable = false },
				{ Name = "specialFlags", Type = "string", Nilable = false },
				{ Name = "zoneChannelID", Type = "number", Nilable = false },
				{ Name = "channelIndex", Type = "number", Nilable = false },
				{ Name = "channelBaseName", Type = "string", Nilable = false },
				{ Name = "unused", Type = "number", Nilable = false },
				{ Name = "lineID", Type = "number", Nilable = false },
				{ Name = "guid", Type = "string", Nilable = false },
				{ Name = "bnSenderID", Type = "number", Nilable = false },
				{ Name = "isMobile", Type = "bool", Nilable = false },
				{ Name = "isSubtitle", Type = "bool", Nilable = false },
				{ Name = "hideSenderInLetterbox", Type = "bool", Nilable = false },
				{ Name = "supressRaidIcons", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ChatMsgGuildItemLooted",
			Type = "Event",
			LiteralName = "CHAT_MSG_GUILD_ITEM_LOOTED",
			Payload =
			{
				{ Name = "text", Type = "string", Nilable = false },
				{ Name = "playerName", Type = "string", Nilable = false },
				{ Name = "languageName", Type = "string", Nilable = false },
				{ Name = "channelName", Type = "string", Nilable = false },
				{ Name = "playerName2", Type = "string", Nilable = false },
				{ Name = "specialFlags", Type = "string", Nilable = false },
				{ Name = "zoneChannelID", Type = "number", Nilable = false },
				{ Name = "channelIndex", Type = "number", Nilable = false },
				{ Name = "channelBaseName", Type = "string", Nilable = false },
				{ Name = "unused", Type = "number", Nilable = false },
				{ Name = "lineID", Type = "number", Nilable = false },
				{ Name = "guid", Type = "string", Nilable = false },
				{ Name = "bnSenderID", Type = "number", Nilable = false },
				{ Name = "isMobile", Type = "bool", Nilable = false },
				{ Name = "isSubtitle", Type = "bool", Nilable = false },
				{ Name = "hideSenderInLetterbox", Type = "bool", Nilable = false },
				{ Name = "supressRaidIcons", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ChatMsgIgnored",
			Type = "Event",
			LiteralName = "CHAT_MSG_IGNORED",
			Payload =
			{
				{ Name = "text", Type = "string", Nilable = false },
				{ Name = "playerName", Type = "string", Nilable = false },
				{ Name = "languageName", Type = "string", Nilable = false },
				{ Name = "channelName", Type = "string", Nilable = false },
				{ Name = "playerName2", Type = "string", Nilable = false },
				{ Name = "specialFlags", Type = "string", Nilable = false },
				{ Name = "zoneChannelID", Type = "number", Nilable = false },
				{ Name = "channelIndex", Type = "number", Nilable = false },
				{ Name = "channelBaseName", Type = "string", Nilable = false },
				{ Name = "unused", Type = "number", Nilable = false },
				{ Name = "lineID", Type = "number", Nilable = false },
				{ Name = "guid", Type = "string", Nilable = false },
				{ Name = "bnSenderID", Type = "number", Nilable = false },
				{ Name = "isMobile", Type = "bool", Nilable = false },
				{ Name = "isSubtitle", Type = "bool", Nilable = false },
				{ Name = "hideSenderInLetterbox", Type = "bool", Nilable = false },
				{ Name = "supressRaidIcons", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ChatMsgInstanceChat",
			Type = "Event",
			LiteralName = "CHAT_MSG_INSTANCE_CHAT",
			Payload =
			{
				{ Name = "text", Type = "string", Nilable = false },
				{ Name = "playerName", Type = "string", Nilable = false },
				{ Name = "languageName", Type = "string", Nilable = false },
				{ Name = "channelName", Type = "string", Nilable = false },
				{ Name = "playerName2", Type = "string", Nilable = false },
				{ Name = "specialFlags", Type = "string", Nilable = false },
				{ Name = "zoneChannelID", Type = "number", Nilable = false },
				{ Name = "channelIndex", Type = "number", Nilable = false },
				{ Name = "channelBaseName", Type = "string", Nilable = false },
				{ Name = "unused", Type = "number", Nilable = false },
				{ Name = "lineID", Type = "number", Nilable = false },
				{ Name = "guid", Type = "string", Nilable = false },
				{ Name = "bnSenderID", Type = "number", Nilable = false },
				{ Name = "isMobile", Type = "bool", Nilable = false },
				{ Name = "isSubtitle", Type = "bool", Nilable = false },
				{ Name = "hideSenderInLetterbox", Type = "bool", Nilable = false },
				{ Name = "supressRaidIcons", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ChatMsgInstanceChatLeader",
			Type = "Event",
			LiteralName = "CHAT_MSG_INSTANCE_CHAT_LEADER",
			Payload =
			{
				{ Name = "text", Type = "string", Nilable = false },
				{ Name = "playerName", Type = "string", Nilable = false },
				{ Name = "languageName", Type = "string", Nilable = false },
				{ Name = "channelName", Type = "string", Nilable = false },
				{ Name = "playerName2", Type = "string", Nilable = false },
				{ Name = "specialFlags", Type = "string", Nilable = false },
				{ Name = "zoneChannelID", Type = "number", Nilable = false },
				{ Name = "channelIndex", Type = "number", Nilable = false },
				{ Name = "channelBaseName", Type = "string", Nilable = false },
				{ Name = "unused", Type = "number", Nilable = false },
				{ Name = "lineID", Type = "number", Nilable = false },
				{ Name = "guid", Type = "string", Nilable = false },
				{ Name = "bnSenderID", Type = "number", Nilable = false },
				{ Name = "isMobile", Type = "bool", Nilable = false },
				{ Name = "isSubtitle", Type = "bool", Nilable = false },
				{ Name = "hideSenderInLetterbox", Type = "bool", Nilable = false },
				{ Name = "supressRaidIcons", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ChatMsgLoot",
			Type = "Event",
			LiteralName = "CHAT_MSG_LOOT",
			Payload =
			{
				{ Name = "text", Type = "string", Nilable = false },
				{ Name = "playerName", Type = "string", Nilable = false },
				{ Name = "languageName", Type = "string", Nilable = false },
				{ Name = "channelName", Type = "string", Nilable = false },
				{ Name = "playerName2", Type = "string", Nilable = false },
				{ Name = "specialFlags", Type = "string", Nilable = false },
				{ Name = "zoneChannelID", Type = "number", Nilable = false },
				{ Name = "channelIndex", Type = "number", Nilable = false },
				{ Name = "channelBaseName", Type = "string", Nilable = false },
				{ Name = "unused", Type = "number", Nilable = false },
				{ Name = "lineID", Type = "number", Nilable = false },
				{ Name = "guid", Type = "string", Nilable = false },
				{ Name = "bnSenderID", Type = "number", Nilable = false },
				{ Name = "isMobile", Type = "bool", Nilable = false },
				{ Name = "isSubtitle", Type = "bool", Nilable = false },
				{ Name = "hideSenderInLetterbox", Type = "bool", Nilable = false },
				{ Name = "supressRaidIcons", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ChatMsgMoney",
			Type = "Event",
			LiteralName = "CHAT_MSG_MONEY",
			Payload =
			{
				{ Name = "text", Type = "string", Nilable = false },
				{ Name = "playerName", Type = "string", Nilable = false },
				{ Name = "languageName", Type = "string", Nilable = false },
				{ Name = "channelName", Type = "string", Nilable = false },
				{ Name = "playerName2", Type = "string", Nilable = false },
				{ Name = "specialFlags", Type = "string", Nilable = false },
				{ Name = "zoneChannelID", Type = "number", Nilable = false },
				{ Name = "channelIndex", Type = "number", Nilable = false },
				{ Name = "channelBaseName", Type = "string", Nilable = false },
				{ Name = "unused", Type = "number", Nilable = false },
				{ Name = "lineID", Type = "number", Nilable = false },
				{ Name = "guid", Type = "string", Nilable = false },
				{ Name = "bnSenderID", Type = "number", Nilable = false },
				{ Name = "isMobile", Type = "bool", Nilable = false },
				{ Name = "isSubtitle", Type = "bool", Nilable = false },
				{ Name = "hideSenderInLetterbox", Type = "bool", Nilable = false },
				{ Name = "supressRaidIcons", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ChatMsgMonsterEmote",
			Type = "Event",
			LiteralName = "CHAT_MSG_MONSTER_EMOTE",
			Payload =
			{
				{ Name = "text", Type = "string", Nilable = false },
				{ Name = "playerName", Type = "string", Nilable = false },
				{ Name = "languageName", Type = "string", Nilable = false },
				{ Name = "channelName", Type = "string", Nilable = false },
				{ Name = "playerName2", Type = "string", Nilable = false },
				{ Name = "specialFlags", Type = "string", Nilable = false },
				{ Name = "zoneChannelID", Type = "number", Nilable = false },
				{ Name = "channelIndex", Type = "number", Nilable = false },
				{ Name = "channelBaseName", Type = "string", Nilable = false },
				{ Name = "unused", Type = "number", Nilable = false },
				{ Name = "lineID", Type = "number", Nilable = false },
				{ Name = "guid", Type = "string", Nilable = false },
				{ Name = "bnSenderID", Type = "number", Nilable = false },
				{ Name = "isMobile", Type = "bool", Nilable = false },
				{ Name = "isSubtitle", Type = "bool", Nilable = false },
				{ Name = "hideSenderInLetterbox", Type = "bool", Nilable = false },
				{ Name = "supressRaidIcons", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ChatMsgMonsterParty",
			Type = "Event",
			LiteralName = "CHAT_MSG_MONSTER_PARTY",
			Payload =
			{
				{ Name = "text", Type = "string", Nilable = false },
				{ Name = "playerName", Type = "string", Nilable = false },
				{ Name = "languageName", Type = "string", Nilable = false },
				{ Name = "channelName", Type = "string", Nilable = false },
				{ Name = "playerName2", Type = "string", Nilable = false },
				{ Name = "specialFlags", Type = "string", Nilable = false },
				{ Name = "zoneChannelID", Type = "number", Nilable = false },
				{ Name = "channelIndex", Type = "number", Nilable = false },
				{ Name = "channelBaseName", Type = "string", Nilable = false },
				{ Name = "unused", Type = "number", Nilable = false },
				{ Name = "lineID", Type = "number", Nilable = false },
				{ Name = "guid", Type = "string", Nilable = false },
				{ Name = "bnSenderID", Type = "number", Nilable = false },
				{ Name = "isMobile", Type = "bool", Nilable = false },
				{ Name = "isSubtitle", Type = "bool", Nilable = false },
				{ Name = "hideSenderInLetterbox", Type = "bool", Nilable = false },
				{ Name = "supressRaidIcons", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ChatMsgMonsterSay",
			Type = "Event",
			LiteralName = "CHAT_MSG_MONSTER_SAY",
			Payload =
			{
				{ Name = "text", Type = "string", Nilable = false },
				{ Name = "playerName", Type = "string", Nilable = false },
				{ Name = "languageName", Type = "string", Nilable = false },
				{ Name = "channelName", Type = "string", Nilable = false },
				{ Name = "playerName2", Type = "string", Nilable = false },
				{ Name = "specialFlags", Type = "string", Nilable = false },
				{ Name = "zoneChannelID", Type = "number", Nilable = false },
				{ Name = "channelIndex", Type = "number", Nilable = false },
				{ Name = "channelBaseName", Type = "string", Nilable = false },
				{ Name = "unused", Type = "number", Nilable = false },
				{ Name = "lineID", Type = "number", Nilable = false },
				{ Name = "guid", Type = "string", Nilable = false },
				{ Name = "bnSenderID", Type = "number", Nilable = false },
				{ Name = "isMobile", Type = "bool", Nilable = false },
				{ Name = "isSubtitle", Type = "bool", Nilable = false },
				{ Name = "hideSenderInLetterbox", Type = "bool", Nilable = false },
				{ Name = "supressRaidIcons", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ChatMsgMonsterWhisper",
			Type = "Event",
			LiteralName = "CHAT_MSG_MONSTER_WHISPER",
			Payload =
			{
				{ Name = "text", Type = "string", Nilable = false },
				{ Name = "playerName", Type = "string", Nilable = false },
				{ Name = "languageName", Type = "string", Nilable = false },
				{ Name = "channelName", Type = "string", Nilable = false },
				{ Name = "playerName2", Type = "string", Nilable = false },
				{ Name = "specialFlags", Type = "string", Nilable = false },
				{ Name = "zoneChannelID", Type = "number", Nilable = false },
				{ Name = "channelIndex", Type = "number", Nilable = false },
				{ Name = "channelBaseName", Type = "string", Nilable = false },
				{ Name = "unused", Type = "number", Nilable = false },
				{ Name = "lineID", Type = "number", Nilable = false },
				{ Name = "guid", Type = "string", Nilable = false },
				{ Name = "bnSenderID", Type = "number", Nilable = false },
				{ Name = "isMobile", Type = "bool", Nilable = false },
				{ Name = "isSubtitle", Type = "bool", Nilable = false },
				{ Name = "hideSenderInLetterbox", Type = "bool", Nilable = false },
				{ Name = "supressRaidIcons", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ChatMsgMonsterYell",
			Type = "Event",
			LiteralName = "CHAT_MSG_MONSTER_YELL",
			Payload =
			{
				{ Name = "text", Type = "string", Nilable = false },
				{ Name = "playerName", Type = "string", Nilable = false },
				{ Name = "languageName", Type = "string", Nilable = false },
				{ Name = "channelName", Type = "string", Nilable = false },
				{ Name = "playerName2", Type = "string", Nilable = false },
				{ Name = "specialFlags", Type = "string", Nilable = false },
				{ Name = "zoneChannelID", Type = "number", Nilable = false },
				{ Name = "channelIndex", Type = "number", Nilable = false },
				{ Name = "channelBaseName", Type = "string", Nilable = false },
				{ Name = "unused", Type = "number", Nilable = false },
				{ Name = "lineID", Type = "number", Nilable = false },
				{ Name = "guid", Type = "string", Nilable = false },
				{ Name = "bnSenderID", Type = "number", Nilable = false },
				{ Name = "isMobile", Type = "bool", Nilable = false },
				{ Name = "isSubtitle", Type = "bool", Nilable = false },
				{ Name = "hideSenderInLetterbox", Type = "bool", Nilable = false },
				{ Name = "supressRaidIcons", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ChatMsgOfficer",
			Type = "Event",
			LiteralName = "CHAT_MSG_OFFICER",
			Payload =
			{
				{ Name = "text", Type = "string", Nilable = false },
				{ Name = "playerName", Type = "string", Nilable = false },
				{ Name = "languageName", Type = "string", Nilable = false },
				{ Name = "channelName", Type = "string", Nilable = false },
				{ Name = "playerName2", Type = "string", Nilable = false },
				{ Name = "specialFlags", Type = "string", Nilable = false },
				{ Name = "zoneChannelID", Type = "number", Nilable = false },
				{ Name = "channelIndex", Type = "number", Nilable = false },
				{ Name = "channelBaseName", Type = "string", Nilable = false },
				{ Name = "unused", Type = "number", Nilable = false },
				{ Name = "lineID", Type = "number", Nilable = false },
				{ Name = "guid", Type = "string", Nilable = false },
				{ Name = "bnSenderID", Type = "number", Nilable = false },
				{ Name = "isMobile", Type = "bool", Nilable = false },
				{ Name = "isSubtitle", Type = "bool", Nilable = false },
				{ Name = "hideSenderInLetterbox", Type = "bool", Nilable = false },
				{ Name = "supressRaidIcons", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ChatMsgOpening",
			Type = "Event",
			LiteralName = "CHAT_MSG_OPENING",
			Payload =
			{
				{ Name = "text", Type = "string", Nilable = false },
				{ Name = "playerName", Type = "string", Nilable = false },
				{ Name = "languageName", Type = "string", Nilable = false },
				{ Name = "channelName", Type = "string", Nilable = false },
				{ Name = "playerName2", Type = "string", Nilable = false },
				{ Name = "specialFlags", Type = "string", Nilable = false },
				{ Name = "zoneChannelID", Type = "number", Nilable = false },
				{ Name = "channelIndex", Type = "number", Nilable = false },
				{ Name = "channelBaseName", Type = "string", Nilable = false },
				{ Name = "unused", Type = "number", Nilable = false },
				{ Name = "lineID", Type = "number", Nilable = false },
				{ Name = "guid", Type = "string", Nilable = false },
				{ Name = "bnSenderID", Type = "number", Nilable = false },
				{ Name = "isMobile", Type = "bool", Nilable = false },
				{ Name = "isSubtitle", Type = "bool", Nilable = false },
				{ Name = "hideSenderInLetterbox", Type = "bool", Nilable = false },
				{ Name = "supressRaidIcons", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ChatMsgParty",
			Type = "Event",
			LiteralName = "CHAT_MSG_PARTY",
			Payload =
			{
				{ Name = "text", Type = "string", Nilable = false },
				{ Name = "playerName", Type = "string", Nilable = false },
				{ Name = "languageName", Type = "string", Nilable = false },
				{ Name = "channelName", Type = "string", Nilable = false },
				{ Name = "playerName2", Type = "string", Nilable = false },
				{ Name = "specialFlags", Type = "string", Nilable = false },
				{ Name = "zoneChannelID", Type = "number", Nilable = false },
				{ Name = "channelIndex", Type = "number", Nilable = false },
				{ Name = "channelBaseName", Type = "string", Nilable = false },
				{ Name = "unused", Type = "number", Nilable = false },
				{ Name = "lineID", Type = "number", Nilable = false },
				{ Name = "guid", Type = "string", Nilable = false },
				{ Name = "bnSenderID", Type = "number", Nilable = false },
				{ Name = "isMobile", Type = "bool", Nilable = false },
				{ Name = "isSubtitle", Type = "bool", Nilable = false },
				{ Name = "hideSenderInLetterbox", Type = "bool", Nilable = false },
				{ Name = "supressRaidIcons", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ChatMsgPartyLeader",
			Type = "Event",
			LiteralName = "CHAT_MSG_PARTY_LEADER",
			Payload =
			{
				{ Name = "text", Type = "string", Nilable = false },
				{ Name = "playerName", Type = "string", Nilable = false },
				{ Name = "languageName", Type = "string", Nilable = false },
				{ Name = "channelName", Type = "string", Nilable = false },
				{ Name = "playerName2", Type = "string", Nilable = false },
				{ Name = "specialFlags", Type = "string", Nilable = false },
				{ Name = "zoneChannelID", Type = "number", Nilable = false },
				{ Name = "channelIndex", Type = "number", Nilable = false },
				{ Name = "channelBaseName", Type = "string", Nilable = false },
				{ Name = "unused", Type = "number", Nilable = false },
				{ Name = "lineID", Type = "number", Nilable = false },
				{ Name = "guid", Type = "string", Nilable = false },
				{ Name = "bnSenderID", Type = "number", Nilable = false },
				{ Name = "isMobile", Type = "bool", Nilable = false },
				{ Name = "isSubtitle", Type = "bool", Nilable = false },
				{ Name = "hideSenderInLetterbox", Type = "bool", Nilable = false },
				{ Name = "supressRaidIcons", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ChatMsgPetBattleCombatLog",
			Type = "Event",
			LiteralName = "CHAT_MSG_PET_BATTLE_COMBAT_LOG",
			Payload =
			{
				{ Name = "text", Type = "string", Nilable = false },
				{ Name = "playerName", Type = "string", Nilable = false },
				{ Name = "languageName", Type = "string", Nilable = false },
				{ Name = "channelName", Type = "string", Nilable = false },
				{ Name = "playerName2", Type = "string", Nilable = false },
				{ Name = "specialFlags", Type = "string", Nilable = false },
				{ Name = "zoneChannelID", Type = "number", Nilable = false },
				{ Name = "channelIndex", Type = "number", Nilable = false },
				{ Name = "channelBaseName", Type = "string", Nilable = false },
				{ Name = "unused", Type = "number", Nilable = false },
				{ Name = "lineID", Type = "number", Nilable = false },
				{ Name = "guid", Type = "string", Nilable = false },
				{ Name = "bnSenderID", Type = "number", Nilable = false },
				{ Name = "isMobile", Type = "bool", Nilable = false },
				{ Name = "isSubtitle", Type = "bool", Nilable = false },
				{ Name = "hideSenderInLetterbox", Type = "bool", Nilable = false },
				{ Name = "supressRaidIcons", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ChatMsgPetBattleInfo",
			Type = "Event",
			LiteralName = "CHAT_MSG_PET_BATTLE_INFO",
			Payload =
			{
				{ Name = "text", Type = "string", Nilable = false },
				{ Name = "playerName", Type = "string", Nilable = false },
				{ Name = "languageName", Type = "string", Nilable = false },
				{ Name = "channelName", Type = "string", Nilable = false },
				{ Name = "playerName2", Type = "string", Nilable = false },
				{ Name = "specialFlags", Type = "string", Nilable = false },
				{ Name = "zoneChannelID", Type = "number", Nilable = false },
				{ Name = "channelIndex", Type = "number", Nilable = false },
				{ Name = "channelBaseName", Type = "string", Nilable = false },
				{ Name = "unused", Type = "number", Nilable = false },
				{ Name = "lineID", Type = "number", Nilable = false },
				{ Name = "guid", Type = "string", Nilable = false },
				{ Name = "bnSenderID", Type = "number", Nilable = false },
				{ Name = "isMobile", Type = "bool", Nilable = false },
				{ Name = "isSubtitle", Type = "bool", Nilable = false },
				{ Name = "hideSenderInLetterbox", Type = "bool", Nilable = false },
				{ Name = "supressRaidIcons", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ChatMsgPetInfo",
			Type = "Event",
			LiteralName = "CHAT_MSG_PET_INFO",
			Payload =
			{
				{ Name = "text", Type = "string", Nilable = false },
				{ Name = "playerName", Type = "string", Nilable = false },
				{ Name = "languageName", Type = "string", Nilable = false },
				{ Name = "channelName", Type = "string", Nilable = false },
				{ Name = "playerName2", Type = "string", Nilable = false },
				{ Name = "specialFlags", Type = "string", Nilable = false },
				{ Name = "zoneChannelID", Type = "number", Nilable = false },
				{ Name = "channelIndex", Type = "number", Nilable = false },
				{ Name = "channelBaseName", Type = "string", Nilable = false },
				{ Name = "unused", Type = "number", Nilable = false },
				{ Name = "lineID", Type = "number", Nilable = false },
				{ Name = "guid", Type = "string", Nilable = false },
				{ Name = "bnSenderID", Type = "number", Nilable = false },
				{ Name = "isMobile", Type = "bool", Nilable = false },
				{ Name = "isSubtitle", Type = "bool", Nilable = false },
				{ Name = "hideSenderInLetterbox", Type = "bool", Nilable = false },
				{ Name = "supressRaidIcons", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ChatMsgRaid",
			Type = "Event",
			LiteralName = "CHAT_MSG_RAID",
			Payload =
			{
				{ Name = "text", Type = "string", Nilable = false },
				{ Name = "playerName", Type = "string", Nilable = false },
				{ Name = "languageName", Type = "string", Nilable = false },
				{ Name = "channelName", Type = "string", Nilable = false },
				{ Name = "playerName2", Type = "string", Nilable = false },
				{ Name = "specialFlags", Type = "string", Nilable = false },
				{ Name = "zoneChannelID", Type = "number", Nilable = false },
				{ Name = "channelIndex", Type = "number", Nilable = false },
				{ Name = "channelBaseName", Type = "string", Nilable = false },
				{ Name = "unused", Type = "number", Nilable = false },
				{ Name = "lineID", Type = "number", Nilable = false },
				{ Name = "guid", Type = "string", Nilable = false },
				{ Name = "bnSenderID", Type = "number", Nilable = false },
				{ Name = "isMobile", Type = "bool", Nilable = false },
				{ Name = "isSubtitle", Type = "bool", Nilable = false },
				{ Name = "hideSenderInLetterbox", Type = "bool", Nilable = false },
				{ Name = "supressRaidIcons", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ChatMsgRaidBossEmote",
			Type = "Event",
			LiteralName = "CHAT_MSG_RAID_BOSS_EMOTE",
			Payload =
			{
				{ Name = "text", Type = "string", Nilable = false },
				{ Name = "playerName", Type = "string", Nilable = false },
				{ Name = "languageName", Type = "string", Nilable = false },
				{ Name = "channelName", Type = "string", Nilable = false },
				{ Name = "playerName2", Type = "string", Nilable = false },
				{ Name = "specialFlags", Type = "string", Nilable = false },
				{ Name = "zoneChannelID", Type = "number", Nilable = false },
				{ Name = "channelIndex", Type = "number", Nilable = false },
				{ Name = "channelBaseName", Type = "string", Nilable = false },
				{ Name = "unused", Type = "number", Nilable = false },
				{ Name = "lineID", Type = "number", Nilable = false },
				{ Name = "guid", Type = "string", Nilable = false },
				{ Name = "bnSenderID", Type = "number", Nilable = false },
				{ Name = "isMobile", Type = "bool", Nilable = false },
				{ Name = "isSubtitle", Type = "bool", Nilable = false },
				{ Name = "hideSenderInLetterbox", Type = "bool", Nilable = false },
				{ Name = "supressRaidIcons", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ChatMsgRaidBossWhisper",
			Type = "Event",
			LiteralName = "CHAT_MSG_RAID_BOSS_WHISPER",
			Payload =
			{
				{ Name = "text", Type = "string", Nilable = false },
				{ Name = "playerName", Type = "string", Nilable = false },
				{ Name = "languageName", Type = "string", Nilable = false },
				{ Name = "channelName", Type = "string", Nilable = false },
				{ Name = "playerName2", Type = "string", Nilable = false },
				{ Name = "specialFlags", Type = "string", Nilable = false },
				{ Name = "zoneChannelID", Type = "number", Nilable = false },
				{ Name = "channelIndex", Type = "number", Nilable = false },
				{ Name = "channelBaseName", Type = "string", Nilable = false },
				{ Name = "unused", Type = "number", Nilable = false },
				{ Name = "lineID", Type = "number", Nilable = false },
				{ Name = "guid", Type = "string", Nilable = false },
				{ Name = "bnSenderID", Type = "number", Nilable = false },
				{ Name = "isMobile", Type = "bool", Nilable = false },
				{ Name = "isSubtitle", Type = "bool", Nilable = false },
				{ Name = "hideSenderInLetterbox", Type = "bool", Nilable = false },
				{ Name = "supressRaidIcons", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ChatMsgRaidLeader",
			Type = "Event",
			LiteralName = "CHAT_MSG_RAID_LEADER",
			Payload =
			{
				{ Name = "text", Type = "string", Nilable = false },
				{ Name = "playerName", Type = "string", Nilable = false },
				{ Name = "languageName", Type = "string", Nilable = false },
				{ Name = "channelName", Type = "string", Nilable = false },
				{ Name = "playerName2", Type = "string", Nilable = false },
				{ Name = "specialFlags", Type = "string", Nilable = false },
				{ Name = "zoneChannelID", Type = "number", Nilable = false },
				{ Name = "channelIndex", Type = "number", Nilable = false },
				{ Name = "channelBaseName", Type = "string", Nilable = false },
				{ Name = "unused", Type = "number", Nilable = false },
				{ Name = "lineID", Type = "number", Nilable = false },
				{ Name = "guid", Type = "string", Nilable = false },
				{ Name = "bnSenderID", Type = "number", Nilable = false },
				{ Name = "isMobile", Type = "bool", Nilable = false },
				{ Name = "isSubtitle", Type = "bool", Nilable = false },
				{ Name = "hideSenderInLetterbox", Type = "bool", Nilable = false },
				{ Name = "supressRaidIcons", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ChatMsgRaidWarning",
			Type = "Event",
			LiteralName = "CHAT_MSG_RAID_WARNING",
			Payload =
			{
				{ Name = "text", Type = "string", Nilable = false },
				{ Name = "playerName", Type = "string", Nilable = false },
				{ Name = "languageName", Type = "string", Nilable = false },
				{ Name = "channelName", Type = "string", Nilable = false },
				{ Name = "playerName2", Type = "string", Nilable = false },
				{ Name = "specialFlags", Type = "string", Nilable = false },
				{ Name = "zoneChannelID", Type = "number", Nilable = false },
				{ Name = "channelIndex", Type = "number", Nilable = false },
				{ Name = "channelBaseName", Type = "string", Nilable = false },
				{ Name = "unused", Type = "number", Nilable = false },
				{ Name = "lineID", Type = "number", Nilable = false },
				{ Name = "guid", Type = "string", Nilable = false },
				{ Name = "bnSenderID", Type = "number", Nilable = false },
				{ Name = "isMobile", Type = "bool", Nilable = false },
				{ Name = "isSubtitle", Type = "bool", Nilable = false },
				{ Name = "hideSenderInLetterbox", Type = "bool", Nilable = false },
				{ Name = "supressRaidIcons", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ChatMsgRestricted",
			Type = "Event",
			LiteralName = "CHAT_MSG_RESTRICTED",
			Payload =
			{
				{ Name = "text", Type = "string", Nilable = false },
				{ Name = "playerName", Type = "string", Nilable = false },
				{ Name = "languageName", Type = "string", Nilable = false },
				{ Name = "channelName", Type = "string", Nilable = false },
				{ Name = "playerName2", Type = "string", Nilable = false },
				{ Name = "specialFlags", Type = "string", Nilable = false },
				{ Name = "zoneChannelID", Type = "number", Nilable = false },
				{ Name = "channelIndex", Type = "number", Nilable = false },
				{ Name = "channelBaseName", Type = "string", Nilable = false },
				{ Name = "unused", Type = "number", Nilable = false },
				{ Name = "lineID", Type = "number", Nilable = false },
				{ Name = "guid", Type = "string", Nilable = false },
				{ Name = "bnSenderID", Type = "number", Nilable = false },
				{ Name = "isMobile", Type = "bool", Nilable = false },
				{ Name = "isSubtitle", Type = "bool", Nilable = false },
				{ Name = "hideSenderInLetterbox", Type = "bool", Nilable = false },
				{ Name = "supressRaidIcons", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ChatMsgSay",
			Type = "Event",
			LiteralName = "CHAT_MSG_SAY",
			Payload =
			{
				{ Name = "text", Type = "string", Nilable = false },
				{ Name = "playerName", Type = "string", Nilable = false },
				{ Name = "languageName", Type = "string", Nilable = false },
				{ Name = "channelName", Type = "string", Nilable = false },
				{ Name = "playerName2", Type = "string", Nilable = false },
				{ Name = "specialFlags", Type = "string", Nilable = false },
				{ Name = "zoneChannelID", Type = "number", Nilable = false },
				{ Name = "channelIndex", Type = "number", Nilable = false },
				{ Name = "channelBaseName", Type = "string", Nilable = false },
				{ Name = "unused", Type = "number", Nilable = false },
				{ Name = "lineID", Type = "number", Nilable = false },
				{ Name = "guid", Type = "string", Nilable = false },
				{ Name = "bnSenderID", Type = "number", Nilable = false },
				{ Name = "isMobile", Type = "bool", Nilable = false },
				{ Name = "isSubtitle", Type = "bool", Nilable = false },
				{ Name = "hideSenderInLetterbox", Type = "bool", Nilable = false },
				{ Name = "supressRaidIcons", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ChatMsgSkill",
			Type = "Event",
			LiteralName = "CHAT_MSG_SKILL",
			Payload =
			{
				{ Name = "text", Type = "string", Nilable = false },
				{ Name = "playerName", Type = "string", Nilable = false },
				{ Name = "languageName", Type = "string", Nilable = false },
				{ Name = "channelName", Type = "string", Nilable = false },
				{ Name = "playerName2", Type = "string", Nilable = false },
				{ Name = "specialFlags", Type = "string", Nilable = false },
				{ Name = "zoneChannelID", Type = "number", Nilable = false },
				{ Name = "channelIndex", Type = "number", Nilable = false },
				{ Name = "channelBaseName", Type = "string", Nilable = false },
				{ Name = "unused", Type = "number", Nilable = false },
				{ Name = "lineID", Type = "number", Nilable = false },
				{ Name = "guid", Type = "string", Nilable = false },
				{ Name = "bnSenderID", Type = "number", Nilable = false },
				{ Name = "isMobile", Type = "bool", Nilable = false },
				{ Name = "isSubtitle", Type = "bool", Nilable = false },
				{ Name = "hideSenderInLetterbox", Type = "bool", Nilable = false },
				{ Name = "supressRaidIcons", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ChatMsgSystem",
			Type = "Event",
			LiteralName = "CHAT_MSG_SYSTEM",
			Payload =
			{
				{ Name = "text", Type = "string", Nilable = false },
				{ Name = "playerName", Type = "string", Nilable = false },
				{ Name = "languageName", Type = "string", Nilable = false },
				{ Name = "channelName", Type = "string", Nilable = false },
				{ Name = "playerName2", Type = "string", Nilable = false },
				{ Name = "specialFlags", Type = "string", Nilable = false },
				{ Name = "zoneChannelID", Type = "number", Nilable = false },
				{ Name = "channelIndex", Type = "number", Nilable = false },
				{ Name = "channelBaseName", Type = "string", Nilable = false },
				{ Name = "unused", Type = "number", Nilable = false },
				{ Name = "lineID", Type = "number", Nilable = false },
				{ Name = "guid", Type = "string", Nilable = false },
				{ Name = "bnSenderID", Type = "number", Nilable = false },
				{ Name = "isMobile", Type = "bool", Nilable = false },
				{ Name = "isSubtitle", Type = "bool", Nilable = false },
				{ Name = "hideSenderInLetterbox", Type = "bool", Nilable = false },
				{ Name = "supressRaidIcons", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ChatMsgTargeticons",
			Type = "Event",
			LiteralName = "CHAT_MSG_TARGETICONS",
			Payload =
			{
				{ Name = "text", Type = "string", Nilable = false },
				{ Name = "playerName", Type = "string", Nilable = false },
				{ Name = "languageName", Type = "string", Nilable = false },
				{ Name = "channelName", Type = "string", Nilable = false },
				{ Name = "playerName2", Type = "string", Nilable = false },
				{ Name = "specialFlags", Type = "string", Nilable = false },
				{ Name = "zoneChannelID", Type = "number", Nilable = false },
				{ Name = "channelIndex", Type = "number", Nilable = false },
				{ Name = "channelBaseName", Type = "string", Nilable = false },
				{ Name = "unused", Type = "number", Nilable = false },
				{ Name = "lineID", Type = "number", Nilable = false },
				{ Name = "guid", Type = "string", Nilable = false },
				{ Name = "bnSenderID", Type = "number", Nilable = false },
				{ Name = "isMobile", Type = "bool", Nilable = false },
				{ Name = "isSubtitle", Type = "bool", Nilable = false },
				{ Name = "hideSenderInLetterbox", Type = "bool", Nilable = false },
				{ Name = "supressRaidIcons", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ChatMsgTextEmote",
			Type = "Event",
			LiteralName = "CHAT_MSG_TEXT_EMOTE",
			Payload =
			{
				{ Name = "text", Type = "string", Nilable = false },
				{ Name = "playerName", Type = "string", Nilable = false },
				{ Name = "languageName", Type = "string", Nilable = false },
				{ Name = "channelName", Type = "string", Nilable = false },
				{ Name = "playerName2", Type = "string", Nilable = false },
				{ Name = "specialFlags", Type = "string", Nilable = false },
				{ Name = "zoneChannelID", Type = "number", Nilable = false },
				{ Name = "channelIndex", Type = "number", Nilable = false },
				{ Name = "channelBaseName", Type = "string", Nilable = false },
				{ Name = "unused", Type = "number", Nilable = false },
				{ Name = "lineID", Type = "number", Nilable = false },
				{ Name = "guid", Type = "string", Nilable = false },
				{ Name = "bnSenderID", Type = "number", Nilable = false },
				{ Name = "isMobile", Type = "bool", Nilable = false },
				{ Name = "isSubtitle", Type = "bool", Nilable = false },
				{ Name = "hideSenderInLetterbox", Type = "bool", Nilable = false },
				{ Name = "supressRaidIcons", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ChatMsgTradeskills",
			Type = "Event",
			LiteralName = "CHAT_MSG_TRADESKILLS",
			Payload =
			{
				{ Name = "text", Type = "string", Nilable = false },
				{ Name = "playerName", Type = "string", Nilable = false },
				{ Name = "languageName", Type = "string", Nilable = false },
				{ Name = "channelName", Type = "string", Nilable = false },
				{ Name = "playerName2", Type = "string", Nilable = false },
				{ Name = "specialFlags", Type = "string", Nilable = false },
				{ Name = "zoneChannelID", Type = "number", Nilable = false },
				{ Name = "channelIndex", Type = "number", Nilable = false },
				{ Name = "channelBaseName", Type = "string", Nilable = false },
				{ Name = "unused", Type = "number", Nilable = false },
				{ Name = "lineID", Type = "number", Nilable = false },
				{ Name = "guid", Type = "string", Nilable = false },
				{ Name = "bnSenderID", Type = "number", Nilable = false },
				{ Name = "isMobile", Type = "bool", Nilable = false },
				{ Name = "isSubtitle", Type = "bool", Nilable = false },
				{ Name = "hideSenderInLetterbox", Type = "bool", Nilable = false },
				{ Name = "supressRaidIcons", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ChatMsgWhisper",
			Type = "Event",
			LiteralName = "CHAT_MSG_WHISPER",
			Payload =
			{
				{ Name = "text", Type = "string", Nilable = false },
				{ Name = "playerName", Type = "string", Nilable = false },
				{ Name = "languageName", Type = "string", Nilable = false },
				{ Name = "channelName", Type = "string", Nilable = false },
				{ Name = "playerName2", Type = "string", Nilable = false },
				{ Name = "specialFlags", Type = "string", Nilable = false },
				{ Name = "zoneChannelID", Type = "number", Nilable = false },
				{ Name = "channelIndex", Type = "number", Nilable = false },
				{ Name = "channelBaseName", Type = "string", Nilable = false },
				{ Name = "unused", Type = "number", Nilable = false },
				{ Name = "lineID", Type = "number", Nilable = false },
				{ Name = "guid", Type = "string", Nilable = false },
				{ Name = "bnSenderID", Type = "number", Nilable = false },
				{ Name = "isMobile", Type = "bool", Nilable = false },
				{ Name = "isSubtitle", Type = "bool", Nilable = false },
				{ Name = "hideSenderInLetterbox", Type = "bool", Nilable = false },
				{ Name = "supressRaidIcons", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ChatMsgWhisperInform",
			Type = "Event",
			LiteralName = "CHAT_MSG_WHISPER_INFORM",
			Payload =
			{
				{ Name = "text", Type = "string", Nilable = false },
				{ Name = "playerName", Type = "string", Nilable = false },
				{ Name = "languageName", Type = "string", Nilable = false },
				{ Name = "channelName", Type = "string", Nilable = false },
				{ Name = "playerName2", Type = "string", Nilable = false },
				{ Name = "specialFlags", Type = "string", Nilable = false },
				{ Name = "zoneChannelID", Type = "number", Nilable = false },
				{ Name = "channelIndex", Type = "number", Nilable = false },
				{ Name = "channelBaseName", Type = "string", Nilable = false },
				{ Name = "unused", Type = "number", Nilable = false },
				{ Name = "lineID", Type = "number", Nilable = false },
				{ Name = "guid", Type = "string", Nilable = false },
				{ Name = "bnSenderID", Type = "number", Nilable = false },
				{ Name = "isMobile", Type = "bool", Nilable = false },
				{ Name = "isSubtitle", Type = "bool", Nilable = false },
				{ Name = "hideSenderInLetterbox", Type = "bool", Nilable = false },
				{ Name = "supressRaidIcons", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ChatMsgYell",
			Type = "Event",
			LiteralName = "CHAT_MSG_YELL",
			Payload =
			{
				{ Name = "text", Type = "string", Nilable = false },
				{ Name = "playerName", Type = "string", Nilable = false },
				{ Name = "languageName", Type = "string", Nilable = false },
				{ Name = "channelName", Type = "string", Nilable = false },
				{ Name = "playerName2", Type = "string", Nilable = false },
				{ Name = "specialFlags", Type = "string", Nilable = false },
				{ Name = "zoneChannelID", Type = "number", Nilable = false },
				{ Name = "channelIndex", Type = "number", Nilable = false },
				{ Name = "channelBaseName", Type = "string", Nilable = false },
				{ Name = "unused", Type = "number", Nilable = false },
				{ Name = "lineID", Type = "number", Nilable = false },
				{ Name = "guid", Type = "string", Nilable = false },
				{ Name = "bnSenderID", Type = "number", Nilable = false },
				{ Name = "isMobile", Type = "bool", Nilable = false },
				{ Name = "isSubtitle", Type = "bool", Nilable = false },
				{ Name = "hideSenderInLetterbox", Type = "bool", Nilable = false },
				{ Name = "supressRaidIcons", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ChatServerDisconnected",
			Type = "Event",
			LiteralName = "CHAT_SERVER_DISCONNECTED",
			Payload =
			{
				{ Name = "isInitialMessage", Type = "bool", Nilable = true },
			},
		},
		{
			Name = "ChatServerReconnected",
			Type = "Event",
			LiteralName = "CHAT_SERVER_RECONNECTED",
		},
		{
			Name = "ClearBossEmotes",
			Type = "Event",
			LiteralName = "CLEAR_BOSS_EMOTES",
		},
		{
			Name = "LanguageListChanged",
			Type = "Event",
			LiteralName = "LANGUAGE_LIST_CHANGED",
		},
		{
			Name = "QuestBossEmote",
			Type = "Event",
			LiteralName = "QUEST_BOSS_EMOTE",
			Payload =
			{
				{ Name = "text", Type = "string", Nilable = false },
				{ Name = "playerName", Type = "string", Nilable = false },
				{ Name = "displayTime", Type = "number", Nilable = false },
				{ Name = "enableBossEmoteWarningSound", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "RaidBossEmote",
			Type = "Event",
			LiteralName = "RAID_BOSS_EMOTE",
			Payload =
			{
				{ Name = "text", Type = "string", Nilable = false },
				{ Name = "playerName", Type = "string", Nilable = false },
				{ Name = "displayTime", Type = "number", Nilable = false },
				{ Name = "enableBossEmoteWarningSound", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "RaidBossWhisper",
			Type = "Event",
			LiteralName = "RAID_BOSS_WHISPER",
			Payload =
			{
				{ Name = "text", Type = "string", Nilable = false },
				{ Name = "playerName", Type = "string", Nilable = false },
				{ Name = "displayTime", Type = "number", Nilable = false },
				{ Name = "enableBossEmoteWarningSound", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "RaidInstanceWelcome",
			Type = "Event",
			LiteralName = "RAID_INSTANCE_WELCOME",
			Payload =
			{
				{ Name = "mapname", Type = "string", Nilable = false },
				{ Name = "timeLeft", Type = "number", Nilable = false },
				{ Name = "locked", Type = "number", Nilable = false },
				{ Name = "extended", Type = "number", Nilable = false },
			},
		},
		{
			Name = "UpdateChatColor",
			Type = "Event",
			LiteralName = "UPDATE_CHAT_COLOR",
			Payload =
			{
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "r", Type = "number", Nilable = false },
				{ Name = "g", Type = "number", Nilable = false },
				{ Name = "b", Type = "number", Nilable = false },
			},
		},
		{
			Name = "UpdateChatColorNameByClass",
			Type = "Event",
			LiteralName = "UPDATE_CHAT_COLOR_NAME_BY_CLASS",
			Payload =
			{
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "colorNameByClass", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "UpdateChatWindows",
			Type = "Event",
			LiteralName = "UPDATE_CHAT_WINDOWS",
		},
		{
			Name = "UpdateFloatingChatWindows",
			Type = "Event",
			LiteralName = "UPDATE_FLOATING_CHAT_WINDOWS",
		},
	},

	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(ChatInfo);local ChromieTimeUI =
{
	Name = "ChromieTimeInfo",
	Type = "System",
	Namespace = "C_ChromieTime",

	Functions =
	{
		{
			Name = "CloseUI",
			Type = "Function",
		},
		{
			Name = "GetChromieTimeExpansionOption",
			Type = "Function",

			Arguments =
			{
				{ Name = "expansionRecID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "info", Type = "ChromieTimeExpansionInfo", Nilable = true },
			},
		},
		{
			Name = "GetChromieTimeExpansionOptions",
			Type = "Function",

			Returns =
			{
				{ Name = "expansionOptions", Type = "table", InnerType = "ChromieTimeExpansionInfo", Nilable = false },
			},
		},
		{
			Name = "SelectChromieTimeOption",
			Type = "Function",

			Arguments =
			{
				{ Name = "chromieTimeExpansionInfoId", Type = "number", Nilable = false },
			},
		},
	},

	Events =
	{
		{
			Name = "ChromieTimeClose",
			Type = "Event",
			LiteralName = "CHROMIE_TIME_CLOSE",
		},
		{
			Name = "ChromieTimeOpen",
			Type = "Event",
			LiteralName = "CHROMIE_TIME_OPEN",
		},
	},

	Tables =
	{
		{
			Name = "ChromieTimeExpansionInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "id", Type = "number", Nilable = false },
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "description", Type = "string", Nilable = false },
				{ Name = "mapAtlas", Type = "string", Nilable = false },
				{ Name = "previewAtlas", Type = "string", Nilable = false },
			},
		},
	},
};

APIDocumentation:AddDocumentationTable(ChromieTimeUI);local Cinematic =
{
	Name = "Cinematic",
	Type = "System",
	Namespace = "C_Cinematic",

	Functions =
	{
	},

	Events =
	{
		{
			Name = "CinematicStart",
			Type = "Event",
			LiteralName = "CINEMATIC_START",
			Payload =
			{
				{ Name = "canBeCancelled", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "CinematicStop",
			Type = "Event",
			LiteralName = "CINEMATIC_STOP",
		},
		{
			Name = "HideSubtitle",
			Type = "Event",
			LiteralName = "HIDE_SUBTITLE",
		},
		{
			Name = "PlayMovie",
			Type = "Event",
			LiteralName = "PLAY_MOVIE",
			Payload =
			{
				{ Name = "movieID", Type = "number", Nilable = false },
			},
		},
	},

	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(Cinematic);local ClassColor =
{
	Name = "ClassColor",
	Type = "System",
	Namespace = "C_ClassColor",

	Functions =
	{
		{
			Name = "GetClassColor",
			Type = "Function",

			Arguments =
			{
				{ Name = "className", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "classColor", Type = "table", Mixin = "ColorMixin", Nilable = false },
			},
		},
	},

	Events =
	{
	},

	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(ClassColor);local ClassTrial =
{
	Name = "ClassTrial",
	Type = "System",
	Namespace = "C_ClassTrial",

	Functions =
	{
	},

	Events =
	{
		{
			Name = "ClassTrialTimerStart",
			Type = "Event",
			LiteralName = "CLASS_TRIAL_TIMER_START",
		},
		{
			Name = "ClassTrialUpgradeComplete",
			Type = "Event",
			LiteralName = "CLASS_TRIAL_UPGRADE_COMPLETE",
		},
	},

	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(ClassTrial);local Club =
{
	Name = "Club",
	Type = "System",
	Namespace = "C_Club",

	Functions =
	{
		{
			Name = "AcceptInvitation",
			Type = "Function",

			Arguments =
			{
				{ Name = "clubId", Type = "string", Nilable = false },
			},
		},
		{
			Name = "AddClubStreamChatChannel",
			Type = "Function",

			Arguments =
			{
				{ Name = "clubId", Type = "string", Nilable = false },
				{ Name = "streamId", Type = "string", Nilable = false },
			},
		},
		{
			Name = "AdvanceStreamViewMarker",
			Type = "Function",

			Arguments =
			{
				{ Name = "clubId", Type = "string", Nilable = false },
				{ Name = "streamId", Type = "string", Nilable = false },
			},
		},
		{
			Name = "AssignMemberRole",
			Type = "Function",

			Arguments =
			{
				{ Name = "clubId", Type = "string", Nilable = false },
				{ Name = "memberId", Type = "number", Nilable = false },
				{ Name = "roleId", Type = "ClubRoleIdentifier", Nilable = false },
			},
		},
		{
			Name = "CanResolvePlayerLocationFromClubMessageData",
			Type = "Function",

			Arguments =
			{
				{ Name = "clubId", Type = "string", Nilable = false },
				{ Name = "streamId", Type = "string", Nilable = false },
				{ Name = "epoch", Type = "number", Nilable = false },
				{ Name = "position", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "canResolve", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ClearAutoAdvanceStreamViewMarker",
			Type = "Function",
		},
		{
			Name = "ClearClubPresenceSubscription",
			Type = "Function",
		},
		{
			Name = "CompareBattleNetDisplayName",
			Type = "Function",

			Arguments =
			{
				{ Name = "clubId", Type = "string", Nilable = false },
				{ Name = "lhsMemberId", Type = "number", Nilable = false },
				{ Name = "rhsMemberId", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "comparison", Type = "number", Nilable = false },
			},
		},
		{
			Name = "CreateClub",
			Type = "Function",

			Arguments =
			{
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "shortName", Type = "string", Nilable = true },
				{ Name = "description", Type = "string", Nilable = false },
				{ Name = "clubType", Type = "ClubType", Nilable = false, Documentation = { "Valid types are BattleNet or Character" } },
				{ Name = "avatarId", Type = "number", Nilable = false },
			},
		},
		{
			Name = "CreateStream",
			Type = "Function",
			Documentation = { "Check the canCreateStream privilege." },

			Arguments =
			{
				{ Name = "clubId", Type = "string", Nilable = false },
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "subject", Type = "string", Nilable = false },
				{ Name = "leadersAndModeratorsOnly", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "CreateTicket",
			Type = "Function",
			Documentation = { "Check canCreateTicket privilege." },

			Arguments =
			{
				{ Name = "clubId", Type = "string", Nilable = false },
				{ Name = "allowedRedeemCount", Type = "number", Nilable = true, Documentation = { "Number of uses. nil means unlimited" } },
				{ Name = "duration", Type = "number", Nilable = true, Documentation = { "Duration in seconds. nil never expires" } },
				{ Name = "defaultStreamId", Type = "string", Nilable = true },
			},
		},
		{
			Name = "DeclineInvitation",
			Type = "Function",

			Arguments =
			{
				{ Name = "clubId", Type = "string", Nilable = false },
			},
		},
		{
			Name = "DestroyClub",
			Type = "Function",
			Documentation = { "Check the canDestroy privilege." },

			Arguments =
			{
				{ Name = "clubId", Type = "string", Nilable = false },
			},
		},
		{
			Name = "DestroyMessage",
			Type = "Function",

			Arguments =
			{
				{ Name = "clubId", Type = "string", Nilable = false },
				{ Name = "streamId", Type = "string", Nilable = false },
				{ Name = "messageId", Type = "ClubMessageIdentifier", Nilable = false },
			},
		},
		{
			Name = "DestroyStream",
			Type = "Function",
			Documentation = { "Check canDestroyStream privilege." },

			Arguments =
			{
				{ Name = "clubId", Type = "string", Nilable = false },
				{ Name = "streamId", Type = "string", Nilable = false },
			},
		},
		{
			Name = "DestroyTicket",
			Type = "Function",
			Documentation = { "Check canDestroyTicket privilege." },

			Arguments =
			{
				{ Name = "clubId", Type = "string", Nilable = false },
				{ Name = "ticketId", Type = "string", Nilable = false },
			},
		},
		{
			Name = "EditClub",
			Type = "Function",
			Documentation = { "nil arguments will not change existing club data" },

			Arguments =
			{
				{ Name = "clubId", Type = "string", Nilable = false },
				{ Name = "name", Type = "string", Nilable = true },
				{ Name = "shortName", Type = "string", Nilable = true },
				{ Name = "description", Type = "string", Nilable = true },
				{ Name = "avatarId", Type = "number", Nilable = true },
				{ Name = "broadcast", Type = "string", Nilable = true },
			},
		},
		{
			Name = "EditMessage",
			Type = "Function",

			Arguments =
			{
				{ Name = "clubId", Type = "string", Nilable = false },
				{ Name = "streamId", Type = "string", Nilable = false },
				{ Name = "messageId", Type = "ClubMessageIdentifier", Nilable = false },
				{ Name = "message", Type = "string", Nilable = false },
			},
		},
		{
			Name = "EditStream",
			Type = "Function",
			Documentation = { "Check the canSetStreamName, canSetStreamSubject, canSetStreamAccess privileges. nil arguments will not change existing stream data." },

			Arguments =
			{
				{ Name = "clubId", Type = "string", Nilable = false },
				{ Name = "streamId", Type = "string", Nilable = false },
				{ Name = "name", Type = "string", Nilable = true },
				{ Name = "subject", Type = "string", Nilable = true },
				{ Name = "leadersAndModeratorsOnly", Type = "bool", Nilable = true },
			},
		},
		{
			Name = "Flush",
			Type = "Function",
		},
		{
			Name = "FocusStream",
			Type = "Function",

			Arguments =
			{
				{ Name = "clubId", Type = "string", Nilable = false },
				{ Name = "streamId", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "focused", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "GetAssignableRoles",
			Type = "Function",

			Arguments =
			{
				{ Name = "clubId", Type = "string", Nilable = false },
				{ Name = "memberId", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "assignableRoles", Type = "table", InnerType = "ClubRoleIdentifier", Nilable = false },
			},
		},
		{
			Name = "GetAvatarIdList",
			Type = "Function",
			Documentation = { "listen for AVATAR_LIST_UPDATED event. This can happen if we haven't downloaded the battle.net avatar list yet" },

			Arguments =
			{
				{ Name = "clubType", Type = "ClubType", Nilable = false },
			},

			Returns =
			{
				{ Name = "avatarIds", Type = "table", InnerType = "number", Nilable = true },
			},
		},
		{
			Name = "GetClubCapacity",
			Type = "Function",

			Returns =
			{
				{ Name = "capacity", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetClubInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "clubId", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "info", Type = "ClubInfo", Nilable = true },
			},
		},
		{
			Name = "GetClubLimits",
			Type = "Function",

			Arguments =
			{
				{ Name = "clubType", Type = "ClubType", Nilable = false },
			},

			Returns =
			{
				{ Name = "clubLimits", Type = "ClubLimits", Nilable = false },
			},
		},
		{
			Name = "GetClubMembers",
			Type = "Function",

			Arguments =
			{
				{ Name = "clubId", Type = "string", Nilable = false },
				{ Name = "streamId", Type = "string", Nilable = true },
			},

			Returns =
			{
				{ Name = "members", Type = "table", InnerType = "number", Nilable = false },
			},
		},
		{
			Name = "GetClubPrivileges",
			Type = "Function",
			Documentation = { "The privileges for the logged in user for this club" },

			Arguments =
			{
				{ Name = "clubId", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "privilegeInfo", Type = "ClubPrivilegeInfo", Nilable = false },
			},
		},
		{
			Name = "GetClubStreamNotificationSettings",
			Type = "Function",

			Arguments =
			{
				{ Name = "clubId", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "settings", Type = "table", InnerType = "ClubStreamNotificationSetting", Nilable = false },
			},
		},
		{
			Name = "GetCommunityNameResultText",
			Type = "Function",

			Arguments =
			{
				{ Name = "result", Type = "ValidateNameResult", Nilable = false },
			},

			Returns =
			{
				{ Name = "errorCode", Type = "string", Nilable = true },
			},
		},
		{
			Name = "GetGuildClubId",
			Type = "Function",

			Returns =
			{
				{ Name = "guildClubId", Type = "string", Nilable = true },
			},
		},
		{
			Name = "GetInfoFromLastCommunityChatLine",
			Type = "Function",

			Returns =
			{
				{ Name = "messageInfo", Type = "ClubMessageInfo", Nilable = false },
				{ Name = "clubId", Type = "string", Nilable = false },
				{ Name = "streamId", Type = "string", Nilable = false },
				{ Name = "clubType", Type = "ClubType", Nilable = false },
			},
		},
		{
			Name = "GetInvitationCandidates",
			Type = "Function",
			Documentation = { "Returns a list of players that you can send a request to a Battle.net club. Returns an empty list for Character based clubs" },

			Arguments =
			{
				{ Name = "filter", Type = "string", Nilable = true },
				{ Name = "maxResults", Type = "number", Nilable = true },
				{ Name = "cursorPosition", Type = "number", Nilable = true },
				{ Name = "allowFullMatch", Type = "bool", Nilable = true },
				{ Name = "clubId", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "candidates", Type = "table", InnerType = "ClubInvitationCandidateInfo", Nilable = false },
			},
		},
		{
			Name = "GetInvitationInfo",
			Type = "Function",
			Documentation = { "Get info about a specific club the active player has been invited to." },

			Arguments =
			{
				{ Name = "clubId", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "invitation", Type = "ClubSelfInvitationInfo", Nilable = true },
			},
		},
		{
			Name = "GetInvitationsForClub",
			Type = "Function",
			Documentation = { "Get the pending invitations for this club. Call RequestInvitationsForClub() to retrieve invitations from server." },

			Arguments =
			{
				{ Name = "clubId", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "invitations", Type = "table", InnerType = "ClubInvitationInfo", Nilable = false },
			},
		},
		{
			Name = "GetInvitationsForSelf",
			Type = "Function",
			Documentation = { "These are the clubs the active player has been invited to." },

			Returns =
			{
				{ Name = "invitations", Type = "table", InnerType = "ClubSelfInvitationInfo", Nilable = false },
			},
		},
		{
			Name = "GetLastTicketResponse",
			Type = "Function",

			Arguments =
			{
				{ Name = "ticket", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "error", Type = "ClubErrorType", Nilable = false },
				{ Name = "info", Type = "ClubInfo", Nilable = true },
				{ Name = "showError", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "GetMemberInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "clubId", Type = "string", Nilable = false },
				{ Name = "memberId", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "info", Type = "ClubMemberInfo", Nilable = true },
			},
		},
		{
			Name = "GetMemberInfoForSelf",
			Type = "Function",
			Documentation = { "Info for the logged in user for this club" },

			Arguments =
			{
				{ Name = "clubId", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "info", Type = "ClubMemberInfo", Nilable = true },
			},
		},
		{
			Name = "GetMessageInfo",
			Type = "Function",
			Documentation = { "Get info about a particular message." },

			Arguments =
			{
				{ Name = "clubId", Type = "string", Nilable = false },
				{ Name = "streamId", Type = "string", Nilable = false },
				{ Name = "messageId", Type = "ClubMessageIdentifier", Nilable = false },
			},

			Returns =
			{
				{ Name = "message", Type = "ClubMessageInfo", Nilable = true },
			},
		},
		{
			Name = "GetMessageRanges",
			Type = "Function",
			Documentation = { "Get the ranges of the messages currently downloaded." },

			Arguments =
			{
				{ Name = "clubId", Type = "string", Nilable = false },
				{ Name = "streamId", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "ranges", Type = "table", InnerType = "ClubMessageRange", Nilable = false },
			},
		},
		{
			Name = "GetMessagesBefore",
			Type = "Function",
			Documentation = { "Get downloaded messages before (and including) the specified messageId limited by count. These are filtered by ignored players" },

			Arguments =
			{
				{ Name = "clubId", Type = "string", Nilable = false },
				{ Name = "streamId", Type = "string", Nilable = false },
				{ Name = "newest", Type = "ClubMessageIdentifier", Nilable = false },
				{ Name = "count", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "messages", Type = "table", InnerType = "ClubMessageInfo", Nilable = false },
			},
		},
		{
			Name = "GetMessagesInRange",
			Type = "Function",
			Documentation = { "Get downloaded messages in the given range. These are filtered by ignored players" },

			Arguments =
			{
				{ Name = "clubId", Type = "string", Nilable = false },
				{ Name = "streamId", Type = "string", Nilable = false },
				{ Name = "oldest", Type = "ClubMessageIdentifier", Nilable = false },
				{ Name = "newest", Type = "ClubMessageIdentifier", Nilable = false },
			},

			Returns =
			{
				{ Name = "messages", Type = "table", InnerType = "ClubMessageInfo", Nilable = false },
			},
		},
		{
			Name = "GetStreamInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "clubId", Type = "string", Nilable = false },
				{ Name = "streamId", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "streamInfo", Type = "ClubStreamInfo", Nilable = true },
			},
		},
		{
			Name = "GetStreamViewMarker",
			Type = "Function",

			Arguments =
			{
				{ Name = "clubId", Type = "string", Nilable = false },
				{ Name = "streamId", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "lastReadTime", Type = "number", Nilable = true, Documentation = { "nil if stream view is at current" } },
			},
		},
		{
			Name = "GetStreams",
			Type = "Function",

			Arguments =
			{
				{ Name = "clubId", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "streams", Type = "table", InnerType = "ClubStreamInfo", Nilable = false },
			},
		},
		{
			Name = "GetSubscribedClubs",
			Type = "Function",

			Returns =
			{
				{ Name = "clubs", Type = "table", InnerType = "ClubInfo", Nilable = false },
			},
		},
		{
			Name = "GetTickets",
			Type = "Function",
			Documentation = { "Get the existing tickets for this club. Call RequestTickets() to retrieve tickets from server." },

			Arguments =
			{
				{ Name = "clubId", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "tickets", Type = "table", InnerType = "ClubTicketInfo", Nilable = false },
			},
		},
		{
			Name = "IsAccountMuted",
			Type = "Function",

			Arguments =
			{
				{ Name = "clubId", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "accountMuted", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsBeginningOfStream",
			Type = "Function",
			Documentation = { "Returns whether the given message is the first message in the stream, taking into account ignored messages" },

			Arguments =
			{
				{ Name = "clubId", Type = "string", Nilable = false },
				{ Name = "streamId", Type = "string", Nilable = false },
				{ Name = "messageId", Type = "ClubMessageIdentifier", Nilable = false },
			},

			Returns =
			{
				{ Name = "isBeginningOfStream", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsEnabled",
			Type = "Function",

			Returns =
			{
				{ Name = "clubsEnabled", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsRestricted",
			Type = "Function",

			Returns =
			{
				{ Name = "restrictionReason", Type = "ClubRestrictionReason", Nilable = false },
			},
		},
		{
			Name = "IsSubscribedToStream",
			Type = "Function",

			Arguments =
			{
				{ Name = "clubId", Type = "string", Nilable = false },
				{ Name = "streamId", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "subscribed", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "KickMember",
			Type = "Function",
			Documentation = { "Check kickableRoleIds privilege." },

			Arguments =
			{
				{ Name = "clubId", Type = "string", Nilable = false },
				{ Name = "memberId", Type = "number", Nilable = false },
			},
		},
		{
			Name = "LeaveClub",
			Type = "Function",

			Arguments =
			{
				{ Name = "clubId", Type = "string", Nilable = false },
			},
		},
		{
			Name = "RedeemTicket",
			Type = "Function",

			Arguments =
			{
				{ Name = "ticketId", Type = "string", Nilable = false },
			},
		},
		{
			Name = "RequestInvitationsForClub",
			Type = "Function",
			Documentation = { "Request invitations for this club from server. Check canGetInvitation privilege." },

			Arguments =
			{
				{ Name = "clubId", Type = "string", Nilable = false },
			},
		},
		{
			Name = "RequestMoreMessagesBefore",
			Type = "Function",
			Documentation = { "Call this when the user scrolls near the top of the message view, and more need to be displayed. The history will be downloaded backwards (newest to oldest)." },

			Arguments =
			{
				{ Name = "clubId", Type = "string", Nilable = false },
				{ Name = "streamId", Type = "string", Nilable = false },
				{ Name = "messageId", Type = "ClubMessageIdentifier", Nilable = true },
				{ Name = "count", Type = "number", Nilable = true },
			},

			Returns =
			{
				{ Name = "alreadyHasMessages", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "RequestTicket",
			Type = "Function",

			Arguments =
			{
				{ Name = "ticketId", Type = "string", Nilable = false },
			},
		},
		{
			Name = "RequestTickets",
			Type = "Function",
			Documentation = { "Request tickets from server. Check canGetTicket privilege." },

			Arguments =
			{
				{ Name = "clubId", Type = "string", Nilable = false },
			},
		},
		{
			Name = "RevokeInvitation",
			Type = "Function",
			Documentation = { "Check canRevokeOwnInvitation or canRevokeOtherInvitation" },

			Arguments =
			{
				{ Name = "clubId", Type = "string", Nilable = false },
				{ Name = "memberId", Type = "number", Nilable = false },
			},
		},
		{
			Name = "SendBattleTagFriendRequest",
			Type = "Function",

			Arguments =
			{
				{ Name = "guildClubId", Type = "string", Nilable = false },
				{ Name = "memberId", Type = "number", Nilable = false },
			},
		},
		{
			Name = "SendCharacterInvitation",
			Type = "Function",

			Arguments =
			{
				{ Name = "clubId", Type = "string", Nilable = false },
				{ Name = "character", Type = "string", Nilable = false },
			},
		},
		{
			Name = "SendInvitation",
			Type = "Function",
			Documentation = { "Check the canSendInvitation privilege." },

			Arguments =
			{
				{ Name = "clubId", Type = "string", Nilable = false },
				{ Name = "memberId", Type = "number", Nilable = false },
			},
		},
		{
			Name = "SendMessage",
			Type = "Function",

			Arguments =
			{
				{ Name = "clubId", Type = "string", Nilable = false },
				{ Name = "streamId", Type = "string", Nilable = false },
				{ Name = "message", Type = "string", Nilable = false },
			},
		},
		{
			Name = "SetAutoAdvanceStreamViewMarker",
			Type = "Function",
			Documentation = { "Only one stream can be set for auto-advance at a time. Focused streams will have their view times advanced automatically." },

			Arguments =
			{
				{ Name = "clubId", Type = "string", Nilable = false },
				{ Name = "streamId", Type = "string", Nilable = false },
			},
		},
		{
			Name = "SetAvatarTexture",
			Type = "Function",

			Arguments =
			{
				{ Name = "texture", Type = "table", Nilable = false },
				{ Name = "avatarId", Type = "number", Nilable = false },
				{ Name = "clubType", Type = "ClubType", Nilable = false },
			},
		},
		{
			Name = "SetClubMemberNote",
			Type = "Function",
			Documentation = { "Check the canSetOwnMemberNote and canSetOtherMemberNote privileges." },

			Arguments =
			{
				{ Name = "clubId", Type = "string", Nilable = false },
				{ Name = "memberId", Type = "number", Nilable = false },
				{ Name = "note", Type = "string", Nilable = false },
			},
		},
		{
			Name = "SetClubPresenceSubscription",
			Type = "Function",
			Documentation = { "You can only be subscribed to 0 or 1 clubs for presence.  Subscribing to a new club automatically unsuscribes you to existing subscription." },

			Arguments =
			{
				{ Name = "clubId", Type = "string", Nilable = false },
			},
		},
		{
			Name = "SetClubStreamNotificationSettings",
			Type = "Function",

			Arguments =
			{
				{ Name = "clubId", Type = "string", Nilable = false },
				{ Name = "settings", Type = "table", InnerType = "ClubStreamNotificationSetting", Nilable = false },
			},
		},
		{
			Name = "SetFavorite",
			Type = "Function",

			Arguments =
			{
				{ Name = "clubId", Type = "string", Nilable = false },
				{ Name = "isFavorite", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "SetSocialQueueingEnabled",
			Type = "Function",

			Arguments =
			{
				{ Name = "clubId", Type = "string", Nilable = false },
				{ Name = "enabled", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ShouldAllowClubType",
			Type = "Function",

			Arguments =
			{
				{ Name = "clubType", Type = "ClubType", Nilable = false },
			},

			Returns =
			{
				{ Name = "clubTypeIsAllowed", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "UnfocusStream",
			Type = "Function",

			Arguments =
			{
				{ Name = "clubId", Type = "string", Nilable = false },
				{ Name = "streamId", Type = "string", Nilable = false },
			},
		},
		{
			Name = "ValidateText",
			Type = "Function",

			Arguments =
			{
				{ Name = "clubType", Type = "ClubType", Nilable = false },
				{ Name = "text", Type = "string", Nilable = false },
				{ Name = "clubFieldType", Type = "ClubFieldType", Nilable = false },
			},

			Returns =
			{
				{ Name = "result", Type = "ValidateNameResult", Nilable = false },
			},
		},
	},

	Events =
	{
		{
			Name = "AvatarListUpdated",
			Type = "Event",
			LiteralName = "AVATAR_LIST_UPDATED",
			Payload =
			{
				{ Name = "clubType", Type = "ClubType", Nilable = false },
			},
		},
		{
			Name = "ClubAdded",
			Type = "Event",
			LiteralName = "CLUB_ADDED",
			Payload =
			{
				{ Name = "clubId", Type = "string", Nilable = false },
			},
		},
		{
			Name = "ClubError",
			Type = "Event",
			LiteralName = "CLUB_ERROR",
			Payload =
			{
				{ Name = "action", Type = "ClubActionType", Nilable = false },
				{ Name = "error", Type = "ClubErrorType", Nilable = false },
				{ Name = "clubType", Type = "ClubType", Nilable = false },
			},
		},
		{
			Name = "ClubInvitationAddedForSelf",
			Type = "Event",
			LiteralName = "CLUB_INVITATION_ADDED_FOR_SELF",
			Payload =
			{
				{ Name = "invitation", Type = "ClubSelfInvitationInfo", Nilable = false },
			},
		},
		{
			Name = "ClubInvitationRemovedForSelf",
			Type = "Event",
			LiteralName = "CLUB_INVITATION_REMOVED_FOR_SELF",
			Payload =
			{
				{ Name = "invitationId", Type = "string", Nilable = false },
			},
		},
		{
			Name = "ClubInvitationsReceivedForClub",
			Type = "Event",
			LiteralName = "CLUB_INVITATIONS_RECEIVED_FOR_CLUB",
			Payload =
			{
				{ Name = "clubId", Type = "string", Nilable = false },
			},
		},
		{
			Name = "ClubMemberAdded",
			Type = "Event",
			LiteralName = "CLUB_MEMBER_ADDED",
			Payload =
			{
				{ Name = "clubId", Type = "string", Nilable = false },
				{ Name = "memberId", Type = "number", Nilable = false },
			},
		},
		{
			Name = "ClubMemberPresenceUpdated",
			Type = "Event",
			LiteralName = "CLUB_MEMBER_PRESENCE_UPDATED",
			Payload =
			{
				{ Name = "clubId", Type = "string", Nilable = false },
				{ Name = "memberId", Type = "number", Nilable = false },
				{ Name = "presence", Type = "ClubMemberPresence", Nilable = false },
			},
		},
		{
			Name = "ClubMemberRemoved",
			Type = "Event",
			LiteralName = "CLUB_MEMBER_REMOVED",
			Payload =
			{
				{ Name = "clubId", Type = "string", Nilable = false },
				{ Name = "memberId", Type = "number", Nilable = false },
			},
		},
		{
			Name = "ClubMemberRoleUpdated",
			Type = "Event",
			LiteralName = "CLUB_MEMBER_ROLE_UPDATED",
			Payload =
			{
				{ Name = "clubId", Type = "string", Nilable = false },
				{ Name = "memberId", Type = "number", Nilable = false },
				{ Name = "roleId", Type = "number", Nilable = false },
			},
		},
		{
			Name = "ClubMemberUpdated",
			Type = "Event",
			LiteralName = "CLUB_MEMBER_UPDATED",
			Payload =
			{
				{ Name = "clubId", Type = "string", Nilable = false },
				{ Name = "memberId", Type = "number", Nilable = false },
			},
		},
		{
			Name = "ClubMessageAdded",
			Type = "Event",
			LiteralName = "CLUB_MESSAGE_ADDED",
			Payload =
			{
				{ Name = "clubId", Type = "string", Nilable = false },
				{ Name = "streamId", Type = "string", Nilable = false },
				{ Name = "messageId", Type = "ClubMessageIdentifier", Nilable = false },
			},
		},
		{
			Name = "ClubMessageHistoryReceived",
			Type = "Event",
			LiteralName = "CLUB_MESSAGE_HISTORY_RECEIVED",
			Payload =
			{
				{ Name = "clubId", Type = "string", Nilable = false },
				{ Name = "streamId", Type = "string", Nilable = false },
				{ Name = "downloadedRange", Type = "ClubMessageRange", Nilable = false, Documentation = { "Range of history messages received." } },
				{ Name = "contiguousRange", Type = "ClubMessageRange", Nilable = false, Documentation = { "Range of contiguous messages that the received messages are in." } },
			},
		},
		{
			Name = "ClubMessageUpdated",
			Type = "Event",
			LiteralName = "CLUB_MESSAGE_UPDATED",
			Payload =
			{
				{ Name = "clubId", Type = "string", Nilable = false },
				{ Name = "streamId", Type = "string", Nilable = false },
				{ Name = "messageId", Type = "ClubMessageIdentifier", Nilable = false },
			},
		},
		{
			Name = "ClubRemoved",
			Type = "Event",
			LiteralName = "CLUB_REMOVED",
			Payload =
			{
				{ Name = "clubId", Type = "string", Nilable = false },
			},
		},
		{
			Name = "ClubRemovedMessage",
			Type = "Event",
			LiteralName = "CLUB_REMOVED_MESSAGE",
			Payload =
			{
				{ Name = "clubName", Type = "string", Nilable = false },
				{ Name = "clubRemovedReason", Type = "ClubRemovedReason", Nilable = false },
			},
		},
		{
			Name = "ClubSelfMemberRoleUpdated",
			Type = "Event",
			LiteralName = "CLUB_SELF_MEMBER_ROLE_UPDATED",
			Payload =
			{
				{ Name = "clubId", Type = "string", Nilable = false },
				{ Name = "roleId", Type = "number", Nilable = false },
			},
		},
		{
			Name = "ClubStreamAdded",
			Type = "Event",
			LiteralName = "CLUB_STREAM_ADDED",
			Payload =
			{
				{ Name = "clubId", Type = "string", Nilable = false },
				{ Name = "streamId", Type = "string", Nilable = false },
			},
		},
		{
			Name = "ClubStreamRemoved",
			Type = "Event",
			LiteralName = "CLUB_STREAM_REMOVED",
			Payload =
			{
				{ Name = "clubId", Type = "string", Nilable = false },
				{ Name = "streamId", Type = "string", Nilable = false },
			},
		},
		{
			Name = "ClubStreamSubscribed",
			Type = "Event",
			LiteralName = "CLUB_STREAM_SUBSCRIBED",
			Payload =
			{
				{ Name = "clubId", Type = "string", Nilable = false },
				{ Name = "streamId", Type = "string", Nilable = false },
			},
		},
		{
			Name = "ClubStreamUnsubscribed",
			Type = "Event",
			LiteralName = "CLUB_STREAM_UNSUBSCRIBED",
			Payload =
			{
				{ Name = "clubId", Type = "string", Nilable = false },
				{ Name = "streamId", Type = "string", Nilable = false },
			},
		},
		{
			Name = "ClubStreamUpdated",
			Type = "Event",
			LiteralName = "CLUB_STREAM_UPDATED",
			Payload =
			{
				{ Name = "clubId", Type = "string", Nilable = false },
				{ Name = "streamId", Type = "string", Nilable = false },
			},
		},
		{
			Name = "ClubStreamsLoaded",
			Type = "Event",
			LiteralName = "CLUB_STREAMS_LOADED",
			Payload =
			{
				{ Name = "clubId", Type = "string", Nilable = false },
			},
		},
		{
			Name = "ClubTicketCreated",
			Type = "Event",
			LiteralName = "CLUB_TICKET_CREATED",
			Payload =
			{
				{ Name = "clubId", Type = "string", Nilable = false },
				{ Name = "ticketInfo", Type = "ClubTicketInfo", Nilable = false },
			},
		},
		{
			Name = "ClubTicketReceived",
			Type = "Event",
			LiteralName = "CLUB_TICKET_RECEIVED",
			Payload =
			{
				{ Name = "ticket", Type = "string", Nilable = false },
			},
		},
		{
			Name = "ClubTicketsReceived",
			Type = "Event",
			LiteralName = "CLUB_TICKETS_RECEIVED",
			Payload =
			{
				{ Name = "clubId", Type = "string", Nilable = false },
			},
		},
		{
			Name = "ClubUpdated",
			Type = "Event",
			LiteralName = "CLUB_UPDATED",
			Payload =
			{
				{ Name = "clubId", Type = "string", Nilable = false },
			},
		},
		{
			Name = "InitialClubsLoaded",
			Type = "Event",
			LiteralName = "INITIAL_CLUBS_LOADED",
		},
		{
			Name = "StreamViewMarkerUpdated",
			Type = "Event",
			LiteralName = "STREAM_VIEW_MARKER_UPDATED",
			Payload =
			{
				{ Name = "clubId", Type = "string", Nilable = false },
				{ Name = "streamId", Type = "string", Nilable = false },
				{ Name = "lastReadTime", Type = "number", Nilable = true, Documentation = { "nil if stream view is at current" } },
			},
		},
	},

	Tables =
	{
		{
			Name = "ClubActionType",
			Type = "Enumeration",
			NumValues = 27,
			MinValue = 0,
			MaxValue = 26,
			Fields =
			{
				{ Name = "ErrorClubActionSubscribe", Type = "ClubActionType", EnumValue = 0 },
				{ Name = "ErrorClubActionCreate", Type = "ClubActionType", EnumValue = 1 },
				{ Name = "ErrorClubActionEdit", Type = "ClubActionType", EnumValue = 2 },
				{ Name = "ErrorClubActionDestroy", Type = "ClubActionType", EnumValue = 3 },
				{ Name = "ErrorClubActionLeave", Type = "ClubActionType", EnumValue = 4 },
				{ Name = "ErrorClubActionCreateTicket", Type = "ClubActionType", EnumValue = 5 },
				{ Name = "ErrorClubActionDestroyTicket", Type = "ClubActionType", EnumValue = 6 },
				{ Name = "ErrorClubActionRedeemTicket", Type = "ClubActionType", EnumValue = 7 },
				{ Name = "ErrorClubActionGetTicket", Type = "ClubActionType", EnumValue = 8 },
				{ Name = "ErrorClubActionGetTickets", Type = "ClubActionType", EnumValue = 9 },
				{ Name = "ErrorClubActionGetBans", Type = "ClubActionType", EnumValue = 10 },
				{ Name = "ErrorClubActionGetInvitations", Type = "ClubActionType", EnumValue = 11 },
				{ Name = "ErrorClubActionRevokeInvitation", Type = "ClubActionType", EnumValue = 12 },
				{ Name = "ErrorClubActionAcceptInvitation", Type = "ClubActionType", EnumValue = 13 },
				{ Name = "ErrorClubActionDeclineInvitation", Type = "ClubActionType", EnumValue = 14 },
				{ Name = "ErrorClubActionCreateStream", Type = "ClubActionType", EnumValue = 15 },
				{ Name = "ErrorClubActionEditStream", Type = "ClubActionType", EnumValue = 16 },
				{ Name = "ErrorClubActionDestroyStream", Type = "ClubActionType", EnumValue = 17 },
				{ Name = "ErrorClubActionInviteMember", Type = "ClubActionType", EnumValue = 18 },
				{ Name = "ErrorClubActionEditMember", Type = "ClubActionType", EnumValue = 19 },
				{ Name = "ErrorClubActionEditMemberNote", Type = "ClubActionType", EnumValue = 20 },
				{ Name = "ErrorClubActionKickMember", Type = "ClubActionType", EnumValue = 21 },
				{ Name = "ErrorClubActionAddBan", Type = "ClubActionType", EnumValue = 22 },
				{ Name = "ErrorClubActionRemoveBan", Type = "ClubActionType", EnumValue = 23 },
				{ Name = "ErrorClubActionCreateMessage", Type = "ClubActionType", EnumValue = 24 },
				{ Name = "ErrorClubActionEditMessage", Type = "ClubActionType", EnumValue = 25 },
				{ Name = "ErrorClubActionDestroyMessage", Type = "ClubActionType", EnumValue = 26 },
			},
		},
		{
			Name = "ClubErrorType",
			Type = "Enumeration",
			NumValues = 40,
			MinValue = 0,
			MaxValue = 39,
			Fields =
			{
				{ Name = "ErrorCommunitiesNone", Type = "ClubErrorType", EnumValue = 0 },
				{ Name = "ErrorCommunitiesUnknown", Type = "ClubErrorType", EnumValue = 1 },
				{ Name = "ErrorCommunitiesNeutralFaction", Type = "ClubErrorType", EnumValue = 2 },
				{ Name = "ErrorCommunitiesUnknownRealm", Type = "ClubErrorType", EnumValue = 3 },
				{ Name = "ErrorCommunitiesBadTarget", Type = "ClubErrorType", EnumValue = 4 },
				{ Name = "ErrorCommunitiesWrongFaction", Type = "ClubErrorType", EnumValue = 5 },
				{ Name = "ErrorCommunitiesRestricted", Type = "ClubErrorType", EnumValue = 6 },
				{ Name = "ErrorCommunitiesIgnored", Type = "ClubErrorType", EnumValue = 7 },
				{ Name = "ErrorCommunitiesGuild", Type = "ClubErrorType", EnumValue = 8 },
				{ Name = "ErrorCommunitiesWrongRegion", Type = "ClubErrorType", EnumValue = 9 },
				{ Name = "ErrorCommunitiesUnknownTicket", Type = "ClubErrorType", EnumValue = 10 },
				{ Name = "ErrorCommunitiesMissingShortName", Type = "ClubErrorType", EnumValue = 11 },
				{ Name = "ErrorCommunitiesProfanity", Type = "ClubErrorType", EnumValue = 12 },
				{ Name = "ErrorCommunitiesTrial", Type = "ClubErrorType", EnumValue = 13 },
				{ Name = "ErrorCommunitiesVeteranTrial", Type = "ClubErrorType", EnumValue = 14 },
				{ Name = "ErrorCommunitiesChatMute", Type = "ClubErrorType", EnumValue = 15 },
				{ Name = "ErrorClubFull", Type = "ClubErrorType", EnumValue = 16 },
				{ Name = "ErrorClubNoClub", Type = "ClubErrorType", EnumValue = 17 },
				{ Name = "ErrorClubNotMember", Type = "ClubErrorType", EnumValue = 18 },
				{ Name = "ErrorClubAlreadyMember", Type = "ClubErrorType", EnumValue = 19 },
				{ Name = "ErrorClubNoSuchMember", Type = "ClubErrorType", EnumValue = 20 },
				{ Name = "ErrorClubNoSuchInvitation", Type = "ClubErrorType", EnumValue = 21 },
				{ Name = "ErrorClubInvitationAlreadyExists", Type = "ClubErrorType", EnumValue = 22 },
				{ Name = "ErrorClubInvalidRoleID", Type = "ClubErrorType", EnumValue = 23 },
				{ Name = "ErrorClubInsufficientPrivileges", Type = "ClubErrorType", EnumValue = 24 },
				{ Name = "ErrorClubTooManyClubsJoined", Type = "ClubErrorType", EnumValue = 25 },
				{ Name = "ErrorClubVoiceFull", Type = "ClubErrorType", EnumValue = 26 },
				{ Name = "ErrorClubStreamNoStream", Type = "ClubErrorType", EnumValue = 27 },
				{ Name = "ErrorClubStreamInvalidName", Type = "ClubErrorType", EnumValue = 28 },
				{ Name = "ErrorClubStreamCountAtMin", Type = "ClubErrorType", EnumValue = 29 },
				{ Name = "ErrorClubStreamCountAtMax", Type = "ClubErrorType", EnumValue = 30 },
				{ Name = "ErrorClubMemberHasRequiredRole", Type = "ClubErrorType", EnumValue = 31 },
				{ Name = "ErrorClubSentInvitationCountAtMax", Type = "ClubErrorType", EnumValue = 32 },
				{ Name = "ErrorClubReceivedInvitationCountAtMax", Type = "ClubErrorType", EnumValue = 33 },
				{ Name = "ErrorClubTargetIsBanned", Type = "ClubErrorType", EnumValue = 34 },
				{ Name = "ErrorClubBanAlreadyExists", Type = "ClubErrorType", EnumValue = 35 },
				{ Name = "ErrorClubBanCountAtMax", Type = "ClubErrorType", EnumValue = 36 },
				{ Name = "ErrorClubTicketCountAtMax", Type = "ClubErrorType", EnumValue = 37 },
				{ Name = "ErrorClubTicketNoSuchTicket", Type = "ClubErrorType", EnumValue = 38 },
				{ Name = "ErrorClubTicketHasConsumedAllowedRedeemCount", Type = "ClubErrorType", EnumValue = 39 },
			},
		},
		{
			Name = "ClubFieldType",
			Type = "Enumeration",
			NumValues = 7,
			MinValue = 0,
			MaxValue = 6,
			Fields =
			{
				{ Name = "ClubName", Type = "ClubFieldType", EnumValue = 0 },
				{ Name = "ClubShortName", Type = "ClubFieldType", EnumValue = 1 },
				{ Name = "ClubDescription", Type = "ClubFieldType", EnumValue = 2 },
				{ Name = "ClubBroadcast", Type = "ClubFieldType", EnumValue = 3 },
				{ Name = "ClubStreamName", Type = "ClubFieldType", EnumValue = 4 },
				{ Name = "ClubStreamSubject", Type = "ClubFieldType", EnumValue = 5 },
				{ Name = "NumTypes", Type = "ClubFieldType", EnumValue = 6 },
			},
		},
		{
			Name = "ClubInvitationCandidateStatus",
			Type = "Enumeration",
			NumValues = 3,
			MinValue = 0,
			MaxValue = 2,
			Fields =
			{
				{ Name = "Available", Type = "ClubInvitationCandidateStatus", EnumValue = 0 },
				{ Name = "InvitePending", Type = "ClubInvitationCandidateStatus", EnumValue = 1 },
				{ Name = "AlreadyMember", Type = "ClubInvitationCandidateStatus", EnumValue = 2 },
			},
		},
		{
			Name = "ClubMemberPresence",
			Type = "Enumeration",
			NumValues = 6,
			MinValue = 0,
			MaxValue = 5,
			Fields =
			{
				{ Name = "Unknown", Type = "ClubMemberPresence", EnumValue = 0 },
				{ Name = "Online", Type = "ClubMemberPresence", EnumValue = 1 },
				{ Name = "OnlineMobile", Type = "ClubMemberPresence", EnumValue = 2 },
				{ Name = "Offline", Type = "ClubMemberPresence", EnumValue = 3 },
				{ Name = "Away", Type = "ClubMemberPresence", EnumValue = 4 },
				{ Name = "Busy", Type = "ClubMemberPresence", EnumValue = 5 },
			},
		},
		{
			Name = "ClubRemovedReason",
			Type = "Enumeration",
			NumValues = 4,
			MinValue = 0,
			MaxValue = 3,
			Fields =
			{
				{ Name = "None", Type = "ClubRemovedReason", EnumValue = 0 },
				{ Name = "Banned", Type = "ClubRemovedReason", EnumValue = 1 },
				{ Name = "Removed", Type = "ClubRemovedReason", EnumValue = 2 },
				{ Name = "ClubDestroyed", Type = "ClubRemovedReason", EnumValue = 3 },
			},
		},
		{
			Name = "ClubRestrictionReason",
			Type = "Enumeration",
			NumValues = 2,
			MinValue = 0,
			MaxValue = 1,
			Fields =
			{
				{ Name = "None", Type = "ClubRestrictionReason", EnumValue = 0 },
				{ Name = "Unavailable", Type = "ClubRestrictionReason", EnumValue = 1 },
			},
		},
		{
			Name = "ClubRoleIdentifier",
			Type = "Enumeration",
			NumValues = 4,
			MinValue = 1,
			MaxValue = 4,
			Fields =
			{
				{ Name = "Owner", Type = "ClubRoleIdentifier", EnumValue = 1 },
				{ Name = "Leader", Type = "ClubRoleIdentifier", EnumValue = 2 },
				{ Name = "Moderator", Type = "ClubRoleIdentifier", EnumValue = 3 },
				{ Name = "Member", Type = "ClubRoleIdentifier", EnumValue = 4 },
			},
		},
		{
			Name = "ClubStreamNotificationFilter",
			Type = "Enumeration",
			NumValues = 3,
			MinValue = 0,
			MaxValue = 2,
			Fields =
			{
				{ Name = "None", Type = "ClubStreamNotificationFilter", EnumValue = 0 },
				{ Name = "Mention", Type = "ClubStreamNotificationFilter", EnumValue = 1 },
				{ Name = "All", Type = "ClubStreamNotificationFilter", EnumValue = 2 },
			},
		},
		{
			Name = "ClubStreamType",
			Type = "Enumeration",
			NumValues = 4,
			MinValue = 0,
			MaxValue = 3,
			Fields =
			{
				{ Name = "General", Type = "ClubStreamType", EnumValue = 0 },
				{ Name = "Guild", Type = "ClubStreamType", EnumValue = 1 },
				{ Name = "Officer", Type = "ClubStreamType", EnumValue = 2 },
				{ Name = "Other", Type = "ClubStreamType", EnumValue = 3 },
			},
		},
		{
			Name = "ClubType",
			Type = "Enumeration",
			NumValues = 4,
			MinValue = 0,
			MaxValue = 3,
			Fields =
			{
				{ Name = "BattleNet", Type = "ClubType", EnumValue = 0 },
				{ Name = "Character", Type = "ClubType", EnumValue = 1 },
				{ Name = "Guild", Type = "ClubType", EnumValue = 2 },
				{ Name = "Other", Type = "ClubType", EnumValue = 3 },
			},
		},
		{
			Name = "ValidateNameResult",
			Type = "Enumeration",
			NumValues = 18,
			MinValue = 0,
			MaxValue = 17,
			Fields =
			{
				{ Name = "NameSuccess", Type = "ValidateNameResult", EnumValue = 0 },
				{ Name = "NameFailure", Type = "ValidateNameResult", EnumValue = 1 },
				{ Name = "NameNoName", Type = "ValidateNameResult", EnumValue = 2 },
				{ Name = "NameTooShort", Type = "ValidateNameResult", EnumValue = 3 },
				{ Name = "NameTooLong", Type = "ValidateNameResult", EnumValue = 4 },
				{ Name = "NameInvalidCharacter", Type = "ValidateNameResult", EnumValue = 5 },
				{ Name = "NameMixedLanguages", Type = "ValidateNameResult", EnumValue = 6 },
				{ Name = "NameProfane", Type = "ValidateNameResult", EnumValue = 7 },
				{ Name = "NameReserved", Type = "ValidateNameResult", EnumValue = 8 },
				{ Name = "NameInvalidApostrophe", Type = "ValidateNameResult", EnumValue = 9 },
				{ Name = "NameMultipleApostrophes", Type = "ValidateNameResult", EnumValue = 10 },
				{ Name = "NameThreeConsecutive", Type = "ValidateNameResult", EnumValue = 11 },
				{ Name = "NameInvalidSpace", Type = "ValidateNameResult", EnumValue = 12 },
				{ Name = "NameConsecutiveSpaces", Type = "ValidateNameResult", EnumValue = 13 },
				{ Name = "NameRussianConsecutiveSilentCharacters", Type = "ValidateNameResult", EnumValue = 14 },
				{ Name = "NameRussianSilentCharacterAtBeginningOrEnd", Type = "ValidateNameResult", EnumValue = 15 },
				{ Name = "NameDeclensionDoesntMatchBaseName", Type = "ValidateNameResult", EnumValue = 16 },
				{ Name = "NameSpacesDisallowed", Type = "ValidateNameResult", EnumValue = 17 },
			},
		},
		{
			Name = "ClubInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "clubId", Type = "string", Nilable = false },
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "shortName", Type = "string", Nilable = true },
				{ Name = "description", Type = "string", Nilable = false },
				{ Name = "broadcast", Type = "string", Nilable = false },
				{ Name = "clubType", Type = "ClubType", Nilable = false },
				{ Name = "avatarId", Type = "number", Nilable = false },
				{ Name = "memberCount", Type = "number", Nilable = true },
				{ Name = "favoriteTimeStamp", Type = "number", Nilable = true },
				{ Name = "joinTime", Type = "number", Nilable = true },
				{ Name = "socialQueueingEnabled", Type = "bool", Nilable = true },
			},
		},
		{
			Name = "ClubInvitationCandidateInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "memberId", Type = "number", Nilable = false },
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "priority", Type = "number", Nilable = false },
				{ Name = "status", Type = "ClubInvitationCandidateStatus", Nilable = false },
			},
		},
		{
			Name = "ClubInvitationInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "invitationId", Type = "string", Nilable = false },
				{ Name = "isMyInvitation", Type = "bool", Nilable = false },
				{ Name = "invitee", Type = "ClubMemberInfo", Nilable = false },
			},
		},
		{
			Name = "ClubLimits",
			Type = "Structure",
			Fields =
			{
				{ Name = "maximumNumberOfStreams", Type = "number", Nilable = false },
			},
		},
		{
			Name = "ClubMemberInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "isSelf", Type = "bool", Nilable = false },
				{ Name = "memberId", Type = "number", Nilable = false },
				{ Name = "name", Type = "string", Nilable = true, Documentation = { "name may be encoded as a Kstring" } },
				{ Name = "role", Type = "ClubRoleIdentifier", Nilable = true },
				{ Name = "presence", Type = "ClubMemberPresence", Nilable = false },
				{ Name = "clubType", Type = "ClubType", Nilable = true },
				{ Name = "guid", Type = "string", Nilable = true },
				{ Name = "bnetAccountId", Type = "number", Nilable = true },
				{ Name = "memberNote", Type = "string", Nilable = true },
				{ Name = "officerNote", Type = "string", Nilable = true },
				{ Name = "classID", Type = "number", Nilable = true },
				{ Name = "race", Type = "number", Nilable = true },
				{ Name = "level", Type = "number", Nilable = true },
				{ Name = "zone", Type = "string", Nilable = true },
				{ Name = "achievementPoints", Type = "number", Nilable = true },
				{ Name = "profession1ID", Type = "number", Nilable = true },
				{ Name = "profession1Rank", Type = "number", Nilable = true },
				{ Name = "profession1Name", Type = "string", Nilable = true },
				{ Name = "profession2ID", Type = "number", Nilable = true },
				{ Name = "profession2Rank", Type = "number", Nilable = true },
				{ Name = "profession2Name", Type = "string", Nilable = true },
				{ Name = "lastOnlineYear", Type = "number", Nilable = true },
				{ Name = "lastOnlineMonth", Type = "number", Nilable = true },
				{ Name = "lastOnlineDay", Type = "number", Nilable = true },
				{ Name = "lastOnlineHour", Type = "number", Nilable = true },
				{ Name = "guildRank", Type = "string", Nilable = true },
				{ Name = "guildRankOrder", Type = "number", Nilable = true },
				{ Name = "isRemoteChat", Type = "bool", Nilable = true },
			},
		},
		{
			Name = "ClubMessageIdentifier",
			Type = "Structure",
			Fields =
			{
				{ Name = "epoch", Type = "number", Nilable = false, Documentation = { "number of microseconds since the UNIX epoch." } },
				{ Name = "position", Type = "number", Nilable = false, Documentation = { "sort order for messages at the same time" } },
			},
		},
		{
			Name = "ClubMessageInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "messageId", Type = "ClubMessageIdentifier", Nilable = false },
				{ Name = "content", Type = "string", Nilable = false },
				{ Name = "author", Type = "ClubMemberInfo", Nilable = false },
				{ Name = "destroyer", Type = "ClubMemberInfo", Nilable = true, Documentation = { "May be nil even if the message has been destroyed" } },
				{ Name = "destroyed", Type = "bool", Nilable = false },
				{ Name = "edited", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ClubMessageRange",
			Type = "Structure",
			Fields =
			{
				{ Name = "oldestMessageId", Type = "ClubMessageIdentifier", Nilable = false },
				{ Name = "newestMessageId", Type = "ClubMessageIdentifier", Nilable = false },
			},
		},
		{
			Name = "ClubPrivilegeInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "canDestroy", Type = "bool", Nilable = false },
				{ Name = "canSetAttribute", Type = "bool", Nilable = false },
				{ Name = "canSetName", Type = "bool", Nilable = false },
				{ Name = "canSetDescription", Type = "bool", Nilable = false },
				{ Name = "canSetAvatar", Type = "bool", Nilable = false },
				{ Name = "canSetBroadcast", Type = "bool", Nilable = false },
				{ Name = "canSetPrivacyLevel", Type = "bool", Nilable = false },
				{ Name = "canSetOwnMemberAttribute", Type = "bool", Nilable = false },
				{ Name = "canSetOtherMemberAttribute", Type = "bool", Nilable = false },
				{ Name = "canSetOwnMemberNote", Type = "bool", Nilable = false },
				{ Name = "canSetOtherMemberNote", Type = "bool", Nilable = false },
				{ Name = "canSetOwnVoiceState", Type = "bool", Nilable = false },
				{ Name = "canSetOwnPresenceLevel", Type = "bool", Nilable = false },
				{ Name = "canUseVoice", Type = "bool", Nilable = false },
				{ Name = "canVoiceMuteMemberForAll", Type = "bool", Nilable = false },
				{ Name = "canGetInvitation", Type = "bool", Nilable = false },
				{ Name = "canSendInvitation", Type = "bool", Nilable = false },
				{ Name = "canSendGuestInvitation", Type = "bool", Nilable = false },
				{ Name = "canRevokeOwnInvitation", Type = "bool", Nilable = false },
				{ Name = "canRevokeOtherInvitation", Type = "bool", Nilable = false },
				{ Name = "canGetBan", Type = "bool", Nilable = false },
				{ Name = "canGetSuggestion", Type = "bool", Nilable = false },
				{ Name = "canSuggestMember", Type = "bool", Nilable = false },
				{ Name = "canGetTicket", Type = "bool", Nilable = false },
				{ Name = "canCreateTicket", Type = "bool", Nilable = false },
				{ Name = "canDestroyTicket", Type = "bool", Nilable = false },
				{ Name = "canAddBan", Type = "bool", Nilable = false },
				{ Name = "canRemoveBan", Type = "bool", Nilable = false },
				{ Name = "canCreateStream", Type = "bool", Nilable = false },
				{ Name = "canDestroyStream", Type = "bool", Nilable = false },
				{ Name = "canSetStreamPosition", Type = "bool", Nilable = false },
				{ Name = "canSetStreamAttribute", Type = "bool", Nilable = false },
				{ Name = "canSetStreamName", Type = "bool", Nilable = false },
				{ Name = "canSetStreamSubject", Type = "bool", Nilable = false },
				{ Name = "canSetStreamAccess", Type = "bool", Nilable = false },
				{ Name = "canSetStreamVoiceLevel", Type = "bool", Nilable = false },
				{ Name = "canCreateMessage", Type = "bool", Nilable = false },
				{ Name = "canDestroyOwnMessage", Type = "bool", Nilable = false },
				{ Name = "canDestroyOtherMessage", Type = "bool", Nilable = false },
				{ Name = "canEditOwnMessage", Type = "bool", Nilable = false },
				{ Name = "canPinMessage", Type = "bool", Nilable = false },
				{ Name = "kickableRoleIds", Type = "table", InnerType = "number", Nilable = false, Documentation = { "Roles that can be kicked and banned" } },
			},
		},
		{
			Name = "ClubSelfInvitationInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "invitationId", Type = "string", Nilable = false },
				{ Name = "club", Type = "ClubInfo", Nilable = false },
				{ Name = "inviter", Type = "ClubMemberInfo", Nilable = false },
				{ Name = "leaders", Type = "table", InnerType = "ClubMemberInfo", Nilable = false },
			},
		},
		{
			Name = "ClubStreamInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "streamId", Type = "string", Nilable = false },
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "subject", Type = "string", Nilable = false },
				{ Name = "leadersAndModeratorsOnly", Type = "bool", Nilable = false },
				{ Name = "streamType", Type = "ClubStreamType", Nilable = false },
				{ Name = "creationTime", Type = "number", Nilable = false },
			},
		},
		{
			Name = "ClubStreamNotificationSetting",
			Type = "Structure",
			Fields =
			{
				{ Name = "streamId", Type = "string", Nilable = false },
				{ Name = "filter", Type = "ClubStreamNotificationFilter", Nilable = false },
			},
		},
		{
			Name = "ClubTicketInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "ticketId", Type = "string", Nilable = false },
				{ Name = "allowedRedeemCount", Type = "number", Nilable = false },
				{ Name = "currentRedeemCount", Type = "number", Nilable = false },
				{ Name = "creationTime", Type = "number", Nilable = false, Documentation = { "Creation time in microseconds since the UNIX epoch." } },
				{ Name = "expirationTime", Type = "number", Nilable = false, Documentation = { "Expiration time in microseconds since the UNIX epoch." } },
				{ Name = "defaultStreamId", Type = "string", Nilable = true },
				{ Name = "creator", Type = "ClubMemberInfo", Nilable = false },
			},
		},
	},
};

APIDocumentation:AddDocumentationTable(Club);local ClubFinder =
{
	Name = "ClubFinderInfo",
	Type = "System",
	Namespace = "C_ClubFinder",

	Functions =
	{
		{
			Name = "ApplicantAcceptClubInvite",
			Type = "Function",

			Arguments =
			{
				{ Name = "clubFinderGUID", Type = "string", Nilable = false },
			},
		},
		{
			Name = "ApplicantDeclineClubInvite",
			Type = "Function",

			Arguments =
			{
				{ Name = "clubFinderGUID", Type = "string", Nilable = false },
			},
		},
		{
			Name = "CancelMembershipRequest",
			Type = "Function",

			Arguments =
			{
				{ Name = "clubFinderGUID", Type = "string", Nilable = false },
			},
		},
		{
			Name = "CheckAllPlayerApplicantSettings",
			Type = "Function",
		},
		{
			Name = "ClearAllFinderCache",
			Type = "Function",
		},
		{
			Name = "ClearClubApplicantsCache",
			Type = "Function",
		},
		{
			Name = "ClearClubFinderPostingsCache",
			Type = "Function",
		},
		{
			Name = "DoesPlayerBelongToClubFromClubGUID",
			Type = "Function",

			Arguments =
			{
				{ Name = "clubFinderGUID", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "belongsToClub", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "GetClubFinderDisableReason",
			Type = "Function",

			Returns =
			{
				{ Name = "disableReason", Type = "ClubFinderDisableReason", Nilable = true },
			},
		},
		{
			Name = "GetClubRecruitmentSettings",
			Type = "Function",

			Returns =
			{
				{ Name = "settings", Type = "ClubSettingsInfo", Nilable = false },
			},
		},
		{
			Name = "GetClubTypeFromFinderGUID",
			Type = "Function",

			Arguments =
			{
				{ Name = "clubFinderGUID", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "clubType", Type = "ClubFinderRequestType", Nilable = false },
			},
		},
		{
			Name = "GetFocusIndexFromFlag",
			Type = "Function",

			Arguments =
			{
				{ Name = "flags", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "index", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetPlayerApplicantLocaleFlags",
			Type = "Function",

			Returns =
			{
				{ Name = "localeFlags", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetPlayerApplicantSettings",
			Type = "Function",

			Returns =
			{
				{ Name = "settings", Type = "ClubSettingsInfo", Nilable = false },
			},
		},
		{
			Name = "GetPlayerClubApplicationStatus",
			Type = "Function",

			Arguments =
			{
				{ Name = "clubFinderGUID", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "clubStatus", Type = "PlayerClubRequestStatus", Nilable = false },
			},
		},
		{
			Name = "GetPlayerSettingsFocusFlagsSelectedCount",
			Type = "Function",

			Returns =
			{
				{ Name = "focusCount", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetPostingIDFromClubFinderGUID",
			Type = "Function",

			Arguments =
			{
				{ Name = "clubFinderGUID", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "postingID", Type = "number", Nilable = true },
			},
		},
		{
			Name = "GetRecruitingClubInfoFromClubID",
			Type = "Function",

			Arguments =
			{
				{ Name = "clubId", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "clubInfo", Type = "RecruitingClubInfo", Nilable = true },
			},
		},
		{
			Name = "GetRecruitingClubInfoFromFinderGUID",
			Type = "Function",

			Arguments =
			{
				{ Name = "clubFinderGUID", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "clubInfo", Type = "RecruitingClubInfo", Nilable = false },
			},
		},
		{
			Name = "GetStatusOfPostingFromClubId",
			Type = "Function",

			Arguments =
			{
				{ Name = "postingID", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "postingFlags", Type = "table", InnerType = "ClubFinderClubPostingStatusFlags", Nilable = false },
			},
		},
		{
			Name = "GetTotalMatchingCommunityListSize",
			Type = "Function",

			Returns =
			{
				{ Name = "totalSize", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetTotalMatchingGuildListSize",
			Type = "Function",

			Returns =
			{
				{ Name = "totalSize", Type = "number", Nilable = false },
			},
		},
		{
			Name = "HasAlreadyAppliedToLinkedPosting",
			Type = "Function",

			Arguments =
			{
				{ Name = "clubFinderGUID", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "hasAlreadyApplied", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "HasPostingBeenDelisted",
			Type = "Function",

			Arguments =
			{
				{ Name = "postingID", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "postingDelisted", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsEnabled",
			Type = "Function",

			Returns =
			{
				{ Name = "isEnabled", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsListingEnabledFromFlags",
			Type = "Function",

			Arguments =
			{
				{ Name = "flags", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "isListed", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsPostingBanned",
			Type = "Function",

			Arguments =
			{
				{ Name = "postingID", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "postingBanned", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "LookupClubPostingFromClubFinderGUID",
			Type = "Function",

			Arguments =
			{
				{ Name = "clubFinderGUID", Type = "string", Nilable = false },
				{ Name = "isLinkedPosting", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "PlayerGetClubInvitationList",
			Type = "Function",

			Returns =
			{
				{ Name = "inviteList", Type = "table", InnerType = "RecruitingClubInfo", Nilable = false },
			},
		},
		{
			Name = "PlayerRequestPendingClubsList",
			Type = "Function",

			Arguments =
			{
				{ Name = "type", Type = "ClubFinderRequestType", Nilable = false },
			},
		},
		{
			Name = "PlayerReturnPendingCommunitiesList",
			Type = "Function",

			Returns =
			{
				{ Name = "info", Type = "table", InnerType = "RecruitingClubInfo", Nilable = false },
			},
		},
		{
			Name = "PlayerReturnPendingGuildsList",
			Type = "Function",

			Returns =
			{
				{ Name = "info", Type = "table", InnerType = "RecruitingClubInfo", Nilable = false },
			},
		},
		{
			Name = "PostClub",
			Type = "Function",

			Arguments =
			{
				{ Name = "clubId", Type = "string", Nilable = false },
				{ Name = "itemLevelRequirement", Type = "number", Nilable = false },
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "description", Type = "string", Nilable = false },
				{ Name = "specs", Type = "table", InnerType = "number", Nilable = false },
				{ Name = "type", Type = "ClubFinderRequestType", Nilable = false },
			},

			Returns =
			{
				{ Name = "succesful", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ReportPosting",
			Type = "Function",

			Arguments =
			{
				{ Name = "reportType", Type = "ClubFinderPostingReportType", Nilable = false },
				{ Name = "clubFinderGUID", Type = "string", Nilable = false },
				{ Name = "playerGUID", Type = "string", Nilable = false },
				{ Name = "complaintNote", Type = "string", Nilable = false },
			},
		},
		{
			Name = "RequestApplicantList",
			Type = "Function",

			Arguments =
			{
				{ Name = "type", Type = "ClubFinderRequestType", Nilable = false },
			},
		},
		{
			Name = "RequestClubsList",
			Type = "Function",

			Arguments =
			{
				{ Name = "guildListRequested", Type = "bool", Nilable = false },
				{ Name = "searchString", Type = "string", Nilable = false },
				{ Name = "specIDs", Type = "table", InnerType = "number", Nilable = false },
			},
		},
		{
			Name = "RequestMembershipToClub",
			Type = "Function",

			Arguments =
			{
				{ Name = "clubFinderGUID", Type = "string", Nilable = false },
				{ Name = "comment", Type = "string", Nilable = false },
				{ Name = "specIDs", Type = "table", InnerType = "number", Nilable = false },
			},
		},
		{
			Name = "RequestNextCommunityPage",
			Type = "Function",

			Arguments =
			{
				{ Name = "startingIndex", Type = "number", Nilable = false },
				{ Name = "pageSize", Type = "number", Nilable = false },
			},
		},
		{
			Name = "RequestNextGuildPage",
			Type = "Function",

			Arguments =
			{
				{ Name = "startingIndex", Type = "number", Nilable = false },
				{ Name = "pageSize", Type = "number", Nilable = false },
			},
		},
		{
			Name = "RequestPostingInformationFromClubId",
			Type = "Function",

			Arguments =
			{
				{ Name = "clubId", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "success", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "RequestSubscribedClubPostingIDs",
			Type = "Function",
		},
		{
			Name = "ResetClubPostingMapCache",
			Type = "Function",
		},
		{
			Name = "RespondToApplicant",
			Type = "Function",

			Arguments =
			{
				{ Name = "clubFinderGUID", Type = "string", Nilable = false },
				{ Name = "playerGUID", Type = "string", Nilable = false },
				{ Name = "shouldAccept", Type = "bool", Nilable = false },
				{ Name = "requestType", Type = "ClubFinderRequestType", Nilable = false },
				{ Name = "playerName", Type = "string", Nilable = false },
				{ Name = "forceAccept", Type = "bool", Nilable = false },
				{ Name = "reported", Type = "bool", Nilable = true },
			},
		},
		{
			Name = "ReturnClubApplicantList",
			Type = "Function",

			Arguments =
			{
				{ Name = "clubId", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "info", Type = "table", InnerType = "ClubFinderApplicantInfo", Nilable = false },
			},
		},
		{
			Name = "ReturnMatchingCommunityList",
			Type = "Function",

			Returns =
			{
				{ Name = "recruitingClubs", Type = "table", InnerType = "RecruitingClubInfo", Nilable = false },
			},
		},
		{
			Name = "ReturnMatchingGuildList",
			Type = "Function",

			Returns =
			{
				{ Name = "recruitingClubs", Type = "table", InnerType = "RecruitingClubInfo", Nilable = false },
			},
		},
		{
			Name = "ReturnPendingClubApplicantList",
			Type = "Function",

			Arguments =
			{
				{ Name = "clubId", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "info", Type = "table", InnerType = "ClubFinderApplicantInfo", Nilable = false },
			},
		},
		{
			Name = "SetAllRecruitmentSettings",
			Type = "Function",

			Arguments =
			{
				{ Name = "value", Type = "number", Nilable = false },
			},
		},
		{
			Name = "SetPlayerApplicantLocaleFlags",
			Type = "Function",

			Arguments =
			{
				{ Name = "localeFlags", Type = "number", Nilable = false },
			},
		},
		{
			Name = "SetPlayerApplicantSettings",
			Type = "Function",

			Arguments =
			{
				{ Name = "index", Type = "number", Nilable = false },
				{ Name = "checked", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "SetRecruitmentLocale",
			Type = "Function",

			Arguments =
			{
				{ Name = "locale", Type = "number", Nilable = false },
			},
		},
		{
			Name = "SetRecruitmentSettings",
			Type = "Function",

			Arguments =
			{
				{ Name = "index", Type = "number", Nilable = false },
				{ Name = "checked", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ShouldShowClubFinder",
			Type = "Function",

			Returns =
			{
				{ Name = "shouldShow", Type = "bool", Nilable = false },
			},
		},
	},

	Events =
	{
		{
			Name = "ClubFinderApplicantInviteRecieved",
			Type = "Event",
			LiteralName = "CLUB_FINDER_APPLICANT_INVITE_RECIEVED",
			Payload =
			{
				{ Name = "clubFinderGUIDs", Type = "table", InnerType = "string", Nilable = false },
			},
		},
		{
			Name = "ClubFinderApplicationsUpdated",
			Type = "Event",
			LiteralName = "CLUB_FINDER_APPLICATIONS_UPDATED",
			Payload =
			{
				{ Name = "type", Type = "ClubFinderRequestType", Nilable = false },
				{ Name = "clubFinderGUIDs", Type = "table", InnerType = "string", Nilable = false },
			},
		},
		{
			Name = "ClubFinderClubListReturned",
			Type = "Event",
			LiteralName = "CLUB_FINDER_CLUB_LIST_RETURNED",
			Documentation = { "Signals when we recieve club data that can be used" },
			Payload =
			{
				{ Name = "type", Type = "ClubFinderRequestType", Nilable = false },
			},
		},
		{
			Name = "ClubFinderClubReported",
			Type = "Event",
			LiteralName = "CLUB_FINDER_CLUB_REPORTED",
			Documentation = { "Sends an update to the UI about a reported guild or community." },
			Payload =
			{
				{ Name = "type", Type = "ClubFinderRequestType", Nilable = false },
				{ Name = "clubFinderGUID", Type = "string", Nilable = false },
			},
		},
		{
			Name = "ClubFinderCommunityOfflineJoin",
			Type = "Event",
			LiteralName = "CLUB_FINDER_COMMUNITY_OFFLINE_JOIN",
			Documentation = { "Signals to the UI that you (the player) have joined a community offline." },
			Payload =
			{
				{ Name = "clubId", Type = "string", Nilable = false },
			},
		},
		{
			Name = "ClubFinderEnabledOrDisabled",
			Type = "Event",
			LiteralName = "CLUB_FINDER_ENABLED_OR_DISABLED",
			Documentation = { "Sends an update to the UI that the club finder feature has been enabled or disabled." },
		},
		{
			Name = "ClubFinderLinkedClubReturned",
			Type = "Event",
			LiteralName = "CLUB_FINDER_LINKED_CLUB_RETURNED",
			Documentation = { "When a player clicks a club link, this returns that information back about the club they clicked on" },
			Payload =
			{
				{ Name = "clubInfo", Type = "RecruitingClubInfo", Nilable = false },
			},
		},
		{
			Name = "ClubFinderMembershipListChanged",
			Type = "Event",
			LiteralName = "CLUB_FINDER_MEMBERSHIP_LIST_CHANGED",
		},
		{
			Name = "ClubFinderPlayerPendingListRecieved",
			Type = "Event",
			LiteralName = "CLUB_FINDER_PLAYER_PENDING_LIST_RECIEVED",
			Payload =
			{
				{ Name = "type", Type = "ClubFinderRequestType", Nilable = false },
			},
		},
		{
			Name = "ClubFinderPostUpdated",
			Type = "Event",
			LiteralName = "CLUB_FINDER_POST_UPDATED",
			Payload =
			{
				{ Name = "clubFinderGUIDs", Type = "table", InnerType = "string", Nilable = false },
			},
		},
		{
			Name = "ClubFinderRecruitListChanged",
			Type = "Event",
			LiteralName = "CLUB_FINDER_RECRUIT_LIST_CHANGED",
		},
		{
			Name = "ClubFinderRecruitmentPostReturned",
			Type = "Event",
			LiteralName = "CLUB_FINDER_RECRUITMENT_POST_RETURNED",
			Documentation = { "Signals when our recruitment post we just requested is returned back to us" },
			Payload =
			{
				{ Name = "type", Type = "ClubFinderRequestType", Nilable = false },
			},
		},
		{
			Name = "ClubFinderRecruitsUpdated",
			Type = "Event",
			LiteralName = "CLUB_FINDER_RECRUITS_UPDATED",
			Documentation = { "Signals when we recieve the recruits list" },
			Payload =
			{
				{ Name = "type", Type = "ClubFinderRequestType", Nilable = false },
			},
		},
	},

	Tables =
	{
		{
			Name = "ClubFinderApplicationUpdateType",
			Type = "Enumeration",
			NumValues = 4,
			MinValue = 0,
			MaxValue = 3,
			Fields =
			{
				{ Name = "None", Type = "ClubFinderApplicationUpdateType", EnumValue = 0 },
				{ Name = "AcceptInvite", Type = "ClubFinderApplicationUpdateType", EnumValue = 1 },
				{ Name = "DeclineInvite", Type = "ClubFinderApplicationUpdateType", EnumValue = 2 },
				{ Name = "Cancel", Type = "ClubFinderApplicationUpdateType", EnumValue = 3 },
			},
		},
		{
			Name = "ClubFinderClubPostingStatusFlags",
			Type = "Enumeration",
			NumValues = 9,
			MinValue = 0,
			MaxValue = 8,
			Fields =
			{
				{ Name = "None", Type = "ClubFinderClubPostingStatusFlags", EnumValue = 0 },
				{ Name = "NeedsCacheUpdate", Type = "ClubFinderClubPostingStatusFlags", EnumValue = 1 },
				{ Name = "ForceDescriptionChange", Type = "ClubFinderClubPostingStatusFlags", EnumValue = 2 },
				{ Name = "ForceNameChange", Type = "ClubFinderClubPostingStatusFlags", EnumValue = 3 },
				{ Name = "UnderReview", Type = "ClubFinderClubPostingStatusFlags", EnumValue = 4 },
				{ Name = "Banned", Type = "ClubFinderClubPostingStatusFlags", EnumValue = 5 },
				{ Name = "FakePost", Type = "ClubFinderClubPostingStatusFlags", EnumValue = 6 },
				{ Name = "PendingDelete", Type = "ClubFinderClubPostingStatusFlags", EnumValue = 7 },
				{ Name = "PostDelisted", Type = "ClubFinderClubPostingStatusFlags", EnumValue = 8 },
			},
		},
		{
			Name = "ClubFinderDisableReason",
			Type = "Enumeration",
			NumValues = 3,
			MinValue = 0,
			MaxValue = 2,
			Fields =
			{
				{ Name = "Muted", Type = "ClubFinderDisableReason", EnumValue = 0 },
				{ Name = "Silenced", Type = "ClubFinderDisableReason", EnumValue = 1 },
				{ Name = "VeteranTrial", Type = "ClubFinderDisableReason", EnumValue = 2 },
			},
		},
		{
			Name = "ClubFinderPostingReportType",
			Type = "Enumeration",
			NumValues = 5,
			MinValue = 0,
			MaxValue = 4,
			Fields =
			{
				{ Name = "PostersName", Type = "ClubFinderPostingReportType", EnumValue = 0 },
				{ Name = "ClubName", Type = "ClubFinderPostingReportType", EnumValue = 1 },
				{ Name = "PostingDescription", Type = "ClubFinderPostingReportType", EnumValue = 2 },
				{ Name = "ApplicantsName", Type = "ClubFinderPostingReportType", EnumValue = 3 },
				{ Name = "JoinNote", Type = "ClubFinderPostingReportType", EnumValue = 4 },
			},
		},
		{
			Name = "ClubFinderRequestType",
			Type = "Enumeration",
			NumValues = 4,
			MinValue = 0,
			MaxValue = 3,
			Fields =
			{
				{ Name = "None", Type = "ClubFinderRequestType", EnumValue = 0 },
				{ Name = "Guild", Type = "ClubFinderRequestType", EnumValue = 1 },
				{ Name = "Community", Type = "ClubFinderRequestType", EnumValue = 2 },
				{ Name = "All", Type = "ClubFinderRequestType", EnumValue = 3 },
			},
		},
		{
			Name = "ClubFinderSettingFlags",
			Type = "Enumeration",
			NumValues = 26,
			MinValue = 0,
			MaxValue = 25,
			Fields =
			{
				{ Name = "None", Type = "ClubFinderSettingFlags", EnumValue = 0 },
				{ Name = "Dungeons", Type = "ClubFinderSettingFlags", EnumValue = 1 },
				{ Name = "Raids", Type = "ClubFinderSettingFlags", EnumValue = 2 },
				{ Name = "PvP", Type = "ClubFinderSettingFlags", EnumValue = 3 },
				{ Name = "RP", Type = "ClubFinderSettingFlags", EnumValue = 4 },
				{ Name = "Social", Type = "ClubFinderSettingFlags", EnumValue = 5 },
				{ Name = "Small", Type = "ClubFinderSettingFlags", EnumValue = 6 },
				{ Name = "Medium", Type = "ClubFinderSettingFlags", EnumValue = 7 },
				{ Name = "Large", Type = "ClubFinderSettingFlags", EnumValue = 8 },
				{ Name = "Tank", Type = "ClubFinderSettingFlags", EnumValue = 9 },
				{ Name = "Healer", Type = "ClubFinderSettingFlags", EnumValue = 10 },
				{ Name = "Damage", Type = "ClubFinderSettingFlags", EnumValue = 11 },
				{ Name = "EnableListing", Type = "ClubFinderSettingFlags", EnumValue = 12 },
				{ Name = "MaxLevelOnly", Type = "ClubFinderSettingFlags", EnumValue = 13 },
				{ Name = "AutoAccept", Type = "ClubFinderSettingFlags", EnumValue = 14 },
				{ Name = "FactionHorde", Type = "ClubFinderSettingFlags", EnumValue = 15 },
				{ Name = "FactionAlliance", Type = "ClubFinderSettingFlags", EnumValue = 16 },
				{ Name = "FactionNeutral", Type = "ClubFinderSettingFlags", EnumValue = 17 },
				{ Name = "SortRelevance", Type = "ClubFinderSettingFlags", EnumValue = 18 },
				{ Name = "SortMemberCount", Type = "ClubFinderSettingFlags", EnumValue = 19 },
				{ Name = "SortNewest", Type = "ClubFinderSettingFlags", EnumValue = 20 },
				{ Name = "LanguageReserved1", Type = "ClubFinderSettingFlags", EnumValue = 21 },
				{ Name = "LanguageReserved2", Type = "ClubFinderSettingFlags", EnumValue = 22 },
				{ Name = "LanguageReserved3", Type = "ClubFinderSettingFlags", EnumValue = 23 },
				{ Name = "LanguageReserved4", Type = "ClubFinderSettingFlags", EnumValue = 24 },
				{ Name = "LanguageReserved5", Type = "ClubFinderSettingFlags", EnumValue = 25 },
			},
		},
		{
			Name = "PlayerClubRequestStatus",
			Type = "Enumeration",
			NumValues = 8,
			MinValue = 0,
			MaxValue = 7,
			Fields =
			{
				{ Name = "None", Type = "PlayerClubRequestStatus", EnumValue = 0 },
				{ Name = "Pending", Type = "PlayerClubRequestStatus", EnumValue = 1 },
				{ Name = "AutoApproved", Type = "PlayerClubRequestStatus", EnumValue = 2 },
				{ Name = "Declined", Type = "PlayerClubRequestStatus", EnumValue = 3 },
				{ Name = "Approved", Type = "PlayerClubRequestStatus", EnumValue = 4 },
				{ Name = "Joined", Type = "PlayerClubRequestStatus", EnumValue = 5 },
				{ Name = "JoinedAnother", Type = "PlayerClubRequestStatus", EnumValue = 6 },
				{ Name = "Canceled", Type = "PlayerClubRequestStatus", EnumValue = 7 },
			},
		},
		{
			Name = "ClubFinderApplicantInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "clubFinderGUID", Type = "string", Nilable = false },
				{ Name = "playerGUID", Type = "string", Nilable = false },
				{ Name = "closed", Type = "number", Nilable = false },
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "message", Type = "string", Nilable = false },
				{ Name = "level", Type = "number", Nilable = false },
				{ Name = "classID", Type = "number", Nilable = false },
				{ Name = "ilvl", Type = "number", Nilable = false },
				{ Name = "specIds", Type = "table", InnerType = "number", Nilable = false },
				{ Name = "requestStatus", Type = "PlayerClubRequestStatus", Nilable = false },
				{ Name = "lookupSuccess", Type = "bool", Nilable = false },
				{ Name = "lastUpdatedTime", Type = "number", Nilable = false },
			},
		},
		{
			Name = "ClubSettingsInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "playStyleDungeon", Type = "bool", Nilable = false },
				{ Name = "playStyleRaids", Type = "bool", Nilable = false },
				{ Name = "playStylePvp", Type = "bool", Nilable = false },
				{ Name = "playStyleRP", Type = "bool", Nilable = false },
				{ Name = "playStyleSocial", Type = "bool", Nilable = false },
				{ Name = "roleTank", Type = "bool", Nilable = false },
				{ Name = "roleHealer", Type = "bool", Nilable = false },
				{ Name = "roleDps", Type = "bool", Nilable = false },
				{ Name = "sizeSmall", Type = "bool", Nilable = false },
				{ Name = "sizeMedium", Type = "bool", Nilable = false },
				{ Name = "sizeLarge", Type = "bool", Nilable = false },
				{ Name = "maxLevelOnly", Type = "bool", Nilable = false },
				{ Name = "enableListing", Type = "bool", Nilable = false },
				{ Name = "sortRelevance", Type = "bool", Nilable = false },
				{ Name = "sortMembers", Type = "bool", Nilable = false },
				{ Name = "sortNewest", Type = "bool", Nilable = false },
				{ Name = "autoAccept", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "RecruitingClubInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "clubFinderGUID", Type = "string", Nilable = false },
				{ Name = "numActiveMembers", Type = "number", Nilable = false },
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "comment", Type = "string", Nilable = false },
				{ Name = "guildLeader", Type = "string", Nilable = false },
				{ Name = "isGuild", Type = "bool", Nilable = false },
				{ Name = "emblemInfo", Type = "number", Nilable = false },
				{ Name = "tabardInfo", Type = "GuildTabardInfo", Nilable = true },
				{ Name = "recruitingSpecIds", Type = "table", InnerType = "number", Nilable = false },
				{ Name = "recruitmentFlags", Type = "number", Nilable = false },
				{ Name = "localeSet", Type = "bool", Nilable = false },
				{ Name = "recruitmentLocale", Type = "number", Nilable = false },
				{ Name = "minILvl", Type = "number", Nilable = false },
				{ Name = "cached", Type = "number", Nilable = false },
				{ Name = "cacheRequested", Type = "number", Nilable = false },
				{ Name = "lastPosterGUID", Type = "string", Nilable = false },
				{ Name = "clubId", Type = "string", Nilable = false },
				{ Name = "lastUpdatedTime", Type = "number", Nilable = false },
			},
		},
	},
};

APIDocumentation:AddDocumentationTable(ClubFinder);local CombatLog =
{
	Name = "CombatLog",
	Type = "System",
	Namespace = "C_CombatLog",

	Functions =
	{
	},

	Events =
	{
		{
			Name = "CombatLogEvent",
			Type = "Event",
			LiteralName = "COMBAT_LOG_EVENT",
		},
		{
			Name = "CombatLogEventUnfiltered",
			Type = "Event",
			LiteralName = "COMBAT_LOG_EVENT_UNFILTERED",
		},
		{
			Name = "CombatTextUpdate",
			Type = "Event",
			LiteralName = "COMBAT_TEXT_UPDATE",
			Payload =
			{
				{ Name = "combatTextType", Type = "string", Nilable = false },
			},
		},
	},

	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(CombatLog);local CommentatorFrame =
{
	Name = "CommentatorFrame",
	Type = "System",
	Namespace = "C_Commentator",

	Functions =
	{
		{
			Name = "AddPlayerOverrideName",
			Type = "Function",

			Arguments =
			{
				{ Name = "playerName", Type = "string", Nilable = false },
				{ Name = "overrideName", Type = "string", Nilable = false },
			},
		},
		{
			Name = "AddTrackedDefensiveAuras",
			Type = "Function",

			Arguments =
			{
				{ Name = "spellIDs", Type = "table", InnerType = "number", Nilable = false },
			},
		},
		{
			Name = "AddTrackedOffensiveAuras",
			Type = "Function",

			Arguments =
			{
				{ Name = "spellIDs", Type = "table", InnerType = "number", Nilable = false },
			},
		},
		{
			Name = "AreTeamsSwapped",
			Type = "Function",

			Returns =
			{
				{ Name = "teamsAreSwapped", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "AssignPlayerToTeam",
			Type = "Function",

			Arguments =
			{
				{ Name = "playerName", Type = "string", Nilable = false },
				{ Name = "teamName", Type = "string", Nilable = false },
			},
		},
		{
			Name = "AssignPlayersToTeam",
			Type = "Function",

			Arguments =
			{
				{ Name = "playerName", Type = "table", InnerType = "string", Nilable = false },
				{ Name = "teamName", Type = "string", Nilable = false },
			},
		},
		{
			Name = "AssignPlayersToTeamInCurrentInstance",
			Type = "Function",

			Arguments =
			{
				{ Name = "teamIndex", Type = "number", Nilable = false },
				{ Name = "teamName", Type = "string", Nilable = false },
			},
		},
		{
			Name = "CanUseCommentatorCheats",
			Type = "Function",

			Returns =
			{
				{ Name = "canUseCommentatorCheats", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ClearCameraTarget",
			Type = "Function",
		},
		{
			Name = "ClearFollowTarget",
			Type = "Function",
		},
		{
			Name = "ClearLookAtTarget",
			Type = "Function",

			Arguments =
			{
				{ Name = "lookAtIndex", Type = "number", Nilable = true },
			},
		},
		{
			Name = "EnterInstance",
			Type = "Function",
		},
		{
			Name = "ExitInstance",
			Type = "Function",
		},
		{
			Name = "FindSpectatedUnit",
			Type = "Function",

			Arguments =
			{
				{ Name = "unitToken", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "playerIndex", Type = "number", Nilable = false },
				{ Name = "teamIndex", Type = "number", Nilable = false },
				{ Name = "isPet", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "FindTeamNameInCurrentInstance",
			Type = "Function",

			Arguments =
			{
				{ Name = "teamIndex", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "teamName", Type = "string", Nilable = true },
			},
		},
		{
			Name = "FindTeamNameInDirectory",
			Type = "Function",

			Arguments =
			{
				{ Name = "playerNames", Type = "table", InnerType = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "teamName", Type = "string", Nilable = true },
			},
		},
		{
			Name = "FlushCommentatorHistory",
			Type = "Function",
		},
		{
			Name = "FollowPlayer",
			Type = "Function",

			Arguments =
			{
				{ Name = "factionIndex", Type = "number", Nilable = false },
				{ Name = "playerIndex", Type = "number", Nilable = false },
				{ Name = "forceInstantTransition", Type = "bool", Nilable = true },
			},
		},
		{
			Name = "FollowUnit",
			Type = "Function",

			Arguments =
			{
				{ Name = "token", Type = "string", Nilable = false },
			},
		},
		{
			Name = "ForceFollowTransition",
			Type = "Function",
		},
		{
			Name = "GetAdditionalCameraWeight",
			Type = "Function",

			Returns =
			{
				{ Name = "teamIndex", Type = "number", Nilable = false },
				{ Name = "playerIndex", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetAdditionalCameraWeightByToken",
			Type = "Function",

			Arguments =
			{
				{ Name = "unitToken", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "weight", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetAllPlayerOverrideNames",
			Type = "Function",

			Returns =
			{
				{ Name = "nameEntries", Type = "table", InnerType = "NameOverrideEntry", Nilable = false },
			},
		},
		{
			Name = "GetCamera",
			Type = "Function",

			Returns =
			{
				{ Name = "xPos", Type = "number", Nilable = false },
				{ Name = "yPos", Type = "number", Nilable = false },
				{ Name = "zPos", Type = "number", Nilable = false },
				{ Name = "yaw", Type = "number", Nilable = false },
				{ Name = "pitch", Type = "number", Nilable = false },
				{ Name = "roll", Type = "number", Nilable = false },
				{ Name = "fov", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetCameraCollision",
			Type = "Function",

			Returns =
			{
				{ Name = "isColliding", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "GetCameraPosition",
			Type = "Function",

			Returns =
			{
				{ Name = "xPos", Type = "number", Nilable = false },
				{ Name = "yPos", Type = "number", Nilable = false },
				{ Name = "zPos", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetCommentatorHistory",
			Type = "Function",

			Returns =
			{
				{ Name = "history", Type = "CommentatorHistory", Nilable = false },
			},
		},
		{
			Name = "GetCurrentMapID",
			Type = "Function",

			Returns =
			{
				{ Name = "mapID", Type = "number", Nilable = true },
			},
		},
		{
			Name = "GetDampeningPercent",
			Type = "Function",

			Returns =
			{
				{ Name = "percentage", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetDistanceBeforeForcedHorizontalConvergence",
			Type = "Function",

			Returns =
			{
				{ Name = "distance", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetDurationToForceHorizontalConvergence",
			Type = "Function",

			Returns =
			{
				{ Name = "ms", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetExcludeDistance",
			Type = "Function",

			Returns =
			{
				{ Name = "excludeDistance", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetHardlockWeight",
			Type = "Function",

			Returns =
			{
				{ Name = "weight", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetHorizontalAngleThresholdToSmooth",
			Type = "Function",

			Returns =
			{
				{ Name = "angle", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetIndirectSpellID",
			Type = "Function",

			Arguments =
			{
				{ Name = "trackedSpellID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "indirectSpellID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetInstanceInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "mapIndex", Type = "number", Nilable = false },
				{ Name = "instanceIndex", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "mapID", Type = "number", Nilable = false },
				{ Name = "mapName", Type = "string", Nilable = true },
				{ Name = "status", Type = "number", Nilable = false },
				{ Name = "instanceIDLow", Type = "number", Nilable = false },
				{ Name = "instanceIDHigh", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetLookAtLerpAmount",
			Type = "Function",

			Returns =
			{
				{ Name = "amount", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetMapInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "mapIndex", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "teamSize", Type = "number", Nilable = false },
				{ Name = "minLevel", Type = "number", Nilable = false },
				{ Name = "maxLevel", Type = "number", Nilable = false },
				{ Name = "numInstances", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetMatchDuration",
			Type = "Function",

			Returns =
			{
				{ Name = "seconds", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetMaxNumPlayersPerTeam",
			Type = "Function",

			Returns =
			{
				{ Name = "maxNumPlayersPerTeam", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetMaxNumTeams",
			Type = "Function",

			Returns =
			{
				{ Name = "maxNumTeams", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetMode",
			Type = "Function",

			Returns =
			{
				{ Name = "commentatorMode", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetMsToHoldForHorizontalMovement",
			Type = "Function",

			Returns =
			{
				{ Name = "ms", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetMsToHoldForVerticalMovement",
			Type = "Function",

			Returns =
			{
				{ Name = "ms", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetMsToSmoothHorizontalChange",
			Type = "Function",

			Returns =
			{
				{ Name = "ms", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetMsToSmoothVerticalChange",
			Type = "Function",

			Returns =
			{
				{ Name = "ms", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetNumMaps",
			Type = "Function",

			Returns =
			{
				{ Name = "numMaps", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetNumPlayers",
			Type = "Function",

			Arguments =
			{
				{ Name = "factionIndex", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "numPlayers", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetOrCreateSeries",
			Type = "Function",

			Arguments =
			{
				{ Name = "teamName1", Type = "string", Nilable = false },
				{ Name = "teamName2", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "data", Type = "CommentatorSeries", Nilable = false },
			},
		},
		{
			Name = "GetPlayerAuraInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "teamIndex", Type = "number", Nilable = false },
				{ Name = "playerIndex", Type = "number", Nilable = false },
				{ Name = "spellID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "startTime", Type = "number", Nilable = false },
				{ Name = "duration", Type = "number", Nilable = false },
				{ Name = "enable", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "GetPlayerAuraInfoByUnit",
			Type = "Function",

			Arguments =
			{
				{ Name = "token", Type = "string", Nilable = false },
				{ Name = "spellID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "startTime", Type = "number", Nilable = false },
				{ Name = "duration", Type = "number", Nilable = false },
				{ Name = "enable", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "GetPlayerCooldownInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "teamIndex", Type = "number", Nilable = false },
				{ Name = "playerIndex", Type = "number", Nilable = false },
				{ Name = "spellID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "startTime", Type = "number", Nilable = false },
				{ Name = "duration", Type = "number", Nilable = false },
				{ Name = "enable", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "GetPlayerCooldownInfoByUnit",
			Type = "Function",

			Arguments =
			{
				{ Name = "unitToken", Type = "string", Nilable = false },
				{ Name = "spellID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "startTime", Type = "number", Nilable = false },
				{ Name = "duration", Type = "number", Nilable = false },
				{ Name = "enable", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "GetPlayerCrowdControlInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "teamIndex", Type = "number", Nilable = false },
				{ Name = "playerIndex", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "spellID", Type = "number", Nilable = false },
				{ Name = "expiration", Type = "number", Nilable = false },
				{ Name = "duration", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetPlayerCrowdControlInfoByUnit",
			Type = "Function",

			Arguments =
			{
				{ Name = "token", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "spellID", Type = "number", Nilable = false },
				{ Name = "expiration", Type = "number", Nilable = false },
				{ Name = "duration", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetPlayerData",
			Type = "Function",

			Arguments =
			{
				{ Name = "teamIndex", Type = "number", Nilable = false },
				{ Name = "playerIndex", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "info", Type = "CommentatorPlayerData", Nilable = true },
			},
		},
		{
			Name = "GetPlayerFlagInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "teamIndex", Type = "number", Nilable = false },
				{ Name = "playerIndex", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "hasFlag", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "GetPlayerFlagInfoByUnit",
			Type = "Function",

			Arguments =
			{
				{ Name = "unitToken", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "hasFlag", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "GetPlayerOverrideName",
			Type = "Function",

			Arguments =
			{
				{ Name = "originalName", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "overrideName", Type = "string", Nilable = false },
			},
		},
		{
			Name = "GetPlayerSpellCharges",
			Type = "Function",

			Arguments =
			{
				{ Name = "teamIndex", Type = "number", Nilable = false },
				{ Name = "playerIndex", Type = "number", Nilable = false },
				{ Name = "spellID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "charges", Type = "number", Nilable = false },
				{ Name = "maxCharges", Type = "number", Nilable = false },
				{ Name = "startTime", Type = "number", Nilable = false },
				{ Name = "duration", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetPlayerSpellChargesByUnit",
			Type = "Function",

			Arguments =
			{
				{ Name = "unitToken", Type = "string", Nilable = false },
				{ Name = "spellID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "charges", Type = "number", Nilable = false },
				{ Name = "maxCharges", Type = "number", Nilable = false },
				{ Name = "startTime", Type = "number", Nilable = false },
				{ Name = "duration", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetPositionLerpAmount",
			Type = "Function",

			Returns =
			{
				{ Name = "amount", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetSmoothFollowTransitioning",
			Type = "Function",

			Returns =
			{
				{ Name = "enabled", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "GetSoftlockWeight",
			Type = "Function",

			Returns =
			{
				{ Name = "weight", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetSpeedFactor",
			Type = "Function",

			Returns =
			{
				{ Name = "factor", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetStartLocation",
			Type = "Function",

			Arguments =
			{
				{ Name = "mapID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "pos", Type = "table", Mixin = "Vector3DMixin", Nilable = false },
			},
		},
		{
			Name = "GetTeamColor",
			Type = "Function",

			Arguments =
			{
				{ Name = "teamIndex", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "color", Type = "table", Mixin = "ColorMixin", Nilable = false },
			},
		},
		{
			Name = "GetTeamColorByUnit",
			Type = "Function",

			Arguments =
			{
				{ Name = "unitToken", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "color", Type = "table", Mixin = "ColorMixin", Nilable = false },
			},
		},
		{
			Name = "GetTimeLeftInMatch",
			Type = "Function",

			Returns =
			{
				{ Name = "timeLeft", Type = "number", Nilable = true },
			},
		},
		{
			Name = "GetTrackedSpellID",
			Type = "Function",

			Arguments =
			{
				{ Name = "indirectSpellID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "trackedSpellID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetTrackedSpells",
			Type = "Function",

			Arguments =
			{
				{ Name = "teamIndex", Type = "number", Nilable = false },
				{ Name = "playerIndex", Type = "number", Nilable = false },
				{ Name = "category", Type = "TrackedSpellCategory", Nilable = false },
			},

			Returns =
			{
				{ Name = "spells", Type = "table", InnerType = "number", Nilable = true },
			},
		},
		{
			Name = "GetTrackedSpellsByUnit",
			Type = "Function",

			Arguments =
			{
				{ Name = "unitToken", Type = "string", Nilable = false },
				{ Name = "category", Type = "TrackedSpellCategory", Nilable = false },
			},

			Returns =
			{
				{ Name = "spells", Type = "table", InnerType = "number", Nilable = true },
			},
		},
		{
			Name = "GetUnitData",
			Type = "Function",

			Arguments =
			{
				{ Name = "unitToken", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "data", Type = "CommentatorUnitData", Nilable = false },
			},
		},
		{
			Name = "GetWargameInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "listID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "minPlayers", Type = "number", Nilable = false },
				{ Name = "maxPlayers", Type = "number", Nilable = false },
				{ Name = "isArena", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "HasTrackedAuras",
			Type = "Function",

			Arguments =
			{
				{ Name = "token", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "hasOffensiveAura", Type = "bool", Nilable = false },
				{ Name = "hasDefensiveAura", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsSmartCameraLocked",
			Type = "Function",

			Returns =
			{
				{ Name = "isSmartCameraLocked", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsSpectating",
			Type = "Function",

			Returns =
			{
				{ Name = "isSpectating", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsTrackedDefensiveAura",
			Type = "Function",

			Arguments =
			{
				{ Name = "spellID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "isDefensiveTrigger", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsTrackedOffensiveAura",
			Type = "Function",

			Arguments =
			{
				{ Name = "spellID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "isOffensiveTrigger", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsTrackedSpell",
			Type = "Function",

			Arguments =
			{
				{ Name = "teamIndex", Type = "number", Nilable = false },
				{ Name = "playerIndex", Type = "number", Nilable = false },
				{ Name = "spellID", Type = "number", Nilable = false },
				{ Name = "category", Type = "TrackedSpellCategory", Nilable = false },
			},

			Returns =
			{
				{ Name = "isTracked", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsTrackedSpellByUnit",
			Type = "Function",

			Arguments =
			{
				{ Name = "unitToken", Type = "string", Nilable = false },
				{ Name = "spellID", Type = "number", Nilable = false },
				{ Name = "category", Type = "TrackedSpellCategory", Nilable = false },
			},

			Returns =
			{
				{ Name = "isTracked", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsUsingSmartCamera",
			Type = "Function",

			Returns =
			{
				{ Name = "isUsingSmartCamera", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "LookAtPlayer",
			Type = "Function",

			Arguments =
			{
				{ Name = "factionIndex", Type = "number", Nilable = false },
				{ Name = "playerIndex", Type = "number", Nilable = false },
				{ Name = "lookAtIndex", Type = "number", Nilable = true },
			},
		},
		{
			Name = "RemoveAllOverrideNames",
			Type = "Function",
		},
		{
			Name = "RemovePlayerOverrideName",
			Type = "Function",

			Arguments =
			{
				{ Name = "originalPlayerName", Type = "string", Nilable = false },
			},
		},
		{
			Name = "RequestPlayerCooldownInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "teamIndex", Type = "number", Nilable = false },
				{ Name = "playerIndex", Type = "number", Nilable = false },
			},
		},
		{
			Name = "ResetFoVTarget",
			Type = "Function",
		},
		{
			Name = "ResetSeriesScores",
			Type = "Function",

			Arguments =
			{
				{ Name = "teamName1", Type = "string", Nilable = false },
				{ Name = "teamName2", Type = "string", Nilable = false },
			},
		},
		{
			Name = "ResetSettings",
			Type = "Function",
		},
		{
			Name = "ResetTrackedAuras",
			Type = "Function",
		},
		{
			Name = "SetAdditionalCameraWeight",
			Type = "Function",

			Arguments =
			{
				{ Name = "teamIndex", Type = "number", Nilable = false },
				{ Name = "playerIndex", Type = "number", Nilable = false },
				{ Name = "weight", Type = "number", Nilable = false },
			},
		},
		{
			Name = "SetAdditionalCameraWeightByToken",
			Type = "Function",

			Arguments =
			{
				{ Name = "unitToken", Type = "string", Nilable = false },
				{ Name = "weight", Type = "number", Nilable = false },
			},
		},
		{
			Name = "SetBlacklistedAuras",
			Type = "Function",

			Arguments =
			{
				{ Name = "spellIDs", Type = "table", InnerType = "number", Nilable = false },
			},
		},
		{
			Name = "SetBlacklistedCooldowns",
			Type = "Function",

			Arguments =
			{
				{ Name = "specID", Type = "number", Nilable = false },
				{ Name = "spellIDs", Type = "table", InnerType = "number", Nilable = false },
			},
		},
		{
			Name = "SetCamera",
			Type = "Function",

			Arguments =
			{
				{ Name = "xPos", Type = "number", Nilable = false },
				{ Name = "yPos", Type = "number", Nilable = false },
				{ Name = "zPos", Type = "number", Nilable = false },
				{ Name = "yaw", Type = "number", Nilable = false },
				{ Name = "pitch", Type = "number", Nilable = false },
				{ Name = "roll", Type = "number", Nilable = false },
				{ Name = "fov", Type = "number", Nilable = false },
			},
		},
		{
			Name = "SetCameraCollision",
			Type = "Function",

			Arguments =
			{
				{ Name = "collide", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "SetCameraPosition",
			Type = "Function",

			Arguments =
			{
				{ Name = "xPos", Type = "number", Nilable = false },
				{ Name = "yPos", Type = "number", Nilable = false },
				{ Name = "zPos", Type = "number", Nilable = false },
				{ Name = "snapToLocation", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "SetCheatsEnabled",
			Type = "Function",

			Arguments =
			{
				{ Name = "enableCheats", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "SetCommentatorHistory",
			Type = "Function",

			Arguments =
			{
				{ Name = "history", Type = "CommentatorHistory", Nilable = false },
			},
		},
		{
			Name = "SetDistanceBeforeForcedHorizontalConvergence",
			Type = "Function",

			Arguments =
			{
				{ Name = "distance", Type = "number", Nilable = false },
			},
		},
		{
			Name = "SetDurationToForceHorizontalConvergence",
			Type = "Function",

			Arguments =
			{
				{ Name = "ms", Type = "number", Nilable = false },
			},
		},
		{
			Name = "SetExcludeDistance",
			Type = "Function",

			Arguments =
			{
				{ Name = "excludeDistance", Type = "number", Nilable = false },
			},
		},
		{
			Name = "SetFollowCameraSpeeds",
			Type = "Function",

			Arguments =
			{
				{ Name = "elasticSpeed", Type = "number", Nilable = false },
				{ Name = "minSpeed", Type = "number", Nilable = false },
			},
		},
		{
			Name = "SetHardlockWeight",
			Type = "Function",

			Arguments =
			{
				{ Name = "weight", Type = "number", Nilable = false },
			},
		},
		{
			Name = "SetHorizontalAngleThresholdToSmooth",
			Type = "Function",

			Arguments =
			{
				{ Name = "angle", Type = "number", Nilable = false },
			},
		},
		{
			Name = "SetLookAtLerpAmount",
			Type = "Function",

			Arguments =
			{
				{ Name = "amount", Type = "number", Nilable = false },
			},
		},
		{
			Name = "SetMapAndInstanceIndex",
			Type = "Function",

			Arguments =
			{
				{ Name = "mapIndex", Type = "number", Nilable = false },
				{ Name = "instanceIndex", Type = "number", Nilable = false },
			},
		},
		{
			Name = "SetMouseDisabled",
			Type = "Function",

			Arguments =
			{
				{ Name = "disabled", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "SetMoveSpeed",
			Type = "Function",

			Arguments =
			{
				{ Name = "newSpeed", Type = "number", Nilable = false },
			},
		},
		{
			Name = "SetMsToHoldForHorizontalMovement",
			Type = "Function",

			Arguments =
			{
				{ Name = "ms", Type = "number", Nilable = false },
			},
		},
		{
			Name = "SetMsToHoldForVerticalMovement",
			Type = "Function",

			Arguments =
			{
				{ Name = "ms", Type = "number", Nilable = false },
			},
		},
		{
			Name = "SetMsToSmoothHorizontalChange",
			Type = "Function",

			Arguments =
			{
				{ Name = "ms", Type = "number", Nilable = false },
			},
		},
		{
			Name = "SetMsToSmoothVerticalChange",
			Type = "Function",

			Arguments =
			{
				{ Name = "ms", Type = "number", Nilable = false },
			},
		},
		{
			Name = "SetPositionLerpAmount",
			Type = "Function",

			Arguments =
			{
				{ Name = "amount", Type = "number", Nilable = false },
			},
		},
		{
			Name = "SetRequestedDebuffCooldowns",
			Type = "Function",

			Arguments =
			{
				{ Name = "specID", Type = "number", Nilable = false },
				{ Name = "spellIDs", Type = "table", InnerType = "number", Nilable = false },
			},
		},
		{
			Name = "SetRequestedDefensiveCooldowns",
			Type = "Function",

			Arguments =
			{
				{ Name = "specID", Type = "number", Nilable = false },
				{ Name = "spellIDs", Type = "table", InnerType = "number", Nilable = false },
			},
		},
		{
			Name = "SetRequestedOffensiveCooldowns",
			Type = "Function",

			Arguments =
			{
				{ Name = "specID", Type = "number", Nilable = false },
				{ Name = "spellIDs", Type = "table", InnerType = "number", Nilable = false },
			},
		},
		{
			Name = "SetSeriesScore",
			Type = "Function",

			Arguments =
			{
				{ Name = "teamName1", Type = "string", Nilable = false },
				{ Name = "teamName2", Type = "string", Nilable = false },
				{ Name = "scoringTeamName", Type = "string", Nilable = false },
				{ Name = "score", Type = "number", Nilable = false },
			},
		},
		{
			Name = "SetSeriesScores",
			Type = "Function",

			Arguments =
			{
				{ Name = "teamName1", Type = "string", Nilable = false },
				{ Name = "teamName2", Type = "string", Nilable = false },
				{ Name = "score1", Type = "number", Nilable = false },
				{ Name = "score2", Type = "number", Nilable = false },
			},
		},
		{
			Name = "SetSmartCameraLocked",
			Type = "Function",

			Arguments =
			{
				{ Name = "locked", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "SetSmoothFollowTransitioning",
			Type = "Function",

			Arguments =
			{
				{ Name = "enabled", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "SetSoftlockWeight",
			Type = "Function",

			Arguments =
			{
				{ Name = "weight", Type = "number", Nilable = false },
			},
		},
		{
			Name = "SetSpeedFactor",
			Type = "Function",

			Arguments =
			{
				{ Name = "factor", Type = "number", Nilable = false },
			},
		},
		{
			Name = "SetTargetHeightOffset",
			Type = "Function",

			Arguments =
			{
				{ Name = "offset", Type = "number", Nilable = false },
			},
		},
		{
			Name = "SetUseSmartCamera",
			Type = "Function",

			Arguments =
			{
				{ Name = "useSmartCamera", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "SnapCameraLookAtPoint",
			Type = "Function",
		},
		{
			Name = "StartWargame",
			Type = "Function",

			Arguments =
			{
				{ Name = "listID", Type = "number", Nilable = false },
				{ Name = "teamSize", Type = "number", Nilable = false },
				{ Name = "tournamentRules", Type = "bool", Nilable = false },
				{ Name = "teamOneCaptain", Type = "string", Nilable = false },
				{ Name = "teamTwoCaptain", Type = "string", Nilable = false },
			},
		},
		{
			Name = "SwapTeamSides",
			Type = "Function",
		},
		{
			Name = "ToggleCheats",
			Type = "Function",
		},
		{
			Name = "UpdateMapInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "targetPlayer", Type = "string", Nilable = true },
			},
		},
		{
			Name = "UpdatePlayerInfo",
			Type = "Function",
		},
		{
			Name = "ZoomIn",
			Type = "Function",
		},
		{
			Name = "ZoomOut",
			Type = "Function",
		},
	},

	Events =
	{
		{
			Name = "CommentatorEnterWorld",
			Type = "Event",
			LiteralName = "COMMENTATOR_ENTER_WORLD",
		},
		{
			Name = "CommentatorHistoryFlushed",
			Type = "Event",
			LiteralName = "COMMENTATOR_HISTORY_FLUSHED",
		},
		{
			Name = "CommentatorImmediateFovUpdate",
			Type = "Event",
			LiteralName = "COMMENTATOR_IMMEDIATE_FOV_UPDATE",
			Payload =
			{
				{ Name = "fov", Type = "number", Nilable = false },
			},
		},
		{
			Name = "CommentatorMapUpdate",
			Type = "Event",
			LiteralName = "COMMENTATOR_MAP_UPDATE",
		},
		{
			Name = "CommentatorPlayerNameOverrideUpdate",
			Type = "Event",
			LiteralName = "COMMENTATOR_PLAYER_NAME_OVERRIDE_UPDATE",
			Payload =
			{
				{ Name = "nameToOverride", Type = "string", Nilable = false },
				{ Name = "overrideName", Type = "string", Nilable = true },
			},
		},
		{
			Name = "CommentatorPlayerUpdate",
			Type = "Event",
			LiteralName = "COMMENTATOR_PLAYER_UPDATE",
		},
		{
			Name = "CommentatorResetSettings",
			Type = "Event",
			LiteralName = "COMMENTATOR_RESET_SETTINGS",
		},
		{
			Name = "CommentatorTeamNameUpdate",
			Type = "Event",
			LiteralName = "COMMENTATOR_TEAM_NAME_UPDATE",
			Payload =
			{
				{ Name = "teamName", Type = "string", Nilable = false },
			},
		},
		{
			Name = "CommentatorTeamsSwapped",
			Type = "Event",
			LiteralName = "COMMENTATOR_TEAMS_SWAPPED",
			Payload =
			{
				{ Name = "swapped", Type = "bool", Nilable = false },
			},
		},
	},

	Tables =
	{
		{
			Name = "TrackedSpellCategory",
			Type = "Enumeration",
			NumValues = 4,
			MinValue = 0,
			MaxValue = 3,
			Fields =
			{
				{ Name = "Offensive", Type = "TrackedSpellCategory", EnumValue = 0 },
				{ Name = "Defensive", Type = "TrackedSpellCategory", EnumValue = 1 },
				{ Name = "Debuff", Type = "TrackedSpellCategory", EnumValue = 2 },
				{ Name = "Count", Type = "TrackedSpellCategory", EnumValue = 3 },
			},
		},
		{
			Name = "CommentatorHistory",
			Type = "Structure",
			Fields =
			{
				{ Name = "series", Type = "table", InnerType = "CommentatorSeries", Nilable = false },
				{ Name = "teamDirectory", Type = "table", InnerType = "CommentatorTeamDirectoryEntry", Nilable = false },
				{ Name = "overrideNameDirectory", Type = "table", InnerType = "CommentatorOverrideNameEntry", Nilable = false },
			},
		},
		{
			Name = "CommentatorOverrideNameEntry",
			Type = "Structure",
			Fields =
			{
				{ Name = "originalName", Type = "string", Nilable = false },
				{ Name = "newName", Type = "string", Nilable = false },
			},
		},
		{
			Name = "CommentatorPlayerData",
			Type = "Structure",
			Fields =
			{
				{ Name = "unitToken", Type = "string", Nilable = false },
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "faction", Type = "number", Nilable = false },
				{ Name = "specialization", Type = "number", Nilable = false },
				{ Name = "damageDone", Type = "number", Nilable = false },
				{ Name = "damageTaken", Type = "number", Nilable = false },
				{ Name = "healingDone", Type = "number", Nilable = false },
				{ Name = "healingTaken", Type = "number", Nilable = false },
				{ Name = "kills", Type = "number", Nilable = false },
				{ Name = "deaths", Type = "number", Nilable = false },
			},
		},
		{
			Name = "CommentatorSeries",
			Type = "Structure",
			Fields =
			{
				{ Name = "teams", Type = "table", InnerType = "CommentatorSeriesTeam", Nilable = false },
			},
		},
		{
			Name = "CommentatorSeriesTeam",
			Type = "Structure",
			Fields =
			{
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "score", Type = "number", Nilable = false },
			},
		},
		{
			Name = "CommentatorTeamDirectoryEntry",
			Type = "Structure",
			Fields =
			{
				{ Name = "playerName", Type = "string", Nilable = false },
				{ Name = "teamName", Type = "string", Nilable = false },
			},
		},
		{
			Name = "CommentatorUnitData",
			Type = "Structure",
			Fields =
			{
				{ Name = "healthMax", Type = "number", Nilable = false },
				{ Name = "health", Type = "number", Nilable = false },
				{ Name = "absorbTotal", Type = "number", Nilable = false },
				{ Name = "isDeadOrGhost", Type = "bool", Nilable = false },
				{ Name = "isFeignDeath", Type = "bool", Nilable = false },
				{ Name = "powerTypeToken", Type = "string", Nilable = false },
				{ Name = "power", Type = "number", Nilable = false },
				{ Name = "powerMax", Type = "number", Nilable = false },
			},
		},
		{
			Name = "NameOverrideEntry",
			Type = "Structure",
			Fields =
			{
				{ Name = "originalName", Type = "string", Nilable = false },
				{ Name = "overrideName", Type = "string", Nilable = false },
			},
		},
	},
};

APIDocumentation:AddDocumentationTable(CommentatorFrame);local CompactUnitFrames =
{
	Name = "CompactUnitFrames",
	Type = "System",
	Namespace = "C_CompactUnitFrames",

	Functions =
	{
	},

	Events =
	{
		{
			Name = "CompactUnitFrameProfilesLoaded",
			Type = "Event",
			LiteralName = "COMPACT_UNIT_FRAME_PROFILES_LOADED",
		},
	},

	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(CompactUnitFrames);local ConfigurationWarnings =
{
	Name = "ConfigurationWarnings",
	Type = "System",
	Namespace = "C_ConfigurationWarnings",

	Functions =
	{
		{
			Name = "GetConfigurationWarningSeen",
			Type = "Function",

			Arguments =
			{
				{ Name = "configurationWarning", Type = "ConfigurationWarning", Nilable = false },
			},

			Returns =
			{
				{ Name = "hasSeenConfigurationWarning", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "GetConfigurationWarningString",
			Type = "Function",

			Arguments =
			{
				{ Name = "configurationWarning", Type = "ConfigurationWarning", Nilable = false },
			},

			Returns =
			{
				{ Name = "configurationWarningString", Type = "string", Nilable = false },
			},
		},
		{
			Name = "GetConfigurationWarnings",
			Type = "Function",

			Arguments =
			{
				{ Name = "includeSeenWarnings", Type = "bool", Nilable = false, Default = false },
			},

			Returns =
			{
				{ Name = "configurationWarnings", Type = "table", InnerType = "ConfigurationWarning", Nilable = false },
			},
		},
		{
			Name = "SetConfigurationWarningSeen",
			Type = "Function",

			Arguments =
			{
				{ Name = "configurationWarning", Type = "ConfigurationWarning", Nilable = false },
			},
		},
	},

	Events =
	{
	},

	Tables =
	{
		{
			Name = "ConfigurationWarning",
			Type = "Enumeration",
			NumValues = 8,
			MinValue = 0,
			MaxValue = 7,
			Fields =
			{
				{ Name = "ShaderModelWillBeOutdated", Type = "ConfigurationWarning", EnumValue = 0 },
				{ Name = "ShaderModelIsOutdated", Type = "ConfigurationWarning", EnumValue = 1 },
				{ Name = "ConsoleDeviceSseOutdated", Type = "ConfigurationWarning", EnumValue = 2 },
				{ Name = "DriverBlacklisted", Type = "ConfigurationWarning", EnumValue = 3 },
				{ Name = "DriverOutOfDate", Type = "ConfigurationWarning", EnumValue = 4 },
				{ Name = "DeviceBlacklisted", Type = "ConfigurationWarning", EnumValue = 5 },
				{ Name = "GraphicsApiWillBeOutdated", Type = "ConfigurationWarning", EnumValue = 6 },
				{ Name = "OsBitsWillBeOutdated", Type = "ConfigurationWarning", EnumValue = 7 },
			},
		},
	},
};

APIDocumentation:AddDocumentationTable(ConfigurationWarnings);local Console =
{
	Name = "Console",
	Type = "System",
	Namespace = "C_Console",

	Functions =
	{
		{
			Name = "GetAllCommands",
			Type = "Function",

			Returns =
			{
				{ Name = "commands", Type = "table", InnerType = "ConsoleCommandInfo", Nilable = false },
			},
		},
		{
			Name = "GetColorFromType",
			Type = "Function",

			Arguments =
			{
				{ Name = "colorType", Type = "ConsoleColorType", Nilable = false },
			},

			Returns =
			{
				{ Name = "color", Type = "table", Mixin = "ColorMixin", Nilable = false },
			},
		},
		{
			Name = "GetFontHeight",
			Type = "Function",

			Returns =
			{
				{ Name = "fontHeightInPixels", Type = "number", Nilable = false },
			},
		},
		{
			Name = "PrintAllMatchingCommands",
			Type = "Function",

			Arguments =
			{
				{ Name = "partialCommandText", Type = "string", Nilable = false },
			},
		},
		{
			Name = "SetFontHeight",
			Type = "Function",

			Arguments =
			{
				{ Name = "fontHeightInPixels", Type = "number", Nilable = false },
			},
		},
	},

	Events =
	{
		{
			Name = "ConsoleClear",
			Type = "Event",
			LiteralName = "CONSOLE_CLEAR",
		},
		{
			Name = "ConsoleColorsChanged",
			Type = "Event",
			LiteralName = "CONSOLE_COLORS_CHANGED",
		},
		{
			Name = "ConsoleFontSizeChanged",
			Type = "Event",
			LiteralName = "CONSOLE_FONT_SIZE_CHANGED",
		},
		{
			Name = "ConsoleLog",
			Type = "Event",
			LiteralName = "CONSOLE_LOG",
			Payload =
			{
				{ Name = "message", Type = "string", Nilable = false },
			},
		},
		{
			Name = "ConsoleMessage",
			Type = "Event",
			LiteralName = "CONSOLE_MESSAGE",
			Payload =
			{
				{ Name = "message", Type = "string", Nilable = false },
				{ Name = "colorType", Type = "number", Nilable = false },
			},
		},
		{
			Name = "CvarUpdate",
			Type = "Event",
			LiteralName = "CVAR_UPDATE",
			Payload =
			{
				{ Name = "eventName", Type = "string", Nilable = false },
				{ Name = "value", Type = "string", Nilable = false },
			},
		},
		{
			Name = "GlueConsoleLog",
			Type = "Event",
			LiteralName = "GLUE_CONSOLE_LOG",
			Payload =
			{
				{ Name = "message", Type = "string", Nilable = false },
			},
		},
		{
			Name = "ToggleConsole",
			Type = "Event",
			LiteralName = "TOGGLE_CONSOLE",
			Payload =
			{
				{ Name = "showConsole", Type = "bool", Nilable = true },
			},
		},
	},

	Tables =
	{
		{
			Name = "ConsoleCategory",
			Type = "Enumeration",
			NumValues = 11,
			MinValue = 0,
			MaxValue = 10,
			Fields =
			{
				{ Name = "Debug", Type = "ConsoleCategory", EnumValue = 0 },
				{ Name = "Graphics", Type = "ConsoleCategory", EnumValue = 1 },
				{ Name = "Console", Type = "ConsoleCategory", EnumValue = 2 },
				{ Name = "Combat", Type = "ConsoleCategory", EnumValue = 3 },
				{ Name = "Game", Type = "ConsoleCategory", EnumValue = 4 },
				{ Name = "Default", Type = "ConsoleCategory", EnumValue = 5 },
				{ Name = "Net", Type = "ConsoleCategory", EnumValue = 6 },
				{ Name = "Sound", Type = "ConsoleCategory", EnumValue = 7 },
				{ Name = "Gm", Type = "ConsoleCategory", EnumValue = 8 },
				{ Name = "Reveal", Type = "ConsoleCategory", EnumValue = 9 },
				{ Name = "None", Type = "ConsoleCategory", EnumValue = 10 },
			},
		},
		{
			Name = "ConsoleColorType",
			Type = "Enumeration",
			NumValues = 12,
			MinValue = 0,
			MaxValue = 11,
			Fields =
			{
				{ Name = "DefaultColor", Type = "ConsoleColorType", EnumValue = 0 },
				{ Name = "InputColor", Type = "ConsoleColorType", EnumValue = 1 },
				{ Name = "EchoColor", Type = "ConsoleColorType", EnumValue = 2 },
				{ Name = "ErrorColor", Type = "ConsoleColorType", EnumValue = 3 },
				{ Name = "WarningColor", Type = "ConsoleColorType", EnumValue = 4 },
				{ Name = "GlobalColor", Type = "ConsoleColorType", EnumValue = 5 },
				{ Name = "AdminColor", Type = "ConsoleColorType", EnumValue = 6 },
				{ Name = "HighlightColor", Type = "ConsoleColorType", EnumValue = 7 },
				{ Name = "BackgroundColor", Type = "ConsoleColorType", EnumValue = 8 },
				{ Name = "ClickbufferColor", Type = "ConsoleColorType", EnumValue = 9 },
				{ Name = "PrivateColor", Type = "ConsoleColorType", EnumValue = 10 },
				{ Name = "DefaultGreen", Type = "ConsoleColorType", EnumValue = 11 },
			},
		},
		{
			Name = "ConsoleCommandType",
			Type = "Enumeration",
			NumValues = 3,
			MinValue = 0,
			MaxValue = 2,
			Fields =
			{
				{ Name = "Cvar", Type = "ConsoleCommandType", EnumValue = 0 },
				{ Name = "Command", Type = "ConsoleCommandType", EnumValue = 1 },
				{ Name = "Script", Type = "ConsoleCommandType", EnumValue = 2 },
			},
		},
		{
			Name = "ConsoleCommandInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "command", Type = "string", Nilable = false },
				{ Name = "help", Type = "string", Nilable = false },
				{ Name = "category", Type = "ConsoleCategory", Nilable = false },
				{ Name = "commandType", Type = "ConsoleCommandType", Nilable = false },
				{ Name = "scriptContents", Type = "string", Nilable = false },
			},
		},
	},
};

APIDocumentation:AddDocumentationTable(Console);local Container =
{
	Name = "Container",
	Type = "System",
	Namespace = "C_Container",

	Functions =
	{
	},

	Events =
	{
		{
			Name = "BagClosed",
			Type = "Event",
			LiteralName = "BAG_CLOSED",
			Payload =
			{
				{ Name = "bagID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "BagNewItemsUpdated",
			Type = "Event",
			LiteralName = "BAG_NEW_ITEMS_UPDATED",
		},
		{
			Name = "BagOpen",
			Type = "Event",
			LiteralName = "BAG_OPEN",
			Payload =
			{
				{ Name = "bagID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "BagOverflowWithFullInventory",
			Type = "Event",
			LiteralName = "BAG_OVERFLOW_WITH_FULL_INVENTORY",
		},
		{
			Name = "BagSlotFlagsUpdated",
			Type = "Event",
			LiteralName = "BAG_SLOT_FLAGS_UPDATED",
			Payload =
			{
				{ Name = "slot", Type = "number", Nilable = false },
			},
		},
		{
			Name = "BagUpdate",
			Type = "Event",
			LiteralName = "BAG_UPDATE",
			Payload =
			{
				{ Name = "bagID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "BagUpdateCooldown",
			Type = "Event",
			LiteralName = "BAG_UPDATE_COOLDOWN",
		},
		{
			Name = "BagUpdateDelayed",
			Type = "Event",
			LiteralName = "BAG_UPDATE_DELAYED",
		},
		{
			Name = "EquipBindRefundableConfirm",
			Type = "Event",
			LiteralName = "EQUIP_BIND_REFUNDABLE_CONFIRM",
			Payload =
			{
				{ Name = "slot", Type = "number", Nilable = false },
			},
		},
		{
			Name = "EquipBindTradeableConfirm",
			Type = "Event",
			LiteralName = "EQUIP_BIND_TRADEABLE_CONFIRM",
			Payload =
			{
				{ Name = "slot", Type = "number", Nilable = false },
			},
		},
		{
			Name = "InventorySearchUpdate",
			Type = "Event",
			LiteralName = "INVENTORY_SEARCH_UPDATE",
		},
		{
			Name = "ItemLockChanged",
			Type = "Event",
			LiteralName = "ITEM_LOCK_CHANGED",
			Payload =
			{
				{ Name = "bagOrSlotIndex", Type = "number", Nilable = false },
				{ Name = "slotIndex", Type = "number", Nilable = true },
			},
		},
		{
			Name = "ItemLocked",
			Type = "Event",
			LiteralName = "ITEM_LOCKED",
			Payload =
			{
				{ Name = "bagOrSlotIndex", Type = "number", Nilable = false },
				{ Name = "slotIndex", Type = "number", Nilable = true },
			},
		},
		{
			Name = "ItemUnlocked",
			Type = "Event",
			LiteralName = "ITEM_UNLOCKED",
			Payload =
			{
				{ Name = "bagOrSlotIndex", Type = "number", Nilable = false },
				{ Name = "slotIndex", Type = "number", Nilable = true },
			},
		},
	},

	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(Container);local ContributionCollector =
{
	Name = "ContributionCollector",
	Type = "System",
	Namespace = "C_ContributionCollector",

	Functions =
	{
		{
			Name = "Close",
			Type = "Function",
		},
		{
			Name = "Contribute",
			Type = "Function",

			Arguments =
			{
				{ Name = "contributionID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetActive",
			Type = "Function",

			Returns =
			{
				{ Name = "contributionID", Type = "number", Nilable = false, StrideIndex = 1 },
			},
		},
		{
			Name = "GetAtlases",
			Type = "Function",

			Arguments =
			{
				{ Name = "contributionID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "atlasName", Type = "table", InnerType = "string", Nilable = false },
			},
		},
		{
			Name = "GetBuffs",
			Type = "Function",

			Arguments =
			{
				{ Name = "contributionID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "spellID", Type = "number", Nilable = false, StrideIndex = 1 },
			},
		},
		{
			Name = "GetContributionAppearance",
			Type = "Function",

			Arguments =
			{
				{ Name = "contributionID", Type = "number", Nilable = false },
				{ Name = "contributionState", Type = "ContributionState", Nilable = false },
			},

			Returns =
			{
				{ Name = "appearance", Type = "ContributionAppearance", Nilable = true },
			},
		},
		{
			Name = "GetContributionCollectorsForMap",
			Type = "Function",

			Arguments =
			{
				{ Name = "uiMapID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "contributionCollectors", Type = "table", InnerType = "ContributionMapInfo", Nilable = false },
			},
		},
		{
			Name = "GetContributionResult",
			Type = "Function",

			Arguments =
			{
				{ Name = "contributionID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "result", Type = "ContributionResult", Nilable = false },
			},
		},
		{
			Name = "GetDescription",
			Type = "Function",

			Arguments =
			{
				{ Name = "contributionID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "description", Type = "string", Nilable = false, Default = "" },
			},
		},
		{
			Name = "GetManagedContributionsForCreatureID",
			Type = "Function",

			Arguments =
			{
				{ Name = "creatureID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "contributionID", Type = "number", Nilable = false, StrideIndex = 1 },
			},
		},
		{
			Name = "GetName",
			Type = "Function",

			Arguments =
			{
				{ Name = "contributionID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "name", Type = "string", Nilable = false, Default = "" },
			},
		},
		{
			Name = "GetOrderIndex",
			Type = "Function",

			Arguments =
			{
				{ Name = "contributionID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "orderIndex", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetRequiredContributionCurrency",
			Type = "Function",

			Arguments =
			{
				{ Name = "contributionID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "currencyID", Type = "number", Nilable = false, Default = 0 },
				{ Name = "currencyAmount", Type = "number", Nilable = false, Default = 0 },
			},
		},
		{
			Name = "GetRequiredContributionItem",
			Type = "Function",

			Arguments =
			{
				{ Name = "contributionID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "itemID", Type = "number", Nilable = false, Default = 0 },
				{ Name = "itemCount", Type = "number", Nilable = false, Default = 0 },
			},
		},
		{
			Name = "GetRewardQuestID",
			Type = "Function",

			Arguments =
			{
				{ Name = "contributionID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "questID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetState",
			Type = "Function",

			Arguments =
			{
				{ Name = "contributionID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "contributionState", Type = "ContributionState", Nilable = false, Default = "None" },
				{ Name = "contributionPercentageComplete", Type = "number", Nilable = false },
				{ Name = "timeOfNextStateChange", Type = "number", Nilable = true },
				{ Name = "startTime", Type = "number", Nilable = false },
			},
		},
		{
			Name = "HasPendingContribution",
			Type = "Function",

			Arguments =
			{
				{ Name = "contributionID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "hasPending", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsAwaitingRewardQuestData",
			Type = "Function",

			Arguments =
			{
				{ Name = "contributionID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "awaitingData", Type = "bool", Nilable = false },
			},
		},
	},

	Events =
	{
		{
			Name = "ContributionChanged",
			Type = "Event",
			LiteralName = "CONTRIBUTION_CHANGED",
			Payload =
			{
				{ Name = "state", Type = "ContributionState", Nilable = false },
				{ Name = "result", Type = "ContributionResult", Nilable = false },
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "contributionID", Type = "number", Nilable = false, StrideIndex = 1 },
			},
		},
		{
			Name = "ContributionCollectorClose",
			Type = "Event",
			LiteralName = "CONTRIBUTION_COLLECTOR_CLOSE",
		},
		{
			Name = "ContributionCollectorOpen",
			Type = "Event",
			LiteralName = "CONTRIBUTION_COLLECTOR_OPEN",
		},
		{
			Name = "ContributionCollectorPending",
			Type = "Event",
			LiteralName = "CONTRIBUTION_COLLECTOR_PENDING",
			Payload =
			{
				{ Name = "contributionID", Type = "number", Nilable = false },
				{ Name = "isPending", Type = "bool", Nilable = false },
				{ Name = "result", Type = "number", Nilable = false },
			},
		},
		{
			Name = "ContributionCollectorUpdate",
			Type = "Event",
			LiteralName = "CONTRIBUTION_COLLECTOR_UPDATE",
		},
		{
			Name = "ContributionCollectorUpdateSingle",
			Type = "Event",
			LiteralName = "CONTRIBUTION_COLLECTOR_UPDATE_SINGLE",
			Payload =
			{
				{ Name = "contributionID", Type = "number", Nilable = false },
			},
		},
	},

	Tables =
	{
		{
			Name = "ContributionAppearanceFlags",
			Type = "Enumeration",
			NumValues = 1,
			MinValue = 0,
			MaxValue = 0,
			Fields =
			{
				{ Name = "TooltipUseTimeRemaining", Type = "ContributionAppearanceFlags", EnumValue = 0 },
			},
		},
		{
			Name = "ContributionResult",
			Type = "Enumeration",
			NumValues = 8,
			MinValue = 0,
			MaxValue = 7,
			Fields =
			{
				{ Name = "Success", Type = "ContributionResult", EnumValue = 0 },
				{ Name = "MustBeNearNpc", Type = "ContributionResult", EnumValue = 1 },
				{ Name = "IncorrectState", Type = "ContributionResult", EnumValue = 2 },
				{ Name = "InvalidID", Type = "ContributionResult", EnumValue = 3 },
				{ Name = "QuestDataMissing", Type = "ContributionResult", EnumValue = 4 },
				{ Name = "FailedConditionCheck", Type = "ContributionResult", EnumValue = 5 },
				{ Name = "UnableToCompleteTurnIn", Type = "ContributionResult", EnumValue = 6 },
				{ Name = "InternalError", Type = "ContributionResult", EnumValue = 7 },
			},
		},
		{
			Name = "ContributionState",
			Type = "Enumeration",
			NumValues = 5,
			MinValue = 0,
			MaxValue = 4,
			Fields =
			{
				{ Name = "None", Type = "ContributionState", EnumValue = 0 },
				{ Name = "Building", Type = "ContributionState", EnumValue = 1 },
				{ Name = "Active", Type = "ContributionState", EnumValue = 2 },
				{ Name = "UnderAttack", Type = "ContributionState", EnumValue = 3 },
				{ Name = "Destroyed", Type = "ContributionState", EnumValue = 4 },
			},
		},
		{
			Name = "ContributionAppearance",
			Type = "Structure",
			Fields =
			{
				{ Name = "stateName", Type = "string", Nilable = false },
				{ Name = "stateColor", Type = "table", Mixin = "ColorMixin", Nilable = false },
				{ Name = "tooltipLine", Type = "string", Nilable = false },
				{ Name = "tooltipUseTimeRemaining", Type = "bool", Nilable = false },
				{ Name = "statusBarAtlas", Type = "string", Nilable = false },
				{ Name = "borderAtlas", Type = "string", Nilable = false },
				{ Name = "bannerAtlas", Type = "string", Nilable = false },
			},
		},
		{
			Name = "ContributionMapInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "areaPoiID", Type = "number", Nilable = false },
				{ Name = "position", Type = "table", Mixin = "Vector2DMixin", Nilable = false },
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "atlasName", Type = "string", Nilable = false },
				{ Name = "collectorCreatureID", Type = "number", Nilable = false },
			},
		},
	},
};

APIDocumentation:AddDocumentationTable(ContributionCollector);local CovenantCallings =
{
	Name = "CovenantCallings",
	Type = "System",
	Namespace = "C_CovenantCallings",

	Functions =
	{
		{
			Name = "AreCallingsUnlocked",
			Type = "Function",

			Returns =
			{
				{ Name = "unlocked", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "RequestCallings",
			Type = "Function",
		},
	},

	Events =
	{
		{
			Name = "CovenantCallingsUpdated",
			Type = "Event",
			LiteralName = "COVENANT_CALLINGS_UPDATED",
			Payload =
			{
				{ Name = "callings", Type = "table", InnerType = "BountyInfo", Nilable = false },
			},
		},
	},

	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(CovenantCallings);local CovenantPreview =
{
	Name = "CovenantPreview",
	Type = "System",
	Namespace = "C_CovenantPreview",

	Functions =
	{
		{
			Name = "CloseFromUI",
			Type = "Function",
		},
		{
			Name = "GetCovenantInfoForPlayerChoiceResponseID",
			Type = "Function",

			Arguments =
			{
				{ Name = "playerChoiceResponseID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "previewInfo", Type = "CovenantPreviewInfo", Nilable = false },
			},
		},
	},

	Events =
	{
		{
			Name = "CovenantPreviewClose",
			Type = "Event",
			LiteralName = "COVENANT_PREVIEW_CLOSE",
		},
		{
			Name = "CovenantPreviewOpen",
			Type = "Event",
			LiteralName = "COVENANT_PREVIEW_OPEN",
			Payload =
			{
				{ Name = "previewInfo", Type = "CovenantPreviewInfo", Nilable = false },
			},
		},
	},

	Tables =
	{
		{
			Name = "CovenantAbilityType",
			Type = "Enumeration",
			NumValues = 2,
			MinValue = 0,
			MaxValue = 1,
			Fields =
			{
				{ Name = "Class", Type = "CovenantAbilityType", EnumValue = 0 },
				{ Name = "Signature", Type = "CovenantAbilityType", EnumValue = 1 },
			},
		},
		{
			Name = "CovenantAbilityInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "spellID", Type = "number", Nilable = false },
				{ Name = "type", Type = "CovenantAbilityType", Nilable = false },
			},
		},
		{
			Name = "CovenantPreviewInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "textureKit", Type = "string", Nilable = false },
				{ Name = "transmogSetID", Type = "number", Nilable = false },
				{ Name = "mountID", Type = "number", Nilable = false },
				{ Name = "covenantName", Type = "string", Nilable = false },
				{ Name = "covenantZone", Type = "string", Nilable = false },
				{ Name = "description", Type = "string", Nilable = false },
				{ Name = "covenantCrest", Type = "string", Nilable = false },
				{ Name = "covenantAbilities", Type = "table", InnerType = "CovenantAbilityInfo", Nilable = false },
				{ Name = "fromPlayerChoice", Type = "bool", Nilable = false },
			},
		},
	},
};

APIDocumentation:AddDocumentationTable(CovenantPreview);local CovenantSanctum =
{
	Name = "CovenantSanctumUI",
	Type = "System",
	Namespace = "C_CovenantSanctumUI",

	Functions =
	{
		{
			Name = "DepositAnima",
			Type = "Function",
		},
		{
			Name = "EndInteraction",
			Type = "Function",
		},
		{
			Name = "GetAnimaInfo",
			Type = "Function",

			Returns =
			{
				{ Name = "currencyID", Type = "number", Nilable = false },
				{ Name = "maxDisplayableValue", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetFeatures",
			Type = "Function",

			Returns =
			{
				{ Name = "features", Type = "table", InnerType = "CovenantSanctumFeatureInfo", Nilable = false },
			},
		},
		{
			Name = "GetRenownLevel",
			Type = "Function",

			Returns =
			{
				{ Name = "level", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetRenownMilestones",
			Type = "Function",

			Returns =
			{
				{ Name = "milestones", Type = "table", InnerType = "CovenantSanctumRenownMilestoneInfo", Nilable = false },
			},
		},
		{
			Name = "GetRenownRewardsForLevel",
			Type = "Function",

			Arguments =
			{
				{ Name = "level", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "rewards", Type = "table", InnerType = "CovenantSanctumRenownRewardInfo", Nilable = false },
			},
		},
		{
			Name = "GetSanctumType",
			Type = "Function",

			Returns =
			{
				{ Name = "sanctumType", Type = "GarrTalentFeatureSubtype", Nilable = true },
			},
		},
		{
			Name = "GetSoulCurrencies",
			Type = "Function",

			Returns =
			{
				{ Name = "currencyIDs", Type = "table", InnerType = "number", Nilable = false },
			},
		},
	},

	Events =
	{
		{
			Name = "CovenantSanctumInteractionEnded",
			Type = "Event",
			LiteralName = "COVENANT_SANCTUM_INTERACTION_ENDED",
		},
		{
			Name = "CovenantSanctumInteractionStarted",
			Type = "Event",
			LiteralName = "COVENANT_SANCTUM_INTERACTION_STARTED",
		},
	},

	Tables =
	{
		{
			Name = "CovenantSanctumFeatureInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "garrTalentTreeID", Type = "number", Nilable = false },
				{ Name = "featureType", Type = "number", Nilable = false },
				{ Name = "uiOrder", Type = "number", Nilable = false },
			},
		},
		{
			Name = "CovenantSanctumRenownMilestoneInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "level", Type = "number", Nilable = false },
				{ Name = "locked", Type = "bool", Nilable = false },
				{ Name = "isCapstone", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "CovenantSanctumRenownRewardInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "uiOrder", Type = "number", Nilable = false },
				{ Name = "itemID", Type = "number", Nilable = true },
				{ Name = "spellID", Type = "number", Nilable = true },
				{ Name = "mountID", Type = "number", Nilable = true },
				{ Name = "transmogID", Type = "number", Nilable = true },
				{ Name = "transmogSetID", Type = "number", Nilable = true },
				{ Name = "titleID", Type = "number", Nilable = true },
				{ Name = "garrFollowerID", Type = "number", Nilable = true },
				{ Name = "transmogIllusionSourceID", Type = "number", Nilable = true },
				{ Name = "icon", Type = "number", Nilable = true },
				{ Name = "name", Type = "string", Nilable = true },
				{ Name = "description", Type = "string", Nilable = true },
			},
		},
	},
};

APIDocumentation:AddDocumentationTable(CovenantSanctum);local Covenants =
{
	Name = "Covenant",
	Type = "System",
	Namespace = "C_Covenants",

	Functions =
	{
		{
			Name = "GetActiveCovenantID",
			Type = "Function",

			Returns =
			{
				{ Name = "covenantID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetCovenantData",
			Type = "Function",

			Arguments =
			{
				{ Name = "covenantID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "data", Type = "CovenantData", Nilable = true },
			},
		},
		{
			Name = "GetCovenantIDs",
			Type = "Function",

			Returns =
			{
				{ Name = "covenantID", Type = "table", InnerType = "number", Nilable = false },
			},
		},
	},

	Events =
	{
		{
			Name = "CovenantChosen",
			Type = "Event",
			LiteralName = "COVENANT_CHOSEN",
			Payload =
			{
				{ Name = "covenantID", Type = "number", Nilable = false },
			},
		},
	},

	Tables =
	{
		{
			Name = "CovenantData",
			Type = "Structure",
			Fields =
			{
				{ Name = "ID", Type = "number", Nilable = false },
				{ Name = "textureKit", Type = "string", Nilable = false },
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "soulbindIDs", Type = "table", InnerType = "number", Nilable = false },
			},
		},
	},
};

APIDocumentation:AddDocumentationTable(Covenants);local CreatureInfo =
{
	Name = "CreatureInfo",
	Type = "System",
	Namespace = "C_CreatureInfo",

	Functions =
	{
		{
			Name = "GetClassInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "classID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "classInfo", Type = "ClassInfo", Nilable = true },
			},
		},
		{
			Name = "GetFactionInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "raceID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "factionInfo", Type = "FactionInfo", Nilable = true },
			},
		},
		{
			Name = "GetRaceInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "raceID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "raceInfo", Type = "RaceInfo", Nilable = true },
			},
		},
	},

	Events =
	{
	},

	Tables =
	{
		{
			Name = "ClassInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "className", Type = "string", Nilable = false },
				{ Name = "classFile", Type = "string", Nilable = false },
				{ Name = "classID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "FactionInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "groupTag", Type = "string", Nilable = false },
			},
		},
		{
			Name = "RaceInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "raceName", Type = "string", Nilable = false },
				{ Name = "clientFileString", Type = "string", Nilable = false },
				{ Name = "raceID", Type = "number", Nilable = false },
			},
		},
	},
};

APIDocumentation:AddDocumentationTable(CreatureInfo);local CurrencyInfo =
{
	Name = "CurrencySystem",
	Type = "System",
	Namespace = "C_CurrencyInfo",

	Functions =
	{
		{
			Name = "DoesWarModeBonusApply",
			Type = "Function",

			Arguments =
			{
				{ Name = "currencyID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "warModeApplies", Type = "bool", Nilable = true },
				{ Name = "limitOncePerTooltip", Type = "bool", Nilable = true },
			},
		},
		{
			Name = "ExpandCurrencyList",
			Type = "Function",

			Arguments =
			{
				{ Name = "index", Type = "number", Nilable = false },
				{ Name = "expand", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "GetAzeriteCurrencyID",
			Type = "Function",

			Returns =
			{
				{ Name = "azeriteCurrencyID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetBackpackCurrencyInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "index", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "info", Type = "BackpackCurrencyInfo", Nilable = false },
			},
		},
		{
			Name = "GetBasicCurrencyInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "currencyType", Type = "number", Nilable = false },
				{ Name = "quantity", Type = "number", Nilable = true },
			},

			Returns =
			{
				{ Name = "info", Type = "CurrencyDisplayInfo", Nilable = false },
			},
		},
		{
			Name = "GetCurrencyContainerInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "currencyType", Type = "number", Nilable = false },
				{ Name = "quantity", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "info", Type = "CurrencyDisplayInfo", Nilable = false },
			},
		},
		{
			Name = "GetCurrencyIDFromLink",
			Type = "Function",

			Arguments =
			{
				{ Name = "currencyLink", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "currencyID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetCurrencyInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "type", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "info", Type = "CurrencyInfo", Nilable = false },
			},
		},
		{
			Name = "GetCurrencyInfoFromLink",
			Type = "Function",

			Arguments =
			{
				{ Name = "link", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "info", Type = "CurrencyInfo", Nilable = false },
			},
		},
		{
			Name = "GetCurrencyLink",
			Type = "Function",

			Arguments =
			{
				{ Name = "type", Type = "number", Nilable = false },
				{ Name = "amount", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "link", Type = "string", Nilable = false },
			},
		},
		{
			Name = "GetCurrencyListInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "index", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "info", Type = "CurrencyInfo", Nilable = false },
			},
		},
		{
			Name = "GetCurrencyListLink",
			Type = "Function",

			Arguments =
			{
				{ Name = "index", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "link", Type = "string", Nilable = false },
			},
		},
		{
			Name = "GetCurrencyListSize",
			Type = "Function",

			Returns =
			{
				{ Name = "currencyListSize", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetFactionGrantedByCurrency",
			Type = "Function",
			Documentation = { "Gets the faction ID for currency that is immediately converted into reputation with that faction instead." },

			Arguments =
			{
				{ Name = "currencyID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "factionID", Type = "number", Nilable = true },
			},
		},
		{
			Name = "GetWarResourcesCurrencyID",
			Type = "Function",

			Returns =
			{
				{ Name = "warResourceCurrencyID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "IsCurrencyContainer",
			Type = "Function",

			Arguments =
			{
				{ Name = "currencyID", Type = "number", Nilable = false },
				{ Name = "quantity", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "isCurrencyContainer", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "PickupCurrency",
			Type = "Function",

			Arguments =
			{
				{ Name = "type", Type = "number", Nilable = false },
			},
		},
		{
			Name = "SetCurrencyBackpack",
			Type = "Function",

			Arguments =
			{
				{ Name = "index", Type = "number", Nilable = false },
				{ Name = "backpack", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "SetCurrencyUnused",
			Type = "Function",

			Arguments =
			{
				{ Name = "index", Type = "number", Nilable = false },
				{ Name = "unused", Type = "bool", Nilable = false },
			},
		},
	},

	Events =
	{
		{
			Name = "CurrencyDisplayUpdate",
			Type = "Event",
			LiteralName = "CURRENCY_DISPLAY_UPDATE",
			Payload =
			{
				{ Name = "currencyType", Type = "number", Nilable = true },
				{ Name = "quantity", Type = "number", Nilable = true },
				{ Name = "quantityChange", Type = "number", Nilable = true },
				{ Name = "quantityGainSource", Type = "number", Nilable = true },
				{ Name = "quantityLostSource", Type = "number", Nilable = true },
			},
		},
		{
			Name = "PlayerMoney",
			Type = "Event",
			LiteralName = "PLAYER_MONEY",
		},
	},

	Tables =
	{
		{
			Name = "BackpackCurrencyInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "quantity", Type = "number", Nilable = false },
				{ Name = "iconFileID", Type = "number", Nilable = false },
				{ Name = "currencyTypesID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "CurrencyDisplayInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "description", Type = "string", Nilable = false },
				{ Name = "icon", Type = "number", Nilable = false },
				{ Name = "quality", Type = "number", Nilable = false },
				{ Name = "displayAmount", Type = "number", Nilable = false },
				{ Name = "actualAmount", Type = "number", Nilable = false },
			},
		},
		{
			Name = "CurrencyInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "isHeader", Type = "bool", Nilable = false },
				{ Name = "isHeaderExpanded", Type = "bool", Nilable = false },
				{ Name = "isTypeUnused", Type = "bool", Nilable = false },
				{ Name = "isShowInBackpack", Type = "bool", Nilable = false },
				{ Name = "quantity", Type = "number", Nilable = false },
				{ Name = "iconFileID", Type = "number", Nilable = false },
				{ Name = "maxQuantity", Type = "number", Nilable = false },
				{ Name = "canEarnPerWeek", Type = "bool", Nilable = false },
				{ Name = "quantityEarnedThisWeek", Type = "number", Nilable = false },
				{ Name = "isTradeable", Type = "bool", Nilable = false },
				{ Name = "quality", Type = "ItemQuality", Nilable = false },
				{ Name = "maxWeeklyQuantity", Type = "number", Nilable = false },
				{ Name = "discovered", Type = "bool", Nilable = false },
			},
		},
	},
};

APIDocumentation:AddDocumentationTable(CurrencyInfo);local Cursor =
{
	Name = "Cursor",
	Type = "System",
	Namespace = "C_Cursor",

	Functions =
	{
		{
			Name = "DropCursorCommunitiesStream",
			Type = "Function",
		},
		{
			Name = "GetCursorCommunitiesStream",
			Type = "Function",

			Returns =
			{
				{ Name = "clubId", Type = "string", Nilable = false },
				{ Name = "streamId", Type = "string", Nilable = false },
			},
		},
		{
			Name = "GetCursorItem",
			Type = "Function",

			Returns =
			{
				{ Name = "item", Type = "table", Mixin = "ItemLocationMixin", Nilable = false },
			},
		},
		{
			Name = "SetCursorCommunitiesStream",
			Type = "Function",

			Arguments =
			{
				{ Name = "clubId", Type = "string", Nilable = false },
				{ Name = "streamId", Type = "string", Nilable = false },
			},
		},
	},

	Events =
	{
		{
			Name = "BattlePetCursorClear",
			Type = "Event",
			LiteralName = "BATTLE_PET_CURSOR_CLEAR",
		},
		{
			Name = "CommunitiesStreamCursorClear",
			Type = "Event",
			LiteralName = "COMMUNITIES_STREAM_CURSOR_CLEAR",
		},
		{
			Name = "CursorChanged",
			Type = "Event",
			LiteralName = "CURSOR_CHANGED",
			Payload =
			{
				{ Name = "isDefault", Type = "bool", Nilable = false },
				{ Name = "newCursorType", Type = "UICursorType", Nilable = false },
				{ Name = "oldCursorType", Type = "UICursorType", Nilable = false },
			},
		},
		{
			Name = "CursorUpdate",
			Type = "Event",
			LiteralName = "CURSOR_UPDATE",
		},
		{
			Name = "MountCursorClear",
			Type = "Event",
			LiteralName = "MOUNT_CURSOR_CLEAR",
		},
	},

	Tables =
	{
		{
			Name = "UICursorType",
			Type = "Enumeration",
			NumValues = 21,
			MinValue = 0,
			MaxValue = 20,
			Fields =
			{
				{ Name = "Default", Type = "UICursorType", EnumValue = 0 },
				{ Name = "Item", Type = "UICursorType", EnumValue = 1 },
				{ Name = "Money", Type = "UICursorType", EnumValue = 2 },
				{ Name = "Spell", Type = "UICursorType", EnumValue = 3 },
				{ Name = "PetAction", Type = "UICursorType", EnumValue = 4 },
				{ Name = "Merchant", Type = "UICursorType", EnumValue = 5 },
				{ Name = "ActionBar", Type = "UICursorType", EnumValue = 6 },
				{ Name = "Macro", Type = "UICursorType", EnumValue = 7 },
				{ Name = "AmmoObsolete", Type = "UICursorType", EnumValue = 8 },
				{ Name = "Pet", Type = "UICursorType", EnumValue = 9 },
				{ Name = "GuildBank", Type = "UICursorType", EnumValue = 10 },
				{ Name = "GuildBankMoney", Type = "UICursorType", EnumValue = 11 },
				{ Name = "EquipmentSet", Type = "UICursorType", EnumValue = 12 },
				{ Name = "Currency", Type = "UICursorType", EnumValue = 13 },
				{ Name = "Flyout", Type = "UICursorType", EnumValue = 14 },
				{ Name = "VoidItem", Type = "UICursorType", EnumValue = 15 },
				{ Name = "BattlePet", Type = "UICursorType", EnumValue = 16 },
				{ Name = "Mount", Type = "UICursorType", EnumValue = 17 },
				{ Name = "Toy", Type = "UICursorType", EnumValue = 18 },
				{ Name = "CommunitiesStream", Type = "UICursorType", EnumValue = 19 },
				{ Name = "ConduitCollectionItem", Type = "UICursorType", EnumValue = 20 },
			},
		},
	},
};

APIDocumentation:AddDocumentationTable(Cursor);local DateAndTime =
{
	Name = "DateAndTime",
	Type = "System",
	Namespace = "C_DateAndTime",

	Functions =
	{
		{
			Name = "AdjustTimeByDays",
			Type = "Function",

			Arguments =
			{
				{ Name = "date", Type = "CalendarTime", Nilable = false },
				{ Name = "days", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "newDate", Type = "CalendarTime", Nilable = false },
			},
		},
		{
			Name = "AdjustTimeByMinutes",
			Type = "Function",

			Arguments =
			{
				{ Name = "date", Type = "CalendarTime", Nilable = false },
				{ Name = "minutes", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "newDate", Type = "CalendarTime", Nilable = false },
			},
		},
		{
			Name = "CompareCalendarTime",
			Type = "Function",

			Arguments =
			{
				{ Name = "lhsCalendarTime", Type = "CalendarTime", Nilable = false },
				{ Name = "rhsCalendarTime", Type = "CalendarTime", Nilable = false },
			},

			Returns =
			{
				{ Name = "comparison", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetCalendarTimeFromEpoch",
			Type = "Function",

			Arguments =
			{
				{ Name = "epoch", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "date", Type = "CalendarTime", Nilable = false },
			},
		},
		{
			Name = "GetCurrentCalendarTime",
			Type = "Function",

			Returns =
			{
				{ Name = "date", Type = "CalendarTime", Nilable = false },
			},
		},
		{
			Name = "GetSecondsUntilWeeklyReset",
			Type = "Function",

			Returns =
			{
				{ Name = "seconds", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetServerTimeLocal",
			Type = "Function",

			Returns =
			{
				{ Name = "serverTimeLocal", Type = "number", Nilable = false },
			},
		},
	},

	Events =
	{
	},

	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(DateAndTime);local DeathInfo =
{
	Name = "DeathInfo",
	Type = "System",
	Namespace = "C_DeathInfo",

	Functions =
	{
		{
			Name = "GetCorpseMapPosition",
			Type = "Function",

			Arguments =
			{
				{ Name = "uiMapID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "position", Type = "table", Mixin = "Vector2DMixin", Nilable = true },
			},
		},
		{
			Name = "GetDeathReleasePosition",
			Type = "Function",

			Arguments =
			{
				{ Name = "uiMapID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "position", Type = "table", Mixin = "Vector2DMixin", Nilable = true },
			},
		},
		{
			Name = "GetGraveyardsForMap",
			Type = "Function",

			Arguments =
			{
				{ Name = "uiMapID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "graveyards", Type = "table", InnerType = "GraveyardMapInfo", Nilable = false },
			},
		},
		{
			Name = "GetSelfResurrectOptions",
			Type = "Function",

			Returns =
			{
				{ Name = "options", Type = "table", InnerType = "SelfResurrectOption", Nilable = false },
			},
		},
		{
			Name = "UseSelfResurrectOption",
			Type = "Function",

			Arguments =
			{
				{ Name = "optionType", Type = "SelfResurrectOptionType", Nilable = false },
				{ Name = "id", Type = "number", Nilable = false },
			},
		},
	},

	Events =
	{
		{
			Name = "AreaSpiritHealerInRange",
			Type = "Event",
			LiteralName = "AREA_SPIRIT_HEALER_IN_RANGE",
		},
		{
			Name = "AreaSpiritHealerOutOfRange",
			Type = "Event",
			LiteralName = "AREA_SPIRIT_HEALER_OUT_OF_RANGE",
		},
		{
			Name = "CemeteryPreferenceUpdated",
			Type = "Event",
			LiteralName = "CEMETERY_PREFERENCE_UPDATED",
		},
		{
			Name = "ConfirmXpLoss",
			Type = "Event",
			LiteralName = "CONFIRM_XP_LOSS",
		},
		{
			Name = "CorpseInInstance",
			Type = "Event",
			LiteralName = "CORPSE_IN_INSTANCE",
		},
		{
			Name = "CorpseInRange",
			Type = "Event",
			LiteralName = "CORPSE_IN_RANGE",
		},
		{
			Name = "CorpseOutOfRange",
			Type = "Event",
			LiteralName = "CORPSE_OUT_OF_RANGE",
		},
		{
			Name = "PlayerAlive",
			Type = "Event",
			LiteralName = "PLAYER_ALIVE",
		},
		{
			Name = "PlayerDead",
			Type = "Event",
			LiteralName = "PLAYER_DEAD",
		},
		{
			Name = "PlayerSkinned",
			Type = "Event",
			LiteralName = "PLAYER_SKINNED",
			Payload =
			{
				{ Name = "hasFreeRepop", Type = "number", Nilable = false },
			},
		},
		{
			Name = "PlayerUnghost",
			Type = "Event",
			LiteralName = "PLAYER_UNGHOST",
		},
		{
			Name = "RequestCemeteryListResponse",
			Type = "Event",
			LiteralName = "REQUEST_CEMETERY_LIST_RESPONSE",
			Payload =
			{
				{ Name = "isGossipTriggered", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ResurrectRequest",
			Type = "Event",
			LiteralName = "RESURRECT_REQUEST",
			Payload =
			{
				{ Name = "inviter", Type = "string", Nilable = false },
			},
		},
		{
			Name = "SelfResSpellChanged",
			Type = "Event",
			LiteralName = "SELF_RES_SPELL_CHANGED",
		},
	},

	Tables =
	{
		{
			Name = "SelfResurrectOptionType",
			Type = "Enumeration",
			NumValues = 2,
			MinValue = 0,
			MaxValue = 1,
			Fields =
			{
				{ Name = "Spell", Type = "SelfResurrectOptionType", EnumValue = 0 },
				{ Name = "Item", Type = "SelfResurrectOptionType", EnumValue = 1 },
			},
		},
		{
			Name = "GraveyardMapInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "areaPoiID", Type = "number", Nilable = false },
				{ Name = "position", Type = "table", Mixin = "Vector2DMixin", Nilable = false },
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "textureIndex", Type = "number", Nilable = false },
				{ Name = "graveyardID", Type = "number", Nilable = false },
				{ Name = "isGraveyardSelectable", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "SelfResurrectOption",
			Type = "Structure",
			Fields =
			{
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "optionType", Type = "SelfResurrectOptionType", Nilable = false },
				{ Name = "id", Type = "number", Nilable = false },
				{ Name = "canUse", Type = "bool", Nilable = false },
				{ Name = "isLimited", Type = "bool", Nilable = false },
				{ Name = "priority", Type = "number", Nilable = false },
			},
		},
	},
};

APIDocumentation:AddDocumentationTable(DeathInfo);local DuelInfo =
{
	Name = "DuelInfo",
	Type = "System",
	Namespace = "C_DuelInfo",

	Functions =
	{
	},

	Events =
	{
		{
			Name = "DuelFinished",
			Type = "Event",
			LiteralName = "DUEL_FINISHED",
		},
		{
			Name = "DuelInbounds",
			Type = "Event",
			LiteralName = "DUEL_INBOUNDS",
		},
		{
			Name = "DuelOutofbounds",
			Type = "Event",
			LiteralName = "DUEL_OUTOFBOUNDS",
		},
		{
			Name = "DuelRequested",
			Type = "Event",
			LiteralName = "DUEL_REQUESTED",
			Payload =
			{
				{ Name = "playerName", Type = "string", Nilable = false },
			},
		},
	},

	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(DuelInfo);local EncounterInfo =
{
	Name = "EncounterInfo",
	Type = "System",
	Namespace = "C_EncounterInfo",

	Functions =
	{
	},

	Events =
	{
		{
			Name = "BossKill",
			Type = "Event",
			LiteralName = "BOSS_KILL",
			Payload =
			{
				{ Name = "encounterID", Type = "number", Nilable = false },
				{ Name = "encounterName", Type = "string", Nilable = false },
			},
		},
		{
			Name = "DisableLowLevelRaid",
			Type = "Event",
			LiteralName = "DISABLE_LOW_LEVEL_RAID",
		},
		{
			Name = "EnableLowLevelRaid",
			Type = "Event",
			LiteralName = "ENABLE_LOW_LEVEL_RAID",
		},
		{
			Name = "EncounterEnd",
			Type = "Event",
			LiteralName = "ENCOUNTER_END",
			Payload =
			{
				{ Name = "encounterID", Type = "number", Nilable = false },
				{ Name = "encounterName", Type = "string", Nilable = false },
				{ Name = "difficultyID", Type = "number", Nilable = false },
				{ Name = "groupSize", Type = "number", Nilable = false },
				{ Name = "success", Type = "number", Nilable = false },
			},
		},
		{
			Name = "EncounterStart",
			Type = "Event",
			LiteralName = "ENCOUNTER_START",
			Payload =
			{
				{ Name = "encounterID", Type = "number", Nilable = false },
				{ Name = "encounterName", Type = "string", Nilable = false },
				{ Name = "difficultyID", Type = "number", Nilable = false },
				{ Name = "groupSize", Type = "number", Nilable = false },
			},
		},
		{
			Name = "InstanceLockStart",
			Type = "Event",
			LiteralName = "INSTANCE_LOCK_START",
		},
		{
			Name = "InstanceLockStop",
			Type = "Event",
			LiteralName = "INSTANCE_LOCK_STOP",
		},
		{
			Name = "InstanceLockWarning",
			Type = "Event",
			LiteralName = "INSTANCE_LOCK_WARNING",
		},
		{
			Name = "RaidTargetUpdate",
			Type = "Event",
			LiteralName = "RAID_TARGET_UPDATE",
		},
		{
			Name = "UpdateInstanceInfo",
			Type = "Event",
			LiteralName = "UPDATE_INSTANCE_INFO",
		},
	},

	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(EncounterInfo);local EncounterJournal =
{
	Name = "EncounterJournal",
	Type = "System",
	Namespace = "C_EncounterJournal",

	Functions =
	{
		{
			Name = "GetDungeonEntrancesForMap",
			Type = "Function",

			Arguments =
			{
				{ Name = "uiMapID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "dungeonEntrances", Type = "table", InnerType = "DungeonEntranceMapInfo", Nilable = false },
			},
		},
		{
			Name = "GetEncountersOnMap",
			Type = "Function",

			Arguments =
			{
				{ Name = "uiMapID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "encounters", Type = "table", InnerType = "EncounterJournalMapEncounterInfo", Nilable = false },
			},
		},
		{
			Name = "GetLootInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "id", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "itemInfo", Type = "EncounterJournalItemInfo", Nilable = false },
			},
		},
		{
			Name = "GetLootInfoByIndex",
			Type = "Function",

			Arguments =
			{
				{ Name = "index", Type = "number", Nilable = false },
				{ Name = "encounterIndex", Type = "number", Nilable = true },
			},

			Returns =
			{
				{ Name = "itemInfo", Type = "EncounterJournalItemInfo", Nilable = false },
			},
		},
		{
			Name = "GetSectionIconFlags",
			Type = "Function",
			Documentation = { "Represents the icon indices for this EJ section.  An icon index can be used to arrive at texture coordinates for specific encounter types, e.g.: EncounterJournal_SetFlagIcon" },

			Arguments =
			{
				{ Name = "sectionID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "iconFlags", Type = "table", InnerType = "number", Nilable = true },
			},
		},
		{
			Name = "GetSectionInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "sectionID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "info", Type = "EncounterJournalSectionInfo", Nilable = false },
			},
		},
		{
			Name = "GetSlotFilter",
			Type = "Function",

			Returns =
			{
				{ Name = "filter", Type = "ItemSlotFilterType", Nilable = false },
			},
		},
		{
			Name = "InstanceHasLoot",
			Type = "Function",

			Arguments =
			{
				{ Name = "instanceID", Type = "number", Nilable = true },
			},

			Returns =
			{
				{ Name = "hasLoot", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsEncounterComplete",
			Type = "Function",

			Arguments =
			{
				{ Name = "journalEncounterID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "isEncounterComplete", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ResetSlotFilter",
			Type = "Function",
		},
		{
			Name = "SetPreviewMythicPlusLevel",
			Type = "Function",

			Arguments =
			{
				{ Name = "level", Type = "number", Nilable = false },
			},
		},
		{
			Name = "SetPreviewPvpTier",
			Type = "Function",

			Arguments =
			{
				{ Name = "tier", Type = "number", Nilable = false },
			},
		},
		{
			Name = "SetSlotFilter",
			Type = "Function",

			Arguments =
			{
				{ Name = "filterSlot", Type = "ItemSlotFilterType", Nilable = false },
			},
		},
	},

	Events =
	{
		{
			Name = "EjDifficultyUpdate",
			Type = "Event",
			LiteralName = "EJ_DIFFICULTY_UPDATE",
			Payload =
			{
				{ Name = "difficultyID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "EjLootDataRecieved",
			Type = "Event",
			LiteralName = "EJ_LOOT_DATA_RECIEVED",
			Payload =
			{
				{ Name = "itemID", Type = "number", Nilable = true },
			},
		},
	},

	Tables =
	{
		{
			Name = "ItemSlotFilterType",
			Type = "Enumeration",
			NumValues = 16,
			MinValue = 0,
			MaxValue = 15,
			Fields =
			{
				{ Name = "Head", Type = "ItemSlotFilterType", EnumValue = 0 },
				{ Name = "Neck", Type = "ItemSlotFilterType", EnumValue = 1 },
				{ Name = "Shoulder", Type = "ItemSlotFilterType", EnumValue = 2 },
				{ Name = "Cloak", Type = "ItemSlotFilterType", EnumValue = 3 },
				{ Name = "Chest", Type = "ItemSlotFilterType", EnumValue = 4 },
				{ Name = "Wrist", Type = "ItemSlotFilterType", EnumValue = 5 },
				{ Name = "Hand", Type = "ItemSlotFilterType", EnumValue = 6 },
				{ Name = "Waist", Type = "ItemSlotFilterType", EnumValue = 7 },
				{ Name = "Legs", Type = "ItemSlotFilterType", EnumValue = 8 },
				{ Name = "Feet", Type = "ItemSlotFilterType", EnumValue = 9 },
				{ Name = "MainHand", Type = "ItemSlotFilterType", EnumValue = 10 },
				{ Name = "OffHand", Type = "ItemSlotFilterType", EnumValue = 11 },
				{ Name = "Finger", Type = "ItemSlotFilterType", EnumValue = 12 },
				{ Name = "Trinket", Type = "ItemSlotFilterType", EnumValue = 13 },
				{ Name = "Other", Type = "ItemSlotFilterType", EnumValue = 14 },
				{ Name = "NoFilter", Type = "ItemSlotFilterType", EnumValue = 15 },
			},
		},
		{
			Name = "DungeonEntranceMapInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "areaPoiID", Type = "number", Nilable = false },
				{ Name = "position", Type = "table", Mixin = "Vector2DMixin", Nilable = false },
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "description", Type = "string", Nilable = false },
				{ Name = "atlasName", Type = "string", Nilable = false },
				{ Name = "journalInstanceID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "EncounterJournalItemInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "itemID", Type = "number", Nilable = false },
				{ Name = "encounterID", Type = "number", Nilable = true },
				{ Name = "name", Type = "string", Nilable = true },
				{ Name = "itemQuality", Type = "string", Nilable = true },
				{ Name = "filterType", Type = "ItemSlotFilterType", Nilable = true },
				{ Name = "icon", Type = "number", Nilable = true },
				{ Name = "slot", Type = "string", Nilable = true },
				{ Name = "armorType", Type = "string", Nilable = true },
				{ Name = "link", Type = "string", Nilable = true },
				{ Name = "handError", Type = "bool", Nilable = true },
				{ Name = "weaponTypeError", Type = "bool", Nilable = true },
			},
		},
		{
			Name = "EncounterJournalMapEncounterInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "encounterID", Type = "number", Nilable = false },
				{ Name = "mapX", Type = "number", Nilable = false },
				{ Name = "mapY", Type = "number", Nilable = false },
			},
		},
		{
			Name = "EncounterJournalSectionInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "spellID", Type = "number", Nilable = false },
				{ Name = "title", Type = "string", Nilable = false },
				{ Name = "description", Type = "string", Nilable = true },
				{ Name = "headerType", Type = "number", Nilable = false },
				{ Name = "abilityIcon", Type = "number", Nilable = false },
				{ Name = "creatureDisplayID", Type = "number", Nilable = false },
				{ Name = "uiModelSceneID", Type = "number", Nilable = false },
				{ Name = "siblingSectionID", Type = "number", Nilable = true },
				{ Name = "firstChildSectionID", Type = "number", Nilable = true },
				{ Name = "filteredByDifficulty", Type = "bool", Nilable = false },
				{ Name = "link", Type = "string", Nilable = false },
				{ Name = "startsOpen", Type = "bool", Nilable = false },
			},
		},
	},
};

APIDocumentation:AddDocumentationTable(EncounterJournal);local EquipmentManager =
{
	Name = "EquipmentSet",
	Type = "System",
	Namespace = "C_EquipmentSet",

	Functions =
	{
		{
			Name = "AssignSpecToEquipmentSet",
			Type = "Function",

			Arguments =
			{
				{ Name = "equipmentSetID", Type = "number", Nilable = false },
				{ Name = "specIndex", Type = "number", Nilable = false },
			},
		},
		{
			Name = "CanUseEquipmentSets",
			Type = "Function",

			Returns =
			{
				{ Name = "canUseEquipmentSets", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ClearIgnoredSlotsForSave",
			Type = "Function",
		},
		{
			Name = "CreateEquipmentSet",
			Type = "Function",

			Arguments =
			{
				{ Name = "equipmentSetName", Type = "string", Nilable = false },
				{ Name = "icon", Type = "string", Nilable = true },
			},
		},
		{
			Name = "DeleteEquipmentSet",
			Type = "Function",

			Arguments =
			{
				{ Name = "equipmentSetID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "EquipmentSetContainsLockedItems",
			Type = "Function",

			Arguments =
			{
				{ Name = "equipmentSetID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "hasLockedItems", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "GetEquipmentSetAssignedSpec",
			Type = "Function",

			Arguments =
			{
				{ Name = "equipmentSetID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "specIndex", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetEquipmentSetForSpec",
			Type = "Function",

			Arguments =
			{
				{ Name = "specIndex", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "equipmentSetID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetEquipmentSetID",
			Type = "Function",

			Arguments =
			{
				{ Name = "equipmentSetName", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "equipmentSetID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetEquipmentSetIDs",
			Type = "Function",

			Returns =
			{
				{ Name = "equipmentSetIDs", Type = "table", InnerType = "number", Nilable = false },
			},
		},
		{
			Name = "GetEquipmentSetInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "equipmentSetID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "iconFileID", Type = "number", Nilable = false },
				{ Name = "setID", Type = "number", Nilable = false },
				{ Name = "isEquipped", Type = "bool", Nilable = false },
				{ Name = "numItems", Type = "number", Nilable = false },
				{ Name = "numEquipped", Type = "number", Nilable = false },
				{ Name = "numInInventory", Type = "number", Nilable = false },
				{ Name = "numLost", Type = "number", Nilable = false },
				{ Name = "numIgnored", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetIgnoredSlots",
			Type = "Function",

			Arguments =
			{
				{ Name = "equipmentSetID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "slotIgnored", Type = "table", InnerType = "bool", Nilable = false },
			},
		},
		{
			Name = "GetItemIDs",
			Type = "Function",

			Arguments =
			{
				{ Name = "equipmentSetID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "itemIDs", Type = "table", InnerType = "number", Nilable = false },
			},
		},
		{
			Name = "GetItemLocations",
			Type = "Function",

			Arguments =
			{
				{ Name = "equipmentSetID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "locations", Type = "table", InnerType = "number", Nilable = false },
			},
		},
		{
			Name = "GetNumEquipmentSets",
			Type = "Function",

			Returns =
			{
				{ Name = "numEquipmentSets", Type = "number", Nilable = false },
			},
		},
		{
			Name = "IgnoreSlotForSave",
			Type = "Function",

			Arguments =
			{
				{ Name = "slot", Type = "number", Nilable = false },
			},
		},
		{
			Name = "IsSlotIgnoredForSave",
			Type = "Function",

			Arguments =
			{
				{ Name = "slot", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "isSlotIgnored", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ModifyEquipmentSet",
			Type = "Function",

			Arguments =
			{
				{ Name = "equipmentSetID", Type = "number", Nilable = false },
				{ Name = "newName", Type = "string", Nilable = false },
				{ Name = "newIcon", Type = "string", Nilable = true },
			},
		},
		{
			Name = "PickupEquipmentSet",
			Type = "Function",

			Arguments =
			{
				{ Name = "equipmentSetID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "SaveEquipmentSet",
			Type = "Function",

			Arguments =
			{
				{ Name = "equipmentSetID", Type = "number", Nilable = false },
				{ Name = "icon", Type = "string", Nilable = true },
			},
		},
		{
			Name = "UnassignEquipmentSetSpec",
			Type = "Function",

			Arguments =
			{
				{ Name = "equipmentSetID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "UnignoreSlotForSave",
			Type = "Function",

			Arguments =
			{
				{ Name = "slot", Type = "number", Nilable = false },
			},
		},
		{
			Name = "UseEquipmentSet",
			Type = "Function",

			Arguments =
			{
				{ Name = "equipmentSetID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "setWasEquipped", Type = "bool", Nilable = false },
			},
		},
	},

	Events =
	{
		{
			Name = "EquipmentSetsChanged",
			Type = "Event",
			LiteralName = "EQUIPMENT_SETS_CHANGED",
		},
		{
			Name = "EquipmentSwapFinished",
			Type = "Event",
			LiteralName = "EQUIPMENT_SWAP_FINISHED",
			Payload =
			{
				{ Name = "result", Type = "bool", Nilable = false },
				{ Name = "setID", Type = "number", Nilable = true },
			},
		},
		{
			Name = "EquipmentSwapPending",
			Type = "Event",
			LiteralName = "EQUIPMENT_SWAP_PENDING",
		},
		{
			Name = "TransmogOutfitsChanged",
			Type = "Event",
			LiteralName = "TRANSMOG_OUTFITS_CHANGED",
		},
		{
			Name = "WearEquipmentSet",
			Type = "Event",
			LiteralName = "WEAR_EQUIPMENT_SET",
			Payload =
			{
				{ Name = "setID", Type = "number", Nilable = false },
			},
		},
	},

	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(EquipmentManager);local Expansion =
{
	Name = "Expansion",
	Type = "System",

	Functions =
	{
		{
			Name = "CanUpgradeExpansion",
			Type = "Function",

			Returns =
			{
				{ Name = "canUpgradeExpansion", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "DoesCurrentLocaleSellExpansionLevels",
			Type = "Function",

			Returns =
			{
				{ Name = "regionSellsExpansions", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "GetAccountExpansionLevel",
			Type = "Function",

			Returns =
			{
				{ Name = "expansionLevel", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetClientDisplayExpansionLevel",
			Type = "Function",

			Returns =
			{
				{ Name = "expansionLevel", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetExpansionDisplayInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "expansionLevel", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "info", Type = "ExpansionDisplayInfo", Nilable = true },
			},
		},
		{
			Name = "GetExpansionForLevel",
			Type = "Function",

			Arguments =
			{
				{ Name = "playerLevel", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "expansionLevel", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetExpansionLevel",
			Type = "Function",

			Returns =
			{
				{ Name = "expansionLevel", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetExpansionTrialInfo",
			Type = "Function",

			Returns =
			{
				{ Name = "isExpansionTrialAccount", Type = "bool", Nilable = false },
				{ Name = "expansionTrialRemainingSeconds", Type = "number", Nilable = true },
			},
		},
		{
			Name = "GetMaxLevelForExpansionLevel",
			Type = "Function",
			Documentation = { "Maps an expansion level to a maximum character level for that expansion." },

			Arguments =
			{
				{ Name = "expansionLevel", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "maxLevel", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetMaxLevelForLatestExpansion",
			Type = "Function",

			Returns =
			{
				{ Name = "maxLevel", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetMaxLevelForPlayerExpansion",
			Type = "Function",

			Returns =
			{
				{ Name = "maxLevel", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetMaximumExpansionLevel",
			Type = "Function",

			Returns =
			{
				{ Name = "expansionLevel", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetMinimumExpansionLevel",
			Type = "Function",

			Returns =
			{
				{ Name = "expansionLevel", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetNumExpansions",
			Type = "Function",

			Returns =
			{
				{ Name = "numExpansions", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetServerExpansionLevel",
			Type = "Function",

			Returns =
			{
				{ Name = "serverExpansionLevel", Type = "number", Nilable = false },
			},
		},
		{
			Name = "IsExpansionTrial",
			Type = "Function",

			Returns =
			{
				{ Name = "isExpansionTrialAccount", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsTrialAccount",
			Type = "Function",

			Returns =
			{
				{ Name = "isTrialAccount", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsVeteranTrialAccount",
			Type = "Function",

			Returns =
			{
				{ Name = "isVeteranTrialAccount", Type = "bool", Nilable = false },
			},
		},
	},

	Events =
	{
		{
			Name = "MaxExpansionLevelUpdated",
			Type = "Event",
			LiteralName = "MAX_EXPANSION_LEVEL_UPDATED",
		},
		{
			Name = "MinExpansionLevelUpdated",
			Type = "Event",
			LiteralName = "MIN_EXPANSION_LEVEL_UPDATED",
		},
		{
			Name = "ShowSubscriptionInterstitial",
			Type = "Event",
			LiteralName = "SHOW_SUBSCRIPTION_INTERSTITIAL",
			Payload =
			{
				{ Name = "type", Type = "SubscriptionInterstitialType", Nilable = false },
			},
		},
	},

	Tables =
	{
		{
			Name = "SubscriptionInterstitialType",
			Type = "Enumeration",
			NumValues = 3,
			MinValue = 0,
			MaxValue = 2,
			Fields =
			{
				{ Name = "Standard", Type = "SubscriptionInterstitialType", EnumValue = 0 },
				{ Name = "LeftNpeArea", Type = "SubscriptionInterstitialType", EnumValue = 1 },
				{ Name = "MaxLevel", Type = "SubscriptionInterstitialType", EnumValue = 2 },
			},
		},
		{
			Name = "ExpansionDisplayInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "logo", Type = "number", Nilable = false },
				{ Name = "banner", Type = "string", Nilable = false },
				{ Name = "features", Type = "table", InnerType = "ExpansionDisplayInfoFeature", Nilable = false },
			},
		},
		{
			Name = "ExpansionDisplayInfoFeature",
			Type = "Structure",
			Fields =
			{
				{ Name = "icon", Type = "number", Nilable = false },
				{ Name = "text", Type = "string", Nilable = false },
			},
		},
	},
};

APIDocumentation:AddDocumentationTable(Expansion);local FogOfWar =
{
	Name = "FogOfWar",
	Type = "System",
	Namespace = "C_FogOfWar",

	Functions =
	{
		{
			Name = "GetFogOfWarForMap",
			Type = "Function",

			Arguments =
			{
				{ Name = "uiMapID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "fogOfWarID", Type = "number", Nilable = true },
			},
		},
		{
			Name = "GetFogOfWarInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "fogOfWarID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "fogOfWarInfo", Type = "FogOfWarInfo", Nilable = true },
			},
		},
	},

	Events =
	{
		{
			Name = "FogOfWarUpdated",
			Type = "Event",
			LiteralName = "FOG_OF_WAR_UPDATED",
		},
	},

	Tables =
	{
		{
			Name = "FogOfWarInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "fogOfWarID", Type = "number", Nilable = false },
				{ Name = "backgroundAtlas", Type = "string", Nilable = false },
				{ Name = "maskAtlas", Type = "string", Nilable = false },
				{ Name = "maskScalar", Type = "number", Nilable = false },
			},
		},
	},
};

APIDocumentation:AddDocumentationTable(FogOfWar);local FriendList =
{
	Name = "FriendList",
	Type = "System",
	Namespace = "C_FriendList",

	Functions =
	{
		{
			Name = "AddFriend",
			Type = "Function",

			Arguments =
			{
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "notes", Type = "string", Nilable = true },
			},
		},
		{
			Name = "AddIgnore",
			Type = "Function",

			Arguments =
			{
				{ Name = "name", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "added", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "AddOrDelIgnore",
			Type = "Function",

			Arguments =
			{
				{ Name = "name", Type = "string", Nilable = false },
			},
		},
		{
			Name = "AddOrRemoveFriend",
			Type = "Function",

			Arguments =
			{
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "notes", Type = "string", Nilable = false },
			},
		},
		{
			Name = "DelIgnore",
			Type = "Function",

			Arguments =
			{
				{ Name = "name", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "removed", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "DelIgnoreByIndex",
			Type = "Function",

			Arguments =
			{
				{ Name = "index", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetFriendInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "name", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "info", Type = "FriendInfo", Nilable = false },
			},
		},
		{
			Name = "GetFriendInfoByIndex",
			Type = "Function",

			Arguments =
			{
				{ Name = "index", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "info", Type = "FriendInfo", Nilable = false },
			},
		},
		{
			Name = "GetIgnoreName",
			Type = "Function",

			Arguments =
			{
				{ Name = "index", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "name", Type = "string", Nilable = true },
			},
		},
		{
			Name = "GetNumFriends",
			Type = "Function",

			Returns =
			{
				{ Name = "numFriends", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetNumIgnores",
			Type = "Function",

			Returns =
			{
				{ Name = "numIgnores", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetNumOnlineFriends",
			Type = "Function",

			Returns =
			{
				{ Name = "numOnline", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetNumWhoResults",
			Type = "Function",

			Returns =
			{
				{ Name = "numWhos", Type = "number", Nilable = false },
				{ Name = "totalNumWhos", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetSelectedFriend",
			Type = "Function",

			Returns =
			{
				{ Name = "index", Type = "number", Nilable = true },
			},
		},
		{
			Name = "GetSelectedIgnore",
			Type = "Function",

			Returns =
			{
				{ Name = "index", Type = "number", Nilable = true },
			},
		},
		{
			Name = "GetWhoInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "index", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "info", Type = "WhoInfo", Nilable = false },
			},
		},
		{
			Name = "IsFriend",
			Type = "Function",

			Arguments =
			{
				{ Name = "guid", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "isFriend", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsIgnored",
			Type = "Function",

			Arguments =
			{
				{ Name = "token", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "isIgnored", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsIgnoredByGuid",
			Type = "Function",

			Arguments =
			{
				{ Name = "guid", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "isIgnored", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "RemoveFriend",
			Type = "Function",

			Arguments =
			{
				{ Name = "name", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "removed", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "RemoveFriendByIndex",
			Type = "Function",

			Arguments =
			{
				{ Name = "index", Type = "number", Nilable = false },
			},
		},
		{
			Name = "SendWho",
			Type = "Function",

			Arguments =
			{
				{ Name = "filter", Type = "string", Nilable = false },
			},
		},
		{
			Name = "SetFriendNotes",
			Type = "Function",

			Arguments =
			{
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "notes", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "found", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "SetFriendNotesByIndex",
			Type = "Function",

			Arguments =
			{
				{ Name = "index", Type = "number", Nilable = false },
				{ Name = "notes", Type = "string", Nilable = false },
			},
		},
		{
			Name = "SetSelectedFriend",
			Type = "Function",

			Arguments =
			{
				{ Name = "index", Type = "number", Nilable = false },
			},
		},
		{
			Name = "SetSelectedIgnore",
			Type = "Function",

			Arguments =
			{
				{ Name = "index", Type = "number", Nilable = false },
			},
		},
		{
			Name = "SetWhoToUi",
			Type = "Function",

			Arguments =
			{
				{ Name = "whoToUi", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ShowFriends",
			Type = "Function",
		},
		{
			Name = "SortWho",
			Type = "Function",

			Arguments =
			{
				{ Name = "sorting", Type = "string", Nilable = false },
			},
		},
	},

	Events =
	{
		{
			Name = "BattletagInviteShow",
			Type = "Event",
			LiteralName = "BATTLETAG_INVITE_SHOW",
			Payload =
			{
				{ Name = "name", Type = "string", Nilable = false },
			},
		},
		{
			Name = "BnBlockFailedTooMany",
			Type = "Event",
			LiteralName = "BN_BLOCK_FAILED_TOO_MANY",
			Payload =
			{
				{ Name = "blockType", Type = "string", Nilable = false },
			},
		},
		{
			Name = "BnBlockListUpdated",
			Type = "Event",
			LiteralName = "BN_BLOCK_LIST_UPDATED",
		},
		{
			Name = "BnChatWhisperUndeliverable",
			Type = "Event",
			LiteralName = "BN_CHAT_WHISPER_UNDELIVERABLE",
			Payload =
			{
				{ Name = "senderID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "BnConnected",
			Type = "Event",
			LiteralName = "BN_CONNECTED",
			Payload =
			{
				{ Name = "suppressNotification", Type = "bool", Nilable = false, Default = false },
			},
		},
		{
			Name = "BnCustomMessageChanged",
			Type = "Event",
			LiteralName = "BN_CUSTOM_MESSAGE_CHANGED",
			Payload =
			{
				{ Name = "id", Type = "number", Nilable = true },
			},
		},
		{
			Name = "BnCustomMessageLoaded",
			Type = "Event",
			LiteralName = "BN_CUSTOM_MESSAGE_LOADED",
		},
		{
			Name = "BnDisconnected",
			Type = "Event",
			LiteralName = "BN_DISCONNECTED",
			Payload =
			{
				{ Name = "result", Type = "bool", Nilable = false },
				{ Name = "suppressNotification", Type = "bool", Nilable = false, Default = false },
			},
		},
		{
			Name = "BnFriendAccountOffline",
			Type = "Event",
			LiteralName = "BN_FRIEND_ACCOUNT_OFFLINE",
			Payload =
			{
				{ Name = "friendId", Type = "number", Nilable = false },
				{ Name = "isCompanionApp", Type = "bool", Nilable = false, Default = false },
			},
		},
		{
			Name = "BnFriendAccountOnline",
			Type = "Event",
			LiteralName = "BN_FRIEND_ACCOUNT_ONLINE",
			Payload =
			{
				{ Name = "friendId", Type = "number", Nilable = false },
				{ Name = "isCompanionApp", Type = "bool", Nilable = false, Default = false },
			},
		},
		{
			Name = "BnFriendInfoChanged",
			Type = "Event",
			LiteralName = "BN_FRIEND_INFO_CHANGED",
			Payload =
			{
				{ Name = "friendIndex", Type = "number", Nilable = true },
			},
		},
		{
			Name = "BnFriendInviteAdded",
			Type = "Event",
			LiteralName = "BN_FRIEND_INVITE_ADDED",
			Payload =
			{
				{ Name = "accountID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "BnFriendInviteListInitialized",
			Type = "Event",
			LiteralName = "BN_FRIEND_INVITE_LIST_INITIALIZED",
			Payload =
			{
				{ Name = "listSize", Type = "number", Nilable = false },
			},
		},
		{
			Name = "BnFriendInviteRemoved",
			Type = "Event",
			LiteralName = "BN_FRIEND_INVITE_REMOVED",
		},
		{
			Name = "BnFriendListSizeChanged",
			Type = "Event",
			LiteralName = "BN_FRIEND_LIST_SIZE_CHANGED",
			Payload =
			{
				{ Name = "accountID", Type = "number", Nilable = true },
			},
		},
		{
			Name = "BnInfoChanged",
			Type = "Event",
			LiteralName = "BN_INFO_CHANGED",
		},
		{
			Name = "BnRequestFofSucceeded",
			Type = "Event",
			LiteralName = "BN_REQUEST_FOF_SUCCEEDED",
		},
		{
			Name = "FriendlistUpdate",
			Type = "Event",
			LiteralName = "FRIENDLIST_UPDATE",
		},
		{
			Name = "IgnorelistUpdate",
			Type = "Event",
			LiteralName = "IGNORELIST_UPDATE",
		},
		{
			Name = "MutelistUpdate",
			Type = "Event",
			LiteralName = "MUTELIST_UPDATE",
		},
		{
			Name = "WhoListUpdate",
			Type = "Event",
			LiteralName = "WHO_LIST_UPDATE",
		},
	},

	Tables =
	{
		{
			Name = "FriendInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "connected", Type = "bool", Nilable = false },
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "className", Type = "string", Nilable = true },
				{ Name = "area", Type = "string", Nilable = true },
				{ Name = "notes", Type = "string", Nilable = true },
				{ Name = "guid", Type = "string", Nilable = false },
				{ Name = "level", Type = "number", Nilable = false },
				{ Name = "dnd", Type = "bool", Nilable = false },
				{ Name = "afk", Type = "bool", Nilable = false },
				{ Name = "rafLinkType", Type = "RafLinkType", Nilable = false },
				{ Name = "mobile", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "WhoInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "fullName", Type = "string", Nilable = false },
				{ Name = "fullGuildName", Type = "string", Nilable = false },
				{ Name = "level", Type = "number", Nilable = false },
				{ Name = "raceStr", Type = "string", Nilable = false },
				{ Name = "classStr", Type = "string", Nilable = false },
				{ Name = "area", Type = "string", Nilable = false },
				{ Name = "filename", Type = "string", Nilable = true },
				{ Name = "gender", Type = "number", Nilable = false },
			},
		},
	},
};

APIDocumentation:AddDocumentationTable(FriendList);local GMTicketInfo =
{
	Name = "GMTicketInfo",
	Type = "System",
	Namespace = "C_GMTicketInfo",

	Functions =
	{
	},

	Events =
	{
		{
			Name = "GmPlayerInfo",
			Type = "Event",
			LiteralName = "GM_PLAYER_INFO",
			Payload =
			{
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "info", Type = "string", Nilable = false },
			},
		},
		{
			Name = "ItemRestorationButtonStatus",
			Type = "Event",
			LiteralName = "ITEM_RESTORATION_BUTTON_STATUS",
		},
		{
			Name = "PetitionClosed",
			Type = "Event",
			LiteralName = "PETITION_CLOSED",
		},
		{
			Name = "PetitionShow",
			Type = "Event",
			LiteralName = "PETITION_SHOW",
		},
		{
			Name = "PlayerReportSubmitted",
			Type = "Event",
			LiteralName = "PLAYER_REPORT_SUBMITTED",
			Payload =
			{
				{ Name = "invitedByGUID", Type = "string", Nilable = false },
			},
		},
		{
			Name = "QuickTicketSystemStatus",
			Type = "Event",
			LiteralName = "QUICK_TICKET_SYSTEM_STATUS",
		},
		{
			Name = "QuickTicketThrottleChanged",
			Type = "Event",
			LiteralName = "QUICK_TICKET_THROTTLE_CHANGED",
		},
		{
			Name = "UpdateWebTicket",
			Type = "Event",
			LiteralName = "UPDATE_WEB_TICKET",
			Payload =
			{
				{ Name = "hasTicket", Type = "bool", Nilable = false },
				{ Name = "numTickets", Type = "number", Nilable = true },
				{ Name = "ticketStatus", Type = "number", Nilable = true },
				{ Name = "caseIndex", Type = "number", Nilable = true },
				{ Name = "waitTimeMinutes", Type = "number", Nilable = true },
				{ Name = "waitMessage", Type = "string", Nilable = true },
			},
		},
	},

	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(GMTicketInfo);local GamePad =
{
	Name = "GamePad",
	Type = "System",
	Namespace = "C_GamePad",

	Functions =
	{
		{
			Name = "ApplyConfigs",
			Type = "Function",
		},
		{
			Name = "AxisIndexToConfigName",
			Type = "Function",

			Arguments =
			{
				{ Name = "axisIndex", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "configName", Type = "string", Nilable = true },
			},
		},
		{
			Name = "ButtonBindingToIndex",
			Type = "Function",

			Arguments =
			{
				{ Name = "bindingName", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "buttonIndex", Type = "number", Nilable = true },
			},
		},
		{
			Name = "ButtonIndexToBinding",
			Type = "Function",

			Arguments =
			{
				{ Name = "buttonIndex", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "bindingName", Type = "string", Nilable = true },
			},
		},
		{
			Name = "ButtonIndexToConfigName",
			Type = "Function",

			Arguments =
			{
				{ Name = "buttonIndex", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "configName", Type = "string", Nilable = true },
			},
		},
		{
			Name = "DeleteConfig",
			Type = "Function",

			Arguments =
			{
				{ Name = "configID", Type = "GamePadConfigID", Nilable = false },
			},
		},
		{
			Name = "GetActiveDeviceID",
			Type = "Function",

			Returns =
			{
				{ Name = "deviceID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetAllConfigIDs",
			Type = "Function",

			Returns =
			{
				{ Name = "configIDs", Type = "table", InnerType = "GamePadConfigID", Nilable = false },
			},
		},
		{
			Name = "GetAllDeviceIDs",
			Type = "Function",

			Returns =
			{
				{ Name = "deviceIDs", Type = "table", InnerType = "number", Nilable = false },
			},
		},
		{
			Name = "GetCombinedDeviceID",
			Type = "Function",

			Returns =
			{
				{ Name = "deviceID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetConfig",
			Type = "Function",

			Arguments =
			{
				{ Name = "configID", Type = "GamePadConfigID", Nilable = false },
			},

			Returns =
			{
				{ Name = "config", Type = "GamePadConfig", Nilable = true },
			},
		},
		{
			Name = "GetDeviceMappedState",
			Type = "Function",

			Arguments =
			{
				{ Name = "deviceID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "state", Type = "GamePadMappedState", Nilable = true },
			},
		},
		{
			Name = "GetDeviceRawState",
			Type = "Function",

			Arguments =
			{
				{ Name = "deviceID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "rawState", Type = "GamePadRawState", Nilable = true },
			},
		},
		{
			Name = "IsEnabled",
			Type = "Function",

			Returns =
			{
				{ Name = "enabled", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "SetConfig",
			Type = "Function",

			Arguments =
			{
				{ Name = "config", Type = "GamePadConfig", Nilable = false },
			},
		},
		{
			Name = "StickIndexToConfigName",
			Type = "Function",

			Arguments =
			{
				{ Name = "stickIndex", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "configName", Type = "string", Nilable = true },
			},
		},
	},

	Events =
	{
		{
			Name = "GamePadConfigsChanged",
			Type = "Event",
			LiteralName = "GAME_PAD_CONFIGS_CHANGED",
		},
		{
			Name = "GamePadConnected",
			Type = "Event",
			LiteralName = "GAME_PAD_CONNECTED",
		},
		{
			Name = "GamePadDisconnected",
			Type = "Event",
			LiteralName = "GAME_PAD_DISCONNECTED",
		},
	},

	Tables =
	{
		{
			Name = "GamePadAxisConfig",
			Type = "Structure",
			Fields =
			{
				{ Name = "axis", Type = "string", Nilable = false },
				{ Name = "shift", Type = "number", Nilable = true },
				{ Name = "scale", Type = "number", Nilable = true },
				{ Name = "deadzone", Type = "number", Nilable = true },
				{ Name = "buttonThreshold", Type = "number", Nilable = true },
				{ Name = "buttonPos", Type = "string", Nilable = true },
				{ Name = "buttonNeg", Type = "string", Nilable = true },
				{ Name = "comment", Type = "string", Nilable = true },
			},
		},
		{
			Name = "GamePadConfig",
			Type = "Structure",
			Fields =
			{
				{ Name = "comment", Type = "string", Nilable = true },
				{ Name = "name", Type = "string", Nilable = true },
				{ Name = "configID", Type = "GamePadConfigID", Nilable = false },
				{ Name = "rawButtonMappings", Type = "table", InnerType = "GamePadRawButtonMapping", Nilable = false },
				{ Name = "rawAxisMappings", Type = "table", InnerType = "GamePadRawAxisMapping", Nilable = false },
				{ Name = "axisConfigs", Type = "table", InnerType = "GamePadAxisConfig", Nilable = false },
				{ Name = "stickConfigs", Type = "table", InnerType = "GamePadStickConfig", Nilable = false },
			},
		},
		{
			Name = "GamePadConfigID",
			Type = "Structure",
			Fields =
			{
				{ Name = "vendorID", Type = "number", Nilable = true },
				{ Name = "productID", Type = "number", Nilable = true },
			},
		},
		{
			Name = "GamePadMappedState",
			Type = "Structure",
			Fields =
			{
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "buttonCount", Type = "number", Nilable = false },
				{ Name = "axisCount", Type = "number", Nilable = false },
				{ Name = "stickCount", Type = "number", Nilable = false },
				{ Name = "buttons", Type = "table", InnerType = "bool", Nilable = false },
				{ Name = "axes", Type = "table", InnerType = "number", Nilable = false },
				{ Name = "sticks", Type = "table", InnerType = "GamePadStick", Nilable = false },
			},
		},
		{
			Name = "GamePadRawAxisMapping",
			Type = "Structure",
			Fields =
			{
				{ Name = "rawIndex", Type = "number", Nilable = false },
				{ Name = "axis", Type = "string", Nilable = true },
				{ Name = "comment", Type = "string", Nilable = true },
			},
		},
		{
			Name = "GamePadRawButtonMapping",
			Type = "Structure",
			Fields =
			{
				{ Name = "rawIndex", Type = "number", Nilable = false },
				{ Name = "button", Type = "string", Nilable = true },
				{ Name = "axis", Type = "string", Nilable = true },
				{ Name = "axisValue", Type = "number", Nilable = true },
				{ Name = "comment", Type = "string", Nilable = true },
			},
		},
		{
			Name = "GamePadRawState",
			Type = "Structure",
			Fields =
			{
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "vendorID", Type = "number", Nilable = false },
				{ Name = "productID", Type = "number", Nilable = false },
				{ Name = "rawButtonCount", Type = "number", Nilable = false },
				{ Name = "rawAxisCount", Type = "number", Nilable = false },
				{ Name = "rawButtons", Type = "table", InnerType = "bool", Nilable = false },
				{ Name = "rawAxes", Type = "table", InnerType = "number", Nilable = false },
			},
		},
		{
			Name = "GamePadStick",
			Type = "Structure",
			Fields =
			{
				{ Name = "x", Type = "number", Nilable = false },
				{ Name = "y", Type = "number", Nilable = false },
				{ Name = "len", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GamePadStickConfig",
			Type = "Structure",
			Fields =
			{
				{ Name = "stick", Type = "string", Nilable = false },
				{ Name = "axisX", Type = "string", Nilable = true },
				{ Name = "axisY", Type = "string", Nilable = true },
				{ Name = "deadzone", Type = "number", Nilable = true },
				{ Name = "comment", Type = "string", Nilable = true },
			},
		},
	},
};

APIDocumentation:AddDocumentationTable(GamePad);local GarrisonInfo =
{
	Name = "GarrisonInfo",
	Type = "System",
	Namespace = "C_Garrison",

	Functions =
	{
		{
			Name = "AddFollowerToMission",
			Type = "Function",

			Arguments =
			{
				{ Name = "missionID", Type = "number", Nilable = false },
				{ Name = "followerID", Type = "string", Nilable = false },
				{ Name = "boardIndex", Type = "number", Nilable = true },
			},

			Returns =
			{
				{ Name = "followerAdded", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "GetAutoCombatDamageClassValues",
			Type = "Function",

			Returns =
			{
				{ Name = "damageClassStrings", Type = "table", InnerType = "AutoCombatDamageClassString", Nilable = false },
			},
		},
		{
			Name = "GetAutoMissionTargetingInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "missionID", Type = "number", Nilable = false },
				{ Name = "followerID", Type = "string", Nilable = false },
				{ Name = "casterBoardIndex", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "targetInfo", Type = "table", InnerType = "AutoMissionTargetingInfo", Nilable = false },
			},
		},
		{
			Name = "GetCombatLogSpellInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "autoCombatSpellID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "spellInfo", Type = "AutoCombatSpellInfo", Nilable = true },
			},
		},
		{
			Name = "GetCurrentGarrTalentTreeFriendshipFactionID",
			Type = "Function",

			Returns =
			{
				{ Name = "currentGarrTalentTreeFriendshipFactionID", Type = "number", Nilable = true },
			},
		},
		{
			Name = "GetCurrentGarrTalentTreeID",
			Type = "Function",

			Returns =
			{
				{ Name = "currentGarrTalentTreeID", Type = "number", Nilable = true },
			},
		},
		{
			Name = "GetFollowerAutoCombatSpells",
			Type = "Function",

			Arguments =
			{
				{ Name = "garrFollowerID", Type = "string", Nilable = false },
				{ Name = "followerLevel", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "spellInfo", Type = "table", InnerType = "AutoCombatSpellInfo", Nilable = false },
			},
		},
		{
			Name = "GetFollowerAutoCombatStats",
			Type = "Function",

			Arguments =
			{
				{ Name = "garrFollowerID", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "autoCombatInfo", Type = "FollowerAutoCombatStatsInfo", Nilable = true },
			},
		},
		{
			Name = "GetFollowerMissionCompleteInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "followerID", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "followerMissionCompleteInfo", Type = "FollowerMissionCompleteInfo", Nilable = false },
			},
		},
		{
			Name = "GetGarrisonPlotsInstancesForMap",
			Type = "Function",

			Arguments =
			{
				{ Name = "uiMapID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "garrisonPlotInstances", Type = "table", InnerType = "GarrisonPlotInstanceMapInfo", Nilable = false },
			},
		},
		{
			Name = "GetGarrisonTalentTreeCurrencyTypes",
			Type = "Function",

			Arguments =
			{
				{ Name = "garrTalentTreeID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "garrTalentTreeCurrencyType", Type = "number", Nilable = true },
			},
		},
		{
			Name = "GetGarrisonTalentTreeType",
			Type = "Function",

			Arguments =
			{
				{ Name = "garrTalentTreeID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "garrTalentTreeType", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetMissionCompleteEncounters",
			Type = "Function",

			Arguments =
			{
				{ Name = "missionID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "encounters", Type = "table", InnerType = "GarrisonEnemyEncounterInfo", Nilable = false },
			},
		},
		{
			Name = "GetMissionDeploymentInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "missionID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "missionDeploymentInfo", Type = "MissionDeploymentInfo", Nilable = false },
			},
		},
		{
			Name = "GetMissionEncounterIconInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "missionID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "missionEncounterIconInfo", Type = "MissionEncounterIconInfo", Nilable = false },
			},
		},
		{
			Name = "GetTalentInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "talentID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "info", Type = "GarrisonTalentInfo", Nilable = false },
			},
		},
		{
			Name = "GetTalentPointsSpentInTalentTree",
			Type = "Function",

			Arguments =
			{
				{ Name = "garrTalentTreeID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "talentPoints", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetTalentTreeIDsByClassID",
			Type = "Function",

			Arguments =
			{
				{ Name = "garrType", Type = "number", Nilable = false },
				{ Name = "classID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "treeIDs", Type = "table", InnerType = "number", Nilable = false },
			},
		},
		{
			Name = "GetTalentTreeInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "treeID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "info", Type = "GarrisonTalentTreeInfo", Nilable = false },
			},
		},
		{
			Name = "GetTalentTreeResetInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "garrTalentTreeID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "goldCost", Type = "number", Nilable = false },
				{ Name = "currencyCosts", Type = "table", InnerType = "GarrisonTalentCurrencyCostInfo", Nilable = false },
			},
		},
		{
			Name = "GetTalentTreeTalentPointResearchInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "garrTalentTreeID", Type = "number", Nilable = false },
				{ Name = "talentPointIndex", Type = "number", Nilable = false },
				{ Name = "isRespec", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "goldCost", Type = "number", Nilable = false },
				{ Name = "currencyCosts", Type = "table", InnerType = "GarrisonTalentCurrencyCostInfo", Nilable = false },
				{ Name = "durationSecs", Type = "number", Nilable = false },
			},
		},
		{
			Name = "IsAtGarrisonMissionNPC",
			Type = "Function",

			Returns =
			{
				{ Name = "atGarrisonMissionNPC", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsEnvironmentCountered",
			Type = "Function",

			Arguments =
			{
				{ Name = "missionID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "environmentCountered", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsTalentConditionMet",
			Type = "Function",

			Arguments =
			{
				{ Name = "talentID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "isMet", Type = "bool", Nilable = false },
				{ Name = "failureString", Type = "string", Nilable = true },
			},
		},
		{
			Name = "RegenerateCombatLog",
			Type = "Function",

			Arguments =
			{
				{ Name = "missionID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "RushHealFollower",
			Type = "Function",

			Arguments =
			{
				{ Name = "garrFollowerID", Type = "string", Nilable = false },
			},
		},
		{
			Name = "SetAutoCombatSpellFastForward",
			Type = "Function",

			Arguments =
			{
				{ Name = "state", Type = "bool", Nilable = false },
			},
		},
	},

	Events =
	{
		{
			Name = "GarrisonArchitectClosed",
			Type = "Event",
			LiteralName = "GARRISON_ARCHITECT_CLOSED",
		},
		{
			Name = "GarrisonArchitectOpened",
			Type = "Event",
			LiteralName = "GARRISON_ARCHITECT_OPENED",
			Payload =
			{
				{ Name = "followerTypeID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GarrisonBuildingActivatable",
			Type = "Event",
			LiteralName = "GARRISON_BUILDING_ACTIVATABLE",
			Payload =
			{
				{ Name = "buildingName", Type = "string", Nilable = false },
				{ Name = "garrisonType", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GarrisonBuildingActivated",
			Type = "Event",
			LiteralName = "GARRISON_BUILDING_ACTIVATED",
			Payload =
			{
				{ Name = "garrisonPlotInstanceID", Type = "number", Nilable = false },
				{ Name = "garrisonBuildingID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GarrisonBuildingError",
			Type = "Event",
			LiteralName = "GARRISON_BUILDING_ERROR",
		},
		{
			Name = "GarrisonBuildingListUpdate",
			Type = "Event",
			LiteralName = "GARRISON_BUILDING_LIST_UPDATE",
			Payload =
			{
				{ Name = "categoryID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GarrisonBuildingPlaced",
			Type = "Event",
			LiteralName = "GARRISON_BUILDING_PLACED",
			Payload =
			{
				{ Name = "garrisonPlotInstanceID", Type = "number", Nilable = false },
				{ Name = "newPlacement", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "GarrisonBuildingRemoved",
			Type = "Event",
			LiteralName = "GARRISON_BUILDING_REMOVED",
			Payload =
			{
				{ Name = "garrPlotInstanceID", Type = "number", Nilable = false },
				{ Name = "garrBuildingID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GarrisonBuildingUpdate",
			Type = "Event",
			LiteralName = "GARRISON_BUILDING_UPDATE",
			Payload =
			{
				{ Name = "garrisonBuildingID", Type = "number", Nilable = false },
				{ Name = "garrPlotInstanceID", Type = "number", Nilable = true },
			},
		},
		{
			Name = "GarrisonFollowerAdded",
			Type = "Event",
			LiteralName = "GARRISON_FOLLOWER_ADDED",
			Payload =
			{
				{ Name = "followerDbID", Type = "string", Nilable = false },
				{ Name = "followerName", Type = "string", Nilable = false },
				{ Name = "followerClassName", Type = "string", Nilable = false },
				{ Name = "followerLevel", Type = "number", Nilable = false },
				{ Name = "followerQuality", Type = "number", Nilable = false },
				{ Name = "isUpgraded", Type = "bool", Nilable = false },
				{ Name = "textureKit", Type = "string", Nilable = false },
				{ Name = "followerTypeID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GarrisonFollowerCategoriesUpdated",
			Type = "Event",
			LiteralName = "GARRISON_FOLLOWER_CATEGORIES_UPDATED",
		},
		{
			Name = "GarrisonFollowerDurabilityChanged",
			Type = "Event",
			LiteralName = "GARRISON_FOLLOWER_DURABILITY_CHANGED",
			Payload =
			{
				{ Name = "garrFollowerTypeID", Type = "number", Nilable = false },
				{ Name = "followerDbID", Type = "string", Nilable = false },
				{ Name = "followerDurability", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GarrisonFollowerListUpdate",
			Type = "Event",
			LiteralName = "GARRISON_FOLLOWER_LIST_UPDATE",
			Payload =
			{
				{ Name = "followerTypeID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GarrisonFollowerRemoved",
			Type = "Event",
			LiteralName = "GARRISON_FOLLOWER_REMOVED",
			Payload =
			{
				{ Name = "followerTypeID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GarrisonFollowerUpgraded",
			Type = "Event",
			LiteralName = "GARRISON_FOLLOWER_UPGRADED",
			Payload =
			{
				{ Name = "followerDbID", Type = "string", Nilable = false },
			},
		},
		{
			Name = "GarrisonFollowerXpChanged",
			Type = "Event",
			LiteralName = "GARRISON_FOLLOWER_XP_CHANGED",
			Payload =
			{
				{ Name = "garrFollowerTypeID", Type = "number", Nilable = false },
				{ Name = "followerDbID", Type = "string", Nilable = false },
				{ Name = "xpChange", Type = "number", Nilable = false },
				{ Name = "oldFollowerXp", Type = "number", Nilable = false },
				{ Name = "oldFollowerLevel", Type = "number", Nilable = false },
				{ Name = "oldFollowerQuality", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GarrisonHideLandingPage",
			Type = "Event",
			LiteralName = "GARRISON_HIDE_LANDING_PAGE",
		},
		{
			Name = "GarrisonInvasionAvailable",
			Type = "Event",
			LiteralName = "GARRISON_INVASION_AVAILABLE",
		},
		{
			Name = "GarrisonInvasionUnavailable",
			Type = "Event",
			LiteralName = "GARRISON_INVASION_UNAVAILABLE",
		},
		{
			Name = "GarrisonLandingpageShipments",
			Type = "Event",
			LiteralName = "GARRISON_LANDINGPAGE_SHIPMENTS",
		},
		{
			Name = "GarrisonMissionAreaBonusAdded",
			Type = "Event",
			LiteralName = "GARRISON_MISSION_AREA_BONUS_ADDED",
			Payload =
			{
				{ Name = "garrisonMissonBonusAbilityID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GarrisonMissionBonusRollComplete",
			Type = "Event",
			LiteralName = "GARRISON_MISSION_BONUS_ROLL_COMPLETE",
			Payload =
			{
				{ Name = "missionID", Type = "number", Nilable = false },
				{ Name = "success", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "GarrisonMissionCompleteResponse",
			Type = "Event",
			LiteralName = "GARRISON_MISSION_COMPLETE_RESPONSE",
			Payload =
			{
				{ Name = "missionID", Type = "number", Nilable = false },
				{ Name = "canComplete", Type = "bool", Nilable = false },
				{ Name = "success", Type = "bool", Nilable = false },
				{ Name = "bonusRollSuccess", Type = "bool", Nilable = false },
				{ Name = "followerDeaths", Type = "table", InnerType = "GarrisonFollowerDeathInfo", Nilable = false },
				{ Name = "autoCombatResult", Type = "AutoCombatResult", Nilable = true },
			},
		},
		{
			Name = "GarrisonMissionFinished",
			Type = "Event",
			LiteralName = "GARRISON_MISSION_FINISHED",
			Payload =
			{
				{ Name = "followerTypeID", Type = "number", Nilable = false },
				{ Name = "missionID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GarrisonMissionListUpdate",
			Type = "Event",
			LiteralName = "GARRISON_MISSION_LIST_UPDATE",
			Payload =
			{
				{ Name = "garrFollowerTypeID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GarrisonMissionNpcClosed",
			Type = "Event",
			LiteralName = "GARRISON_MISSION_NPC_CLOSED",
		},
		{
			Name = "GarrisonMissionNpcOpened",
			Type = "Event",
			LiteralName = "GARRISON_MISSION_NPC_OPENED",
			Payload =
			{
				{ Name = "followerTypeID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GarrisonMissionRewardInfo",
			Type = "Event",
			LiteralName = "GARRISON_MISSION_REWARD_INFO",
			Payload =
			{
				{ Name = "missionID", Type = "number", Nilable = false },
				{ Name = "followerDbID", Type = "string", Nilable = false },
			},
		},
		{
			Name = "GarrisonMissionStarted",
			Type = "Event",
			LiteralName = "GARRISON_MISSION_STARTED",
			Payload =
			{
				{ Name = "garrFollowerTypeID", Type = "number", Nilable = false },
				{ Name = "missionID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GarrisonMonumentCloseUi",
			Type = "Event",
			LiteralName = "GARRISON_MONUMENT_CLOSE_UI",
		},
		{
			Name = "GarrisonMonumentListLoaded",
			Type = "Event",
			LiteralName = "GARRISON_MONUMENT_LIST_LOADED",
			Payload =
			{
				{ Name = "success", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "GarrisonMonumentReplaced",
			Type = "Event",
			LiteralName = "GARRISON_MONUMENT_REPLACED",
			Payload =
			{
				{ Name = "success", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "GarrisonMonumentSelectedTrophyIdLoaded",
			Type = "Event",
			LiteralName = "GARRISON_MONUMENT_SELECTED_TROPHY_ID_LOADED",
			Payload =
			{
				{ Name = "success", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "GarrisonMonumentShowUi",
			Type = "Event",
			LiteralName = "GARRISON_MONUMENT_SHOW_UI",
		},
		{
			Name = "GarrisonRandomMissionAdded",
			Type = "Event",
			LiteralName = "GARRISON_RANDOM_MISSION_ADDED",
			Payload =
			{
				{ Name = "followerTypeID", Type = "number", Nilable = false },
				{ Name = "missionID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GarrisonRecallPortalLastUsedTime",
			Type = "Event",
			LiteralName = "GARRISON_RECALL_PORTAL_LAST_USED_TIME",
			Payload =
			{
				{ Name = "success", Type = "bool", Nilable = false },
				{ Name = "recallPortalLastUsedTime", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GarrisonRecallPortalUsed",
			Type = "Event",
			LiteralName = "GARRISON_RECALL_PORTAL_USED",
			Payload =
			{
				{ Name = "success", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "GarrisonRecruitFollowerResult",
			Type = "Event",
			LiteralName = "GARRISON_RECRUIT_FOLLOWER_RESULT",
		},
		{
			Name = "GarrisonRecruitmentFollowersGenerated",
			Type = "Event",
			LiteralName = "GARRISON_RECRUITMENT_FOLLOWERS_GENERATED",
		},
		{
			Name = "GarrisonRecruitmentNpcClosed",
			Type = "Event",
			LiteralName = "GARRISON_RECRUITMENT_NPC_CLOSED",
		},
		{
			Name = "GarrisonRecruitmentNpcOpened",
			Type = "Event",
			LiteralName = "GARRISON_RECRUITMENT_NPC_OPENED",
			Payload =
			{
				{ Name = "followerTypeID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GarrisonRecruitmentReady",
			Type = "Event",
			LiteralName = "GARRISON_RECRUITMENT_READY",
		},
		{
			Name = "GarrisonShipmentReceived",
			Type = "Event",
			LiteralName = "GARRISON_SHIPMENT_RECEIVED",
		},
		{
			Name = "GarrisonShipyardNpcClosed",
			Type = "Event",
			LiteralName = "GARRISON_SHIPYARD_NPC_CLOSED",
		},
		{
			Name = "GarrisonShipyardNpcOpened",
			Type = "Event",
			LiteralName = "GARRISON_SHIPYARD_NPC_OPENED",
			Payload =
			{
				{ Name = "followerTypeID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GarrisonShowLandingPage",
			Type = "Event",
			LiteralName = "GARRISON_SHOW_LANDING_PAGE",
		},
		{
			Name = "GarrisonTalentComplete",
			Type = "Event",
			LiteralName = "GARRISON_TALENT_COMPLETE",
			Payload =
			{
				{ Name = "garrTypeID", Type = "number", Nilable = false },
				{ Name = "doAlert", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "GarrisonTalentNpcClosed",
			Type = "Event",
			LiteralName = "GARRISON_TALENT_NPC_CLOSED",
		},
		{
			Name = "GarrisonTalentNpcOpened",
			Type = "Event",
			LiteralName = "GARRISON_TALENT_NPC_OPENED",
			Payload =
			{
				{ Name = "garrisonTypeID", Type = "number", Nilable = false },
				{ Name = "garrisonTalentTreeID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GarrisonTalentUpdate",
			Type = "Event",
			LiteralName = "GARRISON_TALENT_UPDATE",
			Payload =
			{
				{ Name = "garrTypeID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GarrisonTradeskillNpcClosed",
			Type = "Event",
			LiteralName = "GARRISON_TRADESKILL_NPC_CLOSED",
		},
		{
			Name = "GarrisonUpdate",
			Type = "Event",
			LiteralName = "GARRISON_UPDATE",
		},
		{
			Name = "GarrisonUpgradeableResult",
			Type = "Event",
			LiteralName = "GARRISON_UPGRADEABLE_RESULT",
			Payload =
			{
				{ Name = "garrisonUpgradeable", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "GarrisonUsePartyGarrisonChanged",
			Type = "Event",
			LiteralName = "GARRISON_USE_PARTY_GARRISON_CHANGED",
		},
		{
			Name = "ShipmentCrafterClosed",
			Type = "Event",
			LiteralName = "SHIPMENT_CRAFTER_CLOSED",
		},
		{
			Name = "ShipmentCrafterInfo",
			Type = "Event",
			LiteralName = "SHIPMENT_CRAFTER_INFO",
			Payload =
			{
				{ Name = "success", Type = "number", Nilable = false },
				{ Name = "shipmentCount", Type = "number", Nilable = false },
				{ Name = "maxShipments", Type = "number", Nilable = false },
				{ Name = "ownedShipments", Type = "number", Nilable = false },
				{ Name = "plotInstanceID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "ShipmentCrafterOpened",
			Type = "Event",
			LiteralName = "SHIPMENT_CRAFTER_OPENED",
			Payload =
			{
				{ Name = "charShipmentContainerID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "ShipmentCrafterReagentUpdate",
			Type = "Event",
			LiteralName = "SHIPMENT_CRAFTER_REAGENT_UPDATE",
		},
		{
			Name = "ShipmentUpdate",
			Type = "Event",
			LiteralName = "SHIPMENT_UPDATE",
			Payload =
			{
				{ Name = "shipmentStarted", Type = "bool", Nilable = true },
				{ Name = "hasAttachedFollower", Type = "bool", Nilable = true },
			},
		},
	},

	Tables =
	{
		{
			Name = "AutoCombatDamageClassString",
			Type = "Structure",
			Fields =
			{
				{ Name = "damageClassValue", Type = "number", Nilable = false },
				{ Name = "locString", Type = "string", Nilable = false },
			},
		},
		{
			Name = "AutoCombatResult",
			Type = "Structure",
			Fields =
			{
				{ Name = "winner", Type = "bool", Nilable = false },
				{ Name = "combatLog", Type = "table", InnerType = "AutoMissionRound", Nilable = false },
			},
		},
		{
			Name = "AutoCombatSpellInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "autoCombatSpellID", Type = "number", Nilable = false },
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "description", Type = "string", Nilable = false },
				{ Name = "cooldown", Type = "number", Nilable = false },
				{ Name = "duration", Type = "number", Nilable = false },
				{ Name = "schoolMask", Type = "number", Nilable = false },
				{ Name = "icon", Type = "number", Nilable = false },
			},
		},
		{
			Name = "AutoMissionCombatEventInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "boardIndex", Type = "number", Nilable = false },
				{ Name = "oldHealth", Type = "number", Nilable = false },
				{ Name = "newHealth", Type = "number", Nilable = false },
				{ Name = "points", Type = "number", Nilable = true },
			},
		},
		{
			Name = "AutoMissionEvent",
			Type = "Structure",
			Fields =
			{
				{ Name = "type", Type = "number", Nilable = false },
				{ Name = "spellID", Type = "number", Nilable = false },
				{ Name = "schoolMask", Type = "number", Nilable = false },
				{ Name = "effectIndex", Type = "number", Nilable = false },
				{ Name = "casterBoardIndex", Type = "number", Nilable = false },
				{ Name = "auraType", Type = "number", Nilable = false },
				{ Name = "targetInfo", Type = "table", InnerType = "AutoMissionCombatEventInfo", Nilable = false },
			},
		},
		{
			Name = "AutoMissionRound",
			Type = "Structure",
			Fields =
			{
				{ Name = "events", Type = "table", InnerType = "AutoMissionEvent", Nilable = false },
			},
		},
		{
			Name = "AutoMissionTargetingInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "targetIndex", Type = "number", Nilable = false },
				{ Name = "previewType", Type = "number", Nilable = false },
			},
		},
		{
			Name = "FollowerAutoCombatStatsInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "currentHealth", Type = "number", Nilable = false },
				{ Name = "maxHealth", Type = "number", Nilable = false },
				{ Name = "attack", Type = "number", Nilable = false },
				{ Name = "healingTimestamp", Type = "number", Nilable = false },
			},
		},
		{
			Name = "FollowerDisplayID",
			Type = "Structure",
			Fields =
			{
				{ Name = "id", Type = "number", Nilable = false },
				{ Name = "followerPageScale", Type = "number", Nilable = false },
				{ Name = "showWeapon", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "FollowerMissionCompleteInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "displayIDs", Type = "table", InnerType = "FollowerDisplayID", Nilable = false },
				{ Name = "level", Type = "number", Nilable = false },
				{ Name = "quality", Type = "number", Nilable = false },
				{ Name = "currentXP", Type = "number", Nilable = false },
				{ Name = "maxXP", Type = "number", Nilable = false },
				{ Name = "height", Type = "number", Nilable = false },
				{ Name = "scale", Type = "number", Nilable = false },
				{ Name = "movementType", Type = "number", Nilable = true },
				{ Name = "impactDelay", Type = "number", Nilable = true },
				{ Name = "castID", Type = "number", Nilable = true },
				{ Name = "castSoundID", Type = "number", Nilable = true },
				{ Name = "impactID", Type = "number", Nilable = true },
				{ Name = "impactSoundID", Type = "number", Nilable = true },
				{ Name = "targetImpactID", Type = "number", Nilable = true },
				{ Name = "targetImpactSoundID", Type = "number", Nilable = true },
				{ Name = "className", Type = "string", Nilable = true },
				{ Name = "classAtlas", Type = "string", Nilable = false },
				{ Name = "portraitIconID", Type = "number", Nilable = false },
				{ Name = "textureKit", Type = "string", Nilable = false },
				{ Name = "isTroop", Type = "bool", Nilable = false },
				{ Name = "boardIndex", Type = "number", Nilable = false },
				{ Name = "health", Type = "number", Nilable = false },
				{ Name = "maxHealth", Type = "number", Nilable = false },
				{ Name = "role", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GarrisonAbilityCounterInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "id", Type = "number", Nilable = false },
				{ Name = "icon", Type = "number", Nilable = false },
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "factor", Type = "number", Nilable = false },
				{ Name = "description", Type = "string", Nilable = false },
			},
		},
		{
			Name = "GarrisonAbilityInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "id", Type = "number", Nilable = false },
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "description", Type = "string", Nilable = false },
				{ Name = "icon", Type = "number", Nilable = false },
				{ Name = "isTrait", Type = "bool", Nilable = false },
				{ Name = "isSpecialization", Type = "bool", Nilable = false },
				{ Name = "temporary", Type = "bool", Nilable = false },
				{ Name = "category", Type = "string", Nilable = true },
				{ Name = "counters", Type = "table", InnerType = "GarrisonAbilityCounterInfo", Nilable = false },
				{ Name = "isEmptySlot", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "GarrisonEnemyEncounterInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "displayID", Type = "number", Nilable = false },
				{ Name = "portraitFileDataID", Type = "number", Nilable = false },
				{ Name = "textureKit", Type = "string", Nilable = false },
				{ Name = "scale", Type = "number", Nilable = false },
				{ Name = "height", Type = "number", Nilable = false },
				{ Name = "mechanics", Type = "table", InnerType = "GarrisonMechanicInfo", Nilable = false },
				{ Name = "autoCombatSpells", Type = "table", InnerType = "AutoCombatSpellInfo", Nilable = false },
				{ Name = "role", Type = "number", Nilable = false },
				{ Name = "health", Type = "number", Nilable = false },
				{ Name = "maxHealth", Type = "number", Nilable = false },
				{ Name = "attack", Type = "number", Nilable = false },
				{ Name = "boardIndex", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GarrisonFollowerDeathInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "followerID", Type = "string", Nilable = false },
				{ Name = "state", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GarrisonMechanicInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "mechanicTypeID", Type = "number", Nilable = false },
				{ Name = "icon", Type = "number", Nilable = false },
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "factor", Type = "number", Nilable = false },
				{ Name = "description", Type = "string", Nilable = false },
				{ Name = "ability", Type = "GarrisonAbilityInfo", Nilable = true },
			},
		},
		{
			Name = "GarrisonPlotInstanceMapInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "buildingPlotInstanceID", Type = "number", Nilable = false },
				{ Name = "position", Type = "table", Mixin = "Vector2DMixin", Nilable = false },
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "atlasName", Type = "string", Nilable = false },
			},
		},
		{
			Name = "MissionDeploymentInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "location", Type = "string", Nilable = false },
				{ Name = "xp", Type = "number", Nilable = false },
				{ Name = "environment", Type = "string", Nilable = true },
				{ Name = "environmentDesc", Type = "string", Nilable = true },
				{ Name = "environmentTexture", Type = "number", Nilable = false },
				{ Name = "locTextureKit", Type = "string", Nilable = false },
				{ Name = "isExhausting", Type = "bool", Nilable = false },
				{ Name = "enemies", Type = "table", InnerType = "GarrisonEnemyEncounterInfo", Nilable = false },
			},
		},
		{
			Name = "MissionEncounterIconInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "portraitFileDataID", Type = "number", Nilable = false },
				{ Name = "isElite", Type = "bool", Nilable = false },
				{ Name = "isRare", Type = "bool", Nilable = false },
			},
		},
	},
};

APIDocumentation:AddDocumentationTable(GarrisonInfo);local GlyphInfo =
{
	Name = "GlyphInfo",
	Type = "System",
	Namespace = "C_GlyphInfo",

	Functions =
	{
	},

	Events =
	{
		{
			Name = "ActivateGlyph",
			Type = "Event",
			LiteralName = "ACTIVATE_GLYPH",
			Payload =
			{
				{ Name = "spellSlot", Type = "number", Nilable = false },
			},
		},
		{
			Name = "CancelGlyphCast",
			Type = "Event",
			LiteralName = "CANCEL_GLYPH_CAST",
		},
		{
			Name = "UseGlyph",
			Type = "Event",
			LiteralName = "USE_GLYPH",
			Payload =
			{
				{ Name = "spellSlot", Type = "number", Nilable = false },
			},
		},
	},

	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(GlyphInfo);local GossipInfo =
{
	Name = "GossipInfo",
	Type = "System",
	Namespace = "C_GossipInfo",

	Functions =
	{
		{
			Name = "CloseGossip",
			Type = "Function",
		},
		{
			Name = "ForceGossip",
			Type = "Function",

			Returns =
			{
				{ Name = "forceGossip", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "GetActiveQuests",
			Type = "Function",

			Returns =
			{
				{ Name = "info", Type = "table", InnerType = "GossipQuestUIInfo", Nilable = false },
			},
		},
		{
			Name = "GetAvailableQuests",
			Type = "Function",

			Returns =
			{
				{ Name = "info", Type = "table", InnerType = "GossipQuestUIInfo", Nilable = false },
			},
		},
		{
			Name = "GetNumActiveQuests",
			Type = "Function",

			Returns =
			{
				{ Name = "numQuests", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetNumAvailableQuests",
			Type = "Function",

			Returns =
			{
				{ Name = "numQuests", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetNumOptions",
			Type = "Function",

			Returns =
			{
				{ Name = "numOptions", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetOptions",
			Type = "Function",

			Returns =
			{
				{ Name = "info", Type = "table", InnerType = "GossipOptionUIInfo", Nilable = false },
			},
		},
		{
			Name = "GetPoiForUiMapID",
			Type = "Function",

			Arguments =
			{
				{ Name = "uiMapID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "gossipPoiID", Type = "number", Nilable = true },
			},
		},
		{
			Name = "GetPoiInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "uiMapID", Type = "number", Nilable = false },
				{ Name = "gossipPoiID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "gossipPoiInfo", Type = "GossipPoiInfo", Nilable = true },
			},
		},
		{
			Name = "GetText",
			Type = "Function",

			Returns =
			{
				{ Name = "gossipText", Type = "string", Nilable = false },
			},
		},
		{
			Name = "SelectActiveQuest",
			Type = "Function",

			Arguments =
			{
				{ Name = "index", Type = "number", Nilable = false },
			},
		},
		{
			Name = "SelectAvailableQuest",
			Type = "Function",

			Arguments =
			{
				{ Name = "index", Type = "number", Nilable = false },
			},
		},
		{
			Name = "SelectOption",
			Type = "Function",

			Arguments =
			{
				{ Name = "index", Type = "number", Nilable = false },
				{ Name = "text", Type = "string", Nilable = true },
				{ Name = "confirmed", Type = "bool", Nilable = true },
			},
		},
	},

	Events =
	{
		{
			Name = "DynamicGossipPoiUpdated",
			Type = "Event",
			LiteralName = "DYNAMIC_GOSSIP_POI_UPDATED",
		},
		{
			Name = "GossipClosed",
			Type = "Event",
			LiteralName = "GOSSIP_CLOSED",
		},
		{
			Name = "GossipConfirm",
			Type = "Event",
			LiteralName = "GOSSIP_CONFIRM",
			Payload =
			{
				{ Name = "gossipIndex", Type = "number", Nilable = false },
				{ Name = "text", Type = "string", Nilable = false },
				{ Name = "cost", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GossipConfirmCancel",
			Type = "Event",
			LiteralName = "GOSSIP_CONFIRM_CANCEL",
		},
		{
			Name = "GossipEnterCode",
			Type = "Event",
			LiteralName = "GOSSIP_ENTER_CODE",
			Payload =
			{
				{ Name = "gossipIndex", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GossipShow",
			Type = "Event",
			LiteralName = "GOSSIP_SHOW",
			Payload =
			{
				{ Name = "uiTextureKit", Type = "string", Nilable = true },
			},
		},
	},

	Tables =
	{
		{
			Name = "GossipOptionRewardType",
			Type = "Enumeration",
			NumValues = 2,
			MinValue = 0,
			MaxValue = 1,
			Fields =
			{
				{ Name = "Item", Type = "GossipOptionRewardType", EnumValue = 0 },
				{ Name = "Currency", Type = "GossipOptionRewardType", EnumValue = 1 },
			},
		},
		{
			Name = "GossipOptionStatus",
			Type = "Enumeration",
			NumValues = 4,
			MinValue = 0,
			MaxValue = 3,
			Fields =
			{
				{ Name = "Available", Type = "GossipOptionStatus", EnumValue = 0 },
				{ Name = "Unavailable", Type = "GossipOptionStatus", EnumValue = 1 },
				{ Name = "Locked", Type = "GossipOptionStatus", EnumValue = 2 },
				{ Name = "AlreadyComplete", Type = "GossipOptionStatus", EnumValue = 3 },
			},
		},
		{
			Name = "GossipOptionRewardInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "id", Type = "number", Nilable = false },
				{ Name = "quantity", Type = "number", Nilable = false },
				{ Name = "rewardType", Type = "GossipOptionRewardType", Nilable = false },
			},
		},
		{
			Name = "GossipOptionUIInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "type", Type = "string", Nilable = false },
				{ Name = "rewards", Type = "table", InnerType = "GossipOptionRewardInfo", Nilable = false },
				{ Name = "status", Type = "GossipOptionStatus", Nilable = false },
			},
		},
		{
			Name = "GossipPoiInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "textureIndex", Type = "number", Nilable = false },
				{ Name = "position", Type = "table", Mixin = "Vector2DMixin", Nilable = false },
				{ Name = "inBattleMap", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "GossipQuestUIInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "title", Type = "string", Nilable = false },
				{ Name = "questLevel", Type = "number", Nilable = false },
				{ Name = "isTrivial", Type = "bool", Nilable = false },
				{ Name = "frequency", Type = "number", Nilable = true },
				{ Name = "repeatable", Type = "bool", Nilable = true },
				{ Name = "isComplete", Type = "bool", Nilable = true },
				{ Name = "isLegendary", Type = "bool", Nilable = false },
				{ Name = "isIgnored", Type = "bool", Nilable = false },
				{ Name = "questID", Type = "number", Nilable = false },
			},
		},
	},
};

APIDocumentation:AddDocumentationTable(GossipInfo);local GuildBank =
{
	Name = "GuildBank",
	Type = "System",
	Namespace = "C_GuildBank",

	Functions =
	{
	},

	Events =
	{
		{
			Name = "GuildbankItemLockChanged",
			Type = "Event",
			LiteralName = "GUILDBANK_ITEM_LOCK_CHANGED",
		},
		{
			Name = "GuildbankTextChanged",
			Type = "Event",
			LiteralName = "GUILDBANK_TEXT_CHANGED",
			Payload =
			{
				{ Name = "guildBankTab", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GuildbankUpdateMoney",
			Type = "Event",
			LiteralName = "GUILDBANK_UPDATE_MONEY",
		},
		{
			Name = "GuildbankUpdateTabs",
			Type = "Event",
			LiteralName = "GUILDBANK_UPDATE_TABS",
		},
		{
			Name = "GuildbankUpdateText",
			Type = "Event",
			LiteralName = "GUILDBANK_UPDATE_TEXT",
			Payload =
			{
				{ Name = "guildBankTab", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GuildbankUpdateWithdrawmoney",
			Type = "Event",
			LiteralName = "GUILDBANK_UPDATE_WITHDRAWMONEY",
		},
		{
			Name = "GuildbankbagslotsChanged",
			Type = "Event",
			LiteralName = "GUILDBANKBAGSLOTS_CHANGED",
		},
		{
			Name = "GuildbankframeClosed",
			Type = "Event",
			LiteralName = "GUILDBANKFRAME_CLOSED",
		},
		{
			Name = "GuildbankframeOpened",
			Type = "Event",
			LiteralName = "GUILDBANKFRAME_OPENED",
		},
		{
			Name = "GuildbanklogUpdate",
			Type = "Event",
			LiteralName = "GUILDBANKLOG_UPDATE",
		},
	},

	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(GuildBank);local GuildInfo =
{
	Name = "GuildInfo",
	Type = "System",
	Namespace = "C_GuildInfo",

	Functions =
	{
		{
			Name = "CanEditOfficerNote",
			Type = "Function",

			Returns =
			{
				{ Name = "canEditOfficerNote", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "CanSpeakInGuildChat",
			Type = "Function",

			Returns =
			{
				{ Name = "canSpeakInGuildChat", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "CanViewOfficerNote",
			Type = "Function",

			Returns =
			{
				{ Name = "canViewOfficerNote", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "GetGuildNewsInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "index", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "newsInfo", Type = "GuildNewsInfo", Nilable = false },
			},
		},
		{
			Name = "GetGuildRankOrder",
			Type = "Function",

			Arguments =
			{
				{ Name = "guid", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "rankOrder", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetGuildTabardInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "unit", Type = "string", Nilable = true },
			},

			Returns =
			{
				{ Name = "tabardInfo", Type = "GuildTabardInfo", Nilable = true },
			},
		},
		{
			Name = "GuildControlGetRankFlags",
			Type = "Function",

			Arguments =
			{
				{ Name = "rankOrder", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "permissions", Type = "table", InnerType = "bool", Nilable = false },
			},
		},
		{
			Name = "GuildRoster",
			Type = "Function",
		},
		{
			Name = "IsGuildOfficer",
			Type = "Function",

			Returns =
			{
				{ Name = "isOfficer", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsGuildRankAssignmentAllowed",
			Type = "Function",

			Arguments =
			{
				{ Name = "guid", Type = "string", Nilable = false },
				{ Name = "rankOrder", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "isGuildRankAssignmentAllowed", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "QueryGuildMemberRecipes",
			Type = "Function",

			Arguments =
			{
				{ Name = "guildMemberGUID", Type = "string", Nilable = false },
				{ Name = "skillLineID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "RemoveFromGuild",
			Type = "Function",

			Arguments =
			{
				{ Name = "guid", Type = "string", Nilable = false },
			},
		},
		{
			Name = "SetGuildRankOrder",
			Type = "Function",

			Arguments =
			{
				{ Name = "guid", Type = "string", Nilable = false },
				{ Name = "rankOrder", Type = "number", Nilable = false },
			},
		},
		{
			Name = "SetNote",
			Type = "Function",

			Arguments =
			{
				{ Name = "guid", Type = "string", Nilable = false },
				{ Name = "note", Type = "string", Nilable = false },
				{ Name = "isPublic", Type = "bool", Nilable = false },
			},
		},
	},

	Events =
	{
		{
			Name = "CloseTabardFrame",
			Type = "Event",
			LiteralName = "CLOSE_TABARD_FRAME",
		},
		{
			Name = "DisableDeclineGuildInvite",
			Type = "Event",
			LiteralName = "DISABLE_DECLINE_GUILD_INVITE",
		},
		{
			Name = "EnableDeclineGuildInvite",
			Type = "Event",
			LiteralName = "ENABLE_DECLINE_GUILD_INVITE",
		},
		{
			Name = "GuildChallengeCompleted",
			Type = "Event",
			LiteralName = "GUILD_CHALLENGE_COMPLETED",
			Payload =
			{
				{ Name = "challengeType", Type = "number", Nilable = false },
				{ Name = "currentCount", Type = "number", Nilable = false },
				{ Name = "maxCount", Type = "number", Nilable = false },
				{ Name = "goldAwarded", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GuildChallengeUpdated",
			Type = "Event",
			LiteralName = "GUILD_CHALLENGE_UPDATED",
		},
		{
			Name = "GuildEventLogUpdate",
			Type = "Event",
			LiteralName = "GUILD_EVENT_LOG_UPDATE",
		},
		{
			Name = "GuildInviteCancel",
			Type = "Event",
			LiteralName = "GUILD_INVITE_CANCEL",
		},
		{
			Name = "GuildInviteRequest",
			Type = "Event",
			LiteralName = "GUILD_INVITE_REQUEST",
			Payload =
			{
				{ Name = "inviter", Type = "string", Nilable = false },
				{ Name = "guildName", Type = "string", Nilable = false },
				{ Name = "guildAchievementPoints", Type = "number", Nilable = false },
				{ Name = "oldGuildName", Type = "string", Nilable = false },
				{ Name = "isNewGuild", Type = "bool", Nilable = true },
				{ Name = "tabardInfo", Type = "GuildTabardInfo", Nilable = true },
			},
		},
		{
			Name = "GuildMotd",
			Type = "Event",
			LiteralName = "GUILD_MOTD",
			Payload =
			{
				{ Name = "motdText", Type = "string", Nilable = false },
			},
		},
		{
			Name = "GuildNewsUpdate",
			Type = "Event",
			LiteralName = "GUILD_NEWS_UPDATE",
		},
		{
			Name = "GuildPartyStateUpdated",
			Type = "Event",
			LiteralName = "GUILD_PARTY_STATE_UPDATED",
			Payload =
			{
				{ Name = "inGuildParty", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "GuildRanksUpdate",
			Type = "Event",
			LiteralName = "GUILD_RANKS_UPDATE",
		},
		{
			Name = "GuildRecipeKnownByMembers",
			Type = "Event",
			LiteralName = "GUILD_RECIPE_KNOWN_BY_MEMBERS",
		},
		{
			Name = "GuildRegistrarClosed",
			Type = "Event",
			LiteralName = "GUILD_REGISTRAR_CLOSED",
		},
		{
			Name = "GuildRegistrarShow",
			Type = "Event",
			LiteralName = "GUILD_REGISTRAR_SHOW",
		},
		{
			Name = "GuildRenameRequired",
			Type = "Event",
			LiteralName = "GUILD_RENAME_REQUIRED",
			Payload =
			{
				{ Name = "flagSet", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "GuildRewardsList",
			Type = "Event",
			LiteralName = "GUILD_REWARDS_LIST",
		},
		{
			Name = "GuildRosterUpdate",
			Type = "Event",
			LiteralName = "GUILD_ROSTER_UPDATE",
			Payload =
			{
				{ Name = "canRequestRosterUpdate", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "GuildTradeskillUpdate",
			Type = "Event",
			LiteralName = "GUILD_TRADESKILL_UPDATE",
		},
		{
			Name = "GuildtabardUpdate",
			Type = "Event",
			LiteralName = "GUILDTABARD_UPDATE",
		},
		{
			Name = "OpenTabardFrame",
			Type = "Event",
			LiteralName = "OPEN_TABARD_FRAME",
		},
		{
			Name = "PlayerGuildUpdate",
			Type = "Event",
			LiteralName = "PLAYER_GUILD_UPDATE",
			Payload =
			{
				{ Name = "unitTarget", Type = "string", Nilable = false },
			},
		},
		{
			Name = "RequiredGuildRenameResult",
			Type = "Event",
			LiteralName = "REQUIRED_GUILD_RENAME_RESULT",
			Payload =
			{
				{ Name = "success", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "TabardCansaveChanged",
			Type = "Event",
			LiteralName = "TABARD_CANSAVE_CHANGED",
		},
		{
			Name = "TabardSavePending",
			Type = "Event",
			LiteralName = "TABARD_SAVE_PENDING",
		},
	},

	Tables =
	{
		{
			Name = "GuildNewsInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "isSticky", Type = "bool", Nilable = false },
				{ Name = "isHeader", Type = "bool", Nilable = false },
				{ Name = "newsType", Type = "number", Nilable = false },
				{ Name = "whoText", Type = "string", Nilable = true },
				{ Name = "whatText", Type = "string", Nilable = true },
				{ Name = "newsDataID", Type = "number", Nilable = false },
				{ Name = "data", Type = "table", InnerType = "number", Nilable = false },
				{ Name = "weekday", Type = "number", Nilable = false },
				{ Name = "day", Type = "number", Nilable = false },
				{ Name = "month", Type = "number", Nilable = false },
				{ Name = "year", Type = "number", Nilable = false },
				{ Name = "guildMembersPresent", Type = "number", Nilable = false },
			},
		},
	},
};

APIDocumentation:AddDocumentationTable(GuildInfo);local HeirloomInfo =
{
	Name = "HeirloomInfo",
	Type = "System",
	Namespace = "C_HeirloomInfo",

	Functions =
	{
	},

	Events =
	{
		{
			Name = "HeirloomUpgradeTargetingChanged",
			Type = "Event",
			LiteralName = "HEIRLOOM_UPGRADE_TARGETING_CHANGED",
			Payload =
			{
				{ Name = "pendingHeirloomUpgradeSpellcast", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "HeirloomsUpdated",
			Type = "Event",
			LiteralName = "HEIRLOOMS_UPDATED",
			Payload =
			{
				{ Name = "itemID", Type = "number", Nilable = true },
				{ Name = "updateReason", Type = "string", Nilable = true },
				{ Name = "hideUntilLearned", Type = "bool", Nilable = true },
			},
		},
	},

	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(HeirloomInfo);local InGameNavigation =
{
	Name = "InGameNavigation",
	Type = "System",
	Namespace = "C_Navigation",

	Functions =
	{
		{
			Name = "GetDistance",
			Type = "Function",

			Returns =
			{
				{ Name = "distance", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetFrame",
			Type = "Function",

			Returns =
			{
				{ Name = "frame", Type = "table", Nilable = true },
			},
		},
		{
			Name = "GetTargetState",
			Type = "Function",

			Returns =
			{
				{ Name = "state", Type = "NavigationState", Nilable = false },
			},
		},
		{
			Name = "HasValidScreenPosition",
			Type = "Function",

			Returns =
			{
				{ Name = "hasValidScreenPosition", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "WasClampedToScreen",
			Type = "Function",

			Returns =
			{
				{ Name = "wasClamped", Type = "bool", Nilable = false },
			},
		},
	},

	Events =
	{
		{
			Name = "NavigationFrameCreated",
			Type = "Event",
			LiteralName = "NAVIGATION_FRAME_CREATED",
			Payload =
			{
				{ Name = "region", Type = "table", Nilable = false },
			},
		},
		{
			Name = "NavigationFrameDestroyed",
			Type = "Event",
			LiteralName = "NAVIGATION_FRAME_DESTROYED",
		},
	},

	Tables =
	{
		{
			Name = "NavigationState",
			Type = "Enumeration",
			NumValues = 3,
			MinValue = 0,
			MaxValue = 2,
			Fields =
			{
				{ Name = "Invalid", Type = "NavigationState", EnumValue = 0 },
				{ Name = "Occluded", Type = "NavigationState", EnumValue = 1 },
				{ Name = "InRange", Type = "NavigationState", EnumValue = 2 },
			},
		},
	},
};

APIDocumentation:AddDocumentationTable(InGameNavigation);local IncomingSummon =
{
	Name = "IncomingSummon",
	Type = "System",
	Namespace = "C_IncomingSummon",

	Functions =
	{
		{
			Name = "HasIncomingSummon",
			Type = "Function",

			Arguments =
			{
				{ Name = "unit", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "summon", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IncomingSummonStatus",
			Type = "Function",

			Arguments =
			{
				{ Name = "unit", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "status", Type = "SummonStatus", Nilable = false },
			},
		},
	},

	Events =
	{
	},

	Tables =
	{
		{
			Name = "SummonStatus",
			Type = "Enumeration",
			NumValues = 4,
			MinValue = 0,
			MaxValue = 3,
			Fields =
			{
				{ Name = "None", Type = "SummonStatus", EnumValue = 0 },
				{ Name = "Pending", Type = "SummonStatus", EnumValue = 1 },
				{ Name = "Accepted", Type = "SummonStatus", EnumValue = 2 },
				{ Name = "Declined", Type = "SummonStatus", EnumValue = 3 },
			},
		},
	},
};

APIDocumentation:AddDocumentationTable(IncomingSummon);local InstanceEncounter =
{
	Name = "InstanceEncounter",
	Type = "System",
	Namespace = "C_InstanceEncounter",

	Functions =
	{
	},

	Events =
	{
		{
			Name = "InstanceEncounterAddTimer",
			Type = "Event",
			LiteralName = "INSTANCE_ENCOUNTER_ADD_TIMER",
			Payload =
			{
				{ Name = "timeRemaining", Type = "number", Nilable = false },
			},
		},
		{
			Name = "InstanceEncounterEngageUnit",
			Type = "Event",
			LiteralName = "INSTANCE_ENCOUNTER_ENGAGE_UNIT",
		},
		{
			Name = "InstanceEncounterObjectiveComplete",
			Type = "Event",
			LiteralName = "INSTANCE_ENCOUNTER_OBJECTIVE_COMPLETE",
			Payload =
			{
				{ Name = "objectiveID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "InstanceEncounterObjectiveStart",
			Type = "Event",
			LiteralName = "INSTANCE_ENCOUNTER_OBJECTIVE_START",
			Payload =
			{
				{ Name = "objectiveID", Type = "number", Nilable = false },
				{ Name = "objectiveProgress", Type = "number", Nilable = false },
			},
		},
		{
			Name = "InstanceEncounterObjectiveUpdate",
			Type = "Event",
			LiteralName = "INSTANCE_ENCOUNTER_OBJECTIVE_UPDATE",
			Payload =
			{
				{ Name = "objectiveID", Type = "number", Nilable = false },
				{ Name = "objectiveProgress", Type = "number", Nilable = false },
			},
		},
	},

	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(InstanceEncounter);local InvasionInfo =
{
	Name = "InvasionInfo",
	Type = "System",
	Namespace = "C_InvasionInfo",

	Functions =
	{
		{
			Name = "AreInvasionsAvailable",
			Type = "Function",
			Documentation = { "Returns true if invasions are active in the same physical area as the player." },

			Returns =
			{
				{ Name = "areInvasionsAvailable", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "GetInvasionForUiMapID",
			Type = "Function",

			Arguments =
			{
				{ Name = "uiMapID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "invasionID", Type = "number", Nilable = true },
			},
		},
		{
			Name = "GetInvasionInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "invasionID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "invasionInfo", Type = "InvasionMapInfo", Nilable = false },
			},
		},
		{
			Name = "GetInvasionTimeLeft",
			Type = "Function",

			Arguments =
			{
				{ Name = "invasionID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "timeLeftMinutes", Type = "number", Nilable = true },
			},
		},
	},

	Events =
	{
	},

	Tables =
	{
		{
			Name = "InvasionMapInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "invasionID", Type = "number", Nilable = false },
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "position", Type = "table", Mixin = "Vector2DMixin", Nilable = false },
				{ Name = "atlasName", Type = "string", Nilable = false },
				{ Name = "rewardQuestID", Type = "number", Nilable = true },
			},
		},
	},
};

APIDocumentation:AddDocumentationTable(InvasionInfo);local IslandsInfo =
{
	Name = "IslandsInfo",
	Type = "System",
	Namespace = "C_IslandsInfo",

	Functions =
	{
	},

	Events =
	{
		{
			Name = "IslandAzeriteGain",
			Type = "Event",
			LiteralName = "ISLAND_AZERITE_GAIN",
			Payload =
			{
				{ Name = "amount", Type = "number", Nilable = false },
				{ Name = "gainedByPlayer", Type = "bool", Nilable = false },
				{ Name = "factionIndex", Type = "number", Nilable = false },
				{ Name = "gainedBy", Type = "string", Nilable = false },
				{ Name = "gainedFrom", Type = "string", Nilable = false },
			},
		},
	},

	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(IslandsInfo);local IslandsQueueUI =
{
	Name = "IslandsQueue",
	Type = "System",
	Namespace = "C_IslandsQueue",

	Functions =
	{
		{
			Name = "CloseIslandsQueueScreen",
			Type = "Function",
		},
		{
			Name = "GetIslandDifficultyInfo",
			Type = "Function",

			Returns =
			{
				{ Name = "islandDifficultyInfo", Type = "table", InnerType = "IslandsQueueDifficultyInfo", Nilable = false },
			},
		},
		{
			Name = "GetIslandsMaxGroupSize",
			Type = "Function",

			Returns =
			{
				{ Name = "maxGroupSize", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetIslandsWeeklyQuestID",
			Type = "Function",

			Returns =
			{
				{ Name = "questID", Type = "number", Nilable = true },
			},
		},
		{
			Name = "QueueForIsland",
			Type = "Function",

			Arguments =
			{
				{ Name = "difficultyID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "RequestPreloadRewardData",
			Type = "Function",

			Arguments =
			{
				{ Name = "questId", Type = "number", Nilable = false },
			},
		},
	},

	Events =
	{
		{
			Name = "IslandsQueueClose",
			Type = "Event",
			LiteralName = "ISLANDS_QUEUE_CLOSE",
		},
		{
			Name = "IslandsQueueOpen",
			Type = "Event",
			LiteralName = "ISLANDS_QUEUE_OPEN",
		},
	},

	Tables =
	{
		{
			Name = "IslandsQueueDifficultyInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "difficultyId", Type = "number", Nilable = false },
				{ Name = "previewRewardQuestId", Type = "number", Nilable = false },
			},
		},
	},
};

APIDocumentation:AddDocumentationTable(IslandsQueueUI);local Item =
{
	Name = "Item",
	Type = "System",
	Namespace = "C_Item",

	Functions =
	{
		{
			Name = "CanScrapItem",
			Type = "Function",

			Arguments =
			{
				{ Name = "itemLoc", Type = "table", Mixin = "ItemLocationMixin", Nilable = false },
			},

			Returns =
			{
				{ Name = "canBeScrapped", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "CanViewItemPowers",
			Type = "Function",

			Arguments =
			{
				{ Name = "itemLoc", Type = "table", Mixin = "ItemLocationMixin", Nilable = false },
			},

			Returns =
			{
				{ Name = "isItemViewable", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "DoesItemExist",
			Type = "Function",

			Arguments =
			{
				{ Name = "emptiableItemLocation", Type = "table", Mixin = "ItemLocationMixin", Nilable = false },
			},

			Returns =
			{
				{ Name = "itemExists", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "DoesItemExistByID",
			Type = "Function",

			Arguments =
			{
				{ Name = "itemInfo", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "itemExists", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "DoesItemMatchBonusTreeReplacement",
			Type = "Function",

			Arguments =
			{
				{ Name = "itemLoc", Type = "table", Mixin = "ItemLocationMixin", Nilable = false },
			},

			Returns =
			{
				{ Name = "matchesBonusTree", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "GetCurrentItemLevel",
			Type = "Function",

			Arguments =
			{
				{ Name = "itemLocation", Type = "table", Mixin = "ItemLocationMixin", Nilable = false },
			},

			Returns =
			{
				{ Name = "currentItemLevel", Type = "number", Nilable = true },
			},
		},
		{
			Name = "GetItemGUID",
			Type = "Function",

			Arguments =
			{
				{ Name = "itemLocation", Type = "table", Mixin = "ItemLocationMixin", Nilable = false },
			},

			Returns =
			{
				{ Name = "itemGuid", Type = "string", Nilable = false },
			},
		},
		{
			Name = "GetItemID",
			Type = "Function",

			Arguments =
			{
				{ Name = "itemLocation", Type = "table", Mixin = "ItemLocationMixin", Nilable = false },
			},

			Returns =
			{
				{ Name = "itemID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetItemIcon",
			Type = "Function",

			Arguments =
			{
				{ Name = "itemLocation", Type = "table", Mixin = "ItemLocationMixin", Nilable = false },
			},

			Returns =
			{
				{ Name = "icon", Type = "number", Nilable = true },
			},
		},
		{
			Name = "GetItemIconByID",
			Type = "Function",

			Arguments =
			{
				{ Name = "itemInfo", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "icon", Type = "number", Nilable = true },
			},
		},
		{
			Name = "GetItemInventoryType",
			Type = "Function",

			Arguments =
			{
				{ Name = "itemLocation", Type = "table", Mixin = "ItemLocationMixin", Nilable = false },
			},

			Returns =
			{
				{ Name = "inventoryType", Type = "InventoryType", Nilable = true },
			},
		},
		{
			Name = "GetItemInventoryTypeByID",
			Type = "Function",

			Arguments =
			{
				{ Name = "itemInfo", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "inventoryType", Type = "InventoryType", Nilable = true },
			},
		},
		{
			Name = "GetItemLink",
			Type = "Function",

			Arguments =
			{
				{ Name = "itemLocation", Type = "table", Mixin = "ItemLocationMixin", Nilable = false },
			},

			Returns =
			{
				{ Name = "itemLink", Type = "string", Nilable = true },
			},
		},
		{
			Name = "GetItemName",
			Type = "Function",

			Arguments =
			{
				{ Name = "itemLocation", Type = "table", Mixin = "ItemLocationMixin", Nilable = false },
			},

			Returns =
			{
				{ Name = "itemName", Type = "string", Nilable = true },
			},
		},
		{
			Name = "GetItemNameByID",
			Type = "Function",

			Arguments =
			{
				{ Name = "itemInfo", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "itemName", Type = "string", Nilable = true },
			},
		},
		{
			Name = "GetItemQuality",
			Type = "Function",

			Arguments =
			{
				{ Name = "itemLocation", Type = "table", Mixin = "ItemLocationMixin", Nilable = false },
			},

			Returns =
			{
				{ Name = "itemQuality", Type = "ItemQuality", Nilable = true },
			},
		},
		{
			Name = "GetItemQualityByID",
			Type = "Function",

			Arguments =
			{
				{ Name = "itemInfo", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "itemQuality", Type = "ItemQuality", Nilable = true },
			},
		},
		{
			Name = "GetStackCount",
			Type = "Function",

			Arguments =
			{
				{ Name = "itemLocation", Type = "table", Mixin = "ItemLocationMixin", Nilable = false },
			},

			Returns =
			{
				{ Name = "stackCount", Type = "number", Nilable = false },
			},
		},
		{
			Name = "IsBound",
			Type = "Function",

			Arguments =
			{
				{ Name = "itemLocation", Type = "table", Mixin = "ItemLocationMixin", Nilable = false },
			},

			Returns =
			{
				{ Name = "isBound", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsItemCorrupted",
			Type = "Function",

			Arguments =
			{
				{ Name = "itemLoc", Type = "table", Mixin = "ItemLocationMixin", Nilable = false },
			},

			Returns =
			{
				{ Name = "isCorrupted", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsItemCorruptionRelated",
			Type = "Function",

			Arguments =
			{
				{ Name = "itemLoc", Type = "table", Mixin = "ItemLocationMixin", Nilable = false },
			},

			Returns =
			{
				{ Name = "isCorruptionRelated", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsItemCorruptionResistant",
			Type = "Function",

			Arguments =
			{
				{ Name = "itemLoc", Type = "table", Mixin = "ItemLocationMixin", Nilable = false },
			},

			Returns =
			{
				{ Name = "isCorruptionResistant", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsItemDataCached",
			Type = "Function",

			Arguments =
			{
				{ Name = "itemLocation", Type = "table", Mixin = "ItemLocationMixin", Nilable = false },
			},

			Returns =
			{
				{ Name = "isCached", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsItemDataCachedByID",
			Type = "Function",

			Arguments =
			{
				{ Name = "itemInfo", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "isCached", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsLocked",
			Type = "Function",

			Arguments =
			{
				{ Name = "itemLocation", Type = "table", Mixin = "ItemLocationMixin", Nilable = false },
			},

			Returns =
			{
				{ Name = "isLocked", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "LockItem",
			Type = "Function",

			Arguments =
			{
				{ Name = "itemLocation", Type = "table", Mixin = "ItemLocationMixin", Nilable = false },
			},
		},
		{
			Name = "LockItemByGUID",
			Type = "Function",

			Arguments =
			{
				{ Name = "itemGUID", Type = "string", Nilable = false },
			},
		},
		{
			Name = "RequestLoadItemData",
			Type = "Function",

			Arguments =
			{
				{ Name = "itemLocation", Type = "table", Mixin = "ItemLocationMixin", Nilable = false },
			},
		},
		{
			Name = "RequestLoadItemDataByID",
			Type = "Function",

			Arguments =
			{
				{ Name = "itemInfo", Type = "string", Nilable = false },
			},
		},
		{
			Name = "UnlockItem",
			Type = "Function",

			Arguments =
			{
				{ Name = "itemLocation", Type = "table", Mixin = "ItemLocationMixin", Nilable = false },
			},
		},
		{
			Name = "UnlockItemByGUID",
			Type = "Function",

			Arguments =
			{
				{ Name = "itemGUID", Type = "string", Nilable = false },
			},
		},
	},

	Events =
	{
		{
			Name = "ActionWillBindItem",
			Type = "Event",
			LiteralName = "ACTION_WILL_BIND_ITEM",
		},
		{
			Name = "BindEnchant",
			Type = "Event",
			LiteralName = "BIND_ENCHANT",
		},
		{
			Name = "CharacterItemFixupNotification",
			Type = "Event",
			LiteralName = "CHARACTER_ITEM_FIXUP_NOTIFICATION",
			Payload =
			{
				{ Name = "fixupVersion", Type = "number", Nilable = false },
			},
		},
		{
			Name = "ConfirmBeforeUse",
			Type = "Event",
			LiteralName = "CONFIRM_BEFORE_USE",
		},
		{
			Name = "DeleteItemConfirm",
			Type = "Event",
			LiteralName = "DELETE_ITEM_CONFIRM",
			Payload =
			{
				{ Name = "itemName", Type = "string", Nilable = false },
				{ Name = "qualityID", Type = "number", Nilable = false },
				{ Name = "bonding", Type = "number", Nilable = false },
				{ Name = "questWarn", Type = "number", Nilable = false },
			},
		},
		{
			Name = "EndBoundTradeable",
			Type = "Event",
			LiteralName = "END_BOUND_TRADEABLE",
			Payload =
			{
				{ Name = "reason", Type = "string", Nilable = false },
			},
		},
		{
			Name = "GetItemInfoReceived",
			Type = "Event",
			LiteralName = "GET_ITEM_INFO_RECEIVED",
			Payload =
			{
				{ Name = "itemID", Type = "number", Nilable = false },
				{ Name = "success", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ItemChanged",
			Type = "Event",
			LiteralName = "ITEM_CHANGED",
			Payload =
			{
				{ Name = "previousHyperlink", Type = "string", Nilable = false },
				{ Name = "newHyperlink", Type = "string", Nilable = false },
			},
		},
		{
			Name = "ItemDataLoadResult",
			Type = "Event",
			LiteralName = "ITEM_DATA_LOAD_RESULT",
			Payload =
			{
				{ Name = "itemID", Type = "number", Nilable = false },
				{ Name = "success", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "MerchantConfirmTradeTimerRemoval",
			Type = "Event",
			LiteralName = "MERCHANT_CONFIRM_TRADE_TIMER_REMOVAL",
			Payload =
			{
				{ Name = "itemLink", Type = "string", Nilable = false },
			},
		},
		{
			Name = "ReplaceEnchant",
			Type = "Event",
			LiteralName = "REPLACE_ENCHANT",
			Payload =
			{
				{ Name = "existingStr", Type = "string", Nilable = false },
				{ Name = "replacementStr", Type = "string", Nilable = false },
			},
		},
		{
			Name = "TradeReplaceEnchant",
			Type = "Event",
			LiteralName = "TRADE_REPLACE_ENCHANT",
			Payload =
			{
				{ Name = "existing", Type = "string", Nilable = false },
				{ Name = "replacement", Type = "string", Nilable = false },
			},
		},
		{
			Name = "UseBindConfirm",
			Type = "Event",
			LiteralName = "USE_BIND_CONFIRM",
		},
		{
			Name = "UseNoRefundConfirm",
			Type = "Event",
			LiteralName = "USE_NO_REFUND_CONFIRM",
		},
	},

	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(Item);local ItemInteractionUI =
{
	Name = "ItemInteractionUI",
	Type = "System",
	Namespace = "C_ItemInteraction",

	Functions =
	{
		{
			Name = "ClearPendingItem",
			Type = "Function",
		},
		{
			Name = "CloseUI",
			Type = "Function",
		},
		{
			Name = "GetItemInteractionInfo",
			Type = "Function",

			Returns =
			{
				{ Name = "info", Type = "ItemInteractionFrameInfo", Nilable = true },
			},
		},
		{
			Name = "GetItemInteractionSpellId",
			Type = "Function",

			Returns =
			{
				{ Name = "spellId", Type = "number", Nilable = false },
			},
		},
		{
			Name = "InitializeFrame",
			Type = "Function",
		},
		{
			Name = "PerformItemInteraction",
			Type = "Function",
		},
		{
			Name = "Reset",
			Type = "Function",
		},
		{
			Name = "SetCorruptionReforgerItemTooltip",
			Type = "Function",
		},
		{
			Name = "SetPendingItem",
			Type = "Function",

			Arguments =
			{
				{ Name = "item", Type = "table", Mixin = "ItemLocationMixin", Nilable = true },
			},

			Returns =
			{
				{ Name = "success", Type = "bool", Nilable = false },
			},
		},
	},

	Events =
	{
		{
			Name = "ItemInteractionClose",
			Type = "Event",
			LiteralName = "ITEM_INTERACTION_CLOSE",
		},
		{
			Name = "ItemInteractionItemSelectionUpdated",
			Type = "Event",
			LiteralName = "ITEM_INTERACTION_ITEM_SELECTION_UPDATED",
			Payload =
			{
				{ Name = "itemLocation", Type = "table", Mixin = "ItemLocationMixin", Nilable = true },
			},
		},
		{
			Name = "ItemInteractionOpen",
			Type = "Event",
			LiteralName = "ITEM_INTERACTION_OPEN",
		},
	},

	Tables =
	{
		{
			Name = "ItemInteractionFrameType",
			Type = "Enumeration",
			NumValues = 1,
			MinValue = 0,
			MaxValue = 0,
			Fields =
			{
				{ Name = "CleanseCorruption", Type = "ItemInteractionFrameType", EnumValue = 0 },
			},
		},
		{
			Name = "ItemInteractionFrameInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "textureKit", Type = "string", Nilable = false },
				{ Name = "openSoundKitID", Type = "number", Nilable = false },
				{ Name = "closeSoundKitID", Type = "number", Nilable = false },
				{ Name = "titleText", Type = "string", Nilable = false },
				{ Name = "tutorialText", Type = "string", Nilable = false },
				{ Name = "buttonText", Type = "string", Nilable = false },
				{ Name = "frameType", Type = "ItemInteractionFrameType", Nilable = false },
				{ Name = "description", Type = "string", Nilable = true },
				{ Name = "cost", Type = "number", Nilable = true },
				{ Name = "currencyTypeId", Type = "number", Nilable = true },
				{ Name = "dropInSlotSoundKitId", Type = "number", Nilable = true },
			},
		},
	},
};

APIDocumentation:AddDocumentationTable(ItemInteractionUI);local ItemSocketInfo =
{
	Name = "ItemSocketInfo",
	Type = "System",
	Namespace = "C_ItemSocketInfo",

	Functions =
	{
		{
			Name = "CompleteSocketing",
			Type = "Function",
		},
	},

	Events =
	{
		{
			Name = "SocketInfoAccept",
			Type = "Event",
			LiteralName = "SOCKET_INFO_ACCEPT",
		},
		{
			Name = "SocketInfoBindConfirm",
			Type = "Event",
			LiteralName = "SOCKET_INFO_BIND_CONFIRM",
		},
		{
			Name = "SocketInfoClose",
			Type = "Event",
			LiteralName = "SOCKET_INFO_CLOSE",
		},
		{
			Name = "SocketInfoFailure",
			Type = "Event",
			LiteralName = "SOCKET_INFO_FAILURE",
		},
		{
			Name = "SocketInfoRefundableConfirm",
			Type = "Event",
			LiteralName = "SOCKET_INFO_REFUNDABLE_CONFIRM",
		},
		{
			Name = "SocketInfoSuccess",
			Type = "Event",
			LiteralName = "SOCKET_INFO_SUCCESS",
		},
		{
			Name = "SocketInfoUpdate",
			Type = "Event",
			LiteralName = "SOCKET_INFO_UPDATE",
		},
	},

	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(ItemSocketInfo);local ItemText =
{
	Name = "ItemText",
	Type = "System",
	Namespace = "C_ItemText",

	Functions =
	{
	},

	Events =
	{
		{
			Name = "ItemTextBegin",
			Type = "Event",
			LiteralName = "ITEM_TEXT_BEGIN",
		},
		{
			Name = "ItemTextClosed",
			Type = "Event",
			LiteralName = "ITEM_TEXT_CLOSED",
		},
		{
			Name = "ItemTextReady",
			Type = "Event",
			LiteralName = "ITEM_TEXT_READY",
		},
		{
			Name = "ItemTextTranslation",
			Type = "Event",
			LiteralName = "ITEM_TEXT_TRANSLATION",
			Payload =
			{
				{ Name = "delay", Type = "number", Nilable = false },
			},
		},
	},

	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(ItemText);local ItemUpgrade =
{
	Name = "ItemUpgrade",
	Type = "System",
	Namespace = "C_ItemUpgrade",

	Functions =
	{
		{
			Name = "GetItemHyperlink",
			Type = "Function",

			Returns =
			{
				{ Name = "link", Type = "string", Nilable = false },
			},
		},
	},

	Events =
	{
		{
			Name = "ItemUpgradeMasterClosed",
			Type = "Event",
			LiteralName = "ITEM_UPGRADE_MASTER_CLOSED",
		},
		{
			Name = "ItemUpgradeMasterOpened",
			Type = "Event",
			LiteralName = "ITEM_UPGRADE_MASTER_OPENED",
		},
		{
			Name = "ItemUpgradeMasterSetItem",
			Type = "Event",
			LiteralName = "ITEM_UPGRADE_MASTER_SET_ITEM",
		},
		{
			Name = "ItemUpgradeMasterUpdate",
			Type = "Event",
			LiteralName = "ITEM_UPGRADE_MASTER_UPDATE",
		},
	},

	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(ItemUpgrade);local KeyBindings =
{
	Name = "KeyBindings",
	Type = "System",
	Namespace = "C_KeyBindings",

	Functions =
	{
		{
			Name = "GetCustomBindingType",
			Type = "Function",

			Arguments =
			{
				{ Name = "bindingIndex", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "customBindingType", Type = "CustomBindingType", Nilable = true },
			},
		},
	},

	Events =
	{
		{
			Name = "ModifierStateChanged",
			Type = "Event",
			LiteralName = "MODIFIER_STATE_CHANGED",
			Payload =
			{
				{ Name = "key", Type = "string", Nilable = false },
				{ Name = "down", Type = "number", Nilable = false },
			},
		},
		{
			Name = "UpdateBindings",
			Type = "Event",
			LiteralName = "UPDATE_BINDINGS",
		},
	},

	Tables =
	{
		{
			Name = "CustomBindingType",
			Type = "Enumeration",
			NumValues = 1,
			MinValue = 0,
			MaxValue = 0,
			Fields =
			{
				{ Name = "VoicePushToTalk", Type = "CustomBindingType", EnumValue = 0 },
			},
		},
	},
};

APIDocumentation:AddDocumentationTable(KeyBindings);local KnowledgeBase =
{
	Name = "KnowledgeBase",
	Type = "System",
	Namespace = "C_KnowledgeBase",

	Functions =
	{
	},

	Events =
	{
		{
			Name = "KnowledgeBaseArticleLoadFailure",
			Type = "Event",
			LiteralName = "KNOWLEDGE_BASE_ARTICLE_LOAD_FAILURE",
		},
		{
			Name = "KnowledgeBaseArticleLoadSuccess",
			Type = "Event",
			LiteralName = "KNOWLEDGE_BASE_ARTICLE_LOAD_SUCCESS",
		},
		{
			Name = "KnowledgeBaseQueryLoadFailure",
			Type = "Event",
			LiteralName = "KNOWLEDGE_BASE_QUERY_LOAD_FAILURE",
		},
		{
			Name = "KnowledgeBaseQueryLoadSuccess",
			Type = "Event",
			LiteralName = "KNOWLEDGE_BASE_QUERY_LOAD_SUCCESS",
		},
		{
			Name = "KnowledgeBaseServerMessage",
			Type = "Event",
			LiteralName = "KNOWLEDGE_BASE_SERVER_MESSAGE",
		},
		{
			Name = "KnowledgeBaseSetupLoadFailure",
			Type = "Event",
			LiteralName = "KNOWLEDGE_BASE_SETUP_LOAD_FAILURE",
		},
		{
			Name = "KnowledgeBaseSetupLoadSuccess",
			Type = "Event",
			LiteralName = "KNOWLEDGE_BASE_SETUP_LOAD_SUCCESS",
		},
		{
			Name = "KnowledgeBaseSystemMotdUpdated",
			Type = "Event",
			LiteralName = "KNOWLEDGE_BASE_SYSTEM_MOTD_UPDATED",
		},
	},

	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(KnowledgeBase);local LFGInfo =
{
	Name = "LFGInfo",
	Type = "System",
	Namespace = "C_LFGInfo",

	Functions =
	{
		{
			Name = "CanPlayerUseGroupFinder",
			Type = "Function",

			Returns =
			{
				{ Name = "canUse", Type = "bool", Nilable = false },
				{ Name = "failureReason", Type = "string", Nilable = false },
			},
		},
		{
			Name = "CanPlayerUseLFD",
			Type = "Function",

			Returns =
			{
				{ Name = "canUse", Type = "bool", Nilable = false },
				{ Name = "failureReason", Type = "string", Nilable = false },
			},
		},
		{
			Name = "CanPlayerUseLFR",
			Type = "Function",

			Returns =
			{
				{ Name = "canUse", Type = "bool", Nilable = false },
				{ Name = "failureReason", Type = "string", Nilable = false },
			},
		},
		{
			Name = "CanPlayerUsePVP",
			Type = "Function",

			Returns =
			{
				{ Name = "canUse", Type = "bool", Nilable = false },
				{ Name = "failureReason", Type = "string", Nilable = false },
			},
		},
		{
			Name = "CanPlayerUsePremadeGroup",
			Type = "Function",

			Returns =
			{
				{ Name = "canUse", Type = "bool", Nilable = false },
				{ Name = "failureReason", Type = "string", Nilable = false },
			},
		},
		{
			Name = "CanPlayerUseScenarioFinder",
			Type = "Function",

			Returns =
			{
				{ Name = "canUse", Type = "bool", Nilable = false },
				{ Name = "failureReason", Type = "string", Nilable = false },
			},
		},
		{
			Name = "GetAllEntriesForCategory",
			Type = "Function",

			Arguments =
			{
				{ Name = "category", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "lfgDungeonIDs", Type = "table", InnerType = "number", Nilable = false },
			},
		},
		{
			Name = "GetRoleCheckDifficultyDetails",
			Type = "Function",

			Returns =
			{
				{ Name = "maxLevel", Type = "number", Nilable = true },
				{ Name = "isLevelReduced", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "HideNameFromUI",
			Type = "Function",

			Arguments =
			{
				{ Name = "dungeonID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "shouldHide", Type = "bool", Nilable = false },
			},
		},
	},

	Events =
	{
		{
			Name = "IslandCompleted",
			Type = "Event",
			LiteralName = "ISLAND_COMPLETED",
			Payload =
			{
				{ Name = "mapID", Type = "number", Nilable = false },
				{ Name = "winner", Type = "number", Nilable = false },
			},
		},
		{
			Name = "LfgBootProposalUpdate",
			Type = "Event",
			LiteralName = "LFG_BOOT_PROPOSAL_UPDATE",
		},
		{
			Name = "LfgCompletionReward",
			Type = "Event",
			LiteralName = "LFG_COMPLETION_REWARD",
		},
		{
			Name = "LfgInvalidErrorMessage",
			Type = "Event",
			LiteralName = "LFG_INVALID_ERROR_MESSAGE",
			Payload =
			{
				{ Name = "reason", Type = "number", Nilable = false },
				{ Name = "subReason1", Type = "number", Nilable = false },
				{ Name = "subReason2", Type = "number", Nilable = false },
			},
		},
		{
			Name = "LfgLockInfoReceived",
			Type = "Event",
			LiteralName = "LFG_LOCK_INFO_RECEIVED",
		},
		{
			Name = "LfgOfferContinue",
			Type = "Event",
			LiteralName = "LFG_OFFER_CONTINUE",
			Payload =
			{
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "lfgDungeonsID", Type = "number", Nilable = false },
				{ Name = "typeID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "LfgOpenFromGossip",
			Type = "Event",
			LiteralName = "LFG_OPEN_FROM_GOSSIP",
			Payload =
			{
				{ Name = "dungeonID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "LfgProposalDone",
			Type = "Event",
			LiteralName = "LFG_PROPOSAL_DONE",
		},
		{
			Name = "LfgProposalFailed",
			Type = "Event",
			LiteralName = "LFG_PROPOSAL_FAILED",
		},
		{
			Name = "LfgProposalShow",
			Type = "Event",
			LiteralName = "LFG_PROPOSAL_SHOW",
		},
		{
			Name = "LfgProposalSucceeded",
			Type = "Event",
			LiteralName = "LFG_PROPOSAL_SUCCEEDED",
		},
		{
			Name = "LfgProposalUpdate",
			Type = "Event",
			LiteralName = "LFG_PROPOSAL_UPDATE",
		},
		{
			Name = "LfgQueueStatusUpdate",
			Type = "Event",
			LiteralName = "LFG_QUEUE_STATUS_UPDATE",
		},
		{
			Name = "LfgReadyCheckDeclined",
			Type = "Event",
			LiteralName = "LFG_READY_CHECK_DECLINED",
			Payload =
			{
				{ Name = "name", Type = "string", Nilable = false },
			},
		},
		{
			Name = "LfgReadyCheckHide",
			Type = "Event",
			LiteralName = "LFG_READY_CHECK_HIDE",
		},
		{
			Name = "LfgReadyCheckPlayerIsReady",
			Type = "Event",
			LiteralName = "LFG_READY_CHECK_PLAYER_IS_READY",
			Payload =
			{
				{ Name = "name", Type = "string", Nilable = false },
			},
		},
		{
			Name = "LfgReadyCheckShow",
			Type = "Event",
			LiteralName = "LFG_READY_CHECK_SHOW",
			Payload =
			{
				{ Name = "isRequeue", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "LfgReadyCheckUpdate",
			Type = "Event",
			LiteralName = "LFG_READY_CHECK_UPDATE",
		},
		{
			Name = "LfgRoleCheckDeclined",
			Type = "Event",
			LiteralName = "LFG_ROLE_CHECK_DECLINED",
		},
		{
			Name = "LfgRoleCheckHide",
			Type = "Event",
			LiteralName = "LFG_ROLE_CHECK_HIDE",
		},
		{
			Name = "LfgRoleCheckRoleChosen",
			Type = "Event",
			LiteralName = "LFG_ROLE_CHECK_ROLE_CHOSEN",
			Payload =
			{
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "isTank", Type = "bool", Nilable = false },
				{ Name = "isHealer", Type = "bool", Nilable = false },
				{ Name = "isDamage", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "LfgRoleCheckShow",
			Type = "Event",
			LiteralName = "LFG_ROLE_CHECK_SHOW",
			Payload =
			{
				{ Name = "isRequeue", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "LfgRoleCheckUpdate",
			Type = "Event",
			LiteralName = "LFG_ROLE_CHECK_UPDATE",
		},
		{
			Name = "LfgRoleUpdate",
			Type = "Event",
			LiteralName = "LFG_ROLE_UPDATE",
		},
		{
			Name = "LfgUpdate",
			Type = "Event",
			LiteralName = "LFG_UPDATE",
		},
		{
			Name = "LfgUpdateRandomInfo",
			Type = "Event",
			LiteralName = "LFG_UPDATE_RANDOM_INFO",
		},
		{
			Name = "UpdateLfgList",
			Type = "Event",
			LiteralName = "UPDATE_LFG_LIST",
		},
		{
			Name = "WarfrontCompleted",
			Type = "Event",
			LiteralName = "WARFRONT_COMPLETED",
			Payload =
			{
				{ Name = "mapID", Type = "number", Nilable = false },
				{ Name = "winner", Type = "number", Nilable = false },
			},
		},
	},

	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(LFGInfo);local LFGListInfo =
{
	Name = "LFGList",
	Type = "System",
	Namespace = "C_LFGList",

	Functions =
	{
		{
			Name = "CanActiveEntryUseAutoAccept",
			Type = "Function",

			Returns =
			{
				{ Name = "canUseAutoAccept", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "CanCreateQuestGroup",
			Type = "Function",

			Arguments =
			{
				{ Name = "questID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "canCreate", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ClearApplicationTextFields",
			Type = "Function",
		},
		{
			Name = "ClearCreationTextFields",
			Type = "Function",
		},
		{
			Name = "ClearSearchTextFields",
			Type = "Function",
		},
		{
			Name = "CopyActiveEntryInfoToCreationFields",
			Type = "Function",
		},
		{
			Name = "GetActiveEntryInfo",
			Type = "Function",

			Returns =
			{
				{ Name = "entryData", Type = "LfgEntryData", Nilable = false },
			},
		},
		{
			Name = "GetApplicantInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "applicantID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "applicantData", Type = "LfgApplicantData", Nilable = false },
			},
		},
		{
			Name = "GetSearchResultInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "searchResultID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "searchResultData", Type = "LfgSearchResultData", Nilable = false },
			},
		},
		{
			Name = "HasActiveEntryInfo",
			Type = "Function",

			Returns =
			{
				{ Name = "hasActiveEntryInfo", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "HasSearchResultInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "searchResultID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "hasSearchResultInfo", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "Search",
			Type = "Function",

			Arguments =
			{
				{ Name = "categoryID", Type = "number", Nilable = false },
				{ Name = "filter", Type = "number", Nilable = false, Default = 0 },
				{ Name = "preferredFilters", Type = "number", Nilable = false, Default = 0 },
				{ Name = "languageFilter", Type = "WowLocale", Nilable = true },
			},
		},
		{
			Name = "SetSearchToActivity",
			Type = "Function",

			Arguments =
			{
				{ Name = "activityID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "SetSearchToQuestID",
			Type = "Function",

			Arguments =
			{
				{ Name = "questID", Type = "number", Nilable = false },
			},
		},
	},

	Events =
	{
		{
			Name = "LfgGroupDelistedLeadershipChange",
			Type = "Event",
			LiteralName = "LFG_GROUP_DELISTED_LEADERSHIP_CHANGE",
			Payload =
			{
				{ Name = "listingName", Type = "string", Nilable = false },
				{ Name = "automaticDelistTimeRemaining", Type = "number", Nilable = false },
			},
		},
		{
			Name = "LfgListActiveEntryUpdate",
			Type = "Event",
			LiteralName = "LFG_LIST_ACTIVE_ENTRY_UPDATE",
			Payload =
			{
				{ Name = "created", Type = "bool", Nilable = true },
			},
		},
		{
			Name = "LfgListApplicantListUpdated",
			Type = "Event",
			LiteralName = "LFG_LIST_APPLICANT_LIST_UPDATED",
			Payload =
			{
				{ Name = "newPendingEntry", Type = "bool", Nilable = true },
				{ Name = "newPendingEntryWithData", Type = "bool", Nilable = true },
			},
		},
		{
			Name = "LfgListApplicantUpdated",
			Type = "Event",
			LiteralName = "LFG_LIST_APPLICANT_UPDATED",
			Payload =
			{
				{ Name = "applicantID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "LfgListApplicationStatusUpdated",
			Type = "Event",
			LiteralName = "LFG_LIST_APPLICATION_STATUS_UPDATED",
			Payload =
			{
				{ Name = "searchResultID", Type = "number", Nilable = false },
				{ Name = "newStatus", Type = "string", Nilable = false },
				{ Name = "oldStatus", Type = "string", Nilable = false },
				{ Name = "groupName", Type = "string", Nilable = false },
			},
		},
		{
			Name = "LfgListAvailabilityUpdate",
			Type = "Event",
			LiteralName = "LFG_LIST_AVAILABILITY_UPDATE",
		},
		{
			Name = "LfgListEntryCreationFailed",
			Type = "Event",
			LiteralName = "LFG_LIST_ENTRY_CREATION_FAILED",
		},
		{
			Name = "LfgListEntryExpiredTimeout",
			Type = "Event",
			LiteralName = "LFG_LIST_ENTRY_EXPIRED_TIMEOUT",
		},
		{
			Name = "LfgListEntryExpiredTooManyPlayers",
			Type = "Event",
			LiteralName = "LFG_LIST_ENTRY_EXPIRED_TOO_MANY_PLAYERS",
		},
		{
			Name = "LfgListJoinedGroup",
			Type = "Event",
			LiteralName = "LFG_LIST_JOINED_GROUP",
			Payload =
			{
				{ Name = "searchResultID", Type = "number", Nilable = false },
				{ Name = "groupName", Type = "string", Nilable = false },
			},
		},
		{
			Name = "LfgListSearchFailed",
			Type = "Event",
			LiteralName = "LFG_LIST_SEARCH_FAILED",
			Payload =
			{
				{ Name = "reason", Type = "string", Nilable = true },
			},
		},
		{
			Name = "LfgListSearchResultUpdated",
			Type = "Event",
			LiteralName = "LFG_LIST_SEARCH_RESULT_UPDATED",
			Payload =
			{
				{ Name = "searchResultID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "LfgListSearchResultsReceived",
			Type = "Event",
			LiteralName = "LFG_LIST_SEARCH_RESULTS_RECEIVED",
		},
	},

	Tables =
	{
		{
			Name = "LfgApplicantData",
			Type = "Structure",
			Fields =
			{
				{ Name = "applicantID", Type = "number", Nilable = false },
				{ Name = "applicationStatus", Type = "string", Nilable = false },
				{ Name = "pendingApplicationStatus", Type = "string", Nilable = true },
				{ Name = "numMembers", Type = "number", Nilable = false },
				{ Name = "isNew", Type = "bool", Nilable = false },
				{ Name = "comment", Type = "string", Nilable = false },
				{ Name = "displayOrderID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "LfgEntryData",
			Type = "Structure",
			Fields =
			{
				{ Name = "activityID", Type = "number", Nilable = false },
				{ Name = "requiredItemLevel", Type = "number", Nilable = false },
				{ Name = "requiredHonorLevel", Type = "number", Nilable = false },
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "comment", Type = "string", Nilable = false },
				{ Name = "voiceChat", Type = "string", Nilable = false },
				{ Name = "duration", Type = "number", Nilable = false },
				{ Name = "autoAccept", Type = "bool", Nilable = false },
				{ Name = "privateGroup", Type = "bool", Nilable = false },
				{ Name = "questID", Type = "number", Nilable = true },
			},
		},
		{
			Name = "LfgSearchResultData",
			Type = "Structure",
			Fields =
			{
				{ Name = "searchResultID", Type = "number", Nilable = false },
				{ Name = "activityID", Type = "number", Nilable = false },
				{ Name = "leaderName", Type = "string", Nilable = true },
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "comment", Type = "string", Nilable = false },
				{ Name = "voiceChat", Type = "string", Nilable = false },
				{ Name = "requiredItemLevel", Type = "number", Nilable = false },
				{ Name = "requiredHonorLevel", Type = "number", Nilable = false },
				{ Name = "numMembers", Type = "number", Nilable = false },
				{ Name = "numBNetFriends", Type = "number", Nilable = false },
				{ Name = "numCharFriends", Type = "number", Nilable = false },
				{ Name = "numGuildMates", Type = "number", Nilable = false },
				{ Name = "isDelisted", Type = "bool", Nilable = false },
				{ Name = "autoAccept", Type = "bool", Nilable = false },
				{ Name = "age", Type = "number", Nilable = false },
				{ Name = "questID", Type = "number", Nilable = true },
			},
		},
		{
			Name = "WowLocale",
			Type = "Structure",
			Fields =
			{
				{ Name = "enUS", Type = "bool", Nilable = false, Default = false },
				{ Name = "koKR", Type = "bool", Nilable = false, Default = false },
				{ Name = "frFR", Type = "bool", Nilable = false, Default = false },
				{ Name = "deDE", Type = "bool", Nilable = false, Default = false },
				{ Name = "zhCN", Type = "bool", Nilable = false, Default = false },
				{ Name = "zhTW", Type = "bool", Nilable = false, Default = false },
				{ Name = "esES", Type = "bool", Nilable = false, Default = false },
				{ Name = "esMX", Type = "bool", Nilable = false, Default = false },
				{ Name = "ruRU", Type = "bool", Nilable = false, Default = false },
				{ Name = "ptBR", Type = "bool", Nilable = false, Default = false },
				{ Name = "itIT", Type = "bool", Nilable = false, Default = false },
			},
		},
	},
};

APIDocumentation:AddDocumentationTable(LFGListInfo);local LFGuildInfo =
{
	Name = "LFGuildInfo",
	Type = "System",
	Namespace = "C_LFGuildInfo",

	Functions =
	{
		{
			Name = "GetRecruitingGuildTabardInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "index", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "tabardInfo", Type = "GuildTabardInfo", Nilable = true },
			},
		},
	},

	Events =
	{
		{
			Name = "LfGuildBrowseUpdated",
			Type = "Event",
			LiteralName = "LF_GUILD_BROWSE_UPDATED",
		},
		{
			Name = "LfGuildMembershipListChanged",
			Type = "Event",
			LiteralName = "LF_GUILD_MEMBERSHIP_LIST_CHANGED",
		},
		{
			Name = "LfGuildMembershipListUpdated",
			Type = "Event",
			LiteralName = "LF_GUILD_MEMBERSHIP_LIST_UPDATED",
			Payload =
			{
				{ Name = "numApplicationsRemaining", Type = "number", Nilable = false },
			},
		},
		{
			Name = "LfGuildPostUpdated",
			Type = "Event",
			LiteralName = "LF_GUILD_POST_UPDATED",
		},
		{
			Name = "LfGuildRecruitListChanged",
			Type = "Event",
			LiteralName = "LF_GUILD_RECRUIT_LIST_CHANGED",
		},
		{
			Name = "LfGuildRecruitsUpdated",
			Type = "Event",
			LiteralName = "LF_GUILD_RECRUITS_UPDATED",
		},
	},

	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(LFGuildInfo);local LegendaryCrafting =
{
	Name = "LegendaryCrafting",
	Type = "System",
	Namespace = "C_LegendaryCrafting",

	Functions =
	{
		{
			Name = "CloseRuneforgeInteraction",
			Type = "Function",
		},
		{
			Name = "CraftRuneforgeLegendary",
			Type = "Function",

			Arguments =
			{
				{ Name = "description", Type = "RuneforgeLegendaryCraftDescription", Nilable = false },
			},
		},
		{
			Name = "GetRuneforgeLegendaryComponentInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "runeforgeLegendary", Type = "table", Mixin = "ItemLocationMixin", Nilable = false },
			},

			Returns =
			{
				{ Name = "componentInfo", Type = "RuneforgeLegendaryComponentInfo", Nilable = false },
			},
		},
		{
			Name = "GetRuneforgeLegendaryCost",
			Type = "Function",

			Arguments =
			{
				{ Name = "baseItem", Type = "table", Mixin = "ItemLocationMixin", Nilable = false },
			},

			Returns =
			{
				{ Name = "cost", Type = "table", InnerType = "CurrencyCost", Nilable = false },
			},
		},
		{
			Name = "GetRuneforgeLegendaryCraftSpellID",
			Type = "Function",

			Returns =
			{
				{ Name = "spellID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetRuneforgeLegendaryCurrencies",
			Type = "Function",

			Returns =
			{
				{ Name = "currencies", Type = "table", InnerType = "number", Nilable = false },
			},
		},
		{
			Name = "GetRuneforgeLegendaryUpgradeCost",
			Type = "Function",

			Arguments =
			{
				{ Name = "runeforgeLegendary", Type = "table", Mixin = "ItemLocationMixin", Nilable = false },
				{ Name = "upgradeItem", Type = "table", Mixin = "ItemLocationMixin", Nilable = false },
			},

			Returns =
			{
				{ Name = "cost", Type = "table", InnerType = "CurrencyCost", Nilable = false },
			},
		},
		{
			Name = "GetRuneforgeModifierInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "baseItem", Type = "table", Mixin = "ItemLocationMixin", Nilable = false },
				{ Name = "powerID", Type = "number", Nilable = true },
				{ Name = "addedModifierIndex", Type = "number", Nilable = false },
				{ Name = "modifiers", Type = "table", InnerType = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "description", Type = "string", Nilable = false },
			},
		},
		{
			Name = "GetRuneforgeModifiers",
			Type = "Function",

			Returns =
			{
				{ Name = "modifiedReagentItemIDs", Type = "table", InnerType = "number", Nilable = false },
			},
		},
		{
			Name = "GetRuneforgePowerInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "runeforgePowerID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "power", Type = "RuneforgePower", Nilable = false },
			},
		},
		{
			Name = "GetRuneforgePowerSlots",
			Type = "Function",

			Arguments =
			{
				{ Name = "runeforgePowerID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "slotNames", Type = "table", InnerType = "string", Nilable = false },
			},
		},
		{
			Name = "GetRuneforgePowers",
			Type = "Function",

			Arguments =
			{
				{ Name = "baseItem", Type = "table", Mixin = "ItemLocationMixin", Nilable = true },
			},

			Returns =
			{
				{ Name = "runeforgePowerIDs", Type = "table", InnerType = "number", Nilable = false },
			},
		},
		{
			Name = "IsRuneforgeLegendary",
			Type = "Function",

			Arguments =
			{
				{ Name = "item", Type = "table", Mixin = "ItemLocationMixin", Nilable = false },
			},

			Returns =
			{
				{ Name = "isRuneforgeLegendary", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsUpgradeItemValidForRuneforgeLegendary",
			Type = "Function",

			Arguments =
			{
				{ Name = "runeforgeLegendary", Type = "table", Mixin = "ItemLocationMixin", Nilable = false },
				{ Name = "upgradeItem", Type = "table", Mixin = "ItemLocationMixin", Nilable = false },
			},

			Returns =
			{
				{ Name = "isValid", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsValidRuneforgeBaseItem",
			Type = "Function",

			Arguments =
			{
				{ Name = "baseItem", Type = "table", Mixin = "ItemLocationMixin", Nilable = false },
			},

			Returns =
			{
				{ Name = "isValid", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "MakeRuneforgeCraftDescription",
			Type = "Function",

			Arguments =
			{
				{ Name = "baseItem", Type = "table", Mixin = "ItemLocationMixin", Nilable = false },
				{ Name = "runeforgePowerID", Type = "number", Nilable = false },
				{ Name = "modifiers", Type = "table", InnerType = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "description", Type = "RuneforgeLegendaryCraftDescription", Nilable = false },
			},
		},
		{
			Name = "UpgradeRuneforgeLegendary",
			Type = "Function",

			Arguments =
			{
				{ Name = "runeforgeLegendary", Type = "table", Mixin = "ItemLocationMixin", Nilable = false },
				{ Name = "upgradeItem", Type = "table", Mixin = "ItemLocationMixin", Nilable = false },
			},
		},
	},

	Events =
	{
		{
			Name = "RuneforgeLegendaryCraftingClosed",
			Type = "Event",
			LiteralName = "RUNEFORGE_LEGENDARY_CRAFTING_CLOSED",
		},
		{
			Name = "RuneforgeLegendaryCraftingOpened",
			Type = "Event",
			LiteralName = "RUNEFORGE_LEGENDARY_CRAFTING_OPENED",
			Payload =
			{
				{ Name = "isUpgrade", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "RuneforgePowerInfoUpdated",
			Type = "Event",
			LiteralName = "RUNEFORGE_POWER_INFO_UPDATED",
			Payload =
			{
				{ Name = "powerID", Type = "number", Nilable = false },
			},
		},
	},

	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(LegendaryCrafting);local LevelLink =
{
	Name = "LevelLink",
	Type = "System",
	Namespace = "C_LevelLink",

	Functions =
	{
		{
			Name = "IsActionLocked",
			Type = "Function",

			Arguments =
			{
				{ Name = "actionID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "isLocked", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsSpellLocked",
			Type = "Function",

			Arguments =
			{
				{ Name = "spellID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "isLocked", Type = "bool", Nilable = false },
			},
		},
	},

	Events =
	{
	},

	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(LevelLink);local LevelSquish =
{
	Name = "LevelSquish",
	Type = "System",
	Namespace = "C_LevelSquish",

	Functions =
	{
		{
			Name = "ConvertFollowerLevel",
			Type = "Function",

			Arguments =
			{
				{ Name = "level", Type = "number", Nilable = false },
				{ Name = "maxFollowerLevel", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "squishedLevel", Type = "number", Nilable = false },
			},
		},
		{
			Name = "ConvertPlayerLevel",
			Type = "Function",

			Arguments =
			{
				{ Name = "level", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "squishedLevel", Type = "number", Nilable = false },
			},
		},
	},

	Events =
	{
	},

	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(LevelSquish);local LoadingScreen =
{
	Name = "LoadingScreen",
	Type = "System",
	Namespace = "C_LoadingScreen",

	Functions =
	{
	},

	Events =
	{
		{
			Name = "LoadingScreenDisabled",
			Type = "Event",
			LiteralName = "LOADING_SCREEN_DISABLED",
		},
		{
			Name = "LoadingScreenEnabled",
			Type = "Event",
			LiteralName = "LOADING_SCREEN_ENABLED",
		},
	},

	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(LoadingScreen);local Loot =
{
	Name = "Loot",
	Type = "System",
	Namespace = "C_Loot",

	Functions =
	{
		{
			Name = "IsLegacyLootModeEnabled",
			Type = "Function",

			Returns =
			{
				{ Name = "isLegacyLootModeEnabled", Type = "bool", Nilable = false },
			},
		},
	},

	Events =
	{
		{
			Name = "AzeriteEmpoweredItemLooted",
			Type = "Event",
			LiteralName = "AZERITE_EMPOWERED_ITEM_LOOTED",
			Payload =
			{
				{ Name = "itemLink", Type = "string", Nilable = false },
			},
		},
		{
			Name = "BonusRollActivate",
			Type = "Event",
			LiteralName = "BONUS_ROLL_ACTIVATE",
		},
		{
			Name = "BonusRollDeactivate",
			Type = "Event",
			LiteralName = "BONUS_ROLL_DEACTIVATE",
		},
		{
			Name = "BonusRollFailed",
			Type = "Event",
			LiteralName = "BONUS_ROLL_FAILED",
		},
		{
			Name = "BonusRollResult",
			Type = "Event",
			LiteralName = "BONUS_ROLL_RESULT",
			Payload =
			{
				{ Name = "typeIdentifier", Type = "string", Nilable = false },
				{ Name = "itemLink", Type = "string", Nilable = false },
				{ Name = "quantity", Type = "number", Nilable = false },
				{ Name = "specID", Type = "number", Nilable = false },
				{ Name = "sex", Type = "number", Nilable = false },
				{ Name = "personalLootToast", Type = "bool", Nilable = false },
				{ Name = "currencyID", Type = "number", Nilable = true },
				{ Name = "isSecondaryResult", Type = "bool", Nilable = false },
				{ Name = "corrupted", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "BonusRollStarted",
			Type = "Event",
			LiteralName = "BONUS_ROLL_STARTED",
		},
		{
			Name = "CancelLootRoll",
			Type = "Event",
			LiteralName = "CANCEL_LOOT_ROLL",
			Payload =
			{
				{ Name = "rollID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "ConfirmDisenchantRoll",
			Type = "Event",
			LiteralName = "CONFIRM_DISENCHANT_ROLL",
			Payload =
			{
				{ Name = "rollID", Type = "number", Nilable = false },
				{ Name = "rollType", Type = "number", Nilable = false },
			},
		},
		{
			Name = "ConfirmLootRoll",
			Type = "Event",
			LiteralName = "CONFIRM_LOOT_ROLL",
			Payload =
			{
				{ Name = "rollID", Type = "number", Nilable = false },
				{ Name = "rollType", Type = "number", Nilable = false },
				{ Name = "confirmReason", Type = "string", Nilable = false },
			},
		},
		{
			Name = "EncounterLootReceived",
			Type = "Event",
			LiteralName = "ENCOUNTER_LOOT_RECEIVED",
			Payload =
			{
				{ Name = "encounterID", Type = "number", Nilable = false },
				{ Name = "itemID", Type = "number", Nilable = false },
				{ Name = "itemLink", Type = "string", Nilable = false },
				{ Name = "quantity", Type = "number", Nilable = false },
				{ Name = "itemName", Type = "string", Nilable = false },
				{ Name = "fileName", Type = "string", Nilable = false },
			},
		},
		{
			Name = "GarrisonMissionBonusRollLoot",
			Type = "Event",
			LiteralName = "GARRISON_MISSION_BONUS_ROLL_LOOT",
			Payload =
			{
				{ Name = "itemID", Type = "number", Nilable = false },
				{ Name = "quantity", Type = "number", Nilable = false },
			},
		},
		{
			Name = "ItemPush",
			Type = "Event",
			LiteralName = "ITEM_PUSH",
			Payload =
			{
				{ Name = "bagSlot", Type = "number", Nilable = false },
				{ Name = "iconFileID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "LootBindConfirm",
			Type = "Event",
			LiteralName = "LOOT_BIND_CONFIRM",
			Payload =
			{
				{ Name = "lootSlot", Type = "number", Nilable = false },
			},
		},
		{
			Name = "LootClosed",
			Type = "Event",
			LiteralName = "LOOT_CLOSED",
		},
		{
			Name = "LootHistoryAutoShow",
			Type = "Event",
			LiteralName = "LOOT_HISTORY_AUTO_SHOW",
			Payload =
			{
				{ Name = "rollID", Type = "number", Nilable = false },
				{ Name = "isMasterLoot", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "LootHistoryFullUpdate",
			Type = "Event",
			LiteralName = "LOOT_HISTORY_FULL_UPDATE",
		},
		{
			Name = "LootHistoryRollChanged",
			Type = "Event",
			LiteralName = "LOOT_HISTORY_ROLL_CHANGED",
			Payload =
			{
				{ Name = "historyIndex", Type = "number", Nilable = false },
				{ Name = "playerIndex", Type = "number", Nilable = false },
			},
		},
		{
			Name = "LootHistoryRollComplete",
			Type = "Event",
			LiteralName = "LOOT_HISTORY_ROLL_COMPLETE",
		},
		{
			Name = "LootItemAvailable",
			Type = "Event",
			LiteralName = "LOOT_ITEM_AVAILABLE",
			Payload =
			{
				{ Name = "itemTooltip", Type = "string", Nilable = false },
				{ Name = "lootHandle", Type = "number", Nilable = false },
			},
		},
		{
			Name = "LootItemRollWon",
			Type = "Event",
			LiteralName = "LOOT_ITEM_ROLL_WON",
			Payload =
			{
				{ Name = "itemLink", Type = "string", Nilable = false },
				{ Name = "rollQuantity", Type = "number", Nilable = false },
				{ Name = "rollType", Type = "number", Nilable = false },
				{ Name = "roll", Type = "number", Nilable = false },
				{ Name = "upgraded", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "LootOpened",
			Type = "Event",
			LiteralName = "LOOT_OPENED",
			Payload =
			{
				{ Name = "autoLoot", Type = "bool", Nilable = false },
				{ Name = "isFromItem", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "LootReady",
			Type = "Event",
			LiteralName = "LOOT_READY",
			Payload =
			{
				{ Name = "autoloot", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "LootRollsComplete",
			Type = "Event",
			LiteralName = "LOOT_ROLLS_COMPLETE",
			Payload =
			{
				{ Name = "lootHandle", Type = "number", Nilable = false },
			},
		},
		{
			Name = "LootSlotChanged",
			Type = "Event",
			LiteralName = "LOOT_SLOT_CHANGED",
			Payload =
			{
				{ Name = "lootSlot", Type = "number", Nilable = false },
			},
		},
		{
			Name = "LootSlotCleared",
			Type = "Event",
			LiteralName = "LOOT_SLOT_CLEARED",
			Payload =
			{
				{ Name = "lootSlot", Type = "number", Nilable = false },
			},
		},
		{
			Name = "OpenMasterLootList",
			Type = "Event",
			LiteralName = "OPEN_MASTER_LOOT_LIST",
		},
		{
			Name = "PetBattleLootReceived",
			Type = "Event",
			LiteralName = "PET_BATTLE_LOOT_RECEIVED",
			Payload =
			{
				{ Name = "typeIdentifier", Type = "string", Nilable = false },
				{ Name = "itemLink", Type = "string", Nilable = false },
				{ Name = "quantity", Type = "number", Nilable = false },
			},
		},
		{
			Name = "PlayerLootSpecUpdated",
			Type = "Event",
			LiteralName = "PLAYER_LOOT_SPEC_UPDATED",
		},
		{
			Name = "QuestCurrencyLootReceived",
			Type = "Event",
			LiteralName = "QUEST_CURRENCY_LOOT_RECEIVED",
			Payload =
			{
				{ Name = "questID", Type = "number", Nilable = false },
				{ Name = "currencyId", Type = "number", Nilable = false },
				{ Name = "quantity", Type = "number", Nilable = false },
			},
		},
		{
			Name = "QuestLootReceived",
			Type = "Event",
			LiteralName = "QUEST_LOOT_RECEIVED",
			Payload =
			{
				{ Name = "questID", Type = "number", Nilable = false },
				{ Name = "itemLink", Type = "string", Nilable = false },
				{ Name = "quantity", Type = "number", Nilable = false },
			},
		},
		{
			Name = "ShowLootToast",
			Type = "Event",
			LiteralName = "SHOW_LOOT_TOAST",
			Payload =
			{
				{ Name = "typeIdentifier", Type = "string", Nilable = false },
				{ Name = "itemLink", Type = "string", Nilable = false },
				{ Name = "quantity", Type = "number", Nilable = false },
				{ Name = "specID", Type = "number", Nilable = false },
				{ Name = "sex", Type = "number", Nilable = false },
				{ Name = "personalLootToast", Type = "bool", Nilable = false },
				{ Name = "toastMethod", Type = "number", Nilable = false },
				{ Name = "lessAwesome", Type = "bool", Nilable = false },
				{ Name = "upgraded", Type = "bool", Nilable = false },
				{ Name = "corrupted", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ShowLootToastLegendaryLooted",
			Type = "Event",
			LiteralName = "SHOW_LOOT_TOAST_LEGENDARY_LOOTED",
			Payload =
			{
				{ Name = "itemLink", Type = "string", Nilable = false },
			},
		},
		{
			Name = "ShowLootToastUpgrade",
			Type = "Event",
			LiteralName = "SHOW_LOOT_TOAST_UPGRADE",
			Payload =
			{
				{ Name = "itemLink", Type = "string", Nilable = false },
				{ Name = "quantity", Type = "number", Nilable = false },
				{ Name = "specID", Type = "number", Nilable = false },
				{ Name = "sex", Type = "number", Nilable = false },
				{ Name = "baseQuality", Type = "number", Nilable = false },
				{ Name = "personalLootToast", Type = "bool", Nilable = false },
				{ Name = "lessAwesome", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ShowPvpFactionLootToast",
			Type = "Event",
			LiteralName = "SHOW_PVP_FACTION_LOOT_TOAST",
			Payload =
			{
				{ Name = "typeIdentifier", Type = "string", Nilable = false },
				{ Name = "itemLink", Type = "string", Nilable = false },
				{ Name = "quantity", Type = "number", Nilable = false },
				{ Name = "specID", Type = "number", Nilable = false },
				{ Name = "sex", Type = "number", Nilable = false },
				{ Name = "personalLootToast", Type = "bool", Nilable = false },
				{ Name = "lessAwesome", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ShowRatedPvpRewardToast",
			Type = "Event",
			LiteralName = "SHOW_RATED_PVP_REWARD_TOAST",
			Payload =
			{
				{ Name = "typeIdentifier", Type = "string", Nilable = false },
				{ Name = "itemLink", Type = "string", Nilable = false },
				{ Name = "quantity", Type = "number", Nilable = false },
				{ Name = "specID", Type = "number", Nilable = false },
				{ Name = "sex", Type = "number", Nilable = false },
				{ Name = "personalLootToast", Type = "bool", Nilable = false },
				{ Name = "lessAwesome", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "StartLootRoll",
			Type = "Event",
			LiteralName = "START_LOOT_ROLL",
			Payload =
			{
				{ Name = "rollID", Type = "number", Nilable = false },
				{ Name = "rollTime", Type = "number", Nilable = false },
				{ Name = "lootHandle", Type = "number", Nilable = true },
			},
		},
		{
			Name = "TrialCapReachedMoney",
			Type = "Event",
			LiteralName = "TRIAL_CAP_REACHED_MONEY",
		},
		{
			Name = "UpdateMasterLootList",
			Type = "Event",
			LiteralName = "UPDATE_MASTER_LOOT_LIST",
		},
	},

	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(Loot);local LoreText =
{
	Name = "LoreText",
	Type = "System",
	Namespace = "C_LoreText",

	Functions =
	{
		{
			Name = "RequestLoreTextForCampaignID",
			Type = "Function",

			Arguments =
			{
				{ Name = "campaignID", Type = "number", Nilable = false },
			},
		},
	},

	Events =
	{
		{
			Name = "LoreTextUpdatedCampaign",
			Type = "Event",
			LiteralName = "LORE_TEXT_UPDATED_CAMPAIGN",
			Payload =
			{
				{ Name = "campaignID", Type = "number", Nilable = false },
				{ Name = "textEntries", Type = "table", InnerType = "LoreTextEntry", Nilable = false },
			},
		},
	},

	Tables =
	{
		{
			Name = "LoreTextEntry",
			Type = "Structure",
			Fields =
			{
				{ Name = "text", Type = "string", Nilable = false },
				{ Name = "isHeader", Type = "bool", Nilable = false },
			},
		},
	},
};

APIDocumentation:AddDocumentationTable(LoreText);local LossOfControl =
{
	Name = "LossOfControl",
	Type = "System",
	Namespace = "C_LossOfControl",

	Functions =
	{
		{
			Name = "GetActiveLossOfControlData",
			Type = "Function",

			Arguments =
			{
				{ Name = "index", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "event", Type = "LossOfControlData", Nilable = true },
			},
		},
		{
			Name = "GetActiveLossOfControlDataByUnit",
			Type = "Function",

			Arguments =
			{
				{ Name = "unitToken", Type = "string", Nilable = false },
				{ Name = "index", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "event", Type = "LossOfControlData", Nilable = true },
			},
		},
		{
			Name = "GetActiveLossOfControlDataCount",
			Type = "Function",

			Returns =
			{
				{ Name = "count", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetActiveLossOfControlDataCountByUnit",
			Type = "Function",

			Arguments =
			{
				{ Name = "unitToken", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "count", Type = "number", Nilable = false },
			},
		},
	},

	Events =
	{
		{
			Name = "LossOfControlAdded",
			Type = "Event",
			LiteralName = "LOSS_OF_CONTROL_ADDED",
			Payload =
			{
				{ Name = "effectIndex", Type = "number", Nilable = false },
			},
		},
		{
			Name = "LossOfControlCommentatorAdded",
			Type = "Event",
			LiteralName = "LOSS_OF_CONTROL_COMMENTATOR_ADDED",
			Payload =
			{
				{ Name = "victim", Type = "string", Nilable = false },
				{ Name = "effectIndex", Type = "number", Nilable = false },
			},
		},
		{
			Name = "LossOfControlCommentatorUpdate",
			Type = "Event",
			LiteralName = "LOSS_OF_CONTROL_COMMENTATOR_UPDATE",
			Payload =
			{
				{ Name = "victim", Type = "string", Nilable = false },
			},
		},
		{
			Name = "LossOfControlUpdate",
			Type = "Event",
			LiteralName = "LOSS_OF_CONTROL_UPDATE",
		},
		{
			Name = "PlayerControlGained",
			Type = "Event",
			LiteralName = "PLAYER_CONTROL_GAINED",
		},
		{
			Name = "PlayerControlLost",
			Type = "Event",
			LiteralName = "PLAYER_CONTROL_LOST",
		},
	},

	Tables =
	{
		{
			Name = "LossOfControlData",
			Type = "Structure",
			Fields =
			{
				{ Name = "locType", Type = "string", Nilable = false },
				{ Name = "spellID", Type = "number", Nilable = false },
				{ Name = "displayText", Type = "string", Nilable = false },
				{ Name = "iconTexture", Type = "number", Nilable = false },
				{ Name = "startTime", Type = "number", Nilable = true },
				{ Name = "timeRemaining", Type = "number", Nilable = true },
				{ Name = "duration", Type = "number", Nilable = true },
				{ Name = "lockoutSchool", Type = "number", Nilable = false },
				{ Name = "priority", Type = "number", Nilable = false },
				{ Name = "displayType", Type = "number", Nilable = false },
			},
		},
	},
};

APIDocumentation:AddDocumentationTable(LossOfControl);local MailInfo =
{
	Name = "MailInfo",
	Type = "System",
	Namespace = "C_Mail",

	Functions =
	{
		{
			Name = "CanCheckInbox",
			Type = "Function",

			Returns =
			{
				{ Name = "canCheckInbox", Type = "bool", Nilable = false },
				{ Name = "secondsUntilAllowed", Type = "number", Nilable = false },
			},
		},
		{
			Name = "HasInboxMoney",
			Type = "Function",

			Arguments =
			{
				{ Name = "inboxIndex", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "inboxItemHasMoneyAttached", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsCommandPending",
			Type = "Function",

			Returns =
			{
				{ Name = "isCommandPending", Type = "bool", Nilable = false },
			},
		},
	},

	Events =
	{
		{
			Name = "CloseInboxItem",
			Type = "Event",
			LiteralName = "CLOSE_INBOX_ITEM",
			Payload =
			{
				{ Name = "mailIndex", Type = "number", Nilable = false },
			},
		},
		{
			Name = "MailClosed",
			Type = "Event",
			LiteralName = "MAIL_CLOSED",
		},
		{
			Name = "MailFailed",
			Type = "Event",
			LiteralName = "MAIL_FAILED",
			Payload =
			{
				{ Name = "itemID", Type = "number", Nilable = true },
			},
		},
		{
			Name = "MailInboxUpdate",
			Type = "Event",
			LiteralName = "MAIL_INBOX_UPDATE",
		},
		{
			Name = "MailLockSendItems",
			Type = "Event",
			LiteralName = "MAIL_LOCK_SEND_ITEMS",
			Payload =
			{
				{ Name = "attachSlot", Type = "number", Nilable = false },
				{ Name = "itemLink", Type = "string", Nilable = false },
			},
		},
		{
			Name = "MailSendInfoUpdate",
			Type = "Event",
			LiteralName = "MAIL_SEND_INFO_UPDATE",
		},
		{
			Name = "MailSendSuccess",
			Type = "Event",
			LiteralName = "MAIL_SEND_SUCCESS",
		},
		{
			Name = "MailShow",
			Type = "Event",
			LiteralName = "MAIL_SHOW",
		},
		{
			Name = "MailSuccess",
			Type = "Event",
			LiteralName = "MAIL_SUCCESS",
			Payload =
			{
				{ Name = "itemID", Type = "number", Nilable = true },
			},
		},
		{
			Name = "MailUnlockSendItems",
			Type = "Event",
			LiteralName = "MAIL_UNLOCK_SEND_ITEMS",
		},
		{
			Name = "SendMailCodChanged",
			Type = "Event",
			LiteralName = "SEND_MAIL_COD_CHANGED",
		},
		{
			Name = "SendMailMoneyChanged",
			Type = "Event",
			LiteralName = "SEND_MAIL_MONEY_CHANGED",
		},
		{
			Name = "UpdatePendingMail",
			Type = "Event",
			LiteralName = "UPDATE_PENDING_MAIL",
		},
	},

	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(MailInfo);local Map =
{
	Name = "MapUI",
	Type = "System",
	Namespace = "C_Map",

	Functions =
	{
		{
			Name = "ClearUserWaypoint",
			Type = "Function",
		},
		{
			Name = "CloseWorldMapInteraction",
			Type = "Function",
		},
		{
			Name = "GetAreaInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "areaID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "name", Type = "string", Nilable = false },
			},
		},
		{
			Name = "GetBestMapForUnit",
			Type = "Function",
			Documentation = { "Only works for the player and party members." },

			Arguments =
			{
				{ Name = "unitToken", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "uiMapID", Type = "number", Nilable = true },
			},
		},
		{
			Name = "GetBountySetMaps",
			Type = "Function",

			Arguments =
			{
				{ Name = "bountySetID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "mapIDs", Type = "table", InnerType = "number", Nilable = false },
			},
		},
		{
			Name = "GetFallbackWorldMapID",
			Type = "Function",

			Returns =
			{
				{ Name = "uiMapID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetMapArtBackgroundAtlas",
			Type = "Function",

			Arguments =
			{
				{ Name = "uiMapID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "atlasName", Type = "string", Nilable = false },
			},
		},
		{
			Name = "GetMapArtHelpTextPosition",
			Type = "Function",

			Arguments =
			{
				{ Name = "uiMapID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "position", Type = "MapCanvasPosition", Nilable = false },
			},
		},
		{
			Name = "GetMapArtID",
			Type = "Function",

			Arguments =
			{
				{ Name = "uiMapID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "uiMapArtID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetMapArtLayerTextures",
			Type = "Function",

			Arguments =
			{
				{ Name = "uiMapID", Type = "number", Nilable = false },
				{ Name = "layerIndex", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "textures", Type = "table", InnerType = "number", Nilable = false },
			},
		},
		{
			Name = "GetMapArtLayers",
			Type = "Function",

			Arguments =
			{
				{ Name = "uiMapID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "layerInfo", Type = "table", InnerType = "UiMapLayerInfo", Nilable = false },
			},
		},
		{
			Name = "GetMapBannersForMap",
			Type = "Function",

			Arguments =
			{
				{ Name = "uiMapID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "mapBanners", Type = "table", InnerType = "MapBannerInfo", Nilable = false },
			},
		},
		{
			Name = "GetMapChildrenInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "uiMapID", Type = "number", Nilable = false },
				{ Name = "mapType", Type = "UIMapType", Nilable = true },
				{ Name = "allDescendants", Type = "bool", Nilable = true },
			},

			Returns =
			{
				{ Name = "info", Type = "table", InnerType = "UiMapDetails", Nilable = false },
			},
		},
		{
			Name = "GetMapDisplayInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "uiMapID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "hideIcons", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "GetMapGroupID",
			Type = "Function",

			Arguments =
			{
				{ Name = "uiMapID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "uiMapGroupID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetMapGroupMembersInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "uiMapGroupID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "info", Type = "table", InnerType = "UiMapGroupMemberInfo", Nilable = false },
			},
		},
		{
			Name = "GetMapHighlightInfoAtPosition",
			Type = "Function",

			Arguments =
			{
				{ Name = "uiMapID", Type = "number", Nilable = false },
				{ Name = "x", Type = "number", Nilable = false },
				{ Name = "y", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "fileDataID", Type = "number", Nilable = false },
				{ Name = "atlasID", Type = "string", Nilable = false },
				{ Name = "texturePercentageX", Type = "number", Nilable = false },
				{ Name = "texturePercentageY", Type = "number", Nilable = false },
				{ Name = "textureX", Type = "number", Nilable = false },
				{ Name = "textureY", Type = "number", Nilable = false },
				{ Name = "scrollChildX", Type = "number", Nilable = false },
				{ Name = "scrollChildY", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetMapInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "uiMapID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "info", Type = "UiMapDetails", Nilable = false },
			},
		},
		{
			Name = "GetMapInfoAtPosition",
			Type = "Function",

			Arguments =
			{
				{ Name = "uiMapID", Type = "number", Nilable = false },
				{ Name = "x", Type = "number", Nilable = false },
				{ Name = "y", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "info", Type = "UiMapDetails", Nilable = false },
			},
		},
		{
			Name = "GetMapLevels",
			Type = "Function",

			Arguments =
			{
				{ Name = "uiMapID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "playerMinLevel", Type = "number", Nilable = false },
				{ Name = "playerMaxLevel", Type = "number", Nilable = false },
				{ Name = "petMinLevel", Type = "number", Nilable = false, Default = 0 },
				{ Name = "petMaxLevel", Type = "number", Nilable = false, Default = 0 },
			},
		},
		{
			Name = "GetMapLinksForMap",
			Type = "Function",

			Arguments =
			{
				{ Name = "uiMapID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "mapLinks", Type = "table", InnerType = "MapLinkInfo", Nilable = false },
			},
		},
		{
			Name = "GetMapPosFromWorldPos",
			Type = "Function",

			Arguments =
			{
				{ Name = "continentID", Type = "number", Nilable = false },
				{ Name = "worldPosition", Type = "table", Mixin = "Vector2DMixin", Nilable = false },
				{ Name = "overrideUiMapID", Type = "number", Nilable = true },
			},

			Returns =
			{
				{ Name = "uiMapID", Type = "number", Nilable = false },
				{ Name = "mapPosition", Type = "table", Mixin = "Vector2DMixin", Nilable = false },
			},
		},
		{
			Name = "GetMapRectOnMap",
			Type = "Function",

			Arguments =
			{
				{ Name = "uiMapID", Type = "number", Nilable = false },
				{ Name = "topUiMapID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "minX", Type = "number", Nilable = false },
				{ Name = "maxX", Type = "number", Nilable = false },
				{ Name = "minY", Type = "number", Nilable = false },
				{ Name = "maxY", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetMapWorldSize",
			Type = "Function",
			Documentation = { "Returns the size in yards of the area represented by the map." },

			Arguments =
			{
				{ Name = "uiMapID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "width", Type = "number", Nilable = false },
				{ Name = "height", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetPlayerMapPosition",
			Type = "Function",
			Documentation = { "Only works for the player and party members." },

			Arguments =
			{
				{ Name = "uiMapID", Type = "number", Nilable = false },
				{ Name = "unitToken", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "position", Type = "table", Mixin = "Vector2DMixin", Nilable = true },
			},
		},
		{
			Name = "GetUserWaypoint",
			Type = "Function",

			Returns =
			{
				{ Name = "point", Type = "table", Nilable = false },
			},
		},
		{
			Name = "GetUserWaypointFromHyperlink",
			Type = "Function",

			Arguments =
			{
				{ Name = "hyperlink", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "point", Type = "table", Nilable = false },
			},
		},
		{
			Name = "GetUserWaypointHyperlink",
			Type = "Function",

			Returns =
			{
				{ Name = "hyperlink", Type = "string", Nilable = false },
			},
		},
		{
			Name = "GetUserWaypointPositionForMap",
			Type = "Function",

			Arguments =
			{
				{ Name = "uiMapID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "mapPosition", Type = "table", Mixin = "Vector2DMixin", Nilable = false },
			},
		},
		{
			Name = "GetWorldPosFromMapPos",
			Type = "Function",

			Arguments =
			{
				{ Name = "uiMapID", Type = "number", Nilable = false },
				{ Name = "mapPosition", Type = "table", Mixin = "Vector2DMixin", Nilable = false },
			},

			Returns =
			{
				{ Name = "continentID", Type = "number", Nilable = false },
				{ Name = "worldPosition", Type = "table", Mixin = "Vector2DMixin", Nilable = false },
			},
		},
		{
			Name = "HasUserWaypoint",
			Type = "Function",

			Returns =
			{
				{ Name = "hasUserWaypoint", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "MapHasArt",
			Type = "Function",

			Arguments =
			{
				{ Name = "uiMapID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "hasArt", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "RequestPreloadMap",
			Type = "Function",

			Arguments =
			{
				{ Name = "uiMapID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "SetUserWaypoint",
			Type = "Function",

			Arguments =
			{
				{ Name = "point", Type = "table", Nilable = false },
			},
		},
	},

	Events =
	{
		{
			Name = "NewWmoChunk",
			Type = "Event",
			LiteralName = "NEW_WMO_CHUNK",
		},
		{
			Name = "UserWaypointUpdated",
			Type = "Event",
			LiteralName = "USER_WAYPOINT_UPDATED",
		},
		{
			Name = "WorldMapClose",
			Type = "Event",
			LiteralName = "WORLD_MAP_CLOSE",
		},
		{
			Name = "WorldMapOpen",
			Type = "Event",
			LiteralName = "WORLD_MAP_OPEN",
			Payload =
			{
				{ Name = "uiMapID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "ZoneChanged",
			Type = "Event",
			LiteralName = "ZONE_CHANGED",
		},
		{
			Name = "ZoneChangedIndoors",
			Type = "Event",
			LiteralName = "ZONE_CHANGED_INDOORS",
		},
		{
			Name = "ZoneChangedNewArea",
			Type = "Event",
			LiteralName = "ZONE_CHANGED_NEW_AREA",
		},
	},

	Tables =
	{
		{
			Name = "MapCanvasPosition",
			Type = "Enumeration",
			NumValues = 5,
			MinValue = 0,
			MaxValue = 4,
			Fields =
			{
				{ Name = "None", Type = "MapCanvasPosition", EnumValue = 0 },
				{ Name = "BottomLeft", Type = "MapCanvasPosition", EnumValue = 1 },
				{ Name = "BottomRight", Type = "MapCanvasPosition", EnumValue = 2 },
				{ Name = "TopLeft", Type = "MapCanvasPosition", EnumValue = 3 },
				{ Name = "TopRight", Type = "MapCanvasPosition", EnumValue = 4 },
			},
		},
		{
			Name = "UIMapSystem",
			Type = "Enumeration",
			NumValues = 3,
			MinValue = 0,
			MaxValue = 2,
			Fields =
			{
				{ Name = "World", Type = "UIMapSystem", EnumValue = 0 },
				{ Name = "Taxi", Type = "UIMapSystem", EnumValue = 1 },
				{ Name = "Adventure", Type = "UIMapSystem", EnumValue = 2 },
			},
		},
		{
			Name = "UIMapType",
			Type = "Enumeration",
			NumValues = 7,
			MinValue = 0,
			MaxValue = 6,
			Fields =
			{
				{ Name = "Cosmic", Type = "UIMapType", EnumValue = 0 },
				{ Name = "World", Type = "UIMapType", EnumValue = 1 },
				{ Name = "Continent", Type = "UIMapType", EnumValue = 2 },
				{ Name = "Zone", Type = "UIMapType", EnumValue = 3 },
				{ Name = "Dungeon", Type = "UIMapType", EnumValue = 4 },
				{ Name = "Micro", Type = "UIMapType", EnumValue = 5 },
				{ Name = "Orphan", Type = "UIMapType", EnumValue = 6 },
			},
		},
		{
			Name = "MapBannerInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "areaPoiID", Type = "number", Nilable = false },
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "atlasName", Type = "string", Nilable = false },
				{ Name = "uiTextureKit", Type = "string", Nilable = true },
			},
		},
		{
			Name = "MapLinkInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "areaPoiID", Type = "number", Nilable = false },
				{ Name = "position", Type = "table", Mixin = "Vector2DMixin", Nilable = false },
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "atlasName", Type = "string", Nilable = false },
				{ Name = "linkedUiMapID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "UiMapDetails",
			Type = "Structure",
			Fields =
			{
				{ Name = "mapID", Type = "number", Nilable = false },
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "mapType", Type = "UIMapType", Nilable = false },
				{ Name = "parentMapID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "UiMapGroupMemberInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "mapID", Type = "number", Nilable = false },
				{ Name = "relativeHeightIndex", Type = "number", Nilable = false },
				{ Name = "name", Type = "string", Nilable = false },
			},
		},
		{
			Name = "UiMapLayerInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "layerWidth", Type = "number", Nilable = false },
				{ Name = "layerHeight", Type = "number", Nilable = false },
				{ Name = "tileWidth", Type = "number", Nilable = false },
				{ Name = "tileHeight", Type = "number", Nilable = false },
				{ Name = "minScale", Type = "number", Nilable = false },
				{ Name = "maxScale", Type = "number", Nilable = false },
				{ Name = "additionalZoomSteps", Type = "number", Nilable = false },
			},
		},
	},
};

APIDocumentation:AddDocumentationTable(Map);local MapExploration =
{
	Name = "MapExplorationInfo",
	Type = "System",
	Namespace = "C_MapExplorationInfo",

	Functions =
	{
		{
			Name = "GetExploredAreaIDsAtPosition",
			Type = "Function",

			Arguments =
			{
				{ Name = "uiMapID", Type = "number", Nilable = false },
				{ Name = "normalizedPosition", Type = "table", Mixin = "Vector2DMixin", Nilable = false },
			},

			Returns =
			{
				{ Name = "areaID", Type = "table", InnerType = "number", Nilable = true },
			},
		},
		{
			Name = "GetExploredMapTextures",
			Type = "Function",

			Arguments =
			{
				{ Name = "uiMapID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "overlayInfo", Type = "table", InnerType = "UiMapExplorationInfo", Nilable = false },
			},
		},
	},

	Events =
	{
		{
			Name = "MapExplorationUpdated",
			Type = "Event",
			LiteralName = "MAP_EXPLORATION_UPDATED",
		},
	},

	Tables =
	{
		{
			Name = "UiMapExplorationHitRect",
			Type = "Structure",
			Fields =
			{
				{ Name = "top", Type = "number", Nilable = false },
				{ Name = "bottom", Type = "number", Nilable = false },
				{ Name = "left", Type = "number", Nilable = false },
				{ Name = "right", Type = "number", Nilable = false },
			},
		},
		{
			Name = "UiMapExplorationInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "textureWidth", Type = "number", Nilable = false },
				{ Name = "textureHeight", Type = "number", Nilable = false },
				{ Name = "offsetX", Type = "number", Nilable = false },
				{ Name = "offsetY", Type = "number", Nilable = false },
				{ Name = "isShownByMouseOver", Type = "bool", Nilable = false },
				{ Name = "fileDataIDs", Type = "table", InnerType = "number", Nilable = false },
				{ Name = "hitRect", Type = "UiMapExplorationHitRect", Nilable = false },
			},
		},
	},
};

APIDocumentation:AddDocumentationTable(MapExploration);local MerchantFrame =
{
	Name = "MerchantFrame",
	Type = "System",
	Namespace = "C_MerchantFrame",

	Functions =
	{
		{
			Name = "GetBuybackItemID",
			Type = "Function",

			Arguments =
			{
				{ Name = "buybackSlotIndex", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "buybackItemID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "IsMerchantItemRefundable",
			Type = "Function",

			Arguments =
			{
				{ Name = "index", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "refundable", Type = "bool", Nilable = false },
			},
		},
	},

	Events =
	{
		{
			Name = "MerchantClosed",
			Type = "Event",
			LiteralName = "MERCHANT_CLOSED",
		},
		{
			Name = "MerchantFilterItemUpdate",
			Type = "Event",
			LiteralName = "MERCHANT_FILTER_ITEM_UPDATE",
			Payload =
			{
				{ Name = "itemID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "MerchantShow",
			Type = "Event",
			LiteralName = "MERCHANT_SHOW",
		},
		{
			Name = "MerchantUpdate",
			Type = "Event",
			LiteralName = "MERCHANT_UPDATE",
		},
	},

	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(MerchantFrame);local Minimap =
{
	Name = "Minimap",
	Type = "System",
	Namespace = "C_Minimap",

	Functions =
	{
		{
			Name = "GetDrawGroundTextures",
			Type = "Function",

			Returns =
			{
				{ Name = "draw", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "GetUiMapID",
			Type = "Function",

			Returns =
			{
				{ Name = "uiMapID", Type = "number", Nilable = true },
			},
		},
		{
			Name = "GetViewRadius",
			Type = "Function",

			Returns =
			{
				{ Name = "yards", Type = "number", Nilable = false },
			},
		},
		{
			Name = "IsRotateMinimapIgnored",
			Type = "Function",

			Returns =
			{
				{ Name = "isIgnored", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "SetDrawGroundTextures",
			Type = "Function",

			Arguments =
			{
				{ Name = "draw", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "SetIgnoreRotateMinimap",
			Type = "Function",

			Arguments =
			{
				{ Name = "ignore", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ShouldUseHybridMinimap",
			Type = "Function",

			Returns =
			{
				{ Name = "shouldUse", Type = "bool", Nilable = false },
			},
		},
	},

	Events =
	{
		{
			Name = "MinimapPing",
			Type = "Event",
			LiteralName = "MINIMAP_PING",
			Payload =
			{
				{ Name = "unitTarget", Type = "string", Nilable = false },
				{ Name = "y", Type = "number", Nilable = false },
				{ Name = "x", Type = "number", Nilable = false },
			},
		},
		{
			Name = "MinimapUpdateTracking",
			Type = "Event",
			LiteralName = "MINIMAP_UPDATE_TRACKING",
		},
		{
			Name = "MinimapUpdateZoom",
			Type = "Event",
			LiteralName = "MINIMAP_UPDATE_ZOOM",
		},
	},

	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(Minimap);local MountJournal =
{
	Name = "MountJournal",
	Type = "System",
	Namespace = "C_MountJournal",

	Functions =
	{
		{
			Name = "ApplyMountEquipment",
			Type = "Function",

			Arguments =
			{
				{ Name = "itemLocation", Type = "table", Mixin = "ItemLocationMixin", Nilable = false },
			},

			Returns =
			{
				{ Name = "canContinue", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "AreMountEquipmentEffectsSuppressed",
			Type = "Function",

			Returns =
			{
				{ Name = "areEffectsSuppressed", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ClearFanfare",
			Type = "Function",

			Arguments =
			{
				{ Name = "mountID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "ClearRecentFanfares",
			Type = "Function",
		},
		{
			Name = "Dismiss",
			Type = "Function",
		},
		{
			Name = "GetAppliedMountEquipmentID",
			Type = "Function",

			Returns =
			{
				{ Name = "itemID", Type = "number", Nilable = true },
			},
		},
		{
			Name = "GetCollectedFilterSetting",
			Type = "Function",

			Arguments =
			{
				{ Name = "filterIndex", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "isChecked", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "GetDisplayedMountAllCreatureDisplayInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "mountIndex", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "allDisplayInfo", Type = "table", InnerType = "MountCreatureDisplayInfo", Nilable = false },
			},
		},
		{
			Name = "GetDisplayedMountInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "displayIndex", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "spellID", Type = "number", Nilable = false },
				{ Name = "icon", Type = "number", Nilable = false },
				{ Name = "isActive", Type = "bool", Nilable = false },
				{ Name = "isUsable", Type = "bool", Nilable = false },
				{ Name = "sourceType", Type = "number", Nilable = false },
				{ Name = "isFavorite", Type = "bool", Nilable = false },
				{ Name = "isFactionSpecific", Type = "bool", Nilable = false },
				{ Name = "faction", Type = "number", Nilable = true },
				{ Name = "shouldHideOnChar", Type = "bool", Nilable = false },
				{ Name = "isCollected", Type = "bool", Nilable = false },
				{ Name = "mountID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetDisplayedMountInfoExtra",
			Type = "Function",

			Arguments =
			{
				{ Name = "mountIndex", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "creatureDisplayInfoID", Type = "number", Nilable = true },
				{ Name = "description", Type = "string", Nilable = false },
				{ Name = "source", Type = "string", Nilable = false },
				{ Name = "isSelfMount", Type = "bool", Nilable = false },
				{ Name = "mountTypeID", Type = "number", Nilable = false },
				{ Name = "uiModelSceneID", Type = "number", Nilable = false },
				{ Name = "animID", Type = "number", Nilable = false },
				{ Name = "spellVisualKitID", Type = "number", Nilable = false },
				{ Name = "disablePlayerMountPreview", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "GetIsFavorite",
			Type = "Function",

			Arguments =
			{
				{ Name = "mountIndex", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "isFavorite", Type = "bool", Nilable = false },
				{ Name = "canSetFavorite", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "GetMountAllCreatureDisplayInfoByID",
			Type = "Function",

			Arguments =
			{
				{ Name = "mountID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "allDisplayInfo", Type = "table", InnerType = "MountCreatureDisplayInfo", Nilable = false },
			},
		},
		{
			Name = "GetMountEquipmentUnlockLevel",
			Type = "Function",

			Returns =
			{
				{ Name = "level", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetMountFromItem",
			Type = "Function",

			Arguments =
			{
				{ Name = "itemID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "mountID", Type = "number", Nilable = true },
			},
		},
		{
			Name = "GetMountFromSpell",
			Type = "Function",

			Arguments =
			{
				{ Name = "spellID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "mountID", Type = "number", Nilable = true },
			},
		},
		{
			Name = "GetMountIDs",
			Type = "Function",

			Returns =
			{
				{ Name = "mountIDs", Type = "table", InnerType = "number", Nilable = false },
			},
		},
		{
			Name = "GetMountInfoByID",
			Type = "Function",

			Arguments =
			{
				{ Name = "mountID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "spellID", Type = "number", Nilable = false },
				{ Name = "icon", Type = "number", Nilable = false },
				{ Name = "isActive", Type = "bool", Nilable = false },
				{ Name = "isUsable", Type = "bool", Nilable = false },
				{ Name = "sourceType", Type = "number", Nilable = false },
				{ Name = "isFavorite", Type = "bool", Nilable = false },
				{ Name = "isFactionSpecific", Type = "bool", Nilable = false },
				{ Name = "faction", Type = "number", Nilable = true },
				{ Name = "shouldHideOnChar", Type = "bool", Nilable = false },
				{ Name = "isCollected", Type = "bool", Nilable = false },
				{ Name = "mountID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetMountInfoExtraByID",
			Type = "Function",

			Arguments =
			{
				{ Name = "mountID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "creatureDisplayInfoID", Type = "number", Nilable = true },
				{ Name = "description", Type = "string", Nilable = false },
				{ Name = "source", Type = "string", Nilable = false },
				{ Name = "isSelfMount", Type = "bool", Nilable = false },
				{ Name = "mountTypeID", Type = "number", Nilable = false },
				{ Name = "uiModelSceneID", Type = "number", Nilable = false },
				{ Name = "animID", Type = "number", Nilable = false },
				{ Name = "spellVisualKitID", Type = "number", Nilable = false },
				{ Name = "disablePlayerMountPreview", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "GetMountUsabilityByID",
			Type = "Function",

			Arguments =
			{
				{ Name = "mountID", Type = "number", Nilable = false },
				{ Name = "checkIndoors", Type = "bool", Nilable = false },
			},

			Returns =
			{
				{ Name = "isUsable", Type = "bool", Nilable = false },
				{ Name = "useError", Type = "string", Nilable = true },
			},
		},
		{
			Name = "GetNumDisplayedMounts",
			Type = "Function",

			Returns =
			{
				{ Name = "numMounts", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetNumMounts",
			Type = "Function",

			Returns =
			{
				{ Name = "numMounts", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetNumMountsNeedingFanfare",
			Type = "Function",

			Returns =
			{
				{ Name = "numMountsNeedingFanfare", Type = "number", Nilable = false },
			},
		},
		{
			Name = "IsItemMountEquipment",
			Type = "Function",
			Documentation = { "Determines if the item is mount equipment based on its class and subclass." },

			Arguments =
			{
				{ Name = "itemLocation", Type = "table", Mixin = "ItemLocationMixin", Nilable = false },
			},

			Returns =
			{
				{ Name = "isMountEquipment", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsMountEquipmentApplied",
			Type = "Function",

			Returns =
			{
				{ Name = "isApplied", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsSourceChecked",
			Type = "Function",

			Arguments =
			{
				{ Name = "filterIndex", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "isChecked", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsValidSourceFilter",
			Type = "Function",

			Arguments =
			{
				{ Name = "filterIndex", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "isValid", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "NeedsFanfare",
			Type = "Function",

			Arguments =
			{
				{ Name = "mountID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "needsFanfare", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "Pickup",
			Type = "Function",

			Arguments =
			{
				{ Name = "displayIndex", Type = "number", Nilable = false },
			},
		},
		{
			Name = "SetAllSourceFilters",
			Type = "Function",

			Arguments =
			{
				{ Name = "isChecked", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "SetCollectedFilterSetting",
			Type = "Function",

			Arguments =
			{
				{ Name = "filterIndex", Type = "number", Nilable = false },
				{ Name = "isChecked", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "SetIsFavorite",
			Type = "Function",

			Arguments =
			{
				{ Name = "mountIndex", Type = "number", Nilable = false },
				{ Name = "isFavorite", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "SetSearch",
			Type = "Function",

			Arguments =
			{
				{ Name = "searchValue", Type = "string", Nilable = false },
			},
		},
		{
			Name = "SetSourceFilter",
			Type = "Function",

			Arguments =
			{
				{ Name = "filterIndex", Type = "number", Nilable = false },
				{ Name = "isChecked", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "SummonByID",
			Type = "Function",

			Arguments =
			{
				{ Name = "mountID", Type = "number", Nilable = false },
			},
		},
	},

	Events =
	{
		{
			Name = "MountEquipmentApplyResult",
			Type = "Event",
			LiteralName = "MOUNT_EQUIPMENT_APPLY_RESULT",
			Payload =
			{
				{ Name = "success", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "MountJournalSearchUpdated",
			Type = "Event",
			LiteralName = "MOUNT_JOURNAL_SEARCH_UPDATED",
		},
		{
			Name = "MountJournalUsabilityChanged",
			Type = "Event",
			LiteralName = "MOUNT_JOURNAL_USABILITY_CHANGED",
		},
		{
			Name = "NewMountAdded",
			Type = "Event",
			LiteralName = "NEW_MOUNT_ADDED",
			Payload =
			{
				{ Name = "mountID", Type = "number", Nilable = false },
			},
		},
	},

	Tables =
	{
		{
			Name = "MountCreatureDisplayInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "creatureDisplayID", Type = "number", Nilable = false },
				{ Name = "isVisible", Type = "bool", Nilable = false },
			},
		},
	},
};

APIDocumentation:AddDocumentationTable(MountJournal);local MythicPlusInfo =
{
	Name = "MythicPlusInfo",
	Type = "System",
	Namespace = "C_MythicPlus",

	Functions =
	{
		{
			Name = "GetCurrentAffixes",
			Type = "Function",

			Returns =
			{
				{ Name = "affixIDs", Type = "table", InnerType = "MythicPlusKeystoneAffix", Nilable = false },
			},
		},
		{
			Name = "GetCurrentSeason",
			Type = "Function",

			Returns =
			{
				{ Name = "seasonID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetLastWeeklyBestInformation",
			Type = "Function",

			Returns =
			{
				{ Name = "challengeMapId", Type = "number", Nilable = false },
				{ Name = "level", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetOwnedKeystoneChallengeMapID",
			Type = "Function",

			Returns =
			{
				{ Name = "challengeMapID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetOwnedKeystoneLevel",
			Type = "Function",

			Returns =
			{
				{ Name = "keyStoneLevel", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetRewardLevelForDifficultyLevel",
			Type = "Function",

			Arguments =
			{
				{ Name = "difficultyLevel", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "weeklyRewardLevel", Type = "number", Nilable = false },
				{ Name = "endOfRunRewardLevel", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetRewardLevelFromKeystoneLevel",
			Type = "Function",

			Arguments =
			{
				{ Name = "keystoneLevel", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "rewardLevel", Type = "number", Nilable = true },
			},
		},
		{
			Name = "GetRunHistory",
			Type = "Function",

			Arguments =
			{
				{ Name = "includePreviousWeeks", Type = "bool", Nilable = false, Default = false },
				{ Name = "includeIncompleteRuns", Type = "bool", Nilable = false, Default = false },
			},

			Returns =
			{
				{ Name = "runs", Type = "table", InnerType = "MythicPlusRunInfo", Nilable = false },
			},
		},
		{
			Name = "GetSeasonBestForMap",
			Type = "Function",

			Arguments =
			{
				{ Name = "mapChallengeModeID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "intimeInfo", Type = "MapSeasonBestInfo", Nilable = true },
				{ Name = "overtimeInfo", Type = "MapSeasonBestInfo", Nilable = true },
			},
		},
		{
			Name = "GetWeeklyBestForMap",
			Type = "Function",

			Arguments =
			{
				{ Name = "mapChallengeModeID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "durationSec", Type = "number", Nilable = false },
				{ Name = "level", Type = "number", Nilable = false },
				{ Name = "completionDate", Type = "MythicPlusDate", Nilable = false },
				{ Name = "affixIDs", Type = "table", InnerType = "number", Nilable = false },
				{ Name = "members", Type = "table", InnerType = "MythicPlusMember", Nilable = false },
			},
		},
		{
			Name = "GetWeeklyChestRewardLevel",
			Type = "Function",

			Returns =
			{
				{ Name = "currentWeekBestLevel", Type = "number", Nilable = false },
				{ Name = "weeklyRewardLevel", Type = "number", Nilable = false },
				{ Name = "nextDifficultyWeeklyRewardLevel", Type = "number", Nilable = false },
				{ Name = "nextBestLevel", Type = "number", Nilable = false },
			},
		},
		{
			Name = "IsMythicPlusActive",
			Type = "Function",

			Returns =
			{
				{ Name = "isMythicPlusActive", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsWeeklyRewardAvailable",
			Type = "Function",

			Returns =
			{
				{ Name = "weeklyRewardAvailable", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "RequestCurrentAffixes",
			Type = "Function",
		},
		{
			Name = "RequestMapInfo",
			Type = "Function",
		},
		{
			Name = "RequestRewards",
			Type = "Function",
		},
	},

	Events =
	{
		{
			Name = "MythicPlusCurrentAffixUpdate",
			Type = "Event",
			LiteralName = "MYTHIC_PLUS_CURRENT_AFFIX_UPDATE",
		},
		{
			Name = "MythicPlusNewSeasonRecord",
			Type = "Event",
			LiteralName = "MYTHIC_PLUS_NEW_SEASON_RECORD",
			Payload =
			{
				{ Name = "mapChallengeModeID", Type = "number", Nilable = false },
				{ Name = "completionMilliseconds", Type = "number", Nilable = false },
				{ Name = "level", Type = "number", Nilable = false },
			},
		},
		{
			Name = "MythicPlusNewWeeklyRecord",
			Type = "Event",
			LiteralName = "MYTHIC_PLUS_NEW_WEEKLY_RECORD",
			Payload =
			{
				{ Name = "mapChallengeModeID", Type = "number", Nilable = false },
				{ Name = "completionMilliseconds", Type = "number", Nilable = false },
				{ Name = "level", Type = "number", Nilable = false },
			},
		},
	},

	Tables =
	{
		{
			Name = "MapSeasonBestInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "durationSec", Type = "number", Nilable = false },
				{ Name = "level", Type = "number", Nilable = false },
				{ Name = "completionDate", Type = "MythicPlusDate", Nilable = false },
				{ Name = "affixIDs", Type = "table", InnerType = "number", Nilable = false },
				{ Name = "members", Type = "table", InnerType = "MythicPlusMember", Nilable = false },
			},
		},
		{
			Name = "MythicPlusDate",
			Type = "Structure",
			Fields =
			{
				{ Name = "year", Type = "number", Nilable = false },
				{ Name = "month", Type = "number", Nilable = false },
				{ Name = "day", Type = "number", Nilable = false },
				{ Name = "hour", Type = "number", Nilable = false },
				{ Name = "minute", Type = "number", Nilable = false },
			},
		},
		{
			Name = "MythicPlusKeystoneAffix",
			Type = "Structure",
			Fields =
			{
				{ Name = "id", Type = "number", Nilable = false },
				{ Name = "seasonID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "MythicPlusMember",
			Type = "Structure",
			Fields =
			{
				{ Name = "name", Type = "string", Nilable = true },
				{ Name = "specID", Type = "number", Nilable = false },
				{ Name = "classID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "MythicPlusRunInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "mapChallengeModeID", Type = "number", Nilable = false },
				{ Name = "level", Type = "number", Nilable = false },
				{ Name = "thisWeek", Type = "bool", Nilable = false },
				{ Name = "completed", Type = "bool", Nilable = false },
			},
		},
	},
};

APIDocumentation:AddDocumentationTable(MythicPlusInfo);local NamePlateManager =
{
	Name = "NamePlateManager",
	Type = "System",
	Namespace = "C_NamePlateManager",

	Functions =
	{
	},

	Events =
	{
		{
			Name = "ForbiddenNamePlateCreated",
			Type = "Event",
			LiteralName = "FORBIDDEN_NAME_PLATE_CREATED",
			Payload =
			{
				{ Name = "namePlateFrame", Type = "table", Nilable = false },
			},
		},
		{
			Name = "ForbiddenNamePlateUnitAdded",
			Type = "Event",
			LiteralName = "FORBIDDEN_NAME_PLATE_UNIT_ADDED",
			Payload =
			{
				{ Name = "unitToken", Type = "string", Nilable = false },
			},
		},
		{
			Name = "ForbiddenNamePlateUnitRemoved",
			Type = "Event",
			LiteralName = "FORBIDDEN_NAME_PLATE_UNIT_REMOVED",
			Payload =
			{
				{ Name = "unitToken", Type = "string", Nilable = false },
			},
		},
		{
			Name = "NamePlateCreated",
			Type = "Event",
			LiteralName = "NAME_PLATE_CREATED",
			Payload =
			{
				{ Name = "namePlateFrame", Type = "table", Nilable = false },
			},
		},
		{
			Name = "NamePlateUnitAdded",
			Type = "Event",
			LiteralName = "NAME_PLATE_UNIT_ADDED",
			Payload =
			{
				{ Name = "unitToken", Type = "string", Nilable = false },
			},
		},
		{
			Name = "NamePlateUnitRemoved",
			Type = "Event",
			LiteralName = "NAME_PLATE_UNIT_REMOVED",
			Payload =
			{
				{ Name = "unitToken", Type = "string", Nilable = false },
			},
		},
	},

	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(NamePlateManager);local PaperDollInfo =
{
	Name = "PaperDollInfo",
	Type = "System",
	Namespace = "C_PaperDollInfo",

	Functions =
	{
		{
			Name = "GetArmorEffectiveness",
			Type = "Function",

			Arguments =
			{
				{ Name = "armor", Type = "number", Nilable = false },
				{ Name = "attackerLevel", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "effectiveness", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetArmorEffectivenessAgainstTarget",
			Type = "Function",

			Arguments =
			{
				{ Name = "armor", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "effectiveness", Type = "number", Nilable = true },
			},
		},
		{
			Name = "GetInspectAzeriteItemEmpoweredChoices",
			Type = "Function",

			Arguments =
			{
				{ Name = "unit", Type = "string", Nilable = false },
				{ Name = "equipmentSlotIndex", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "azeritePowerIDs", Type = "table", InnerType = "number", Nilable = false },
			},
		},
		{
			Name = "GetInspectItemLevel",
			Type = "Function",

			Arguments =
			{
				{ Name = "unit", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "equippedItemLevel", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetMinItemLevel",
			Type = "Function",

			Returns =
			{
				{ Name = "minItemLevel", Type = "number", Nilable = true },
			},
		},
		{
			Name = "GetStaggerPercentage",
			Type = "Function",

			Arguments =
			{
				{ Name = "unit", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "stagger", Type = "number", Nilable = false },
				{ Name = "staggerAgainstTarget", Type = "number", Nilable = true },
			},
		},
		{
			Name = "OffhandHasShield",
			Type = "Function",

			Returns =
			{
				{ Name = "offhandHasShield", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "OffhandHasWeapon",
			Type = "Function",

			Returns =
			{
				{ Name = "offhandHasWeapon", Type = "bool", Nilable = false },
			},
		},
	},

	Events =
	{
		{
			Name = "AvoidanceUpdate",
			Type = "Event",
			LiteralName = "AVOIDANCE_UPDATE",
		},
		{
			Name = "CharacterPointsChanged",
			Type = "Event",
			LiteralName = "CHARACTER_POINTS_CHANGED",
			Payload =
			{
				{ Name = "change", Type = "number", Nilable = false },
			},
		},
		{
			Name = "CharacterUpgradeSpellTierSet",
			Type = "Event",
			LiteralName = "CHARACTER_UPGRADE_SPELL_TIER_SET",
			Payload =
			{
				{ Name = "tierIndex", Type = "number", Nilable = false },
			},
		},
		{
			Name = "CombatRatingUpdate",
			Type = "Event",
			LiteralName = "COMBAT_RATING_UPDATE",
		},
		{
			Name = "DisableXpGain",
			Type = "Event",
			LiteralName = "DISABLE_XP_GAIN",
		},
		{
			Name = "EnableXpGain",
			Type = "Event",
			LiteralName = "ENABLE_XP_GAIN",
		},
		{
			Name = "EquipBindConfirm",
			Type = "Event",
			LiteralName = "EQUIP_BIND_CONFIRM",
			Payload =
			{
				{ Name = "slot", Type = "number", Nilable = false },
			},
		},
		{
			Name = "InspectHonorUpdate",
			Type = "Event",
			LiteralName = "INSPECT_HONOR_UPDATE",
		},
		{
			Name = "InspectReady",
			Type = "Event",
			LiteralName = "INSPECT_READY",
			Payload =
			{
				{ Name = "inspecteeGUID", Type = "string", Nilable = false },
			},
		},
		{
			Name = "LifestealUpdate",
			Type = "Event",
			LiteralName = "LIFESTEAL_UPDATE",
		},
		{
			Name = "MasteryUpdate",
			Type = "Event",
			LiteralName = "MASTERY_UPDATE",
		},
		{
			Name = "PetSpellPowerUpdate",
			Type = "Event",
			LiteralName = "PET_SPELL_POWER_UPDATE",
		},
		{
			Name = "PlayerAvgItemLevelUpdate",
			Type = "Event",
			LiteralName = "PLAYER_AVG_ITEM_LEVEL_UPDATE",
		},
		{
			Name = "PlayerEquipmentChanged",
			Type = "Event",
			LiteralName = "PLAYER_EQUIPMENT_CHANGED",
			Payload =
			{
				{ Name = "equipmentSlot", Type = "number", Nilable = false },
				{ Name = "hasCurrent", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "PvpPowerUpdate",
			Type = "Event",
			LiteralName = "PVP_POWER_UPDATE",
		},
		{
			Name = "SpeedUpdate",
			Type = "Event",
			LiteralName = "SPEED_UPDATE",
		},
		{
			Name = "SpellPowerChanged",
			Type = "Event",
			LiteralName = "SPELL_POWER_CHANGED",
		},
		{
			Name = "SturdinessUpdate",
			Type = "Event",
			LiteralName = "STURDINESS_UPDATE",
		},
		{
			Name = "UpdateFaction",
			Type = "Event",
			LiteralName = "UPDATE_FACTION",
		},
		{
			Name = "UpdateInventoryAlerts",
			Type = "Event",
			LiteralName = "UPDATE_INVENTORY_ALERTS",
		},
		{
			Name = "UpdateInventoryDurability",
			Type = "Event",
			LiteralName = "UPDATE_INVENTORY_DURABILITY",
		},
	},

	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(PaperDollInfo);local PartyInfo =
{
	Name = "PartyInfo",
	Type = "System",
	Namespace = "C_PartyInfo",

	Functions =
	{
		{
			Name = "AllowedToDoPartyConversion",
			Type = "Function",

			Arguments =
			{
				{ Name = "toRaid", Type = "bool", Nilable = false },
			},

			Returns =
			{
				{ Name = "allowed", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "CanInvite",
			Type = "Function",

			Returns =
			{
				{ Name = "allowedToInvite", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ConfirmConvertToRaid",
			Type = "Function",
			Documentation = { "Immediately convert to raid with no regard for potentially destructive actions." },
		},
		{
			Name = "ConfirmInviteTravelPass",
			Type = "Function",

			Arguments =
			{
				{ Name = "targetName", Type = "string", Nilable = false },
				{ Name = "targetGUID", Type = "string", Nilable = false },
			},
		},
		{
			Name = "ConfirmInviteUnit",
			Type = "Function",
			Documentation = { "Immediately invites the named unit to a party, with no regard for potentially destructive actions." },

			Arguments =
			{
				{ Name = "targetName", Type = "string", Nilable = false },
			},
		},
		{
			Name = "ConfirmLeaveParty",
			Type = "Function",
			Documentation = { "Immediately leave the party with no regard for potentially destructive actions" },

			Arguments =
			{
				{ Name = "category", Type = "number", Nilable = true },
			},
		},
		{
			Name = "ConfirmRequestInviteFromUnit",
			Type = "Function",
			Documentation = { "Immediately request an invite into the target party, this is the confirmation function to call after RequestInviteFromUnit, or if you would like to skip the confirmation process." },

			Arguments =
			{
				{ Name = "targetName", Type = "string", Nilable = false },
				{ Name = "tank", Type = "bool", Nilable = true },
				{ Name = "healer", Type = "bool", Nilable = true },
				{ Name = "dps", Type = "bool", Nilable = true },
			},
		},
		{
			Name = "ConvertToParty",
			Type = "Function",
		},
		{
			Name = "ConvertToRaid",
			Type = "Function",
			Documentation = { "Usually this will convert to raid immediately. In some cases (e.g. PartySync) the user will be prompted to confirm converting to raid, because it's potentially destructive." },
		},
		{
			Name = "DoCountdown",
			Type = "Function",

			Arguments =
			{
				{ Name = "seconds", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetActiveCategories",
			Type = "Function",

			Returns =
			{
				{ Name = "categories", Type = "table", InnerType = "number", Nilable = false },
			},
		},
		{
			Name = "GetInviteConfirmationInvalidQueues",
			Type = "Function",

			Arguments =
			{
				{ Name = "inviteGUID", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "invalidQueues", Type = "table", InnerType = "QueueSpecificInfo", Nilable = false },
			},
		},
		{
			Name = "GetInviteReferralInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "inviteGUID", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "outReferredByGuid", Type = "string", Nilable = false },
				{ Name = "outReferredByName", Type = "string", Nilable = false },
				{ Name = "outRelationType", Type = "PartyRequestJoinRelation", Nilable = false },
				{ Name = "outIsQuickJoin", Type = "bool", Nilable = false },
				{ Name = "outClubId", Type = "string", Nilable = false },
			},
		},
		{
			Name = "GetMinLevel",
			Type = "Function",

			Arguments =
			{
				{ Name = "category", Type = "number", Nilable = true, Documentation = { "If not provided, the active party is used" } },
			},

			Returns =
			{
				{ Name = "minLevel", Type = "number", Nilable = false },
			},
		},
		{
			Name = "InviteUnit",
			Type = "Function",
			Documentation = { "Attempt to invite the named unit to a party, requires confirmation in some cases (e.g. the party will convert to a raid, or if there is a party sync in progress)." },

			Arguments =
			{
				{ Name = "targetName", Type = "string", Nilable = false },
			},
		},
		{
			Name = "IsPartyFull",
			Type = "Function",

			Arguments =
			{
				{ Name = "category", Type = "number", Nilable = true, Documentation = { "If not provided, the active party is used" } },
			},

			Returns =
			{
				{ Name = "isFull", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "LeaveParty",
			Type = "Function",
			Documentation = { "Usually this will leave the party immediately. In some cases (e.g. PartySync) the user will be prompted to confirm leaving the party, because it's potentially destructive" },

			Arguments =
			{
				{ Name = "category", Type = "number", Nilable = true },
			},
		},
		{
			Name = "RequestInviteFromUnit",
			Type = "Function",
			Documentation = { "Attempt to request an invite into the target party, requires confirmation in some cases (e.g. there is a party sync in progress)." },

			Arguments =
			{
				{ Name = "targetName", Type = "string", Nilable = false },
				{ Name = "tank", Type = "bool", Nilable = true },
				{ Name = "healer", Type = "bool", Nilable = true },
				{ Name = "dps", Type = "bool", Nilable = true },
			},
		},
	},

	Events =
	{
		{
			Name = "BnetRequestInviteConfirmation",
			Type = "Event",
			LiteralName = "BNET_REQUEST_INVITE_CONFIRMATION",
			Payload =
			{
				{ Name = "gameAccountID", Type = "number", Nilable = false },
				{ Name = "questSessionActive", Type = "bool", Nilable = false },
				{ Name = "tank", Type = "bool", Nilable = false },
				{ Name = "healer", Type = "bool", Nilable = false },
				{ Name = "dps", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ConvertToRaidConfirmation",
			Type = "Event",
			LiteralName = "CONVERT_TO_RAID_CONFIRMATION",
		},
		{
			Name = "EnteredDifferentInstanceFromParty",
			Type = "Event",
			LiteralName = "ENTERED_DIFFERENT_INSTANCE_FROM_PARTY",
		},
		{
			Name = "GroupFormed",
			Type = "Event",
			LiteralName = "GROUP_FORMED",
			Payload =
			{
				{ Name = "category", Type = "number", Nilable = false },
				{ Name = "partyGUID", Type = "string", Nilable = false },
			},
		},
		{
			Name = "GroupInviteConfirmation",
			Type = "Event",
			LiteralName = "GROUP_INVITE_CONFIRMATION",
		},
		{
			Name = "GroupJoined",
			Type = "Event",
			LiteralName = "GROUP_JOINED",
			Payload =
			{
				{ Name = "category", Type = "number", Nilable = false },
				{ Name = "partyGUID", Type = "string", Nilable = false },
			},
		},
		{
			Name = "GroupLeft",
			Type = "Event",
			LiteralName = "GROUP_LEFT",
			Payload =
			{
				{ Name = "category", Type = "number", Nilable = false },
				{ Name = "partyGUID", Type = "string", Nilable = false },
			},
		},
		{
			Name = "GroupRosterUpdate",
			Type = "Event",
			LiteralName = "GROUP_ROSTER_UPDATE",
		},
		{
			Name = "InstanceBootStart",
			Type = "Event",
			LiteralName = "INSTANCE_BOOT_START",
		},
		{
			Name = "InstanceBootStop",
			Type = "Event",
			LiteralName = "INSTANCE_BOOT_STOP",
		},
		{
			Name = "InstanceGroupSizeChanged",
			Type = "Event",
			LiteralName = "INSTANCE_GROUP_SIZE_CHANGED",
		},
		{
			Name = "InviteToPartyConfirmation",
			Type = "Event",
			LiteralName = "INVITE_TO_PARTY_CONFIRMATION",
			Payload =
			{
				{ Name = "targetName", Type = "string", Nilable = false },
				{ Name = "willConvertToRaid", Type = "bool", Nilable = false },
				{ Name = "questSessionActive", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "InviteTravelPassConfirmation",
			Type = "Event",
			LiteralName = "INVITE_TRAVEL_PASS_CONFIRMATION",
			Payload =
			{
				{ Name = "targetName", Type = "string", Nilable = false },
				{ Name = "targetGUID", Type = "string", Nilable = false },
				{ Name = "willConvertToRaid", Type = "bool", Nilable = false },
				{ Name = "questSessionActive", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "LeavePartyConfirmation",
			Type = "Event",
			LiteralName = "LEAVE_PARTY_CONFIRMATION",
		},
		{
			Name = "PartyInviteCancel",
			Type = "Event",
			LiteralName = "PARTY_INVITE_CANCEL",
		},
		{
			Name = "PartyInviteRequest",
			Type = "Event",
			LiteralName = "PARTY_INVITE_REQUEST",
			Payload =
			{
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "isTank", Type = "bool", Nilable = false },
				{ Name = "isHealer", Type = "bool", Nilable = false },
				{ Name = "isDamage", Type = "bool", Nilable = false },
				{ Name = "isNativeRealm", Type = "bool", Nilable = false },
				{ Name = "allowMultipleRoles", Type = "bool", Nilable = false },
				{ Name = "inviterGUID", Type = "string", Nilable = false },
				{ Name = "questSessionActive", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "PartyLeaderChanged",
			Type = "Event",
			LiteralName = "PARTY_LEADER_CHANGED",
		},
		{
			Name = "PartyLfgRestricted",
			Type = "Event",
			LiteralName = "PARTY_LFG_RESTRICTED",
		},
		{
			Name = "PartyLootMethodChanged",
			Type = "Event",
			LiteralName = "PARTY_LOOT_METHOD_CHANGED",
		},
		{
			Name = "PartyMemberDisable",
			Type = "Event",
			LiteralName = "PARTY_MEMBER_DISABLE",
			Payload =
			{
				{ Name = "unitTarget", Type = "string", Nilable = false },
			},
		},
		{
			Name = "PartyMemberEnable",
			Type = "Event",
			LiteralName = "PARTY_MEMBER_ENABLE",
			Payload =
			{
				{ Name = "unitTarget", Type = "string", Nilable = false },
			},
		},
		{
			Name = "PlayerDifficultyChanged",
			Type = "Event",
			LiteralName = "PLAYER_DIFFICULTY_CHANGED",
		},
		{
			Name = "PlayerRolesAssigned",
			Type = "Event",
			LiteralName = "PLAYER_ROLES_ASSIGNED",
		},
		{
			Name = "RaidRosterUpdate",
			Type = "Event",
			LiteralName = "RAID_ROSTER_UPDATE",
		},
		{
			Name = "ReadyCheck",
			Type = "Event",
			LiteralName = "READY_CHECK",
			Payload =
			{
				{ Name = "initiatorName", Type = "string", Nilable = false },
				{ Name = "readyCheckTimeLeft", Type = "number", Nilable = false },
			},
		},
		{
			Name = "ReadyCheckConfirm",
			Type = "Event",
			LiteralName = "READY_CHECK_CONFIRM",
			Payload =
			{
				{ Name = "unitTarget", Type = "string", Nilable = false },
				{ Name = "isReady", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ReadyCheckFinished",
			Type = "Event",
			LiteralName = "READY_CHECK_FINISHED",
			Payload =
			{
				{ Name = "preempted", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "RequestInviteConfirmation",
			Type = "Event",
			LiteralName = "REQUEST_INVITE_CONFIRMATION",
			Payload =
			{
				{ Name = "targetName", Type = "string", Nilable = false },
				{ Name = "partyLevelLink", Type = "number", Nilable = false },
				{ Name = "questSessionActive", Type = "bool", Nilable = false },
				{ Name = "tank", Type = "bool", Nilable = true },
				{ Name = "healer", Type = "bool", Nilable = true },
				{ Name = "dps", Type = "bool", Nilable = true },
			},
		},
		{
			Name = "RoleChangedInform",
			Type = "Event",
			LiteralName = "ROLE_CHANGED_INFORM",
			Payload =
			{
				{ Name = "changedName", Type = "string", Nilable = false },
				{ Name = "fromName", Type = "string", Nilable = false },
				{ Name = "oldRole", Type = "string", Nilable = false },
				{ Name = "newRole", Type = "string", Nilable = false },
			},
		},
		{
			Name = "RolePollBegin",
			Type = "Event",
			LiteralName = "ROLE_POLL_BEGIN",
			Payload =
			{
				{ Name = "fromName", Type = "string", Nilable = false },
			},
		},
		{
			Name = "VoteKickReasonNeeded",
			Type = "Event",
			LiteralName = "VOTE_KICK_REASON_NEEDED",
			Payload =
			{
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "resultGUID", Type = "string", Nilable = false },
			},
		},
	},

	Tables =
	{
		{
			Name = "PartyRequestJoinRelation",
			Type = "Enumeration",
			NumValues = 5,
			MinValue = 0,
			MaxValue = 4,
			Fields =
			{
				{ Name = "None", Type = "PartyRequestJoinRelation", EnumValue = 0 },
				{ Name = "Friend", Type = "PartyRequestJoinRelation", EnumValue = 1 },
				{ Name = "Guild", Type = "PartyRequestJoinRelation", EnumValue = 2 },
				{ Name = "Club", Type = "PartyRequestJoinRelation", EnumValue = 3 },
				{ Name = "NumPartyRequestJoinRelations", Type = "PartyRequestJoinRelation", EnumValue = 4 },
			},
		},
	},
};

APIDocumentation:AddDocumentationTable(PartyInfo);local PartyPoseUI =
{
	Name = "PartyPose",
	Type = "System",
	Namespace = "C_PartyPose",

	Functions =
	{
		{
			Name = "GetPartyPoseInfoByMapID",
			Type = "Function",

			Arguments =
			{
				{ Name = "mapID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "info", Type = "PartyPoseInfo", Nilable = false },
			},
		},
	},

	Events =
	{
	},

	Tables =
	{
		{
			Name = "PartyPoseInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "partyPoseID", Type = "number", Nilable = false },
				{ Name = "mapID", Type = "number", Nilable = false },
				{ Name = "widgetSetID", Type = "number", Nilable = true },
				{ Name = "victoryModelSceneID", Type = "number", Nilable = false },
				{ Name = "defeatModelSceneID", Type = "number", Nilable = false },
				{ Name = "victorySoundKitID", Type = "number", Nilable = false },
				{ Name = "defeatSoundKitID", Type = "number", Nilable = false },
			},
		},
	},
};

APIDocumentation:AddDocumentationTable(PartyPoseUI);local PetInfo =
{
	Name = "PetInfo",
	Type = "System",
	Namespace = "C_PetInfo",

	Functions =
	{
		{
			Name = "GetPetTamersForMap",
			Type = "Function",

			Arguments =
			{
				{ Name = "uiMapID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "petTamers", Type = "table", InnerType = "PetTamerMapInfo", Nilable = false },
			},
		},
	},

	Events =
	{
		{
			Name = "PetAttackStart",
			Type = "Event",
			LiteralName = "PET_ATTACK_START",
		},
		{
			Name = "PetAttackStop",
			Type = "Event",
			LiteralName = "PET_ATTACK_STOP",
		},
		{
			Name = "PetBarHidegrid",
			Type = "Event",
			LiteralName = "PET_BAR_HIDEGRID",
		},
		{
			Name = "PetBarShowgrid",
			Type = "Event",
			LiteralName = "PET_BAR_SHOWGRID",
		},
		{
			Name = "PetBarUpdateCooldown",
			Type = "Event",
			LiteralName = "PET_BAR_UPDATE_COOLDOWN",
		},
		{
			Name = "PetDismissStart",
			Type = "Event",
			LiteralName = "PET_DISMISS_START",
			Payload =
			{
				{ Name = "delay", Type = "number", Nilable = false },
			},
		},
		{
			Name = "PetForceNameDeclension",
			Type = "Event",
			LiteralName = "PET_FORCE_NAME_DECLENSION",
			Payload =
			{
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "declinedName1", Type = "string", Nilable = true },
				{ Name = "declinedName2", Type = "string", Nilable = true },
				{ Name = "declinedName3", Type = "string", Nilable = true },
				{ Name = "declinedName4", Type = "string", Nilable = true },
				{ Name = "declinedName5", Type = "string", Nilable = true },
			},
		},
		{
			Name = "PetUiClose",
			Type = "Event",
			LiteralName = "PET_UI_CLOSE",
		},
		{
			Name = "RaisedAsGhoul",
			Type = "Event",
			LiteralName = "RAISED_AS_GHOUL",
		},
		{
			Name = "UpdatePossessBar",
			Type = "Event",
			LiteralName = "UPDATE_POSSESS_BAR",
		},
		{
			Name = "UpdateVehicleActionbar",
			Type = "Event",
			LiteralName = "UPDATE_VEHICLE_ACTIONBAR",
		},
	},

	Tables =
	{
		{
			Name = "PetTamerMapInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "areaPoiID", Type = "number", Nilable = false },
				{ Name = "position", Type = "table", Mixin = "Vector2DMixin", Nilable = false },
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "atlasName", Type = "string", Nilable = true },
				{ Name = "textureIndex", Type = "number", Nilable = true },
			},
		},
	},
};

APIDocumentation:AddDocumentationTable(PetInfo);local PetJournalInfo =
{
	Name = "PetJournalInfo",
	Type = "System",
	Namespace = "C_PetJournal",

	Functions =
	{
		{
			Name = "GetDisplayIDByIndex",
			Type = "Function",

			Arguments =
			{
				{ Name = "speciesID", Type = "number", Nilable = false },
				{ Name = "index", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "displayID", Type = "number", Nilable = true },
			},
		},
		{
			Name = "GetDisplayProbabilityByIndex",
			Type = "Function",

			Arguments =
			{
				{ Name = "speciesID", Type = "number", Nilable = false },
				{ Name = "index", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "displayProbability", Type = "number", Nilable = true },
			},
		},
		{
			Name = "GetNumDisplays",
			Type = "Function",

			Arguments =
			{
				{ Name = "speciesID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "numDisplays", Type = "number", Nilable = true },
			},
		},
		{
			Name = "GetPetSummonInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "battlePetGUID", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "isSummonable", Type = "bool", Nilable = false },
				{ Name = "error", Type = "PetJournalError", Nilable = false },
				{ Name = "errorText", Type = "string", Nilable = false },
			},
		},
		{
			Name = "PetIsSummonable",
			Type = "Function",

			Arguments =
			{
				{ Name = "battlePetGUID", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "isSummonable", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "PetUsesRandomDisplay",
			Type = "Function",

			Arguments =
			{
				{ Name = "speciesID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "usesRandomDisplay", Type = "bool", Nilable = true },
			},
		},
	},

	Events =
	{
		{
			Name = "BattlepetForceNameDeclension",
			Type = "Event",
			LiteralName = "BATTLEPET_FORCE_NAME_DECLENSION",
			Payload =
			{
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "battlePetGUID", Type = "string", Nilable = false },
			},
		},
		{
			Name = "CompanionLearned",
			Type = "Event",
			LiteralName = "COMPANION_LEARNED",
		},
		{
			Name = "CompanionUnlearned",
			Type = "Event",
			LiteralName = "COMPANION_UNLEARNED",
		},
		{
			Name = "CompanionUpdate",
			Type = "Event",
			LiteralName = "COMPANION_UPDATE",
			Payload =
			{
				{ Name = "companionType", Type = "string", Nilable = true },
			},
		},
		{
			Name = "NewPetAdded",
			Type = "Event",
			LiteralName = "NEW_PET_ADDED",
			Payload =
			{
				{ Name = "battlePetGUID", Type = "string", Nilable = false },
			},
		},
		{
			Name = "PetJournalAutoSlottedPet",
			Type = "Event",
			LiteralName = "PET_JOURNAL_AUTO_SLOTTED_PET",
			Payload =
			{
				{ Name = "slotIndex", Type = "number", Nilable = false },
				{ Name = "battlePetGUID", Type = "string", Nilable = false },
			},
		},
		{
			Name = "PetJournalCageFailed",
			Type = "Event",
			LiteralName = "PET_JOURNAL_CAGE_FAILED",
		},
		{
			Name = "PetJournalListUpdate",
			Type = "Event",
			LiteralName = "PET_JOURNAL_LIST_UPDATE",
		},
		{
			Name = "PetJournalNewBattleSlot",
			Type = "Event",
			LiteralName = "PET_JOURNAL_NEW_BATTLE_SLOT",
		},
		{
			Name = "PetJournalPetDeleted",
			Type = "Event",
			LiteralName = "PET_JOURNAL_PET_DELETED",
			Payload =
			{
				{ Name = "battlePetGUID", Type = "string", Nilable = false },
			},
		},
		{
			Name = "PetJournalPetRestored",
			Type = "Event",
			LiteralName = "PET_JOURNAL_PET_RESTORED",
			Payload =
			{
				{ Name = "battlePetGUID", Type = "string", Nilable = false },
			},
		},
		{
			Name = "PetJournalPetRevoked",
			Type = "Event",
			LiteralName = "PET_JOURNAL_PET_REVOKED",
			Payload =
			{
				{ Name = "battlePetGUID", Type = "string", Nilable = false },
			},
		},
		{
			Name = "PetJournalPetsHealed",
			Type = "Event",
			LiteralName = "PET_JOURNAL_PETS_HEALED",
		},
		{
			Name = "PetJournalTrapLevelSet",
			Type = "Event",
			LiteralName = "PET_JOURNAL_TRAP_LEVEL_SET",
			Payload =
			{
				{ Name = "trapLevel", Type = "number", Nilable = false },
			},
		},
		{
			Name = "UpdateSummonpetsAction",
			Type = "Event",
			LiteralName = "UPDATE_SUMMONPETS_ACTION",
		},
	},

	Tables =
	{
		{
			Name = "PetJournalError",
			Type = "Enumeration",
			NumValues = 7,
			MinValue = 0,
			MaxValue = 6,
			Fields =
			{
				{ Name = "None", Type = "PetJournalError", EnumValue = 0 },
				{ Name = "PetIsDead", Type = "PetJournalError", EnumValue = 1 },
				{ Name = "JournalIsLocked", Type = "PetJournalError", EnumValue = 2 },
				{ Name = "InvalidFaction", Type = "PetJournalError", EnumValue = 3 },
				{ Name = "NoFavoritesToSummon", Type = "PetJournalError", EnumValue = 4 },
				{ Name = "NoValidRandomSummon", Type = "PetJournalError", EnumValue = 5 },
				{ Name = "InvalidCovenant", Type = "PetJournalError", EnumValue = 6 },
			},
		},
	},
};

APIDocumentation:AddDocumentationTable(PetJournalInfo);local PlayerChoice =
{
	Name = "PlayerChoice",
	Type = "System",
	Namespace = "C_PlayerChoice",

	Functions =
	{
		{
			Name = "GetPlayerChoiceInfo",
			Type = "Function",

			Returns =
			{
				{ Name = "choiceInfo", Type = "PlayerChoiceInfo", Nilable = false },
			},
		},
		{
			Name = "GetPlayerChoiceOptionInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "optionIndex", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "info", Type = "PlayerChoiceOptionInfo", Nilable = false },
			},
		},
		{
			Name = "GetPlayerChoiceRewardInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "rewardIndex", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "rewardInfo", Type = "PlayerChoiceRewardInfo", Nilable = false },
			},
		},
		{
			Name = "IsWaitingForPlayerChoiceResponse",
			Type = "Function",

			Returns =
			{
				{ Name = "isWaitingForResponse", Type = "bool", Nilable = false },
			},
		},
	},

	Events =
	{
		{
			Name = "PlayerChoiceClose",
			Type = "Event",
			LiteralName = "PLAYER_CHOICE_CLOSE",
		},
		{
			Name = "PlayerChoiceUpdate",
			Type = "Event",
			LiteralName = "PLAYER_CHOICE_UPDATE",
		},
	},

	Tables =
	{
		{
			Name = "PlayerChoiceRarity",
			Type = "Enumeration",
			NumValues = 4,
			MinValue = 0,
			MaxValue = 3,
			Fields =
			{
				{ Name = "Common", Type = "PlayerChoiceRarity", EnumValue = 0 },
				{ Name = "Uncommon", Type = "PlayerChoiceRarity", EnumValue = 1 },
				{ Name = "Rare", Type = "PlayerChoiceRarity", EnumValue = 2 },
				{ Name = "Epic", Type = "PlayerChoiceRarity", EnumValue = 3 },
			},
		},
		{
			Name = "PlayerChoiceInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "choiceID", Type = "number", Nilable = false },
				{ Name = "questionText", Type = "string", Nilable = false },
				{ Name = "numOptions", Type = "number", Nilable = false },
				{ Name = "uiTextureKit", Type = "string", Nilable = false },
				{ Name = "soundKitID", Type = "number", Nilable = true },
				{ Name = "hideWarboardHeader", Type = "bool", Nilable = false },
				{ Name = "keepOpenAfterChoice", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "PlayerChoiceOptionInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "id", Type = "number", Nilable = false },
				{ Name = "responseIdentifier", Type = "number", Nilable = false },
				{ Name = "buttonText", Type = "string", Nilable = false },
				{ Name = "description", Type = "string", Nilable = false },
				{ Name = "header", Type = "string", Nilable = false },
				{ Name = "choiceArtID", Type = "number", Nilable = false },
				{ Name = "confirmation", Type = "string", Nilable = true },
				{ Name = "widgetSetID", Type = "number", Nilable = true },
				{ Name = "disabledButton", Type = "bool", Nilable = false },
				{ Name = "desaturatedArt", Type = "bool", Nilable = false },
				{ Name = "disabledOption", Type = "bool", Nilable = false },
				{ Name = "groupID", Type = "number", Nilable = true },
				{ Name = "headerIconAtlasElement", Type = "string", Nilable = true },
				{ Name = "subHeader", Type = "string", Nilable = true },
				{ Name = "buttonTooltip", Type = "string", Nilable = true },
				{ Name = "rewardQuestID", Type = "number", Nilable = true },
				{ Name = "soundKitID", Type = "number", Nilable = true },
				{ Name = "hasRewards", Type = "bool", Nilable = false },
				{ Name = "rarity", Type = "PlayerChoiceRarity", Nilable = false },
				{ Name = "rarityColor", Type = "table", Mixin = "ColorMixin", Nilable = true },
				{ Name = "typeArtID", Type = "number", Nilable = true },
				{ Name = "uiTextureKit", Type = "string", Nilable = true },
				{ Name = "spellID", Type = "number", Nilable = true },
				{ Name = "maxStacks", Type = "number", Nilable = false },
			},
		},
		{
			Name = "PlayerChoiceRewardCurrencyInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "currencyId", Type = "number", Nilable = false },
				{ Name = "currencyTexture", Type = "number", Nilable = false },
				{ Name = "quantity", Type = "number", Nilable = false },
			},
		},
		{
			Name = "PlayerChoiceRewardInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "money", Type = "number", Nilable = true },
				{ Name = "xp", Type = "number", Nilable = true },
				{ Name = "itemRewards", Type = "table", InnerType = "PlayerChoiceRewardItemInfo", Nilable = false },
				{ Name = "currencyRewards", Type = "table", InnerType = "PlayerChoiceRewardCurrencyInfo", Nilable = false },
				{ Name = "repRewards", Type = "table", InnerType = "PlayerChoiceRewardReputationInfo", Nilable = false },
			},
		},
		{
			Name = "PlayerChoiceRewardItemInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "itemId", Type = "number", Nilable = false },
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "quality", Type = "number", Nilable = false },
				{ Name = "textureFileId", Type = "number", Nilable = false },
				{ Name = "quantity", Type = "number", Nilable = false },
				{ Name = "itemLink", Type = "string", Nilable = false },
			},
		},
		{
			Name = "PlayerChoiceRewardReputationInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "factionId", Type = "number", Nilable = false },
				{ Name = "quantity", Type = "number", Nilable = false },
			},
		},
	},
};

APIDocumentation:AddDocumentationTable(PlayerChoice);local PlayerInfo =
{
	Name = "PlayerInfo",
	Type = "System",
	Namespace = "C_PlayerInfo",

	Functions =
	{
		{
			Name = "CanPlayerEnterChromieTime",
			Type = "Function",

			Returns =
			{
				{ Name = "canEnter", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "CanPlayerUseAreaLoot",
			Type = "Function",

			Returns =
			{
				{ Name = "canUseAreaLoot", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "CanPlayerUseMountEquipment",
			Type = "Function",

			Returns =
			{
				{ Name = "canUseMountEquipment", Type = "bool", Nilable = false },
				{ Name = "failureReason", Type = "string", Nilable = false },
			},
		},
		{
			Name = "GetContentDifficultyCreatureForPlayer",
			Type = "Function",

			Arguments =
			{
				{ Name = "unitToken", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "difficulty", Type = "RelativeContentDifficulty", Nilable = false },
			},
		},
		{
			Name = "GetContentDifficultyQuestForPlayer",
			Type = "Function",

			Arguments =
			{
				{ Name = "questID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "difficulty", Type = "RelativeContentDifficulty", Nilable = false },
			},
		},
		{
			Name = "IsPlayerEligibleForNPE",
			Type = "Function",

			Returns =
			{
				{ Name = "isEligible", Type = "bool", Nilable = false },
				{ Name = "failureReason", Type = "string", Nilable = false },
			},
		},
		{
			Name = "IsPlayerEligibleForNPEv2",
			Type = "Function",

			Returns =
			{
				{ Name = "isEligible", Type = "bool", Nilable = false },
				{ Name = "failureReason", Type = "string", Nilable = false },
			},
		},
		{
			Name = "IsPlayerInChromieTime",
			Type = "Function",

			Returns =
			{
				{ Name = "inChromieTime", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsPlayerNPERestricted",
			Type = "Function",

			Returns =
			{
				{ Name = "isRestricted", Type = "bool", Nilable = false },
			},
		},
	},

	Events =
	{
	},

	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(PlayerInfo);local PlayerLocation =
{
	Name = "PlayerLocationInfo",
	Type = "System",
	Namespace = "C_PlayerInfo",

	Functions =
	{
		{
			Name = "GUIDIsPlayer",
			Type = "Function",

			Arguments =
			{
				{ Name = "guid", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "isPlayer", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "GetClass",
			Type = "Function",

			Arguments =
			{
				{ Name = "playerLocation", Type = "table", Mixin = "PlayerLocationMixin", Nilable = false },
			},

			Returns =
			{
				{ Name = "className", Type = "string", Nilable = true },
				{ Name = "classFilename", Type = "string", Nilable = true },
				{ Name = "classID", Type = "number", Nilable = true },
			},
		},
		{
			Name = "GetName",
			Type = "Function",

			Arguments =
			{
				{ Name = "playerLocation", Type = "table", Mixin = "PlayerLocationMixin", Nilable = false },
			},

			Returns =
			{
				{ Name = "name", Type = "string", Nilable = true },
			},
		},
		{
			Name = "GetRace",
			Type = "Function",

			Arguments =
			{
				{ Name = "playerLocation", Type = "table", Mixin = "PlayerLocationMixin", Nilable = false },
			},

			Returns =
			{
				{ Name = "raceID", Type = "number", Nilable = true },
			},
		},
		{
			Name = "GetSex",
			Type = "Function",

			Arguments =
			{
				{ Name = "playerLocation", Type = "table", Mixin = "PlayerLocationMixin", Nilable = false },
			},

			Returns =
			{
				{ Name = "sex", Type = "number", Nilable = true },
			},
		},
		{
			Name = "IsConnected",
			Type = "Function",

			Arguments =
			{
				{ Name = "playerLocation", Type = "table", Mixin = "PlayerLocationMixin", Nilable = true },
			},

			Returns =
			{
				{ Name = "isConnected", Type = "bool", Nilable = true },
			},
		},
		{
			Name = "UnitIsSameServer",
			Type = "Function",

			Arguments =
			{
				{ Name = "playerLocation", Type = "table", Mixin = "PlayerLocationMixin", Nilable = false },
			},

			Returns =
			{
				{ Name = "unitIsSameServer", Type = "bool", Nilable = false },
			},
		},
	},

	Events =
	{
	},

	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(PlayerLocation);local PlayerMentorship =
{
	Name = "PlayerMentorship",
	Type = "System",
	Namespace = "C_PlayerMentorship",

	Functions =
	{
		{
			Name = "GetMentorshipStatus",
			Type = "Function",

			Arguments =
			{
				{ Name = "playerLocation", Type = "table", Mixin = "PlayerLocationMixin", Nilable = false },
			},

			Returns =
			{
				{ Name = "status", Type = "PlayerMentorshipStatus", Nilable = false },
			},
		},
	},

	Events =
	{
		{
			Name = "NewcomerGraduation",
			Type = "Event",
			LiteralName = "NEWCOMER_GRADUATION",
		},
	},

	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(PlayerMentorship);local PvpInfo =
{
	Name = "PvpInfo",
	Type = "System",
	Namespace = "C_PvP",

	Functions =
	{
		{
			Name = "CanDisplayDeaths",
			Type = "Function",

			Returns =
			{
				{ Name = "canDisplay", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "CanDisplayHonorableKills",
			Type = "Function",

			Returns =
			{
				{ Name = "canDisplay", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "CanPlayerUseRatedPVPUI",
			Type = "Function",

			Returns =
			{
				{ Name = "canUse", Type = "bool", Nilable = false },
				{ Name = "failureReason", Type = "string", Nilable = false },
			},
		},
		{
			Name = "CanToggleWarMode",
			Type = "Function",

			Arguments =
			{
				{ Name = "toggle", Type = "bool", Nilable = false },
			},

			Returns =
			{
				{ Name = "canTogglePvP", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "CanToggleWarModeInArea",
			Type = "Function",

			Returns =
			{
				{ Name = "canTogglePvPInArea", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "DoesMatchOutcomeAffectRating",
			Type = "Function",

			Returns =
			{
				{ Name = "doesAffect", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "GetActiveBrawlInfo",
			Type = "Function",

			Returns =
			{
				{ Name = "brawlInfo", Type = "PvpBrawlInfo", Nilable = true },
			},
		},
		{
			Name = "GetActiveMatchBracket",
			Type = "Function",

			Returns =
			{
				{ Name = "bracket", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetActiveMatchDuration",
			Type = "Function",

			Returns =
			{
				{ Name = "seconds", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetActiveMatchState",
			Type = "Function",

			Returns =
			{
				{ Name = "state", Type = "PvPMatchState", Nilable = false },
			},
		},
		{
			Name = "GetActiveMatchWinner",
			Type = "Function",

			Returns =
			{
				{ Name = "winner", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetArenaCrowdControlInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "playerToken", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "spellID", Type = "number", Nilable = false },
				{ Name = "startTime", Type = "number", Nilable = false },
				{ Name = "duration", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetArenaRewards",
			Type = "Function",

			Arguments =
			{
				{ Name = "teamSize", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "honor", Type = "number", Nilable = false },
				{ Name = "experience", Type = "number", Nilable = false },
				{ Name = "itemRewards", Type = "table", InnerType = "BattlefieldItemReward", Nilable = true },
				{ Name = "currencyRewards", Type = "table", InnerType = "BattlefieldCurrencyReward", Nilable = true },
			},
		},
		{
			Name = "GetArenaSkirmishRewards",
			Type = "Function",

			Returns =
			{
				{ Name = "honor", Type = "number", Nilable = false },
				{ Name = "experience", Type = "number", Nilable = false },
				{ Name = "itemRewards", Type = "table", InnerType = "BattlefieldItemReward", Nilable = true },
				{ Name = "currencyRewards", Type = "table", InnerType = "BattlefieldCurrencyReward", Nilable = true },
			},
		},
		{
			Name = "GetAvailableBrawlInfo",
			Type = "Function",
			Documentation = { "If nil is returned, PVP_BRAWL_INFO_UPDATED event will be sent when the data is ready." },

			Returns =
			{
				{ Name = "brawlInfo", Type = "PvpBrawlInfo", Nilable = true },
			},
		},
		{
			Name = "GetBattlefieldVehicleInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "vehicleIndex", Type = "number", Nilable = false },
				{ Name = "uiMapID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "info", Type = "BattlefieldVehicleInfo", Nilable = false },
			},
		},
		{
			Name = "GetBrawlRewards",
			Type = "Function",

			Arguments =
			{
				{ Name = "brawlType", Type = "BrawlType", Nilable = false },
			},

			Returns =
			{
				{ Name = "honor", Type = "number", Nilable = false },
				{ Name = "experience", Type = "number", Nilable = false },
				{ Name = "itemRewards", Type = "table", InnerType = "BattlefieldItemReward", Nilable = true },
				{ Name = "currencyRewards", Type = "table", InnerType = "BattlefieldCurrencyReward", Nilable = true },
				{ Name = "hasWon", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "GetGlobalPvpScalingInfoForSpecID",
			Type = "Function",

			Arguments =
			{
				{ Name = "specializationID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "pvpScalingData", Type = "table", InnerType = "PvpScalingData", Nilable = false },
			},
		},
		{
			Name = "GetHonorRewardInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "honorLevel", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "info", Type = "HonorRewardInfo", Nilable = true },
			},
		},
		{
			Name = "GetLevelUpBattlegrounds",
			Type = "Function",

			Arguments =
			{
				{ Name = "level", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "battlefields", Type = "table", InnerType = "LevelUpBattlegroundInfo", Nilable = false },
			},
		},
		{
			Name = "GetMatchPVPStatColumn",
			Type = "Function",

			Arguments =
			{
				{ Name = "pvpStatID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "info", Type = "MatchPVPStatColumn", Nilable = true },
			},
		},
		{
			Name = "GetMatchPVPStatColumns",
			Type = "Function",

			Returns =
			{
				{ Name = "columns", Type = "table", InnerType = "MatchPVPStatColumn", Nilable = false },
			},
		},
		{
			Name = "GetNextHonorLevelForReward",
			Type = "Function",

			Arguments =
			{
				{ Name = "honorLevel", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "nextHonorLevelWithReward", Type = "number", Nilable = true },
			},
		},
		{
			Name = "GetOutdoorPvPWaitTime",
			Type = "Function",

			Arguments =
			{
				{ Name = "uiMapID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "pvpWaitTime", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetPVPActiveMatchPersonalRatedInfo",
			Type = "Function",

			Returns =
			{
				{ Name = "info", Type = "PVPPersonalRatedInfo", Nilable = true },
			},
		},
		{
			Name = "GetPostMatchCurrencyRewards",
			Type = "Function",

			Returns =
			{
				{ Name = "rewards", Type = "table", InnerType = "PVPPostMatchCurrencyReward", Nilable = false },
			},
		},
		{
			Name = "GetPostMatchItemRewards",
			Type = "Function",

			Returns =
			{
				{ Name = "rewards", Type = "table", InnerType = "PVPPostMatchItemReward", Nilable = false },
			},
		},
		{
			Name = "GetPvpTierID",
			Type = "Function",

			Arguments =
			{
				{ Name = "tierEnum", Type = "number", Nilable = false },
				{ Name = "bracketEnum", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "id", Type = "number", Nilable = true },
			},
		},
		{
			Name = "GetPvpTierInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "tierID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "pvpTierInfo", Type = "PvpTierInfo", Nilable = true },
			},
		},
		{
			Name = "GetRandomBGInfo",
			Type = "Function",

			Returns =
			{
				{ Name = "info", Type = "RandomBGInfo", Nilable = false },
			},
		},
		{
			Name = "GetRandomBGRewards",
			Type = "Function",

			Returns =
			{
				{ Name = "honor", Type = "number", Nilable = false },
				{ Name = "experience", Type = "number", Nilable = false },
				{ Name = "itemRewards", Type = "table", InnerType = "BattlefieldItemReward", Nilable = true },
				{ Name = "currencyRewards", Type = "table", InnerType = "BattlefieldCurrencyReward", Nilable = true },
			},
		},
		{
			Name = "GetRandomEpicBGInfo",
			Type = "Function",

			Returns =
			{
				{ Name = "info", Type = "RandomBGInfo", Nilable = false },
			},
		},
		{
			Name = "GetRandomEpicBGRewards",
			Type = "Function",

			Returns =
			{
				{ Name = "honor", Type = "number", Nilable = false },
				{ Name = "experience", Type = "number", Nilable = false },
				{ Name = "itemRewards", Type = "table", InnerType = "BattlefieldItemReward", Nilable = true },
				{ Name = "currencyRewards", Type = "table", InnerType = "BattlefieldCurrencyReward", Nilable = true },
			},
		},
		{
			Name = "GetRatedBGRewards",
			Type = "Function",

			Returns =
			{
				{ Name = "honor", Type = "number", Nilable = false },
				{ Name = "experience", Type = "number", Nilable = false },
				{ Name = "itemRewards", Type = "table", InnerType = "BattlefieldItemReward", Nilable = true },
				{ Name = "currencyRewards", Type = "table", InnerType = "BattlefieldCurrencyReward", Nilable = true },
			},
		},
		{
			Name = "GetRewardItemLevelsByTierEnum",
			Type = "Function",

			Arguments =
			{
				{ Name = "pvpTierEnum", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "activityItemLevel", Type = "number", Nilable = false },
				{ Name = "weeklyItemLevel", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetScoreInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "offsetIndex", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "info", Type = "PVPScoreInfo", Nilable = true },
			},
		},
		{
			Name = "GetScoreInfoByPlayerGuid",
			Type = "Function",

			Arguments =
			{
				{ Name = "guid", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "info", Type = "PVPScoreInfo", Nilable = true },
			},
		},
		{
			Name = "GetSeasonBestInfo",
			Type = "Function",

			Returns =
			{
				{ Name = "tierID", Type = "number", Nilable = false },
				{ Name = "nextTierID", Type = "number", Nilable = true },
			},
		},
		{
			Name = "GetSkirmishInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "pvpBracket", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "battlemasterListInfo", Type = "BattlemasterListInfo", Nilable = false },
			},
		},
		{
			Name = "GetSpecialEventDetails",
			Type = "Function",

			Returns =
			{
				{ Name = "info", Type = "SpecialEventDetails", Nilable = true },
			},
		},
		{
			Name = "GetSpecialEventInfo",
			Type = "Function",

			Returns =
			{
				{ Name = "info", Type = "RandomBGInfo", Nilable = false },
			},
		},
		{
			Name = "GetTeamInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "factionIndex", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "info", Type = "PVPTeamInfo", Nilable = true },
			},
		},
		{
			Name = "GetWarModeRewardBonus",
			Type = "Function",

			Returns =
			{
				{ Name = "rewardBonus", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetWarModeRewardBonusDefault",
			Type = "Function",

			Returns =
			{
				{ Name = "defaultBonus", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetWeeklyChestInfo",
			Type = "Function",

			Returns =
			{
				{ Name = "rewardAchieved", Type = "bool", Nilable = false },
				{ Name = "lastWeekRewardAchieved", Type = "bool", Nilable = false },
				{ Name = "lastWeekRewardClaimed", Type = "bool", Nilable = false },
				{ Name = "pvpTierMaxFromWins", Type = "number", Nilable = false },
			},
		},
		{
			Name = "HasArenaSkirmishWinToday",
			Type = "Function",

			Returns =
			{
				{ Name = "hasArenaSkirmishWinToday", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsActiveBattlefield",
			Type = "Function",

			Returns =
			{
				{ Name = "isActiveBattlefield", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsActiveMatchRegistered",
			Type = "Function",

			Returns =
			{
				{ Name = "registered", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsArena",
			Type = "Function",

			Returns =
			{
				{ Name = "isArena", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsBattleground",
			Type = "Function",

			Returns =
			{
				{ Name = "isBattleground", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsBattlegroundEnlistmentBonusActive",
			Type = "Function",

			Returns =
			{
				{ Name = "battlegroundActive", Type = "bool", Nilable = false },
				{ Name = "brawlActive", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsInBrawl",
			Type = "Function",

			Returns =
			{
				{ Name = "isInBrawl", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsMatchConsideredArena",
			Type = "Function",

			Returns =
			{
				{ Name = "asArena", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsMatchFactional",
			Type = "Function",

			Returns =
			{
				{ Name = "isFactional", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsPVPMap",
			Type = "Function",

			Returns =
			{
				{ Name = "isPVPMap", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsRatedArena",
			Type = "Function",

			Returns =
			{
				{ Name = "isRatedArena", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsRatedBattleground",
			Type = "Function",

			Returns =
			{
				{ Name = "isRatedBattleground", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsRatedMap",
			Type = "Function",

			Returns =
			{
				{ Name = "isRatedMap", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsWarModeActive",
			Type = "Function",

			Returns =
			{
				{ Name = "warModeActive", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsWarModeDesired",
			Type = "Function",

			Returns =
			{
				{ Name = "warModeDesired", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsWarModeFeatureEnabled",
			Type = "Function",

			Returns =
			{
				{ Name = "warModeEnabled", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "JoinBrawl",
			Type = "Function",
		},
		{
			Name = "RequestCrowdControlSpell",
			Type = "Function",

			Arguments =
			{
				{ Name = "playerToken", Type = "string", Nilable = false },
			},
		},
		{
			Name = "SetWarModeDesired",
			Type = "Function",

			Arguments =
			{
				{ Name = "warModeDesired", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ToggleWarMode",
			Type = "Function",
		},
	},

	Events =
	{
		{
			Name = "ArenaOpponentUpdate",
			Type = "Event",
			LiteralName = "ARENA_OPPONENT_UPDATE",
			Payload =
			{
				{ Name = "unitToken", Type = "string", Nilable = false },
				{ Name = "updateReason", Type = "string", Nilable = false },
			},
		},
		{
			Name = "ArenaPrepOpponentSpecializations",
			Type = "Event",
			LiteralName = "ARENA_PREP_OPPONENT_SPECIALIZATIONS",
		},
		{
			Name = "ArenaSeasonWorldState",
			Type = "Event",
			LiteralName = "ARENA_SEASON_WORLD_STATE",
		},
		{
			Name = "BattlefieldQueueTimeout",
			Type = "Event",
			LiteralName = "BATTLEFIELD_QUEUE_TIMEOUT",
		},
		{
			Name = "BattlefieldsClosed",
			Type = "Event",
			LiteralName = "BATTLEFIELDS_CLOSED",
		},
		{
			Name = "BattlefieldsShow",
			Type = "Event",
			LiteralName = "BATTLEFIELDS_SHOW",
			Payload =
			{
				{ Name = "isArena", Type = "bool", Nilable = true },
				{ Name = "battleMasterListID", Type = "number", Nilable = true },
			},
		},
		{
			Name = "BattlegroundObjectivesUpdate",
			Type = "Event",
			LiteralName = "BATTLEGROUND_OBJECTIVES_UPDATE",
		},
		{
			Name = "BattlegroundPointsUpdate",
			Type = "Event",
			LiteralName = "BATTLEGROUND_POINTS_UPDATE",
		},
		{
			Name = "GdfSimComplete",
			Type = "Event",
			LiteralName = "GDF_SIM_COMPLETE",
		},
		{
			Name = "HonorLevelUpdate",
			Type = "Event",
			LiteralName = "HONOR_LEVEL_UPDATE",
			Payload =
			{
				{ Name = "isHigherLevel", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "NotifyPvpAfkResult",
			Type = "Event",
			LiteralName = "NOTIFY_PVP_AFK_RESULT",
			Payload =
			{
				{ Name = "offender", Type = "string", Nilable = false },
				{ Name = "numBlackMarksOnOffender", Type = "number", Nilable = false },
				{ Name = "numPlayersIHaveReported", Type = "number", Nilable = false },
			},
		},
		{
			Name = "PlayerEnteringBattleground",
			Type = "Event",
			LiteralName = "PLAYER_ENTERING_BATTLEGROUND",
		},
		{
			Name = "PostMatchCurrencyRewardUpdate",
			Type = "Event",
			LiteralName = "POST_MATCH_CURRENCY_REWARD_UPDATE",
			Payload =
			{
				{ Name = "reward", Type = "PVPPostMatchCurrencyReward", Nilable = false },
			},
		},
		{
			Name = "PostMatchItemRewardUpdate",
			Type = "Event",
			LiteralName = "POST_MATCH_ITEM_REWARD_UPDATE",
		},
		{
			Name = "PvpBrawlInfoUpdated",
			Type = "Event",
			LiteralName = "PVP_BRAWL_INFO_UPDATED",
		},
		{
			Name = "PvpMatchActive",
			Type = "Event",
			LiteralName = "PVP_MATCH_ACTIVE",
		},
		{
			Name = "PvpMatchComplete",
			Type = "Event",
			LiteralName = "PVP_MATCH_COMPLETE",
			Payload =
			{
				{ Name = "winner", Type = "number", Nilable = false },
				{ Name = "duration", Type = "number", Nilable = false },
			},
		},
		{
			Name = "PvpMatchInactive",
			Type = "Event",
			LiteralName = "PVP_MATCH_INACTIVE",
		},
		{
			Name = "PvpRatedStatsUpdate",
			Type = "Event",
			LiteralName = "PVP_RATED_STATS_UPDATE",
		},
		{
			Name = "PvpRewardsUpdate",
			Type = "Event",
			LiteralName = "PVP_REWARDS_UPDATE",
		},
		{
			Name = "PvpRoleUpdate",
			Type = "Event",
			LiteralName = "PVP_ROLE_UPDATE",
		},
		{
			Name = "PvpSpecialEventInfoUpdated",
			Type = "Event",
			LiteralName = "PVP_SPECIAL_EVENT_INFO_UPDATED",
		},
		{
			Name = "PvpTypesEnabled",
			Type = "Event",
			LiteralName = "PVP_TYPES_ENABLED",
			Payload =
			{
				{ Name = "wargameBattlegrounds", Type = "bool", Nilable = false },
				{ Name = "ratedBattlegrounds", Type = "bool", Nilable = false },
				{ Name = "ratedArenas", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "PvpVehicleInfoUpdated",
			Type = "Event",
			LiteralName = "PVP_VEHICLE_INFO_UPDATED",
		},
		{
			Name = "PvpWorldstateUpdate",
			Type = "Event",
			LiteralName = "PVP_WORLDSTATE_UPDATE",
		},
		{
			Name = "PvpqueueAnywhereShow",
			Type = "Event",
			LiteralName = "PVPQUEUE_ANYWHERE_SHOW",
		},
		{
			Name = "PvpqueueAnywhereUpdateAvailable",
			Type = "Event",
			LiteralName = "PVPQUEUE_ANYWHERE_UPDATE_AVAILABLE",
		},
		{
			Name = "UpdateActiveBattlefield",
			Type = "Event",
			LiteralName = "UPDATE_ACTIVE_BATTLEFIELD",
		},
		{
			Name = "UpdateBattlefieldScore",
			Type = "Event",
			LiteralName = "UPDATE_BATTLEFIELD_SCORE",
		},
		{
			Name = "UpdateBattlefieldStatus",
			Type = "Event",
			LiteralName = "UPDATE_BATTLEFIELD_STATUS",
			Payload =
			{
				{ Name = "battleFieldIndex", Type = "number", Nilable = false },
			},
		},
		{
			Name = "WarModeStatusUpdate",
			Type = "Event",
			LiteralName = "WAR_MODE_STATUS_UPDATE",
			Payload =
			{
				{ Name = "warModeEnabled", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "WargameRequested",
			Type = "Event",
			LiteralName = "WARGAME_REQUESTED",
			Payload =
			{
				{ Name = "opposingPartyMemberName", Type = "string", Nilable = false },
				{ Name = "battlegroundName", Type = "string", Nilable = false },
				{ Name = "timeoutSeconds", Type = "number", Nilable = false },
				{ Name = "tournamentRules", Type = "bool", Nilable = false },
			},
		},
	},

	Tables =
	{
		{
			Name = "BrawlType",
			Type = "Enumeration",
			NumValues = 4,
			MinValue = 0,
			MaxValue = 3,
			Fields =
			{
				{ Name = "None", Type = "BrawlType", EnumValue = 0 },
				{ Name = "Battleground", Type = "BrawlType", EnumValue = 1 },
				{ Name = "Arena", Type = "BrawlType", EnumValue = 2 },
				{ Name = "Lfg", Type = "BrawlType", EnumValue = 3 },
			},
		},
		{
			Name = "PvPMatchState",
			Type = "Enumeration",
			NumValues = 3,
			MinValue = 0,
			MaxValue = 2,
			Fields =
			{
				{ Name = "Inactive", Type = "PvPMatchState", EnumValue = 0 },
				{ Name = "Active", Type = "PvPMatchState", EnumValue = 1 },
				{ Name = "Complete", Type = "PvPMatchState", EnumValue = 2 },
			},
		},
		{
			Name = "BattlefieldCurrencyReward",
			Type = "Structure",
			Fields =
			{
				{ Name = "id", Type = "number", Nilable = false },
				{ Name = "quantity", Type = "number", Nilable = false },
			},
		},
		{
			Name = "BattlefieldItemReward",
			Type = "Structure",
			Fields =
			{
				{ Name = "id", Type = "number", Nilable = false },
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "texture", Type = "number", Nilable = false },
				{ Name = "quantity", Type = "number", Nilable = false },
			},
		},
		{
			Name = "BattlefieldVehicleInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "x", Type = "number", Nilable = false },
				{ Name = "y", Type = "number", Nilable = false },
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "isOccupied", Type = "bool", Nilable = false },
				{ Name = "atlas", Type = "string", Nilable = false },
				{ Name = "textureWidth", Type = "number", Nilable = false },
				{ Name = "textureHeight", Type = "number", Nilable = false },
				{ Name = "facing", Type = "number", Nilable = false },
				{ Name = "isPlayer", Type = "bool", Nilable = false },
				{ Name = "isAlive", Type = "bool", Nilable = false },
				{ Name = "shouldDrawBelowPlayerBlips", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "BattlemasterListInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "instanceType", Type = "number", Nilable = false },
				{ Name = "minPlayers", Type = "number", Nilable = false },
				{ Name = "maxPlayers", Type = "number", Nilable = false },
				{ Name = "icon", Type = "number", Nilable = false },
				{ Name = "longDescription", Type = "string", Nilable = false },
				{ Name = "shortDescription", Type = "string", Nilable = false },
			},
		},
		{
			Name = "HonorRewardInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "honorLevelName", Type = "string", Nilable = false },
				{ Name = "badgeFileDataID", Type = "number", Nilable = false },
				{ Name = "achievementRewardedID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "LevelUpBattlegroundInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "id", Type = "number", Nilable = false },
				{ Name = "icon", Type = "number", Nilable = false },
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "isEpic", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "MatchPVPStatColumn",
			Type = "Structure",
			Fields =
			{
				{ Name = "pvpStatID", Type = "number", Nilable = false },
				{ Name = "columnHeaderID", Type = "number", Nilable = false },
				{ Name = "orderIndex", Type = "number", Nilable = false },
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "tooltip", Type = "string", Nilable = false },
			},
		},
		{
			Name = "PvpBrawlInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "shortDescription", Type = "string", Nilable = false },
				{ Name = "longDescription", Type = "string", Nilable = false },
				{ Name = "canQueue", Type = "bool", Nilable = false },
				{ Name = "timeLeftUntilNextChange", Type = "number", Nilable = false },
				{ Name = "brawlType", Type = "BrawlType", Nilable = false },
				{ Name = "mapNames", Type = "table", InnerType = "string", Nilable = false },
			},
		},
		{
			Name = "PVPPersonalRatedInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "personalRating", Type = "number", Nilable = false },
				{ Name = "bestSeasonRating", Type = "number", Nilable = false },
				{ Name = "bestWeeklyRating", Type = "number", Nilable = false },
				{ Name = "seasonPlayed", Type = "number", Nilable = false },
				{ Name = "seasonWon", Type = "number", Nilable = false },
				{ Name = "weeklyPlayed", Type = "number", Nilable = false },
				{ Name = "weeklyWon", Type = "number", Nilable = false },
				{ Name = "lastWeeksBestRating", Type = "number", Nilable = false },
				{ Name = "hasWonBracketToday", Type = "bool", Nilable = false },
				{ Name = "tier", Type = "number", Nilable = false },
				{ Name = "ranking", Type = "number", Nilable = true },
			},
		},
		{
			Name = "PVPPostMatchCurrencyReward",
			Type = "Structure",
			Fields =
			{
				{ Name = "currencyType", Type = "number", Nilable = false },
				{ Name = "quantityChanged", Type = "number", Nilable = false },
			},
		},
		{
			Name = "PVPPostMatchItemReward",
			Type = "Structure",
			Fields =
			{
				{ Name = "type", Type = "string", Nilable = false },
				{ Name = "link", Type = "string", Nilable = false },
				{ Name = "quantity", Type = "number", Nilable = false },
				{ Name = "specID", Type = "number", Nilable = false },
				{ Name = "sex", Type = "number", Nilable = false },
				{ Name = "isUpgraded", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "PvpScalingData",
			Type = "Structure",
			Fields =
			{
				{ Name = "scalingDataID", Type = "number", Nilable = false },
				{ Name = "specializationID", Type = "number", Nilable = false },
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "value", Type = "number", Nilable = false },
			},
		},
		{
			Name = "PVPScoreInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "guid", Type = "string", Nilable = false },
				{ Name = "killingBlows", Type = "number", Nilable = false },
				{ Name = "honorableKills", Type = "number", Nilable = false },
				{ Name = "deaths", Type = "number", Nilable = false },
				{ Name = "honorGained", Type = "number", Nilable = false },
				{ Name = "faction", Type = "number", Nilable = false },
				{ Name = "raceName", Type = "string", Nilable = false },
				{ Name = "className", Type = "string", Nilable = false },
				{ Name = "classToken", Type = "string", Nilable = false },
				{ Name = "damageDone", Type = "number", Nilable = false },
				{ Name = "healingDone", Type = "number", Nilable = false },
				{ Name = "rating", Type = "number", Nilable = false },
				{ Name = "ratingChange", Type = "number", Nilable = false },
				{ Name = "prematchMMR", Type = "number", Nilable = false },
				{ Name = "mmrChange", Type = "number", Nilable = false },
				{ Name = "talentSpec", Type = "string", Nilable = false },
				{ Name = "honorLevel", Type = "number", Nilable = false },
				{ Name = "stats", Type = "table", InnerType = "PVPStatInfo", Nilable = false },
			},
		},
		{
			Name = "PVPStatInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "pvpStatID", Type = "number", Nilable = false },
				{ Name = "pvpStatValue", Type = "number", Nilable = false },
				{ Name = "orderIndex", Type = "number", Nilable = false },
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "tooltip", Type = "string", Nilable = false },
				{ Name = "iconName", Type = "string", Nilable = false },
			},
		},
		{
			Name = "PVPTeamInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "size", Type = "number", Nilable = false },
				{ Name = "rating", Type = "number", Nilable = false },
				{ Name = "ratingNew", Type = "number", Nilable = false },
				{ Name = "ratingMMR", Type = "number", Nilable = false },
			},
		},
		{
			Name = "PvpTierInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "descendRating", Type = "number", Nilable = false },
				{ Name = "ascendRating", Type = "number", Nilable = false },
				{ Name = "descendTier", Type = "number", Nilable = false },
				{ Name = "ascendTier", Type = "number", Nilable = false },
				{ Name = "pvpTierEnum", Type = "number", Nilable = false },
				{ Name = "tierIconID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "RandomBGInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "canQueue", Type = "bool", Nilable = false },
				{ Name = "bgID", Type = "number", Nilable = false },
				{ Name = "hasRandomWinToday", Type = "bool", Nilable = false },
				{ Name = "minLevel", Type = "number", Nilable = false },
				{ Name = "maxLevel", Type = "number", Nilable = false },
			},
		},
		{
			Name = "SpecialEventDetails",
			Type = "Structure",
			Fields =
			{
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "shortDescription", Type = "string", Nilable = false },
				{ Name = "longDescription", Type = "string", Nilable = false },
				{ Name = "achievementID", Type = "number", Nilable = false },
				{ Name = "isActive", Type = "bool", Nilable = false },
			},
		},
	},
};

APIDocumentation:AddDocumentationTable(PvpInfo);local QuestLineInfo =
{
	Name = "QuestLineUI",
	Type = "System",
	Namespace = "C_QuestLine",

	Functions =
	{
		{
			Name = "GetAvailableQuestLines",
			Type = "Function",

			Arguments =
			{
				{ Name = "uiMapID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "questLines", Type = "table", InnerType = "QuestLineInfo", Nilable = false },
			},
		},
		{
			Name = "GetQuestLineInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "questID", Type = "number", Nilable = false },
				{ Name = "uiMapID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "questLineInfo", Type = "QuestLineInfo", Nilable = true },
			},
		},
		{
			Name = "GetQuestLineQuests",
			Type = "Function",

			Arguments =
			{
				{ Name = "questLineID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "questIDs", Type = "table", InnerType = "number", Nilable = false },
			},
		},
		{
			Name = "IsComplete",
			Type = "Function",

			Arguments =
			{
				{ Name = "questLineID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "isComplete", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "RequestQuestLinesForMap",
			Type = "Function",

			Arguments =
			{
				{ Name = "uiMapID", Type = "number", Nilable = false },
			},
		},
	},

	Events =
	{
	},

	Tables =
	{
		{
			Name = "QuestLineFloorLocation",
			Type = "Enumeration",
			NumValues = 3,
			MinValue = 0,
			MaxValue = 2,
			Fields =
			{
				{ Name = "Above", Type = "QuestLineFloorLocation", EnumValue = 0 },
				{ Name = "Below", Type = "QuestLineFloorLocation", EnumValue = 1 },
				{ Name = "Same", Type = "QuestLineFloorLocation", EnumValue = 2 },
			},
		},
		{
			Name = "QuestLineInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "questLineName", Type = "string", Nilable = false },
				{ Name = "questName", Type = "string", Nilable = false },
				{ Name = "questLineID", Type = "number", Nilable = false },
				{ Name = "questID", Type = "number", Nilable = false },
				{ Name = "x", Type = "number", Nilable = false },
				{ Name = "y", Type = "number", Nilable = false },
				{ Name = "isHidden", Type = "bool", Nilable = false },
				{ Name = "isLegendary", Type = "bool", Nilable = false },
				{ Name = "isDaily", Type = "bool", Nilable = false },
				{ Name = "isCampaign", Type = "bool", Nilable = false },
				{ Name = "floorLocation", Type = "QuestLineFloorLocation", Nilable = false },
			},
		},
	},
};

APIDocumentation:AddDocumentationTable(QuestLineInfo);local QuestLog =
{
	Name = "QuestLog",
	Type = "System",
	Namespace = "C_QuestLog",

	Functions =
	{
		{
			Name = "AbandonQuest",
			Type = "Function",
		},
		{
			Name = "AddQuestWatch",
			Type = "Function",

			Arguments =
			{
				{ Name = "questID", Type = "number", Nilable = false },
				{ Name = "watchType", Type = "QuestWatchType", Nilable = true },
			},

			Returns =
			{
				{ Name = "wasWatched", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "AddWorldQuestWatch",
			Type = "Function",

			Arguments =
			{
				{ Name = "questID", Type = "number", Nilable = false },
				{ Name = "watchType", Type = "QuestWatchType", Nilable = true },
			},

			Returns =
			{
				{ Name = "wasWatched", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "CanAbandonQuest",
			Type = "Function",

			Arguments =
			{
				{ Name = "questID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "canAbandon", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "GetAbandonQuest",
			Type = "Function",

			Returns =
			{
				{ Name = "questID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetAbandonQuestItems",
			Type = "Function",

			Returns =
			{
				{ Name = "itemIDs", Type = "table", InnerType = "number", Nilable = false },
			},
		},
		{
			Name = "GetActiveThreatMaps",
			Type = "Function",

			Returns =
			{
				{ Name = "uiMapIDs", Type = "table", InnerType = "number", Nilable = false },
			},
		},
		{
			Name = "GetAllCompletedQuestIDs",
			Type = "Function",

			Returns =
			{
				{ Name = "quests", Type = "table", InnerType = "number", Nilable = false },
			},
		},
		{
			Name = "GetBountiesForMapID",
			Type = "Function",

			Arguments =
			{
				{ Name = "uiMapID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "bounties", Type = "table", InnerType = "BountyInfo", Nilable = true },
			},
		},
		{
			Name = "GetBountySetInfoForMapID",
			Type = "Function",

			Arguments =
			{
				{ Name = "uiMapID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "displayLocation", Type = "MapOverlayDisplayLocation", Nilable = false },
				{ Name = "lockQuestID", Type = "number", Nilable = false },
				{ Name = "bountySetID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetDistanceSqToQuest",
			Type = "Function",

			Arguments =
			{
				{ Name = "questID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "distanceSq", Type = "number", Nilable = false },
				{ Name = "onContinent", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "GetInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "questLogIndex", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "info", Type = "QuestInfo", Nilable = true },
			},
		},
		{
			Name = "GetLogIndexForQuestID",
			Type = "Function",
			Documentation = { "Only returns a log index for actual quests, not headers" },

			Arguments =
			{
				{ Name = "questID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "questLogIndex", Type = "number", Nilable = true },
			},
		},
		{
			Name = "GetMapForQuestPOIs",
			Type = "Function",

			Returns =
			{
				{ Name = "uiMapID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetMaxNumQuests",
			Type = "Function",
			Documentation = { "This is the maximum number of quests a player can be on, including hidden quests, world quests, emissaries etc" },

			Returns =
			{
				{ Name = "maxNumQuests", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetMaxNumQuestsCanAccept",
			Type = "Function",
			Documentation = { "This is the maximum number of standard quests a player can accept. These are quests that are normally visible in the quest log." },

			Returns =
			{
				{ Name = "maxNumQuestsCanAccept", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetNextWaypoint",
			Type = "Function",

			Arguments =
			{
				{ Name = "questID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "mapID", Type = "number", Nilable = false },
				{ Name = "x", Type = "number", Nilable = false },
				{ Name = "y", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetNextWaypointForMap",
			Type = "Function",

			Arguments =
			{
				{ Name = "questID", Type = "number", Nilable = false },
				{ Name = "uiMapID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "x", Type = "number", Nilable = false },
				{ Name = "y", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetNextWaypointText",
			Type = "Function",

			Arguments =
			{
				{ Name = "questID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "waypointText", Type = "string", Nilable = false },
			},
		},
		{
			Name = "GetNumQuestLogEntries",
			Type = "Function",

			Returns =
			{
				{ Name = "numShownEntries", Type = "number", Nilable = false },
				{ Name = "numQuests", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetNumQuestObjectives",
			Type = "Function",

			Arguments =
			{
				{ Name = "questID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "leaderboardCount", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetNumQuestWatches",
			Type = "Function",

			Returns =
			{
				{ Name = "numQuestWatches", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetNumWorldQuestWatches",
			Type = "Function",

			Returns =
			{
				{ Name = "numQuestWatches", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetQuestDetailsTheme",
			Type = "Function",

			Arguments =
			{
				{ Name = "questID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "theme", Type = "QuestTheme", Nilable = true },
			},
		},
		{
			Name = "GetQuestDifficultyLevel",
			Type = "Function",

			Arguments =
			{
				{ Name = "questID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "level", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetQuestIDForLogIndex",
			Type = "Function",
			Documentation = { "Only returns a questID for actual quests, not headers" },

			Arguments =
			{
				{ Name = "questLogIndex", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "questID", Type = "number", Nilable = true },
			},
		},
		{
			Name = "GetQuestIDForQuestWatchIndex",
			Type = "Function",

			Arguments =
			{
				{ Name = "questWatchIndex", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "questID", Type = "number", Nilable = true },
			},
		},
		{
			Name = "GetQuestIDForWorldQuestWatchIndex",
			Type = "Function",

			Arguments =
			{
				{ Name = "questWatchIndex", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "questID", Type = "number", Nilable = true },
			},
		},
		{
			Name = "GetQuestObjectives",
			Type = "Function",

			Arguments =
			{
				{ Name = "questID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "objectives", Type = "table", InnerType = "QuestObjectiveInfo", Nilable = false },
			},
		},
		{
			Name = "GetQuestTagInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "questID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "info", Type = "QuestTagInfo", Nilable = true },
			},
		},
		{
			Name = "GetQuestWatchType",
			Type = "Function",

			Arguments =
			{
				{ Name = "questID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "watchType", Type = "QuestWatchType", Nilable = true },
			},
		},
		{
			Name = "GetQuestsOnMap",
			Type = "Function",

			Arguments =
			{
				{ Name = "uiMapID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "quests", Type = "table", InnerType = "QuestOnMapInfo", Nilable = false },
			},
		},
		{
			Name = "GetRequiredMoney",
			Type = "Function",
			Documentation = { "Uses the selected quest if no questID is provided" },

			Arguments =
			{
				{ Name = "questID", Type = "number", Nilable = true },
			},

			Returns =
			{
				{ Name = "requiredMoney", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetSelectedQuest",
			Type = "Function",

			Returns =
			{
				{ Name = "questID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetSuggestedGroupSize",
			Type = "Function",

			Arguments =
			{
				{ Name = "questID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "suggestedGroupSize", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetTimeAllowed",
			Type = "Function",

			Arguments =
			{
				{ Name = "questID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "totalTime", Type = "number", Nilable = false },
				{ Name = "elapsedTime", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetTitleForLogIndex",
			Type = "Function",
			Documentation = { "Returns a valid title for anything that is in the quest log." },

			Arguments =
			{
				{ Name = "questLogIndex", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "title", Type = "string", Nilable = true },
			},
		},
		{
			Name = "GetTitleForQuestID",
			Type = "Function",
			Documentation = { "Only returns a valid title for quests, header titles cannot be discovered using this." },

			Arguments =
			{
				{ Name = "questID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "title", Type = "string", Nilable = true },
			},
		},
		{
			Name = "GetZoneStoryInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "uiMapID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "achievementID", Type = "number", Nilable = false },
				{ Name = "storyMapID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "HasActiveThreats",
			Type = "Function",

			Returns =
			{
				{ Name = "hasActiveThreats", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsAccountQuest",
			Type = "Function",

			Arguments =
			{
				{ Name = "questID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "isAccountQuest", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsComplete",
			Type = "Function",

			Arguments =
			{
				{ Name = "questID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "isComplete", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsFailed",
			Type = "Function",

			Arguments =
			{
				{ Name = "questID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "isFailed", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsLegendaryQuest",
			Type = "Function",

			Arguments =
			{
				{ Name = "questID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "isLegendaryQuest", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsOnMap",
			Type = "Function",

			Arguments =
			{
				{ Name = "questID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "onMap", Type = "bool", Nilable = false },
				{ Name = "hasLocalPOI", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsOnQuest",
			Type = "Function",

			Arguments =
			{
				{ Name = "questID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "isOnQuest", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsPushableQuest",
			Type = "Function",

			Arguments =
			{
				{ Name = "questID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "isPushable", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsQuestBounty",
			Type = "Function",

			Arguments =
			{
				{ Name = "questID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "isBounty", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsQuestCalling",
			Type = "Function",

			Arguments =
			{
				{ Name = "questID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "isCalling", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsQuestCriteriaForBounty",
			Type = "Function",

			Arguments =
			{
				{ Name = "questID", Type = "number", Nilable = false },
				{ Name = "bountyQuestID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "isCriteriaForBounty", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsQuestDisabledForSession",
			Type = "Function",

			Arguments =
			{
				{ Name = "questID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "isDisabled", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsQuestFlaggedCompleted",
			Type = "Function",

			Arguments =
			{
				{ Name = "questID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "isCompleted", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsQuestInvasion",
			Type = "Function",

			Arguments =
			{
				{ Name = "questID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "isInvasion", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsQuestReplayable",
			Type = "Function",

			Arguments =
			{
				{ Name = "questID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "isReplayable", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsQuestReplayedRecently",
			Type = "Function",

			Arguments =
			{
				{ Name = "questID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "recentlyReplayed", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsQuestTask",
			Type = "Function",

			Arguments =
			{
				{ Name = "questID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "isTask", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsQuestTrivial",
			Type = "Function",

			Arguments =
			{
				{ Name = "questID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "isTrivial", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsRepeatableQuest",
			Type = "Function",

			Arguments =
			{
				{ Name = "questID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "isRepeatable", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsThreatQuest",
			Type = "Function",

			Arguments =
			{
				{ Name = "questID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "isThreat", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsUnitOnQuest",
			Type = "Function",

			Arguments =
			{
				{ Name = "unit", Type = "string", Nilable = false },
				{ Name = "questID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "isOnQuest", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsWorldQuest",
			Type = "Function",

			Arguments =
			{
				{ Name = "questID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "isWorldQuest", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "QuestCanHaveWarModeBonus",
			Type = "Function",
			Documentation = { "Tests whether a quest is eligible for warmode bonuses (e.g. most world quests, some daily quests" },

			Arguments =
			{
				{ Name = "questID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "hasBonus", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "QuestHasQuestSessionBonus",
			Type = "Function",

			Arguments =
			{
				{ Name = "questID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "hasBonus", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "QuestHasWarModeBonus",
			Type = "Function",
			Documentation = { "Tests whether a quest in the player's quest log that is eligible for warmode bonuses (see 'QuestCanHaveWarModeBOnus') has been completed in warmode (including accepting it)" },

			Arguments =
			{
				{ Name = "questID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "hasBonus", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ReadyForTurnIn",
			Type = "Function",

			Arguments =
			{
				{ Name = "questID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "readyForTurnIn", Type = "bool", Nilable = true },
			},
		},
		{
			Name = "RemoveQuestWatch",
			Type = "Function",

			Arguments =
			{
				{ Name = "questID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "wasRemoved", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "RemoveWorldQuestWatch",
			Type = "Function",

			Arguments =
			{
				{ Name = "questID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "wasRemoved", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "RequestLoadQuestByID",
			Type = "Function",

			Arguments =
			{
				{ Name = "questID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "SetAbandonQuest",
			Type = "Function",
		},
		{
			Name = "SetMapForQuestPOIs",
			Type = "Function",

			Arguments =
			{
				{ Name = "uiMapID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "SetSelectedQuest",
			Type = "Function",

			Arguments =
			{
				{ Name = "questID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "ShouldShowQuestRewards",
			Type = "Function",

			Arguments =
			{
				{ Name = "questID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "shouldShow", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "SortQuestWatches",
			Type = "Function",
		},
	},

	Events =
	{
		{
			Name = "QuestAccepted",
			Type = "Event",
			LiteralName = "QUEST_ACCEPTED",
			Payload =
			{
				{ Name = "questId", Type = "number", Nilable = false },
			},
		},
		{
			Name = "QuestAutocomplete",
			Type = "Event",
			LiteralName = "QUEST_AUTOCOMPLETE",
			Payload =
			{
				{ Name = "questId", Type = "number", Nilable = false },
			},
		},
		{
			Name = "QuestComplete",
			Type = "Event",
			LiteralName = "QUEST_COMPLETE",
		},
		{
			Name = "QuestDataLoadResult",
			Type = "Event",
			LiteralName = "QUEST_DATA_LOAD_RESULT",
			Payload =
			{
				{ Name = "questID", Type = "number", Nilable = false },
				{ Name = "success", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "QuestDetail",
			Type = "Event",
			LiteralName = "QUEST_DETAIL",
			Payload =
			{
				{ Name = "questStartItemID", Type = "number", Nilable = true },
			},
		},
		{
			Name = "QuestLogCriteriaUpdate",
			Type = "Event",
			LiteralName = "QUEST_LOG_CRITERIA_UPDATE",
			Payload =
			{
				{ Name = "questID", Type = "number", Nilable = false },
				{ Name = "specificTreeID", Type = "number", Nilable = false },
				{ Name = "description", Type = "string", Nilable = false },
				{ Name = "numFulfilled", Type = "number", Nilable = false },
				{ Name = "numRequired", Type = "number", Nilable = false },
			},
		},
		{
			Name = "QuestLogUpdate",
			Type = "Event",
			LiteralName = "QUEST_LOG_UPDATE",
		},
		{
			Name = "QuestPoiUpdate",
			Type = "Event",
			LiteralName = "QUEST_POI_UPDATE",
		},
		{
			Name = "QuestRemoved",
			Type = "Event",
			LiteralName = "QUEST_REMOVED",
			Payload =
			{
				{ Name = "questID", Type = "number", Nilable = false },
				{ Name = "wasReplayQuest", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "QuestTurnedIn",
			Type = "Event",
			LiteralName = "QUEST_TURNED_IN",
			Payload =
			{
				{ Name = "questID", Type = "number", Nilable = false },
				{ Name = "xpReward", Type = "number", Nilable = false },
				{ Name = "moneyReward", Type = "number", Nilable = false },
			},
		},
		{
			Name = "QuestWatchListChanged",
			Type = "Event",
			LiteralName = "QUEST_WATCH_LIST_CHANGED",
			Payload =
			{
				{ Name = "questID", Type = "number", Nilable = true },
				{ Name = "added", Type = "bool", Nilable = true },
			},
		},
		{
			Name = "QuestWatchUpdate",
			Type = "Event",
			LiteralName = "QUEST_WATCH_UPDATE",
			Payload =
			{
				{ Name = "questID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "QuestlineUpdate",
			Type = "Event",
			LiteralName = "QUESTLINE_UPDATE",
			Payload =
			{
				{ Name = "requestRequired", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "TaskProgressUpdate",
			Type = "Event",
			LiteralName = "TASK_PROGRESS_UPDATE",
		},
		{
			Name = "TreasurePickerCacheFlush",
			Type = "Event",
			LiteralName = "TREASURE_PICKER_CACHE_FLUSH",
		},
		{
			Name = "WaypointUpdate",
			Type = "Event",
			LiteralName = "WAYPOINT_UPDATE",
		},
		{
			Name = "WorldQuestCompletedBySpell",
			Type = "Event",
			LiteralName = "WORLD_QUEST_COMPLETED_BY_SPELL",
			Payload =
			{
				{ Name = "questID", Type = "number", Nilable = false },
			},
		},
	},

	Tables =
	{
		{
			Name = "MapOverlayDisplayLocation",
			Type = "Enumeration",
			NumValues = 6,
			MinValue = 0,
			MaxValue = 5,
			Fields =
			{
				{ Name = "Default", Type = "MapOverlayDisplayLocation", EnumValue = 0 },
				{ Name = "BottomLeft", Type = "MapOverlayDisplayLocation", EnumValue = 1 },
				{ Name = "TopLeft", Type = "MapOverlayDisplayLocation", EnumValue = 2 },
				{ Name = "BottomRight", Type = "MapOverlayDisplayLocation", EnumValue = 3 },
				{ Name = "TopRight", Type = "MapOverlayDisplayLocation", EnumValue = 4 },
				{ Name = "Hidden", Type = "MapOverlayDisplayLocation", EnumValue = 5 },
			},
		},
		{
			Name = "QuestFrequency",
			Type = "Enumeration",
			NumValues = 3,
			MinValue = 0,
			MaxValue = 2,
			Fields =
			{
				{ Name = "Default", Type = "QuestFrequency", EnumValue = 0 },
				{ Name = "Daily", Type = "QuestFrequency", EnumValue = 1 },
				{ Name = "Weekly", Type = "QuestFrequency", EnumValue = 2 },
			},
		},
		{
			Name = "QuestTag",
			Type = "Enumeration",
			NumValues = 11,
			MinValue = 1,
			MaxValue = 266,
			Fields =
			{
				{ Name = "Group", Type = "QuestTag", EnumValue = 1 },
				{ Name = "PvP", Type = "QuestTag", EnumValue = 41 },
				{ Name = "Raid", Type = "QuestTag", EnumValue = 62 },
				{ Name = "Dungeon", Type = "QuestTag", EnumValue = 81 },
				{ Name = "Legendary", Type = "QuestTag", EnumValue = 83 },
				{ Name = "Heroic", Type = "QuestTag", EnumValue = 85 },
				{ Name = "Raid10", Type = "QuestTag", EnumValue = 88 },
				{ Name = "Raid25", Type = "QuestTag", EnumValue = 89 },
				{ Name = "Scenario", Type = "QuestTag", EnumValue = 98 },
				{ Name = "Account", Type = "QuestTag", EnumValue = 102 },
				{ Name = "CombatAlly", Type = "QuestTag", EnumValue = 266 },
			},
		},
		{
			Name = "QuestWatchType",
			Type = "Enumeration",
			NumValues = 2,
			MinValue = 0,
			MaxValue = 1,
			Fields =
			{
				{ Name = "Automatic", Type = "QuestWatchType", EnumValue = 0 },
				{ Name = "Manual", Type = "QuestWatchType", EnumValue = 1 },
			},
		},
		{
			Name = "WorldQuestQuality",
			Type = "Enumeration",
			NumValues = 3,
			MinValue = 0,
			MaxValue = 2,
			Fields =
			{
				{ Name = "Common", Type = "WorldQuestQuality", EnumValue = 0 },
				{ Name = "Rare", Type = "WorldQuestQuality", EnumValue = 1 },
				{ Name = "Epic", Type = "WorldQuestQuality", EnumValue = 2 },
			},
		},
		{
			Name = "QuestInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "title", Type = "string", Nilable = false },
				{ Name = "questLogIndex", Type = "number", Nilable = false },
				{ Name = "questID", Type = "number", Nilable = false },
				{ Name = "campaignID", Type = "number", Nilable = true },
				{ Name = "level", Type = "number", Nilable = false },
				{ Name = "difficultyLevel", Type = "number", Nilable = false },
				{ Name = "suggestedGroup", Type = "number", Nilable = false },
				{ Name = "frequency", Type = "QuestFrequency", Nilable = true },
				{ Name = "isHeader", Type = "bool", Nilable = false },
				{ Name = "isCollapsed", Type = "bool", Nilable = false },
				{ Name = "startEvent", Type = "bool", Nilable = false },
				{ Name = "isTask", Type = "bool", Nilable = false },
				{ Name = "isBounty", Type = "bool", Nilable = false },
				{ Name = "isStory", Type = "bool", Nilable = false },
				{ Name = "isScaling", Type = "bool", Nilable = false },
				{ Name = "isOnMap", Type = "bool", Nilable = false },
				{ Name = "hasLocalPOI", Type = "bool", Nilable = false },
				{ Name = "isHidden", Type = "bool", Nilable = false },
				{ Name = "isAutoComplete", Type = "bool", Nilable = false },
				{ Name = "overridesSortOrder", Type = "bool", Nilable = false },
				{ Name = "readyForTranslation", Type = "bool", Nilable = false, Default = true },
			},
		},
		{
			Name = "QuestObjectiveInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "text", Type = "string", Nilable = false },
				{ Name = "type", Type = "string", Nilable = false },
				{ Name = "finished", Type = "bool", Nilable = false },
				{ Name = "numFulfilled", Type = "number", Nilable = false },
				{ Name = "numRequired", Type = "number", Nilable = false },
			},
		},
		{
			Name = "QuestOnMapInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "questID", Type = "number", Nilable = false },
				{ Name = "x", Type = "number", Nilable = false },
				{ Name = "y", Type = "number", Nilable = false },
				{ Name = "type", Type = "number", Nilable = false },
				{ Name = "isMapIndicatorQuest", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "QuestTagInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "tagName", Type = "string", Nilable = false },
				{ Name = "tagID", Type = "number", Nilable = false },
				{ Name = "worldQuestType", Type = "number", Nilable = true },
				{ Name = "quality", Type = "WorldQuestQuality", Nilable = true },
				{ Name = "tradeskillLineID", Type = "number", Nilable = true },
				{ Name = "isElite", Type = "bool", Nilable = true },
				{ Name = "displayExpiration", Type = "bool", Nilable = true },
			},
		},
		{
			Name = "QuestTheme",
			Type = "Structure",
			Fields =
			{
				{ Name = "background", Type = "string", Nilable = false },
				{ Name = "seal", Type = "string", Nilable = false },
				{ Name = "signature", Type = "string", Nilable = false },
			},
		},
	},
};

APIDocumentation:AddDocumentationTable(QuestLog);local QuestOffer =
{
	Name = "QuestOffer",
	Type = "System",
	Namespace = "C_QuestOffer",

	Functions =
	{
	},

	Events =
	{
		{
			Name = "QuestAcceptConfirm",
			Type = "Event",
			LiteralName = "QUEST_ACCEPT_CONFIRM",
			Payload =
			{
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "questTitle", Type = "string", Nilable = false },
			},
		},
		{
			Name = "QuestFinished",
			Type = "Event",
			LiteralName = "QUEST_FINISHED",
		},
		{
			Name = "QuestGreeting",
			Type = "Event",
			LiteralName = "QUEST_GREETING",
		},
		{
			Name = "QuestItemUpdate",
			Type = "Event",
			LiteralName = "QUEST_ITEM_UPDATE",
		},
		{
			Name = "QuestProgress",
			Type = "Event",
			LiteralName = "QUEST_PROGRESS",
		},
	},

	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(QuestOffer);local QuestSession =
{
	Name = "QuestSession",
	Type = "System",
	Namespace = "C_QuestSession",

	Functions =
	{
		{
			Name = "CanStart",
			Type = "Function",

			Returns =
			{
				{ Name = "allowed", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "CanStop",
			Type = "Function",

			Returns =
			{
				{ Name = "allowed", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "Exists",
			Type = "Function",

			Returns =
			{
				{ Name = "exists", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "GetAvailableSessionCommand",
			Type = "Function",

			Returns =
			{
				{ Name = "command", Type = "QuestSessionCommand", Nilable = false },
			},
		},
		{
			Name = "GetPendingCommand",
			Type = "Function",

			Returns =
			{
				{ Name = "command", Type = "QuestSessionCommand", Nilable = false },
			},
		},
		{
			Name = "GetProposedMaxLevelForSession",
			Type = "Function",

			Returns =
			{
				{ Name = "proposedMaxLevel", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetSessionBeginDetails",
			Type = "Function",

			Returns =
			{
				{ Name = "details", Type = "QuestSessionPlayerDetails", Nilable = true },
			},
		},
		{
			Name = "GetSuperTrackedQuest",
			Type = "Function",

			Returns =
			{
				{ Name = "questID", Type = "number", Nilable = true },
			},
		},
		{
			Name = "HasJoined",
			Type = "Function",

			Returns =
			{
				{ Name = "hasJoined", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "HasPendingCommand",
			Type = "Function",

			Returns =
			{
				{ Name = "hasPendingCommand", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "RequestSessionStart",
			Type = "Function",
		},
		{
			Name = "RequestSessionStop",
			Type = "Function",
		},
		{
			Name = "SendSessionBeginResponse",
			Type = "Function",

			Arguments =
			{
				{ Name = "beginSession", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "SetQuestIsSuperTracked",
			Type = "Function",

			Arguments =
			{
				{ Name = "questID", Type = "number", Nilable = false },
				{ Name = "superTrack", Type = "bool", Nilable = false },
			},
		},
	},

	Events =
	{
		{
			Name = "QuestSessionCreated",
			Type = "Event",
			LiteralName = "QUEST_SESSION_CREATED",
		},
		{
			Name = "QuestSessionDestroyed",
			Type = "Event",
			LiteralName = "QUEST_SESSION_DESTROYED",
		},
		{
			Name = "QuestSessionEnabledStateChanged",
			Type = "Event",
			LiteralName = "QUEST_SESSION_ENABLED_STATE_CHANGED",
			Payload =
			{
				{ Name = "enabled", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "QuestSessionJoined",
			Type = "Event",
			LiteralName = "QUEST_SESSION_JOINED",
		},
		{
			Name = "QuestSessionLeft",
			Type = "Event",
			LiteralName = "QUEST_SESSION_LEFT",
		},
		{
			Name = "QuestSessionMemberConfirm",
			Type = "Event",
			LiteralName = "QUEST_SESSION_MEMBER_CONFIRM",
		},
		{
			Name = "QuestSessionMemberStartResponse",
			Type = "Event",
			LiteralName = "QUEST_SESSION_MEMBER_START_RESPONSE",
			Payload =
			{
				{ Name = "guid", Type = "string", Nilable = false },
				{ Name = "response", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "QuestSessionNotification",
			Type = "Event",
			LiteralName = "QUEST_SESSION_NOTIFICATION",
			Payload =
			{
				{ Name = "result", Type = "QuestSessionResult", Nilable = false },
				{ Name = "guid", Type = "string", Nilable = false },
			},
		},
	},

	Tables =
	{
		{
			Name = "QuestSessionPlayerDetails",
			Type = "Structure",
			Fields =
			{
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "guid", Type = "string", Nilable = false },
			},
		},
	},
};

APIDocumentation:AddDocumentationTable(QuestSession);local QuestTaskInfo =
{
	Name = "QuestTaskInfo",
	Type = "System",
	Namespace = "C_TaskQuest",

	Functions =
	{
		{
			Name = "DoesMapShowTaskQuestObjectives",
			Type = "Function",

			Arguments =
			{
				{ Name = "uiMapID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "showsTaskQuestObjectives", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "GetQuestInfoByQuestID",
			Type = "Function",

			Arguments =
			{
				{ Name = "questID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "questTitle", Type = "string", Nilable = false },
				{ Name = "factionID", Type = "number", Nilable = true },
				{ Name = "capped", Type = "bool", Nilable = true },
				{ Name = "displayAsObjective", Type = "bool", Nilable = true },
			},
		},
		{
			Name = "GetQuestLocation",
			Type = "Function",

			Arguments =
			{
				{ Name = "questID", Type = "number", Nilable = false },
				{ Name = "uiMapID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "locationX", Type = "number", Nilable = false },
				{ Name = "locationY", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetQuestProgressBarInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "questID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "progress", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetQuestTimeLeftMinutes",
			Type = "Function",

			Arguments =
			{
				{ Name = "questID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "minutesLeft", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetQuestTimeLeftSeconds",
			Type = "Function",

			Arguments =
			{
				{ Name = "questID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "secondsLeft", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetQuestZoneID",
			Type = "Function",

			Arguments =
			{
				{ Name = "questID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "uiMapID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetQuestsForPlayerByMapID",
			Type = "Function",

			Arguments =
			{
				{ Name = "uiMapID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "taskPOIs", Type = "table", InnerType = "TaskPOIData", Nilable = false },
			},
		},
		{
			Name = "GetThreatQuests",
			Type = "Function",

			Returns =
			{
				{ Name = "quests", Type = "table", InnerType = "number", Nilable = false },
			},
		},
		{
			Name = "IsActive",
			Type = "Function",

			Arguments =
			{
				{ Name = "questID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "active", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "RequestPreloadRewardData",
			Type = "Function",

			Arguments =
			{
				{ Name = "questID", Type = "number", Nilable = false },
			},
		},
	},

	Events =
	{
	},

	Tables =
	{
		{
			Name = "TaskPOIData",
			Type = "Structure",
			Fields =
			{
				{ Name = "questId", Type = "number", Nilable = false },
				{ Name = "x", Type = "number", Nilable = false },
				{ Name = "y", Type = "number", Nilable = false },
				{ Name = "inProgress", Type = "bool", Nilable = false },
				{ Name = "numObjectives", Type = "number", Nilable = false },
				{ Name = "mapID", Type = "number", Nilable = false },
				{ Name = "isQuestStart", Type = "bool", Nilable = false },
				{ Name = "isDaily", Type = "bool", Nilable = false },
				{ Name = "isCombatAllyQuest", Type = "bool", Nilable = false },
				{ Name = "childDepth", Type = "number", Nilable = true },
			},
		},
	},
};

APIDocumentation:AddDocumentationTable(QuestTaskInfo);local RaidLocks =
{
	Name = "RaidLocks",
	Type = "System",
	Namespace = "C_RaidLocks",

	Functions =
	{
		{
			Name = "IsEncounterComplete",
			Type = "Function",

			Arguments =
			{
				{ Name = "mapID", Type = "number", Nilable = false },
				{ Name = "encounterID", Type = "number", Nilable = false },
				{ Name = "difficultyID", Type = "number", Nilable = true },
			},

			Returns =
			{
				{ Name = "encounterIsComplete", Type = "bool", Nilable = false },
			},
		},
	},

	Events =
	{
	},

	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(RaidLocks);local RecruitAFriend =
{
	Name = "RecruitAFriend",
	Type = "System",
	Namespace = "C_RecruitAFriend",

	Functions =
	{
		{
			Name = "ClaimActivityReward",
			Type = "Function",

			Arguments =
			{
				{ Name = "activityID", Type = "number", Nilable = false },
				{ Name = "acceptanceID", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "success", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ClaimNextReward",
			Type = "Function",

			Returns =
			{
				{ Name = "success", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "GenerateRecruitmentLink",
			Type = "Function",

			Returns =
			{
				{ Name = "success", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "GetRAFInfo",
			Type = "Function",

			Returns =
			{
				{ Name = "info", Type = "RafInfo", Nilable = false },
			},
		},
		{
			Name = "GetRAFSystemInfo",
			Type = "Function",

			Returns =
			{
				{ Name = "systemInfo", Type = "RafSystemInfo", Nilable = false },
			},
		},
		{
			Name = "GetRecruitActivityRequirementsText",
			Type = "Function",

			Arguments =
			{
				{ Name = "activityID", Type = "number", Nilable = false },
				{ Name = "acceptanceID", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "requirementsText", Type = "table", InnerType = "string", Nilable = false },
			},
		},
		{
			Name = "GetRecruitInfo",
			Type = "Function",

			Returns =
			{
				{ Name = "active", Type = "bool", Nilable = false },
				{ Name = "faction", Type = "number", Nilable = false },
			},
		},
		{
			Name = "IsEnabled",
			Type = "Function",

			Returns =
			{
				{ Name = "enabled", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsRecruitingEnabled",
			Type = "Function",

			Returns =
			{
				{ Name = "enabled", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "RemoveRAFRecruit",
			Type = "Function",

			Arguments =
			{
				{ Name = "wowAccountGUID", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "success", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "RequestUpdatedRecruitmentInfo",
			Type = "Function",

			Returns =
			{
				{ Name = "success", Type = "bool", Nilable = false },
			},
		},
	},

	Events =
	{
		{
			Name = "RafInfoUpdated",
			Type = "Event",
			LiteralName = "RAF_INFO_UPDATED",
			Payload =
			{
				{ Name = "info", Type = "RafInfo", Nilable = false },
			},
		},
		{
			Name = "RafRecruitingEnabledStatus",
			Type = "Event",
			LiteralName = "RAF_RECRUITING_ENABLED_STATUS",
			Payload =
			{
				{ Name = "enabled", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "RafSystemEnabledStatus",
			Type = "Event",
			LiteralName = "RAF_SYSTEM_ENABLED_STATUS",
			Payload =
			{
				{ Name = "enabled", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "RafSystemInfoUpdated",
			Type = "Event",
			LiteralName = "RAF_SYSTEM_INFO_UPDATED",
			Payload =
			{
				{ Name = "systemInfo", Type = "RafSystemInfo", Nilable = false },
			},
		},
	},

	Tables =
	{
		{
			Name = "RafRecruitActivityState",
			Type = "Enumeration",
			NumValues = 3,
			MinValue = 0,
			MaxValue = 2,
			Fields =
			{
				{ Name = "Incomplete", Type = "RafRecruitActivityState", EnumValue = 0 },
				{ Name = "Complete", Type = "RafRecruitActivityState", EnumValue = 1 },
				{ Name = "RewardClaimed", Type = "RafRecruitActivityState", EnumValue = 2 },
			},
		},
		{
			Name = "RafRecruitSubStatus",
			Type = "Enumeration",
			NumValues = 3,
			MinValue = 0,
			MaxValue = 2,
			Fields =
			{
				{ Name = "Trial", Type = "RafRecruitSubStatus", EnumValue = 0 },
				{ Name = "Active", Type = "RafRecruitSubStatus", EnumValue = 1 },
				{ Name = "Inactive", Type = "RafRecruitSubStatus", EnumValue = 2 },
			},
		},
		{
			Name = "RafRewardType",
			Type = "Enumeration",
			NumValues = 8,
			MinValue = 0,
			MaxValue = 7,
			Fields =
			{
				{ Name = "Pet", Type = "RafRewardType", EnumValue = 0 },
				{ Name = "Mount", Type = "RafRewardType", EnumValue = 1 },
				{ Name = "Appearance", Type = "RafRewardType", EnumValue = 2 },
				{ Name = "Title", Type = "RafRewardType", EnumValue = 3 },
				{ Name = "GameTime", Type = "RafRewardType", EnumValue = 4 },
				{ Name = "AppearanceSet", Type = "RafRewardType", EnumValue = 5 },
				{ Name = "Illusion", Type = "RafRewardType", EnumValue = 6 },
				{ Name = "Invalid", Type = "RafRewardType", EnumValue = 7 },
			},
		},
		{
			Name = "RafAppearanceInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "appearanceID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "RafAppearanceSetInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "setID", Type = "number", Nilable = false },
				{ Name = "setName", Type = "string", Nilable = false },
				{ Name = "appearanceIDs", Type = "table", InnerType = "number", Nilable = false },
			},
		},
		{
			Name = "RafIllusionInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "spellItemEnchantmentID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "RafInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "lifetimeMonths", Type = "number", Nilable = false },
				{ Name = "spentMonths", Type = "number", Nilable = false },
				{ Name = "availableMonths", Type = "number", Nilable = false },
				{ Name = "claimInProgress", Type = "bool", Nilable = false },
				{ Name = "rewards", Type = "table", InnerType = "RafReward", Nilable = false },
				{ Name = "nextReward", Type = "RafReward", Nilable = true },
				{ Name = "recruitmentInfo", Type = "RafRecruitmentinfo", Nilable = true },
				{ Name = "recruits", Type = "table", InnerType = "RafRecruit", Nilable = false },
			},
		},
		{
			Name = "RafMountInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "spellID", Type = "number", Nilable = false },
				{ Name = "mountID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "RafPetInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "creatureID", Type = "number", Nilable = false },
				{ Name = "speciesID", Type = "number", Nilable = false },
				{ Name = "displayID", Type = "number", Nilable = false },
				{ Name = "speciesName", Type = "string", Nilable = false },
				{ Name = "description", Type = "string", Nilable = false },
			},
		},
		{
			Name = "RafRecruit",
			Type = "Structure",
			Fields =
			{
				{ Name = "bnetAccountID", Type = "number", Nilable = false },
				{ Name = "wowAccountGUID", Type = "string", Nilable = false },
				{ Name = "battleTag", Type = "string", Nilable = false },
				{ Name = "monthsRemaining", Type = "number", Nilable = false },
				{ Name = "subStatus", Type = "RafRecruitSubStatus", Nilable = false },
				{ Name = "acceptanceID", Type = "string", Nilable = false },
				{ Name = "activities", Type = "table", InnerType = "RafRecruitActivity", Nilable = false },
			},
		},
		{
			Name = "RafRecruitActivity",
			Type = "Structure",
			Fields =
			{
				{ Name = "activityID", Type = "number", Nilable = false },
				{ Name = "rewardQuestID", Type = "number", Nilable = false },
				{ Name = "state", Type = "RafRecruitActivityState", Nilable = false },
			},
		},
		{
			Name = "RafRecruitmentinfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "recruitmentCode", Type = "string", Nilable = false },
				{ Name = "recruitmentURL", Type = "string", Nilable = false },
				{ Name = "expireTime", Type = "number", Nilable = false },
				{ Name = "remainingTimeSeconds", Type = "number", Nilable = false },
				{ Name = "totalUses", Type = "number", Nilable = false },
				{ Name = "remainingUses", Type = "number", Nilable = false },
				{ Name = "sourceRealm", Type = "string", Nilable = false },
				{ Name = "sourceFaction", Type = "string", Nilable = false },
			},
		},
		{
			Name = "RafReward",
			Type = "Structure",
			Fields =
			{
				{ Name = "rewardID", Type = "number", Nilable = false },
				{ Name = "itemID", Type = "number", Nilable = false },
				{ Name = "rewardType", Type = "RafRewardType", Nilable = false },
				{ Name = "petInfo", Type = "RafPetInfo", Nilable = true },
				{ Name = "mountInfo", Type = "RafMountInfo", Nilable = true },
				{ Name = "appearanceInfo", Type = "RafAppearanceInfo", Nilable = true },
				{ Name = "titleInfo", Type = "RafTitleInfo", Nilable = true },
				{ Name = "appearanceSetInfo", Type = "RafAppearanceSetInfo", Nilable = true },
				{ Name = "illusionInfo", Type = "RafIllusionInfo", Nilable = true },
				{ Name = "canClaim", Type = "bool", Nilable = false },
				{ Name = "claimed", Type = "bool", Nilable = false },
				{ Name = "repeatable", Type = "bool", Nilable = false },
				{ Name = "repeatableClaimCount", Type = "number", Nilable = false },
				{ Name = "monthsRequired", Type = "number", Nilable = false },
				{ Name = "monthCost", Type = "number", Nilable = false },
				{ Name = "availableInMonths", Type = "number", Nilable = false },
				{ Name = "iconID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "RafSystemInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "maxRecruits", Type = "number", Nilable = false },
				{ Name = "maxRecruitMonths", Type = "number", Nilable = false },
				{ Name = "maxRecruitmentUses", Type = "number", Nilable = false },
				{ Name = "daysInCycle", Type = "number", Nilable = false },
			},
		},
		{
			Name = "RafTitleInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "titleID", Type = "number", Nilable = false },
			},
		},
	},
};

APIDocumentation:AddDocumentationTable(RecruitAFriend);local ReportSystem =
{
	Name = "ReportSystem",
	Type = "System",
	Namespace = "C_ReportSystem",

	Functions =
	{
		{
			Name = "CanReportPlayer",
			Type = "Function",

			Arguments =
			{
				{ Name = "playerLocation", Type = "table", Mixin = "PlayerLocationMixin", Nilable = false },
			},

			Returns =
			{
				{ Name = "canReport", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "InitiateReportPlayer",
			Type = "Function",
			Documentation = { "Not allowed to be called by addons" },

			Arguments =
			{
				{ Name = "complaintType", Type = "string", Nilable = false },
				{ Name = "playerLocation", Type = "table", Mixin = "PlayerLocationMixin", Nilable = true },
			},

			Returns =
			{
				{ Name = "token", Type = "number", Nilable = false },
			},
		},
		{
			Name = "OpenReportPlayerDialog",
			Type = "Function",
			Documentation = { "Addons should use this to open the ReportPlayer dialog. InitiateReportPlayer and SendReportPlayer are no longer accessible to addons." },

			Arguments =
			{
				{ Name = "reportType", Type = "string", Nilable = false },
				{ Name = "playerName", Type = "string", Nilable = false },
				{ Name = "playerLocation", Type = "table", Mixin = "PlayerLocationMixin", Nilable = true },
			},
		},
		{
			Name = "ReportServerLag",
			Type = "Function",
		},
		{
			Name = "ReportStuckInCombat",
			Type = "Function",
		},
		{
			Name = "SendReportPlayer",
			Type = "Function",
			Documentation = { "Not allowed to be called by addons" },

			Arguments =
			{
				{ Name = "token", Type = "number", Nilable = false },
				{ Name = "comment", Type = "string", Nilable = true },
			},
		},
		{
			Name = "SetPendingReportPetTarget",
			Type = "Function",

			Arguments =
			{
				{ Name = "target", Type = "string", Nilable = true },
			},

			Returns =
			{
				{ Name = "set", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "SetPendingReportTarget",
			Type = "Function",

			Arguments =
			{
				{ Name = "target", Type = "string", Nilable = true },
			},

			Returns =
			{
				{ Name = "set", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "SetPendingReportTargetByGuid",
			Type = "Function",

			Arguments =
			{
				{ Name = "guid", Type = "string", Nilable = true },
			},

			Returns =
			{
				{ Name = "set", Type = "bool", Nilable = false },
			},
		},
	},

	Events =
	{
		{
			Name = "OpenReportPlayer",
			Type = "Event",
			LiteralName = "OPEN_REPORT_PLAYER",
			Payload =
			{
				{ Name = "token", Type = "number", Nilable = false },
				{ Name = "reportType", Type = "string", Nilable = false },
				{ Name = "playerName", Type = "string", Nilable = false },
			},
		},
		{
			Name = "ReportPlayerResult",
			Type = "Event",
			LiteralName = "REPORT_PLAYER_RESULT",
			Payload =
			{
				{ Name = "success", Type = "bool", Nilable = false },
			},
		},
	},

	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(ReportSystem);local ReputationInfo =
{
	Name = "ReputationInfo",
	Type = "System",
	Namespace = "C_Reputation",

	Functions =
	{
		{
			Name = "GetFactionParagonInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "factionID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "currentValue", Type = "number", Nilable = false },
				{ Name = "threshold", Type = "number", Nilable = false },
				{ Name = "rewardQuestID", Type = "number", Nilable = false },
				{ Name = "hasRewardPending", Type = "bool", Nilable = false },
				{ Name = "tooLowLevelForParagon", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsFactionParagon",
			Type = "Function",

			Arguments =
			{
				{ Name = "factionID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "hasParagon", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "RequestFactionParagonPreloadRewardData",
			Type = "Function",

			Arguments =
			{
				{ Name = "factionID", Type = "number", Nilable = false },
			},
		},
	},

	Events =
	{
	},

	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(ReputationInfo);local ResearchInfo =
{
	Name = "ResearchInfo",
	Type = "System",
	Namespace = "C_ResearchInfo",

	Functions =
	{
		{
			Name = "GetDigSitesForMap",
			Type = "Function",

			Arguments =
			{
				{ Name = "uiMapID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "digSites", Type = "table", InnerType = "DigSiteMapInfo", Nilable = false },
			},
		},
	},

	Events =
	{
		{
			Name = "ArchaeologyClosed",
			Type = "Event",
			LiteralName = "ARCHAEOLOGY_CLOSED",
		},
		{
			Name = "ArchaeologyFindComplete",
			Type = "Event",
			LiteralName = "ARCHAEOLOGY_FIND_COMPLETE",
			Payload =
			{
				{ Name = "numFindsCompleted", Type = "number", Nilable = false },
				{ Name = "totalFinds", Type = "number", Nilable = false },
				{ Name = "researchBranchID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "ArchaeologySurveyCast",
			Type = "Event",
			LiteralName = "ARCHAEOLOGY_SURVEY_CAST",
			Payload =
			{
				{ Name = "numFindsCompleted", Type = "number", Nilable = false },
				{ Name = "totalFinds", Type = "number", Nilable = false },
				{ Name = "researchBranchID", Type = "number", Nilable = false },
				{ Name = "successfulFind", Type = "number", Nilable = false },
			},
		},
		{
			Name = "ArchaeologyToggle",
			Type = "Event",
			LiteralName = "ARCHAEOLOGY_TOGGLE",
		},
		{
			Name = "ArtifactDigsiteComplete",
			Type = "Event",
			LiteralName = "ARTIFACT_DIGSITE_COMPLETE",
			Payload =
			{
				{ Name = "researchBranchID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "ResearchArtifactComplete",
			Type = "Event",
			LiteralName = "RESEARCH_ARTIFACT_COMPLETE",
			Payload =
			{
				{ Name = "name", Type = "string", Nilable = false },
			},
		},
		{
			Name = "ResearchArtifactDigSiteUpdated",
			Type = "Event",
			LiteralName = "RESEARCH_ARTIFACT_DIG_SITE_UPDATED",
		},
		{
			Name = "ResearchArtifactHistoryReady",
			Type = "Event",
			LiteralName = "RESEARCH_ARTIFACT_HISTORY_READY",
		},
		{
			Name = "ResearchArtifactUpdate",
			Type = "Event",
			LiteralName = "RESEARCH_ARTIFACT_UPDATE",
		},
	},

	Tables =
	{
		{
			Name = "DigSiteMapInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "researchSiteID", Type = "number", Nilable = false },
				{ Name = "position", Type = "table", Mixin = "Vector2DMixin", Nilable = false },
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "textureIndex", Type = "number", Nilable = false },
			},
		},
	},
};

APIDocumentation:AddDocumentationTable(ResearchInfo);local RestrictedActions =
{
	Name = "RestrictedActions",
	Type = "System",
	Namespace = "C_RestrictedActions",

	Functions =
	{
	},

	Events =
	{
		{
			Name = "AddonActionBlocked",
			Type = "Event",
			LiteralName = "ADDON_ACTION_BLOCKED",
			Payload =
			{
				{ Name = "isTainted", Type = "string", Nilable = false },
				{ Name = "function", Type = "string", Nilable = false },
			},
		},
		{
			Name = "AddonActionForbidden",
			Type = "Event",
			LiteralName = "ADDON_ACTION_FORBIDDEN",
			Payload =
			{
				{ Name = "isTainted", Type = "string", Nilable = false },
				{ Name = "function", Type = "string", Nilable = false },
			},
		},
		{
			Name = "MacroActionBlocked",
			Type = "Event",
			LiteralName = "MACRO_ACTION_BLOCKED",
			Payload =
			{
				{ Name = "function", Type = "string", Nilable = false },
			},
		},
		{
			Name = "MacroActionForbidden",
			Type = "Event",
			LiteralName = "MACRO_ACTION_FORBIDDEN",
			Payload =
			{
				{ Name = "function", Type = "string", Nilable = false },
			},
		},
	},

	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(RestrictedActions);local ScenarioInfo =
{
	Name = "ScenarioInfo",
	Type = "System",
	Namespace = "C_ScenarioInfo",

	Functions =
	{
	},

	Events =
	{
		{
			Name = "ScenarioBonusObjectiveComplete",
			Type = "Event",
			LiteralName = "SCENARIO_BONUS_OBJECTIVE_COMPLETE",
			Payload =
			{
				{ Name = "bonusObjectiveID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "ScenarioBonusVisibilityUpdate",
			Type = "Event",
			LiteralName = "SCENARIO_BONUS_VISIBILITY_UPDATE",
		},
		{
			Name = "ScenarioCompleted",
			Type = "Event",
			LiteralName = "SCENARIO_COMPLETED",
			Payload =
			{
				{ Name = "questID", Type = "number", Nilable = true },
				{ Name = "xp", Type = "number", Nilable = true },
				{ Name = "money", Type = "number", Nilable = true },
			},
		},
		{
			Name = "ScenarioCriteriaShowStateUpdate",
			Type = "Event",
			LiteralName = "SCENARIO_CRITERIA_SHOW_STATE_UPDATE",
			Payload =
			{
				{ Name = "show", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ScenarioCriteriaUpdate",
			Type = "Event",
			LiteralName = "SCENARIO_CRITERIA_UPDATE",
			Payload =
			{
				{ Name = "criteriaID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "ScenarioPoiUpdate",
			Type = "Event",
			LiteralName = "SCENARIO_POI_UPDATE",
		},
		{
			Name = "ScenarioSpellUpdate",
			Type = "Event",
			LiteralName = "SCENARIO_SPELL_UPDATE",
		},
		{
			Name = "ScenarioUpdate",
			Type = "Event",
			LiteralName = "SCENARIO_UPDATE",
			Payload =
			{
				{ Name = "newStep", Type = "bool", Nilable = true },
			},
		},
	},

	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(ScenarioInfo);local ScrappingMachineUI =
{
	Name = "ScrappingMachineUI",
	Type = "System",
	Namespace = "C_ScrappingMachineUI",

	Functions =
	{
		{
			Name = "CloseScrappingMachine",
			Type = "Function",
		},
		{
			Name = "DropPendingScrapItemFromCursor",
			Type = "Function",

			Arguments =
			{
				{ Name = "index", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetCurrentPendingScrapItemLocationByIndex",
			Type = "Function",

			Arguments =
			{
				{ Name = "index", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "itemLoc", Type = "table", Mixin = "ItemLocationMixin", Nilable = false },
			},
		},
		{
			Name = "GetScrapSpellID",
			Type = "Function",

			Returns =
			{
				{ Name = "spellID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetScrappingMachineName",
			Type = "Function",

			Returns =
			{
				{ Name = "name", Type = "string", Nilable = false },
			},
		},
		{
			Name = "HasScrappableItems",
			Type = "Function",

			Returns =
			{
				{ Name = "hasScrappableItems", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "RemoveAllScrapItems",
			Type = "Function",
		},
		{
			Name = "RemoveCurrentScrappingItem",
			Type = "Function",
		},
		{
			Name = "RemoveItemToScrap",
			Type = "Function",

			Arguments =
			{
				{ Name = "index", Type = "number", Nilable = false },
			},
		},
		{
			Name = "ScrapItems",
			Type = "Function",
		},
		{
			Name = "SetScrappingMachine",
			Type = "Function",

			Arguments =
			{
				{ Name = "gameObject", Type = "string", Nilable = false },
			},
		},
		{
			Name = "ValidateScrappingList",
			Type = "Function",
		},
	},

	Events =
	{
		{
			Name = "ScrappingMachineClose",
			Type = "Event",
			LiteralName = "SCRAPPING_MACHINE_CLOSE",
		},
		{
			Name = "ScrappingMachineItemRemovedOrCancelled",
			Type = "Event",
			LiteralName = "SCRAPPING_MACHINE_ITEM_REMOVED_OR_CANCELLED",
			Payload =
			{
				{ Name = "index", Type = "number", Nilable = false },
			},
		},
		{
			Name = "ScrappingMachinePendingItemChanged",
			Type = "Event",
			LiteralName = "SCRAPPING_MACHINE_PENDING_ITEM_CHANGED",
		},
		{
			Name = "ScrappingMachineScrappingFinished",
			Type = "Event",
			LiteralName = "SCRAPPING_MACHINE_SCRAPPING_FINISHED",
		},
		{
			Name = "ScrappingMachineShow",
			Type = "Event",
			LiteralName = "SCRAPPING_MACHINE_SHOW",
		},
	},

	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(ScrappingMachineUI);local ScriptWarnings =
{
	Name = "ScriptWarnings",
	Type = "System",
	Namespace = "C_ScriptWarnings",

	Functions =
	{
	},

	Events =
	{
		{
			Name = "LuaWarning",
			Type = "Event",
			LiteralName = "LUA_WARNING",
			Payload =
			{
				{ Name = "warnType", Type = "number", Nilable = false },
				{ Name = "warningText", Type = "string", Nilable = false },
			},
		},
	},

	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(ScriptWarnings);local ScriptedAnimations =
{
	Name = "ScriptedAnimations",
	Type = "System",
	Namespace = "C_ScriptedAnimations",

	Functions =
	{
		{
			Name = "GetAllScriptedAnimationEffects",
			Type = "Function",

			Returns =
			{
				{ Name = "scriptedAnimationEffects", Type = "table", InnerType = "ScriptedAnimationEffect", Nilable = false },
			},
		},
	},

	Events =
	{
	},

	Tables =
	{
		{
			Name = "ScriptedAnimationBehavior",
			Type = "Enumeration",
			NumValues = 6,
			MinValue = 0,
			MaxValue = 5,
			Fields =
			{
				{ Name = "None", Type = "ScriptedAnimationBehavior", EnumValue = 0 },
				{ Name = "TargetShake", Type = "ScriptedAnimationBehavior", EnumValue = 1 },
				{ Name = "TargetKnockBack", Type = "ScriptedAnimationBehavior", EnumValue = 2 },
				{ Name = "SourceRecoil", Type = "ScriptedAnimationBehavior", EnumValue = 3 },
				{ Name = "SourceCollideWithTarget", Type = "ScriptedAnimationBehavior", EnumValue = 4 },
				{ Name = "UIParentShake", Type = "ScriptedAnimationBehavior", EnumValue = 5 },
			},
		},
		{
			Name = "ScriptedAnimationTrajectory",
			Type = "Enumeration",
			NumValues = 7,
			MinValue = 0,
			MaxValue = 6,
			Fields =
			{
				{ Name = "AtSource", Type = "ScriptedAnimationTrajectory", EnumValue = 0 },
				{ Name = "AtTarget", Type = "ScriptedAnimationTrajectory", EnumValue = 1 },
				{ Name = "Straight", Type = "ScriptedAnimationTrajectory", EnumValue = 2 },
				{ Name = "CurveLeft", Type = "ScriptedAnimationTrajectory", EnumValue = 3 },
				{ Name = "CurveRight", Type = "ScriptedAnimationTrajectory", EnumValue = 4 },
				{ Name = "CurveRandom", Type = "ScriptedAnimationTrajectory", EnumValue = 5 },
				{ Name = "HalfwayBetween", Type = "ScriptedAnimationTrajectory", EnumValue = 6 },
			},
		},
		{
			Name = "ScriptedAnimationEffect",
			Type = "Structure",
			Fields =
			{
				{ Name = "id", Type = "number", Nilable = false },
				{ Name = "visual", Type = "number", Nilable = false },
				{ Name = "visualScale", Type = "number", Nilable = false },
				{ Name = "duration", Type = "number", Nilable = false },
				{ Name = "trajectory", Type = "ScriptedAnimationTrajectory", Nilable = false },
				{ Name = "yawRadians", Type = "number", Nilable = false },
				{ Name = "pitchRadians", Type = "number", Nilable = false },
				{ Name = "rollRadians", Type = "number", Nilable = false },
				{ Name = "offsetX", Type = "number", Nilable = false },
				{ Name = "offsetY", Type = "number", Nilable = false },
				{ Name = "offsetZ", Type = "number", Nilable = false },
				{ Name = "animationSpeed", Type = "number", Nilable = false },
				{ Name = "startBehavior", Type = "ScriptedAnimationBehavior", Nilable = true },
				{ Name = "startSoundKitID", Type = "number", Nilable = true },
				{ Name = "finishEffectID", Type = "number", Nilable = true },
				{ Name = "finishBehavior", Type = "ScriptedAnimationBehavior", Nilable = true },
				{ Name = "finishSoundKitID", Type = "number", Nilable = true },
			},
		},
	},
};

APIDocumentation:AddDocumentationTable(ScriptedAnimations);local SecureTransfer =
{
	Name = "SecureTransfer",
	Type = "System",
	Namespace = "C_SecureTransfer",

	Functions =
	{
	},

	Events =
	{
		{
			Name = "SecureTransferCancel",
			Type = "Event",
			LiteralName = "SECURE_TRANSFER_CANCEL",
		},
		{
			Name = "SecureTransferConfirmSendMail",
			Type = "Event",
			LiteralName = "SECURE_TRANSFER_CONFIRM_SEND_MAIL",
		},
		{
			Name = "SecureTransferConfirmTradeAccept",
			Type = "Event",
			LiteralName = "SECURE_TRANSFER_CONFIRM_TRADE_ACCEPT",
		},
	},

	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(SecureTransfer);local SkillInfo =
{
	Name = "SkillInfo",
	Type = "System",
	Namespace = "C_SkillInfo",

	Functions =
	{
	},

	Events =
	{
		{
			Name = "SkillLinesChanged",
			Type = "Event",
			LiteralName = "SKILL_LINES_CHANGED",
		},
	},

	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(SkillInfo);local SocialInfo =
{
	Name = "SocialInfo",
	Type = "System",
	Namespace = "C_Social",

	Functions =
	{
		{
			Name = "GetLastAchievement",
			Type = "Function",

			Returns =
			{
				{ Name = "achievementID", Type = "number", Nilable = false },
				{ Name = "achievementName", Type = "string", Nilable = false },
				{ Name = "achievementDesc", Type = "string", Nilable = false },
				{ Name = "iconFileID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetLastItem",
			Type = "Function",

			Returns =
			{
				{ Name = "itemID", Type = "number", Nilable = false },
				{ Name = "itemName", Type = "string", Nilable = false },
				{ Name = "iconFileID", Type = "number", Nilable = false },
				{ Name = "itemQuality", Type = "number", Nilable = false },
				{ Name = "itemLevel", Type = "number", Nilable = false },
				{ Name = "itemLinkString", Type = "string", Nilable = false },
			},
		},
		{
			Name = "GetLastScreenshotIndex",
			Type = "Function",

			Returns =
			{
				{ Name = "screenShotIndex", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetMaxTweetLength",
			Type = "Function",

			Returns =
			{
				{ Name = "maxTweetLength", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetScreenshotInfoByIndex",
			Type = "Function",

			Arguments =
			{
				{ Name = "index", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "screenWidth", Type = "number", Nilable = false },
				{ Name = "screenHeight", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetTweetLength",
			Type = "Function",

			Arguments =
			{
				{ Name = "tweetText", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "tweetLength", Type = "number", Nilable = false },
			},
		},
		{
			Name = "IsSocialEnabled",
			Type = "Function",

			Returns =
			{
				{ Name = "isEnabled", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "TwitterCheckStatus",
			Type = "Function",
			Documentation = { "Not allowed to be called by addons" },
		},
		{
			Name = "TwitterConnect",
			Type = "Function",
			Documentation = { "Not allowed to be called by addons" },
		},
		{
			Name = "TwitterDisconnect",
			Type = "Function",
			Documentation = { "Not allowed to be called by addons" },
		},
		{
			Name = "TwitterGetMSTillCanPost",
			Type = "Function",

			Returns =
			{
				{ Name = "msTimeLeft", Type = "number", Nilable = false },
			},
		},
		{
			Name = "TwitterPostMessage",
			Type = "Function",
			Documentation = { "Not allowed to be called by addons" },

			Arguments =
			{
				{ Name = "message", Type = "string", Nilable = false },
			},
		},
	},

	Events =
	{
		{
			Name = "SocialItemReceived",
			Type = "Event",
			LiteralName = "SOCIAL_ITEM_RECEIVED",
		},
		{
			Name = "TwitterLinkResult",
			Type = "Event",
			LiteralName = "TWITTER_LINK_RESULT",
			Payload =
			{
				{ Name = "isLinked", Type = "bool", Nilable = false },
				{ Name = "screenName", Type = "string", Nilable = false },
				{ Name = "error", Type = "string", Nilable = false },
			},
		},
		{
			Name = "TwitterPostResult",
			Type = "Event",
			LiteralName = "TWITTER_POST_RESULT",
			Payload =
			{
				{ Name = "result", Type = "number", Nilable = false },
			},
		},
		{
			Name = "TwitterStatusUpdate",
			Type = "Event",
			LiteralName = "TWITTER_STATUS_UPDATE",
			Payload =
			{
				{ Name = "isTwitterEnabled", Type = "bool", Nilable = false },
				{ Name = "isLinked", Type = "bool", Nilable = false },
				{ Name = "screenName", Type = "string", Nilable = false },
			},
		},
	},

	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(SocialInfo);local SocialQueue =
{
	Name = "SocialQueue",
	Type = "System",
	Namespace = "C_SocialQueue",

	Functions =
	{
		{
			Name = "GetAllGroups",
			Type = "Function",

			Arguments =
			{
				{ Name = "allowNonJoinable", Type = "bool", Nilable = false, Default = false },
				{ Name = "allowNonQueuedGroups", Type = "bool", Nilable = false, Default = false },
			},

			Returns =
			{
				{ Name = "groupGUIDs", Type = "table", InnerType = "string", Nilable = false },
			},
		},
		{
			Name = "GetConfig",
			Type = "Function",

			Returns =
			{
				{ Name = "config", Type = "SocialQueueConfig", Nilable = false },
			},
		},
		{
			Name = "GetGroupForPlayer",
			Type = "Function",

			Arguments =
			{
				{ Name = "playerGUID", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "groupGUID", Type = "string", Nilable = false },
				{ Name = "isSoloQueueParty", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "GetGroupInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "groupGUID", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "canJoin", Type = "bool", Nilable = false },
				{ Name = "numQueues", Type = "number", Nilable = false },
				{ Name = "needTank", Type = "bool", Nilable = false },
				{ Name = "needHealer", Type = "bool", Nilable = false },
				{ Name = "needDamage", Type = "bool", Nilable = false },
				{ Name = "isSoloQueueParty", Type = "bool", Nilable = false },
				{ Name = "questSessionActive", Type = "bool", Nilable = false },
				{ Name = "leaderGUID", Type = "string", Nilable = false },
			},
		},
		{
			Name = "GetGroupMembers",
			Type = "Function",

			Arguments =
			{
				{ Name = "groupGUID", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "groupMembers", Type = "table", InnerType = "SocialQueuePlayerInfo", Nilable = false },
			},
		},
		{
			Name = "GetGroupQueues",
			Type = "Function",

			Arguments =
			{
				{ Name = "groupGUID", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "queues", Type = "table", InnerType = "SocialQueueGroupQueueInfo", Nilable = false },
			},
		},
		{
			Name = "RequestToJoin",
			Type = "Function",

			Arguments =
			{
				{ Name = "groupGUID", Type = "string", Nilable = false },
				{ Name = "applyAsTank", Type = "bool", Nilable = false, Default = false },
				{ Name = "applyAsHealer", Type = "bool", Nilable = false, Default = false },
				{ Name = "applyAsDamage", Type = "bool", Nilable = false, Default = false },
			},

			Returns =
			{
				{ Name = "requestSuccessful", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "SignalToastDisplayed",
			Type = "Function",

			Arguments =
			{
				{ Name = "groupGUID", Type = "string", Nilable = false },
				{ Name = "priority", Type = "number", Nilable = false },
			},
		},
	},

	Events =
	{
		{
			Name = "SocialQueueConfigUpdated",
			Type = "Event",
			LiteralName = "SOCIAL_QUEUE_CONFIG_UPDATED",
		},
		{
			Name = "SocialQueueUpdate",
			Type = "Event",
			LiteralName = "SOCIAL_QUEUE_UPDATE",
			Payload =
			{
				{ Name = "groupGUID", Type = "string", Nilable = false },
				{ Name = "numAddedItems", Type = "number", Nilable = true },
			},
		},
	},

	Tables =
	{
		{
			Name = "SocialQueueConfig",
			Type = "Structure",
			Fields =
			{
				{ Name = "TOASTS_DISABLED", Type = "bool", Nilable = false },
				{ Name = "TOAST_DURATION", Type = "number", Nilable = false },
				{ Name = "DELAY_DURATION", Type = "number", Nilable = false },
				{ Name = "QUEUE_MULTIPLIER", Type = "number", Nilable = false },
				{ Name = "PLAYER_MULTIPLIER", Type = "number", Nilable = false },
				{ Name = "PLAYER_FRIEND_VALUE", Type = "number", Nilable = false },
				{ Name = "PLAYER_GUILD_VALUE", Type = "number", Nilable = false },
				{ Name = "THROTTLE_INITIAL_THRESHOLD", Type = "number", Nilable = false },
				{ Name = "THROTTLE_DECAY_TIME", Type = "number", Nilable = false },
				{ Name = "THROTTLE_PRIORITY_SPIKE", Type = "number", Nilable = false },
				{ Name = "THROTTLE_MIN_THRESHOLD", Type = "number", Nilable = false },
				{ Name = "THROTTLE_PVP_PRIORITY_NORMAL", Type = "number", Nilable = false },
				{ Name = "THROTTLE_PVP_PRIORITY_LOW", Type = "number", Nilable = false },
				{ Name = "THROTTLE_PVP_HONOR_THRESHOLD", Type = "number", Nilable = false },
				{ Name = "THROTTLE_LFGLIST_PRIORITY_DEFAULT", Type = "number", Nilable = false },
				{ Name = "THROTTLE_LFGLIST_PRIORITY_ABOVE", Type = "number", Nilable = false },
				{ Name = "THROTTLE_LFGLIST_PRIORITY_BELOW", Type = "number", Nilable = false },
				{ Name = "THROTTLE_LFGLIST_ILVL_SCALING_ABOVE", Type = "number", Nilable = false },
				{ Name = "THROTTLE_LFGLIST_ILVL_SCALING_BELOW", Type = "number", Nilable = false },
				{ Name = "THROTTLE_RF_PRIORITY_ABOVE", Type = "number", Nilable = false },
				{ Name = "THROTTLE_RF_ILVL_SCALING_ABOVE", Type = "number", Nilable = false },
				{ Name = "THROTTLE_DF_MAX_ITEM_LEVEL", Type = "number", Nilable = false },
				{ Name = "THROTTLE_DF_BEST_PRIORITY", Type = "number", Nilable = false },
			},
		},
		{
			Name = "SocialQueueGroupQueueInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "clientID", Type = "number", Nilable = false },
				{ Name = "eligible", Type = "bool", Nilable = false },
				{ Name = "needTank", Type = "bool", Nilable = false },
				{ Name = "needHealer", Type = "bool", Nilable = false },
				{ Name = "needDamage", Type = "bool", Nilable = false },
				{ Name = "isAutoAccept", Type = "bool", Nilable = false },
				{ Name = "queueData", Type = "QueueSpecificInfo", Nilable = false },
			},
		},
		{
			Name = "SocialQueuePlayerInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "guid", Type = "string", Nilable = false },
				{ Name = "clubId", Type = "string", Nilable = true },
			},
		},
	},
};

APIDocumentation:AddDocumentationTable(SocialQueue);local SocialRestrictions =
{
	Name = "SocialRestrictions",
	Type = "System",
	Namespace = "C_SocialRestrictions",

	Functions =
	{
		{
			Name = "IsMuted",
			Type = "Function",

			Returns =
			{
				{ Name = "isMuted", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsSilenced",
			Type = "Function",

			Returns =
			{
				{ Name = "isSilenced", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsSquelched",
			Type = "Function",

			Returns =
			{
				{ Name = "isSquelched", Type = "bool", Nilable = false },
			},
		},
	},

	Events =
	{
	},

	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(SocialRestrictions);local Soulbinds =
{
	Name = "Soulbinds",
	Type = "System",
	Namespace = "C_Soulbinds",

	Functions =
	{
		{
			Name = "ActivateSoulbind",
			Type = "Function",

			Arguments =
			{
				{ Name = "soulbindID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "AddPendingConduit",
			Type = "Function",

			Arguments =
			{
				{ Name = "nodeID", Type = "number", Nilable = false },
				{ Name = "conduitID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "result", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "CanActivateSoulbind",
			Type = "Function",

			Arguments =
			{
				{ Name = "soulbindID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "result", Type = "bool", Nilable = false },
				{ Name = "errorDescription", Type = "string", Nilable = true },
			},
		},
		{
			Name = "CanModifySoulbind",
			Type = "Function",

			Returns =
			{
				{ Name = "result", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "CanResetConduitsInSoulbind",
			Type = "Function",

			Arguments =
			{
				{ Name = "soulbindID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "result", Type = "bool", Nilable = false },
				{ Name = "errorDescription", Type = "string", Nilable = true },
			},
		},
		{
			Name = "CloseUI",
			Type = "Function",
		},
		{
			Name = "CommitPendingConduits",
			Type = "Function",
		},
		{
			Name = "GetActiveSoulbindID",
			Type = "Function",

			Returns =
			{
				{ Name = "soulbindID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetConduitCollection",
			Type = "Function",

			Arguments =
			{
				{ Name = "conduitType", Type = "SoulbindConduitType", Nilable = false },
			},

			Returns =
			{
				{ Name = "collectionData", Type = "table", InnerType = "ConduitCollectionData", Nilable = false },
			},
		},
		{
			Name = "GetConduitCollectionData",
			Type = "Function",

			Arguments =
			{
				{ Name = "conduitID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "collectionData", Type = "ConduitCollectionData", Nilable = true },
			},
		},
		{
			Name = "GetConduitCollectionDataAtCursor",
			Type = "Function",

			Returns =
			{
				{ Name = "collectionData", Type = "ConduitCollectionData", Nilable = true },
			},
		},
		{
			Name = "GetConduitHyperlink",
			Type = "Function",

			Arguments =
			{
				{ Name = "conduitID", Type = "number", Nilable = false },
				{ Name = "rank", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "link", Type = "string", Nilable = false },
			},
		},
		{
			Name = "GetConduitSpellID",
			Type = "Function",

			Arguments =
			{
				{ Name = "conduitID", Type = "number", Nilable = false },
				{ Name = "conduitRank", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "spellID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetNode",
			Type = "Function",

			Arguments =
			{
				{ Name = "nodeID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "node", Type = "SoulbindNode", Nilable = false },
			},
		},
		{
			Name = "GetPendingConduitID",
			Type = "Function",

			Arguments =
			{
				{ Name = "nodeID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "conduitID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetPendingNodeIDInSoulbind",
			Type = "Function",

			Arguments =
			{
				{ Name = "soulbindID", Type = "number", Nilable = false },
				{ Name = "conduitID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "nodeID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetSoulbindData",
			Type = "Function",

			Arguments =
			{
				{ Name = "soulbindID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "data", Type = "SoulbindData", Nilable = false },
			},
		},
		{
			Name = "GetTree",
			Type = "Function",

			Arguments =
			{
				{ Name = "treeID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "tree", Type = "SoulbindTree", Nilable = false },
			},
		},
		{
			Name = "HasAnyInstalledConduitInSoulbind",
			Type = "Function",

			Arguments =
			{
				{ Name = "soulbindID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "result", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "HasAnyPendingConduits",
			Type = "Function",

			Returns =
			{
				{ Name = "result", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "HasPendingConduitInSoulbind",
			Type = "Function",

			Arguments =
			{
				{ Name = "soulbindID", Type = "number", Nilable = false },
				{ Name = "conduitID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "result", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsConduitInstalled",
			Type = "Function",

			Arguments =
			{
				{ Name = "nodeID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "result", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsConduitInstalledInSoulbind",
			Type = "Function",

			Arguments =
			{
				{ Name = "soulbindID", Type = "number", Nilable = false },
				{ Name = "conduitID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "result", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsItemConduitByItemInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "itemInfo", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "result", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsUnselectedConduitPendingInSoulbind",
			Type = "Function",

			Arguments =
			{
				{ Name = "soulbindID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "result", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "RemovePendingConduit",
			Type = "Function",

			Arguments =
			{
				{ Name = "nodeID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "ResetSoulbindConduits",
			Type = "Function",

			Arguments =
			{
				{ Name = "soulbindID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "SelectNode",
			Type = "Function",

			Arguments =
			{
				{ Name = "nodeID", Type = "number", Nilable = false },
			},
		},
	},

	Events =
	{
		{
			Name = "SoulbindActivated",
			Type = "Event",
			LiteralName = "SOULBIND_ACTIVATED",
			Payload =
			{
				{ Name = "soulbindID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "SoulbindConduitCollectionCleared",
			Type = "Event",
			LiteralName = "SOULBIND_CONDUIT_COLLECTION_CLEARED",
		},
		{
			Name = "SoulbindConduitCollectionRemoved",
			Type = "Event",
			LiteralName = "SOULBIND_CONDUIT_COLLECTION_REMOVED",
			Payload =
			{
				{ Name = "conduitID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "SoulbindConduitCollectionUpdated",
			Type = "Event",
			LiteralName = "SOULBIND_CONDUIT_COLLECTION_UPDATED",
			Payload =
			{
				{ Name = "collectionData", Type = "ConduitCollectionData", Nilable = false },
			},
		},
		{
			Name = "SoulbindConduitInstalled",
			Type = "Event",
			LiteralName = "SOULBIND_CONDUIT_INSTALLED",
			Payload =
			{
				{ Name = "nodeID", Type = "number", Nilable = false },
				{ Name = "data", Type = "SoulbindConduitData", Nilable = false },
			},
		},
		{
			Name = "SoulbindConduitUninstalled",
			Type = "Event",
			LiteralName = "SOULBIND_CONDUIT_UNINSTALLED",
			Payload =
			{
				{ Name = "nodeID", Type = "number", Nilable = false },
				{ Name = "data", Type = "SoulbindConduitData", Nilable = false },
			},
		},
		{
			Name = "SoulbindForgeInteractionEnded",
			Type = "Event",
			LiteralName = "SOULBIND_FORGE_INTERACTION_ENDED",
		},
		{
			Name = "SoulbindForgeInteractionStarted",
			Type = "Event",
			LiteralName = "SOULBIND_FORGE_INTERACTION_STARTED",
		},
		{
			Name = "SoulbindNodeLearned",
			Type = "Event",
			LiteralName = "SOULBIND_NODE_LEARNED",
			Payload =
			{
				{ Name = "nodeID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "SoulbindNodeUnlearned",
			Type = "Event",
			LiteralName = "SOULBIND_NODE_UNLEARNED",
			Payload =
			{
				{ Name = "nodeID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "SoulbindNodeUpdated",
			Type = "Event",
			LiteralName = "SOULBIND_NODE_UPDATED",
			Payload =
			{
				{ Name = "nodeID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "SoulbindPathChanged",
			Type = "Event",
			LiteralName = "SOULBIND_PATH_CHANGED",
		},
		{
			Name = "SoulbindPendingConduitChanged",
			Type = "Event",
			LiteralName = "SOULBIND_PENDING_CONDUIT_CHANGED",
			Payload =
			{
				{ Name = "nodeID", Type = "number", Nilable = false },
				{ Name = "conduitID", Type = "number", Nilable = false },
				{ Name = "pending", Type = "bool", Nilable = false },
			},
		},
	},

	Tables =
	{
		{
			Name = "ConduitCollectionData",
			Type = "Structure",
			Fields =
			{
				{ Name = "conduitID", Type = "number", Nilable = false },
				{ Name = "conduitRank", Type = "number", Nilable = false },
				{ Name = "conduitType", Type = "SoulbindConduitType", Nilable = false },
				{ Name = "conduitSpecID", Type = "number", Nilable = false },
				{ Name = "conduitSpecName", Type = "string", Nilable = true },
				{ Name = "covenantID", Type = "number", Nilable = true },
				{ Name = "conduitItemID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "SoulbindConduitData",
			Type = "Structure",
			Fields =
			{
				{ Name = "conduitID", Type = "number", Nilable = false },
				{ Name = "conduitRank", Type = "number", Nilable = false },
			},
		},
		{
			Name = "SoulbindData",
			Type = "Structure",
			Fields =
			{
				{ Name = "ID", Type = "number", Nilable = false },
				{ Name = "covenantID", Type = "number", Nilable = false },
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "description", Type = "string", Nilable = false },
				{ Name = "textureKit", Type = "string", Nilable = false },
				{ Name = "unlocked", Type = "bool", Nilable = false },
				{ Name = "cvarIndex", Type = "number", Nilable = false },
				{ Name = "tree", Type = "SoulbindTree", Nilable = false },
				{ Name = "modelSceneData", Type = "SoulbindModelSceneData", Nilable = false },
			},
		},
		{
			Name = "SoulbindModelSceneData",
			Type = "Structure",
			Fields =
			{
				{ Name = "creatureDisplayInfoID", Type = "number", Nilable = false },
				{ Name = "modelSceneActorID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "SoulbindNode",
			Type = "Structure",
			Fields =
			{
				{ Name = "ID", Type = "number", Nilable = false },
				{ Name = "row", Type = "number", Nilable = false },
				{ Name = "column", Type = "number", Nilable = false },
				{ Name = "icon", Type = "number", Nilable = false },
				{ Name = "spellID", Type = "number", Nilable = false },
				{ Name = "playerConditionReason", Type = "string", Nilable = true },
				{ Name = "conduitID", Type = "number", Nilable = false },
				{ Name = "conduitRank", Type = "number", Nilable = false },
				{ Name = "state", Type = "SoulbindNodeState", Nilable = false },
				{ Name = "conduitType", Type = "SoulbindConduitType", Nilable = true },
				{ Name = "parentNodeIDs", Type = "table", InnerType = "number", Nilable = false },
			},
		},
		{
			Name = "SoulbindTree",
			Type = "Structure",
			Fields =
			{
				{ Name = "editable", Type = "bool", Nilable = false },
				{ Name = "nodes", Type = "table", InnerType = "SoulbindNode", Nilable = false },
			},
		},
	},
};

APIDocumentation:AddDocumentationTable(Soulbinds);local Sound =
{
	Name = "Sound",
	Type = "System",
	Namespace = "C_Sound",

	Functions =
	{
	},

	Events =
	{
		{
			Name = "SoundDeviceUpdate",
			Type = "Event",
			LiteralName = "SOUND_DEVICE_UPDATE",
		},
		{
			Name = "SoundkitFinished",
			Type = "Event",
			LiteralName = "SOUNDKIT_FINISHED",
			Payload =
			{
				{ Name = "soundHandle", Type = "number", Nilable = false },
			},
		},
	},

	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(Sound);local SpecializationInfo =
{
	Name = "SpecializationInfo",
	Type = "System",
	Namespace = "C_SpecializationInfo",

	Functions =
	{
		{
			Name = "CanPlayerUsePVPTalentUI",
			Type = "Function",

			Returns =
			{
				{ Name = "canUse", Type = "bool", Nilable = false },
				{ Name = "failureReason", Type = "string", Nilable = false },
			},
		},
		{
			Name = "CanPlayerUseTalentSpecUI",
			Type = "Function",

			Returns =
			{
				{ Name = "canUse", Type = "bool", Nilable = false },
				{ Name = "failureReason", Type = "string", Nilable = false },
			},
		},
		{
			Name = "CanPlayerUseTalentUI",
			Type = "Function",

			Returns =
			{
				{ Name = "canUse", Type = "bool", Nilable = false },
				{ Name = "failureReason", Type = "string", Nilable = false },
			},
		},
		{
			Name = "GetAllSelectedPvpTalentIDs",
			Type = "Function",

			Returns =
			{
				{ Name = "selectedPvpTalentIDs", Type = "table", InnerType = "number", Nilable = false },
			},
		},
		{
			Name = "GetInspectSelectedPvpTalent",
			Type = "Function",

			Arguments =
			{
				{ Name = "inspectedUnit", Type = "string", Nilable = false },
				{ Name = "talentIndex", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "selectedTalentID", Type = "number", Nilable = true },
			},
		},
		{
			Name = "GetPvpTalentAlertStatus",
			Type = "Function",

			Returns =
			{
				{ Name = "hasUnspentSlot", Type = "bool", Nilable = false },
				{ Name = "hasNewTalent", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "GetPvpTalentSlotInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "talentIndex", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "slotInfo", Type = "PvpTalentSlotInfo", Nilable = true },
			},
		},
		{
			Name = "GetPvpTalentSlotUnlockLevel",
			Type = "Function",

			Arguments =
			{
				{ Name = "talentIndex", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "requiredLevel", Type = "number", Nilable = true },
			},
		},
		{
			Name = "GetPvpTalentUnlockLevel",
			Type = "Function",

			Arguments =
			{
				{ Name = "talentID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "requiredLevel", Type = "number", Nilable = true },
			},
		},
		{
			Name = "GetSpellsDisplay",
			Type = "Function",

			Arguments =
			{
				{ Name = "specializationID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "spellID", Type = "table", InnerType = "number", Nilable = false },
			},
		},
		{
			Name = "IsInitialized",
			Type = "Function",

			Returns =
			{
				{ Name = "isSpecializationDataInitialized", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsPvpTalentLocked",
			Type = "Function",

			Arguments =
			{
				{ Name = "talentID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "locked", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "SetPvpTalentLocked",
			Type = "Function",

			Arguments =
			{
				{ Name = "talentID", Type = "number", Nilable = false },
				{ Name = "locked", Type = "bool", Nilable = false },
			},
		},
	},

	Events =
	{
		{
			Name = "ActiveTalentGroupChanged",
			Type = "Event",
			LiteralName = "ACTIVE_TALENT_GROUP_CHANGED",
			Payload =
			{
				{ Name = "curr", Type = "number", Nilable = false },
				{ Name = "prev", Type = "number", Nilable = false },
			},
		},
		{
			Name = "ConfirmTalentWipe",
			Type = "Event",
			LiteralName = "CONFIRM_TALENT_WIPE",
			Payload =
			{
				{ Name = "cost", Type = "number", Nilable = false },
				{ Name = "respecType", Type = "number", Nilable = false },
			},
		},
		{
			Name = "PetSpecializationChanged",
			Type = "Event",
			LiteralName = "PET_SPECIALIZATION_CHANGED",
		},
		{
			Name = "PlayerLearnPvpTalentFailed",
			Type = "Event",
			LiteralName = "PLAYER_LEARN_PVP_TALENT_FAILED",
		},
		{
			Name = "PlayerLearnTalentFailed",
			Type = "Event",
			LiteralName = "PLAYER_LEARN_TALENT_FAILED",
		},
		{
			Name = "PlayerPvpTalentUpdate",
			Type = "Event",
			LiteralName = "PLAYER_PVP_TALENT_UPDATE",
		},
		{
			Name = "PlayerTalentUpdate",
			Type = "Event",
			LiteralName = "PLAYER_TALENT_UPDATE",
		},
		{
			Name = "SpecInvoluntarilyChanged",
			Type = "Event",
			LiteralName = "SPEC_INVOLUNTARILY_CHANGED",
			Payload =
			{
				{ Name = "isPet", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "TalentsInvoluntarilyReset",
			Type = "Event",
			LiteralName = "TALENTS_INVOLUNTARILY_RESET",
			Payload =
			{
				{ Name = "isPetTalents", Type = "bool", Nilable = false },
			},
		},
	},

	Tables =
	{
		{
			Name = "PvpTalentSlotInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "enabled", Type = "bool", Nilable = false },
				{ Name = "level", Type = "number", Nilable = false },
				{ Name = "selectedTalentID", Type = "number", Nilable = true },
				{ Name = "availableTalentIDs", Type = "table", InnerType = "number", Nilable = false },
			},
		},
	},
};

APIDocumentation:AddDocumentationTable(SpecializationInfo);local Spell =
{
	Name = "Spell",
	Type = "System",
	Namespace = "C_Spell",

	Functions =
	{
		{
			Name = "DoesSpellExist",
			Type = "Function",

			Arguments =
			{
				{ Name = "spellID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "spellExists", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsSpellDataCached",
			Type = "Function",

			Arguments =
			{
				{ Name = "spellID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "isCached", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "RequestLoadSpellData",
			Type = "Function",

			Arguments =
			{
				{ Name = "spellID", Type = "number", Nilable = false },
			},
		},
	},

	Events =
	{
		{
			Name = "SpellDataLoadResult",
			Type = "Event",
			LiteralName = "SPELL_DATA_LOAD_RESULT",
			Payload =
			{
				{ Name = "spellID", Type = "number", Nilable = false },
				{ Name = "success", Type = "bool", Nilable = false },
			},
		},
	},

	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(Spell);local SpellActivationOverlay =
{
	Name = "SpellActivationOverlay",
	Type = "System",
	Namespace = "C_SpellActivationOverlay",

	Functions =
	{
	},

	Events =
	{
		{
			Name = "SpellActivationOverlayGlowHide",
			Type = "Event",
			LiteralName = "SPELL_ACTIVATION_OVERLAY_GLOW_HIDE",
			Payload =
			{
				{ Name = "spellID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "SpellActivationOverlayGlowShow",
			Type = "Event",
			LiteralName = "SPELL_ACTIVATION_OVERLAY_GLOW_SHOW",
			Payload =
			{
				{ Name = "spellID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "SpellActivationOverlayHide",
			Type = "Event",
			LiteralName = "SPELL_ACTIVATION_OVERLAY_HIDE",
			Payload =
			{
				{ Name = "spellID", Type = "number", Nilable = true },
			},
		},
		{
			Name = "SpellActivationOverlayShow",
			Type = "Event",
			LiteralName = "SPELL_ACTIVATION_OVERLAY_SHOW",
			Payload =
			{
				{ Name = "spellID", Type = "number", Nilable = false },
				{ Name = "overlayFileDataID", Type = "number", Nilable = false },
				{ Name = "locationName", Type = "string", Nilable = false },
				{ Name = "scale", Type = "number", Nilable = false },
				{ Name = "r", Type = "number", Nilable = false },
				{ Name = "g", Type = "number", Nilable = false },
				{ Name = "b", Type = "number", Nilable = false },
			},
		},
	},

	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(SpellActivationOverlay);local SpellBook =
{
	Name = "SpellBook",
	Type = "System",
	Namespace = "C_SpellBook",

	Functions =
	{
		{
			Name = "ContainsAnyDisenchantSpell",
			Type = "Function",

			Returns =
			{
				{ Name = "contains", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "GetSkillLineIndexByID",
			Type = "Function",

			Arguments =
			{
				{ Name = "skillLineID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "skillIndex", Type = "number", Nilable = true },
			},
		},
		{
			Name = "IsSpellDisabled",
			Type = "Function",

			Arguments =
			{
				{ Name = "spellID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "disabled", Type = "bool", Nilable = false },
			},
		},
	},

	Events =
	{
		{
			Name = "CurrentSpellCastChanged",
			Type = "Event",
			LiteralName = "CURRENT_SPELL_CAST_CHANGED",
			Payload =
			{
				{ Name = "cancelledCast", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "LearnedSpellInTab",
			Type = "Event",
			LiteralName = "LEARNED_SPELL_IN_TAB",
			Payload =
			{
				{ Name = "spellID", Type = "number", Nilable = false },
				{ Name = "skillInfoIndex", Type = "number", Nilable = false },
				{ Name = "isGuildPerkSpell", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "MaxSpellStartRecoveryOffsetChanged",
			Type = "Event",
			LiteralName = "MAX_SPELL_START_RECOVERY_OFFSET_CHANGED",
			Payload =
			{
				{ Name = "clampedNewQueueWindowMs", Type = "number", Nilable = false },
			},
		},
		{
			Name = "PlayerTotemUpdate",
			Type = "Event",
			LiteralName = "PLAYER_TOTEM_UPDATE",
			Payload =
			{
				{ Name = "totemSlot", Type = "number", Nilable = false },
			},
		},
		{
			Name = "SpellFlyoutUpdate",
			Type = "Event",
			LiteralName = "SPELL_FLYOUT_UPDATE",
			Payload =
			{
				{ Name = "flyoutID", Type = "number", Nilable = true },
				{ Name = "spellID", Type = "number", Nilable = true },
				{ Name = "isLearned", Type = "bool", Nilable = true },
			},
		},
		{
			Name = "SpellPushedToActionbar",
			Type = "Event",
			LiteralName = "SPELL_PUSHED_TO_ACTIONBAR",
			Payload =
			{
				{ Name = "spellID", Type = "number", Nilable = false },
				{ Name = "slot", Type = "number", Nilable = false },
				{ Name = "page", Type = "number", Nilable = false },
			},
		},
		{
			Name = "SpellTextUpdate",
			Type = "Event",
			LiteralName = "SPELL_TEXT_UPDATE",
			Payload =
			{
				{ Name = "spellID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "SpellUpdateCharges",
			Type = "Event",
			LiteralName = "SPELL_UPDATE_CHARGES",
		},
		{
			Name = "SpellUpdateCooldown",
			Type = "Event",
			LiteralName = "SPELL_UPDATE_COOLDOWN",
		},
		{
			Name = "SpellUpdateIcon",
			Type = "Event",
			LiteralName = "SPELL_UPDATE_ICON",
		},
		{
			Name = "SpellUpdateUsable",
			Type = "Event",
			LiteralName = "SPELL_UPDATE_USABLE",
		},
		{
			Name = "SpellsChanged",
			Type = "Event",
			LiteralName = "SPELLS_CHANGED",
		},
		{
			Name = "StartAutorepeatSpell",
			Type = "Event",
			LiteralName = "START_AUTOREPEAT_SPELL",
		},
		{
			Name = "StopAutorepeatSpell",
			Type = "Event",
			LiteralName = "STOP_AUTOREPEAT_SPELL",
		},
		{
			Name = "UnitSpellcastSent",
			Type = "Event",
			LiteralName = "UNIT_SPELLCAST_SENT",
			Payload =
			{
				{ Name = "unit", Type = "string", Nilable = false },
				{ Name = "target", Type = "string", Nilable = false },
				{ Name = "castGUID", Type = "string", Nilable = false },
				{ Name = "spellID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "UpdateShapeshiftCooldown",
			Type = "Event",
			LiteralName = "UPDATE_SHAPESHIFT_COOLDOWN",
		},
		{
			Name = "UpdateShapeshiftForm",
			Type = "Event",
			LiteralName = "UPDATE_SHAPESHIFT_FORM",
		},
		{
			Name = "UpdateShapeshiftForms",
			Type = "Event",
			LiteralName = "UPDATE_SHAPESHIFT_FORMS",
		},
		{
			Name = "UpdateShapeshiftUsable",
			Type = "Event",
			LiteralName = "UPDATE_SHAPESHIFT_USABLE",
		},
	},

	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(SpellBook);local SplashScreen =
{
	Name = "SplashScreen",
	Type = "System",
	Namespace = "C_SplashScreen",

	Functions =
	{
		{
			Name = "AcknowledgeSplash",
			Type = "Function",
		},
		{
			Name = "CanViewSplashScreen",
			Type = "Function",

			Returns =
			{
				{ Name = "canView", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "RequestLatestSplashScreen",
			Type = "Function",
		},
	},

	Events =
	{
		{
			Name = "OpenSplashScreen",
			Type = "Event",
			LiteralName = "OPEN_SPLASH_SCREEN",
			Payload =
			{
				{ Name = "info", Type = "SplashScreenInfo", Nilable = true },
			},
		},
	},

	Tables =
	{
		{
			Name = "SplashScreenType",
			Type = "Enumeration",
			NumValues = 2,
			MinValue = 0,
			MaxValue = 1,
			Fields =
			{
				{ Name = "WhatsNew", Type = "SplashScreenType", EnumValue = 0 },
				{ Name = "SeasonRollOver", Type = "SplashScreenType", EnumValue = 1 },
			},
		},
		{
			Name = "SplashScreenInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "textureKit", Type = "string", Nilable = false },
				{ Name = "minDisplayCharLevel", Type = "number", Nilable = false },
				{ Name = "minQuestDisplayLevel", Type = "number", Nilable = false },
				{ Name = "soundKitID", Type = "number", Nilable = false },
				{ Name = "allianceQuestID", Type = "number", Nilable = true },
				{ Name = "hordeQuestID", Type = "number", Nilable = true },
				{ Name = "header", Type = "string", Nilable = false },
				{ Name = "topLeftFeatureTitle", Type = "string", Nilable = false },
				{ Name = "topLeftFeatureDesc", Type = "string", Nilable = false },
				{ Name = "bottomLeftFeatureTitle", Type = "string", Nilable = false },
				{ Name = "bottomLeftFeatureDesc", Type = "string", Nilable = false },
				{ Name = "rightFeatureTitle", Type = "string", Nilable = false },
				{ Name = "rightFeatureDesc", Type = "string", Nilable = false },
				{ Name = "shouldShowQuest", Type = "bool", Nilable = false },
				{ Name = "screenType", Type = "SplashScreenType", Nilable = false },
			},
		},
	},
};

APIDocumentation:AddDocumentationTable(SplashScreen);local StableInfo =
{
	Name = "StableInfo",
	Type = "System",
	Namespace = "C_StableInfo",

	Functions =
	{
	},

	Events =
	{
		{
			Name = "PetStableClosed",
			Type = "Event",
			LiteralName = "PET_STABLE_CLOSED",
		},
		{
			Name = "PetStableShow",
			Type = "Event",
			LiteralName = "PET_STABLE_SHOW",
		},
		{
			Name = "PetStableUpdate",
			Type = "Event",
			LiteralName = "PET_STABLE_UPDATE",
		},
		{
			Name = "PetStableUpdatePaperdoll",
			Type = "Event",
			LiteralName = "PET_STABLE_UPDATE_PAPERDOLL",
		},
	},

	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(StableInfo);local StorePublicUI =
{
	Name = "StorePublic",
	Type = "System",
	Namespace = "C_StorePublic",

	Functions =
	{
		{
			Name = "DoesGroupHavePurchaseableProducts",
			Type = "Function",

			Arguments =
			{
				{ Name = "groupID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "hasPurchaseableProducts", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsDisabledByParentalControls",
			Type = "Function",

			Returns =
			{
				{ Name = "disabled", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsEnabled",
			Type = "Function",

			Returns =
			{
				{ Name = "enabled", Type = "bool", Nilable = false },
			},
		},
	},

	Events =
	{
	},

	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(StorePublicUI);local SummonInfo =
{
	Name = "SummonInfo",
	Type = "System",
	Namespace = "C_SummonInfo",

	Functions =
	{
		{
			Name = "CancelSummon",
			Type = "Function",
		},
		{
			Name = "ConfirmSummon",
			Type = "Function",
		},
		{
			Name = "GetSummonConfirmAreaName",
			Type = "Function",

			Returns =
			{
				{ Name = "areaName", Type = "string", Nilable = false },
			},
		},
		{
			Name = "GetSummonConfirmSummoner",
			Type = "Function",

			Returns =
			{
				{ Name = "summoner", Type = "string", Nilable = true },
			},
		},
		{
			Name = "GetSummonConfirmTimeLeft",
			Type = "Function",

			Returns =
			{
				{ Name = "timeLeft", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetSummonReason",
			Type = "Function",

			Returns =
			{
				{ Name = "summonReason", Type = "number", Nilable = false },
			},
		},
		{
			Name = "IsSummonSkippingStartExperience",
			Type = "Function",

			Returns =
			{
				{ Name = "isSummonSkippingStartExperience", Type = "bool", Nilable = false },
			},
		},
	},

	Events =
	{
	},

	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(SummonInfo);local SuperTrackManager =
{
	Name = "SuperTrackManager",
	Type = "System",
	Namespace = "C_SuperTrack",

	Functions =
	{
		{
			Name = "GetHighestPrioritySuperTrackingType",
			Type = "Function",

			Returns =
			{
				{ Name = "type", Type = "SuperTrackingType", Nilable = true },
			},
		},
		{
			Name = "GetSuperTrackedQuestID",
			Type = "Function",

			Returns =
			{
				{ Name = "questID", Type = "number", Nilable = true },
			},
		},
		{
			Name = "IsSuperTrackingAnything",
			Type = "Function",

			Returns =
			{
				{ Name = "isSuperTracking", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsSuperTrackingCorpse",
			Type = "Function",

			Returns =
			{
				{ Name = "isSuperTracking", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsSuperTrackingQuest",
			Type = "Function",

			Returns =
			{
				{ Name = "isSuperTracking", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsSuperTrackingUserWaypoint",
			Type = "Function",

			Returns =
			{
				{ Name = "isSuperTracking", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "SetSuperTrackedQuestID",
			Type = "Function",

			Arguments =
			{
				{ Name = "questID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "SetSuperTrackedUserWaypoint",
			Type = "Function",

			Arguments =
			{
				{ Name = "superTracked", Type = "bool", Nilable = false },
			},
		},
	},

	Events =
	{
		{
			Name = "SuperTrackingChanged",
			Type = "Event",
			LiteralName = "SUPER_TRACKING_CHANGED",
		},
	},

	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(SuperTrackManager);local System =
{
	Name = "SystemInfo",
	Type = "System",
	Namespace = "C_System",

	Functions =
	{
		{
			Name = "GetFrameStack",
			Type = "Function",

			Returns =
			{
				{ Name = "objects", Type = "table", InnerType = "table", Nilable = false },
			},
		},
	},

	Events =
	{
		{
			Name = "CaptureframesFailed",
			Type = "Event",
			LiteralName = "CAPTUREFRAMES_FAILED",
		},
		{
			Name = "CaptureframesSucceeded",
			Type = "Event",
			LiteralName = "CAPTUREFRAMES_SUCCEEDED",
		},
		{
			Name = "DisableTaxiBenchmark",
			Type = "Event",
			LiteralName = "DISABLE_TAXI_BENCHMARK",
		},
		{
			Name = "EnableTaxiBenchmark",
			Type = "Event",
			LiteralName = "ENABLE_TAXI_BENCHMARK",
		},
		{
			Name = "GenericError",
			Type = "Event",
			LiteralName = "GENERIC_ERROR",
			Payload =
			{
				{ Name = "errorMessage", Type = "string", Nilable = false },
			},
		},
		{
			Name = "GlobalMouseDown",
			Type = "Event",
			LiteralName = "GLOBAL_MOUSE_DOWN",
			Payload =
			{
				{ Name = "button", Type = "string", Nilable = false },
			},
		},
		{
			Name = "GlobalMouseUp",
			Type = "Event",
			LiteralName = "GLOBAL_MOUSE_UP",
			Payload =
			{
				{ Name = "button", Type = "string", Nilable = false },
			},
		},
		{
			Name = "InitialHotfixesApplied",
			Type = "Event",
			LiteralName = "INITIAL_HOTFIXES_APPLIED",
		},
		{
			Name = "LocResult",
			Type = "Event",
			LiteralName = "LOC_RESULT",
			Payload =
			{
				{ Name = "result", Type = "string", Nilable = false },
			},
		},
		{
			Name = "LogoutCancel",
			Type = "Event",
			LiteralName = "LOGOUT_CANCEL",
		},
		{
			Name = "PlayerCamping",
			Type = "Event",
			LiteralName = "PLAYER_CAMPING",
		},
		{
			Name = "PlayerEnteringWorld",
			Type = "Event",
			LiteralName = "PLAYER_ENTERING_WORLD",
			Payload =
			{
				{ Name = "isInitialLogin", Type = "bool", Nilable = false },
				{ Name = "isReloadingUi", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "PlayerLeavingWorld",
			Type = "Event",
			LiteralName = "PLAYER_LEAVING_WORLD",
		},
		{
			Name = "PlayerLogin",
			Type = "Event",
			LiteralName = "PLAYER_LOGIN",
		},
		{
			Name = "PlayerLogout",
			Type = "Event",
			LiteralName = "PLAYER_LOGOUT",
		},
		{
			Name = "PlayerQuiting",
			Type = "Event",
			LiteralName = "PLAYER_QUITING",
		},
		{
			Name = "SearchDbLoaded",
			Type = "Event",
			LiteralName = "SEARCH_DB_LOADED",
		},
		{
			Name = "StreamingIcon",
			Type = "Event",
			LiteralName = "STREAMING_ICON",
			Payload =
			{
				{ Name = "streamingStatus", Type = "number", Nilable = false },
			},
		},
		{
			Name = "Sysmsg",
			Type = "Event",
			LiteralName = "SYSMSG",
			Payload =
			{
				{ Name = "string", Type = "string", Nilable = false },
				{ Name = "r", Type = "number", Nilable = false },
				{ Name = "g", Type = "number", Nilable = false },
				{ Name = "b", Type = "number", Nilable = false },
			},
		},
		{
			Name = "TimePlayedMsg",
			Type = "Event",
			LiteralName = "TIME_PLAYED_MSG",
			Payload =
			{
				{ Name = "totalTimePlayed", Type = "number", Nilable = false },
				{ Name = "timePlayedThisLevel", Type = "number", Nilable = false },
			},
		},
		{
			Name = "UiErrorMessage",
			Type = "Event",
			LiteralName = "UI_ERROR_MESSAGE",
			Payload =
			{
				{ Name = "errorType", Type = "number", Nilable = false },
				{ Name = "message", Type = "string", Nilable = false },
			},
		},
		{
			Name = "UiInfoMessage",
			Type = "Event",
			LiteralName = "UI_INFO_MESSAGE",
			Payload =
			{
				{ Name = "errorType", Type = "number", Nilable = false },
				{ Name = "message", Type = "string", Nilable = false },
			},
		},
		{
			Name = "VariablesLoaded",
			Type = "Event",
			LiteralName = "VARIABLES_LOADED",
		},
		{
			Name = "WoWMouseNotFound",
			Type = "Event",
			LiteralName = "WOW_MOUSE_NOT_FOUND",
		},
	},

	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(System);local TalkingHead =
{
	Name = "TalkingHead",
	Type = "System",
	Namespace = "C_TalkingHead",

	Functions =
	{
	},

	Events =
	{
		{
			Name = "TalkingheadClose",
			Type = "Event",
			LiteralName = "TALKINGHEAD_CLOSE",
		},
		{
			Name = "TalkingheadRequested",
			Type = "Event",
			LiteralName = "TALKINGHEAD_REQUESTED",
		},
	},

	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(TalkingHead);local TaxiMap =
{
	Name = "TaxiMap",
	Type = "System",
	Namespace = "C_TaxiMap",

	Functions =
	{
		{
			Name = "GetAllTaxiNodes",
			Type = "Function",
			Documentation = { "Returns information on taxi nodes at the current flight master." },

			Arguments =
			{
				{ Name = "uiMapID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "taxiNodes", Type = "table", InnerType = "TaxiNodeInfo", Nilable = false },
			},
		},
		{
			Name = "GetTaxiNodesForMap",
			Type = "Function",
			Documentation = { "Returns information on taxi nodes for a given map, without considering the current flight master." },

			Arguments =
			{
				{ Name = "uiMapID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "mapTaxiNodes", Type = "table", InnerType = "MapTaxiNodeInfo", Nilable = false },
			},
		},
		{
			Name = "ShouldMapShowTaxiNodes",
			Type = "Function",

			Arguments =
			{
				{ Name = "uiMapID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "shouldShowNodes", Type = "bool", Nilable = false },
			},
		},
	},

	Events =
	{
		{
			Name = "TaximapClosed",
			Type = "Event",
			LiteralName = "TAXIMAP_CLOSED",
		},
		{
			Name = "TaximapOpened",
			Type = "Event",
			LiteralName = "TAXIMAP_OPENED",
			Payload =
			{
				{ Name = "system", Type = "number", Nilable = false },
			},
		},
	},

	Tables =
	{
		{
			Name = "FlightPathFaction",
			Type = "Enumeration",
			NumValues = 3,
			MinValue = 0,
			MaxValue = 2,
			Fields =
			{
				{ Name = "Neutral", Type = "FlightPathFaction", EnumValue = 0 },
				{ Name = "Horde", Type = "FlightPathFaction", EnumValue = 1 },
				{ Name = "Alliance", Type = "FlightPathFaction", EnumValue = 2 },
			},
		},
		{
			Name = "FlightPathState",
			Type = "Enumeration",
			NumValues = 3,
			MinValue = 0,
			MaxValue = 2,
			Fields =
			{
				{ Name = "Current", Type = "FlightPathState", EnumValue = 0 },
				{ Name = "Reachable", Type = "FlightPathState", EnumValue = 1 },
				{ Name = "Unreachable", Type = "FlightPathState", EnumValue = 2 },
			},
		},
		{
			Name = "MapTaxiNodeInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "nodeID", Type = "number", Nilable = false },
				{ Name = "position", Type = "table", Mixin = "Vector2DMixin", Nilable = false },
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "atlasName", Type = "string", Nilable = false },
				{ Name = "faction", Type = "FlightPathFaction", Nilable = false },
				{ Name = "textureKit", Type = "string", Nilable = false },
			},
		},
		{
			Name = "TaxiNodeInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "nodeID", Type = "number", Nilable = false },
				{ Name = "position", Type = "table", Mixin = "Vector2DMixin", Nilable = false },
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "state", Type = "FlightPathState", Nilable = false },
				{ Name = "slotIndex", Type = "number", Nilable = false },
				{ Name = "textureKit", Type = "string", Nilable = false },
			},
		},
	},
};

APIDocumentation:AddDocumentationTable(TaxiMap);local TextureUtils =
{
	Name = "TextureUtils",
	Type = "System",
	Namespace = "C_Texture",

	Functions =
	{
		{
			Name = "GetAtlasInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "atlas", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "info", Type = "AtlasInfo", Nilable = false },
			},
		},
	},

	Events =
	{
	},

	Tables =
	{
		{
			Name = "AtlasInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "width", Type = "number", Nilable = false },
				{ Name = "height", Type = "number", Nilable = false },
				{ Name = "leftTexCoord", Type = "number", Nilable = false },
				{ Name = "rightTexCoord", Type = "number", Nilable = false },
				{ Name = "topTexCoord", Type = "number", Nilable = false },
				{ Name = "bottomTexCoord", Type = "number", Nilable = false },
				{ Name = "tilesHorizontally", Type = "bool", Nilable = false },
				{ Name = "tilesVertically", Type = "bool", Nilable = false },
				{ Name = "file", Type = "number", Nilable = true },
				{ Name = "filename", Type = "string", Nilable = true },
			},
		},
	},
};

APIDocumentation:AddDocumentationTable(TextureUtils);local TooltipConstants =
{
	Name = "Tooltip",
	Type = "System",
	Namespace = "C_Tooltip",

	Functions =
	{
	},

	Events =
	{
	},

	Tables =
	{
		{
			Name = "TooltipSide",
			Type = "Enumeration",
			NumValues = 4,
			MinValue = 0,
			MaxValue = 3,
			Fields =
			{
				{ Name = "Left", Type = "TooltipSide", EnumValue = 0 },
				{ Name = "Right", Type = "TooltipSide", EnumValue = 1 },
				{ Name = "Top", Type = "TooltipSide", EnumValue = 2 },
				{ Name = "Bottom", Type = "TooltipSide", EnumValue = 3 },
			},
		},
		{
			Name = "TooltipTextureAnchor",
			Type = "Enumeration",
			NumValues = 7,
			MinValue = 0,
			MaxValue = 6,
			Fields =
			{
				{ Name = "LeftTop", Type = "TooltipTextureAnchor", EnumValue = 0 },
				{ Name = "LeftCenter", Type = "TooltipTextureAnchor", EnumValue = 1 },
				{ Name = "LeftBottom", Type = "TooltipTextureAnchor", EnumValue = 2 },
				{ Name = "RightTop", Type = "TooltipTextureAnchor", EnumValue = 3 },
				{ Name = "RightCenter", Type = "TooltipTextureAnchor", EnumValue = 4 },
				{ Name = "RightBottom", Type = "TooltipTextureAnchor", EnumValue = 5 },
				{ Name = "All", Type = "TooltipTextureAnchor", EnumValue = 6 },
			},
		},
		{
			Name = "TooltipTextureRelativeRegion",
			Type = "Enumeration",
			NumValues = 2,
			MinValue = 0,
			MaxValue = 1,
			Fields =
			{
				{ Name = "LeftLine", Type = "TooltipTextureRelativeRegion", EnumValue = 0 },
				{ Name = "RightLine", Type = "TooltipTextureRelativeRegion", EnumValue = 1 },
			},
		},
	},
};

APIDocumentation:AddDocumentationTable(TooltipConstants);local ToyBoxInfo =
{
	Name = "ToyBoxInfo",
	Type = "System",
	Namespace = "C_ToyBoxInfo",

	Functions =
	{
		{
			Name = "ClearFanfare",
			Type = "Function",

			Arguments =
			{
				{ Name = "itemID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "NeedsFanfare",
			Type = "Function",

			Arguments =
			{
				{ Name = "itemID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "needsFanfare", Type = "bool", Nilable = false },
			},
		},
	},

	Events =
	{
		{
			Name = "NewToyAdded",
			Type = "Event",
			LiteralName = "NEW_TOY_ADDED",
			Payload =
			{
				{ Name = "itemID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "ToysUpdated",
			Type = "Event",
			LiteralName = "TOYS_UPDATED",
			Payload =
			{
				{ Name = "itemID", Type = "number", Nilable = true },
				{ Name = "isNew", Type = "bool", Nilable = true },
				{ Name = "hasFanfare", Type = "bool", Nilable = true },
			},
		},
	},

	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(ToyBoxInfo);local TradeInfo =
{
	Name = "TradeInfo",
	Type = "System",
	Namespace = "C_TradeInfo",

	Functions =
	{
	},

	Events =
	{
		{
			Name = "PlayerTradeCurrency",
			Type = "Event",
			LiteralName = "PLAYER_TRADE_CURRENCY",
		},
		{
			Name = "PlayerTradeMoney",
			Type = "Event",
			LiteralName = "PLAYER_TRADE_MONEY",
		},
		{
			Name = "TradeAcceptUpdate",
			Type = "Event",
			LiteralName = "TRADE_ACCEPT_UPDATE",
			Payload =
			{
				{ Name = "playerAccepted", Type = "number", Nilable = false },
				{ Name = "targetAccepted", Type = "number", Nilable = false },
			},
		},
		{
			Name = "TradeClosed",
			Type = "Event",
			LiteralName = "TRADE_CLOSED",
		},
		{
			Name = "TradeCurrencyChanged",
			Type = "Event",
			LiteralName = "TRADE_CURRENCY_CHANGED",
		},
		{
			Name = "TradeMoneyChanged",
			Type = "Event",
			LiteralName = "TRADE_MONEY_CHANGED",
		},
		{
			Name = "TradePlayerItemChanged",
			Type = "Event",
			LiteralName = "TRADE_PLAYER_ITEM_CHANGED",
			Payload =
			{
				{ Name = "tradeSlotIndex", Type = "number", Nilable = false },
			},
		},
		{
			Name = "TradePotentialBindEnchant",
			Type = "Event",
			LiteralName = "TRADE_POTENTIAL_BIND_ENCHANT",
			Payload =
			{
				{ Name = "canBecomeBoundForTrade", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "TradePotentialRemoveTransmog",
			Type = "Event",
			LiteralName = "TRADE_POTENTIAL_REMOVE_TRANSMOG",
			Payload =
			{
				{ Name = "itemLink", Type = "string", Nilable = false },
				{ Name = "tradeSlotIndex", Type = "number", Nilable = false },
			},
		},
		{
			Name = "TradeRequest",
			Type = "Event",
			LiteralName = "TRADE_REQUEST",
			Payload =
			{
				{ Name = "name", Type = "string", Nilable = false },
			},
		},
		{
			Name = "TradeRequestCancel",
			Type = "Event",
			LiteralName = "TRADE_REQUEST_CANCEL",
		},
		{
			Name = "TradeShow",
			Type = "Event",
			LiteralName = "TRADE_SHOW",
		},
		{
			Name = "TradeTargetItemChanged",
			Type = "Event",
			LiteralName = "TRADE_TARGET_ITEM_CHANGED",
			Payload =
			{
				{ Name = "tradeSlotIndex", Type = "number", Nilable = false },
			},
		},
		{
			Name = "TradeUpdate",
			Type = "Event",
			LiteralName = "TRADE_UPDATE",
		},
	},

	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(TradeInfo);local TradeSkillUI =
{
	Name = "TradeSkillUI",
	Type = "System",
	Namespace = "C_TradeSkillUI",

	Functions =
	{
		{
			Name = "CraftRecipe",
			Type = "Function",

			Arguments =
			{
				{ Name = "recipeSpellID", Type = "number", Nilable = false },
				{ Name = "numCasts", Type = "number", Nilable = false, Default = 1 },
				{ Name = "optionalReagents", Type = "table", InnerType = "OptionalReagentInfo", Nilable = true },
				{ Name = "recipeLevel", Type = "number", Nilable = true },
			},
		},
		{
			Name = "GetAllProfessionTradeSkillLines",
			Type = "Function",

			Returns =
			{
				{ Name = "skillLineID", Type = "table", InnerType = "number", Nilable = false },
			},
		},
		{
			Name = "GetOptionalReagentBonusText",
			Type = "Function",

			Arguments =
			{
				{ Name = "recipeSpellID", Type = "number", Nilable = false },
				{ Name = "optionalReagentIndex", Type = "number", Nilable = false },
				{ Name = "optionalReagents", Type = "table", InnerType = "OptionalReagentInfo", Nilable = false },
			},

			Returns =
			{
				{ Name = "bonusText", Type = "string", Nilable = false },
			},
		},
		{
			Name = "GetOptionalReagentInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "recipeSpellID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "slots", Type = "table", InnerType = "OptionalReagentSlot", Nilable = false },
			},
		},
		{
			Name = "GetRecipeInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "recipeSpellID", Type = "number", Nilable = false },
				{ Name = "recipeLevel", Type = "number", Nilable = true },
			},

			Returns =
			{
				{ Name = "recipeInfo", Type = "TradeSkillRecipeInfo", Nilable = true },
			},
		},
		{
			Name = "GetRecipeNumReagents",
			Type = "Function",

			Arguments =
			{
				{ Name = "recipeSpellID", Type = "number", Nilable = false },
				{ Name = "recipeLevel", Type = "number", Nilable = true },
			},

			Returns =
			{
				{ Name = "numReagents", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetRecipeReagentInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "recipeSpellID", Type = "number", Nilable = false },
				{ Name = "reagentIndex", Type = "number", Nilable = false },
				{ Name = "recipeLevel", Type = "number", Nilable = true },
			},

			Returns =
			{
				{ Name = "reagentName", Type = "string", Nilable = true },
				{ Name = "reagentFileID", Type = "number", Nilable = true },
				{ Name = "reagentCount", Type = "number", Nilable = false },
				{ Name = "playerReagentCount", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetRecipeRepeatCount",
			Type = "Function",

			Returns =
			{
				{ Name = "recastTimes", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetTradeSkillDisplayName",
			Type = "Function",

			Arguments =
			{
				{ Name = "skillLineID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "professionDisplayName", Type = "string", Nilable = false },
			},
		},
		{
			Name = "GetTradeSkillLine",
			Type = "Function",

			Returns =
			{
				{ Name = "skillLineID", Type = "number", Nilable = false },
				{ Name = "skillLineDisplayName", Type = "string", Nilable = false },
				{ Name = "skillLineRank", Type = "number", Nilable = false },
				{ Name = "skillLineMaxRank", Type = "number", Nilable = false },
				{ Name = "skillLineModifier", Type = "number", Nilable = false },
				{ Name = "parentSkillLineID", Type = "number", Nilable = true },
				{ Name = "parentSkillLineDisplayName", Type = "string", Nilable = true },
			},
		},
		{
			Name = "GetTradeSkillLineInfoByID",
			Type = "Function",

			Arguments =
			{
				{ Name = "skillLineID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "skillLineDisplayName", Type = "string", Nilable = false },
				{ Name = "skillLineRank", Type = "number", Nilable = false },
				{ Name = "skillLineMaxRank", Type = "number", Nilable = false },
				{ Name = "skillLineModifier", Type = "number", Nilable = false },
				{ Name = "parentSkillLineID", Type = "number", Nilable = true },
			},
		},
		{
			Name = "IsEmptySkillLineCategory",
			Type = "Function",

			Arguments =
			{
				{ Name = "categoryID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "effectivelyKnown", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "SetRecipeRepeatCount",
			Type = "Function",

			Arguments =
			{
				{ Name = "recipeSpellID", Type = "number", Nilable = false },
				{ Name = "numCasts", Type = "number", Nilable = false, Default = 1 },
				{ Name = "optionalReagents", Type = "table", InnerType = "OptionalReagentInfo", Nilable = true },
			},
		},
	},

	Events =
	{
		{
			Name = "NewRecipeLearned",
			Type = "Event",
			LiteralName = "NEW_RECIPE_LEARNED",
			Payload =
			{
				{ Name = "spellID", Type = "number", Nilable = false },
				{ Name = "recipeLevel", Type = "number", Nilable = true },
			},
		},
		{
			Name = "ObliterumForgeClose",
			Type = "Event",
			LiteralName = "OBLITERUM_FORGE_CLOSE",
		},
		{
			Name = "ObliterumForgePendingItemChanged",
			Type = "Event",
			LiteralName = "OBLITERUM_FORGE_PENDING_ITEM_CHANGED",
		},
		{
			Name = "ObliterumForgeShow",
			Type = "Event",
			LiteralName = "OBLITERUM_FORGE_SHOW",
		},
		{
			Name = "TradeSkillClose",
			Type = "Event",
			LiteralName = "TRADE_SKILL_CLOSE",
		},
		{
			Name = "TradeSkillDataSourceChanged",
			Type = "Event",
			LiteralName = "TRADE_SKILL_DATA_SOURCE_CHANGED",
		},
		{
			Name = "TradeSkillDataSourceChanging",
			Type = "Event",
			LiteralName = "TRADE_SKILL_DATA_SOURCE_CHANGING",
		},
		{
			Name = "TradeSkillDetailsUpdate",
			Type = "Event",
			LiteralName = "TRADE_SKILL_DETAILS_UPDATE",
		},
		{
			Name = "TradeSkillListUpdate",
			Type = "Event",
			LiteralName = "TRADE_SKILL_LIST_UPDATE",
		},
		{
			Name = "TradeSkillNameUpdate",
			Type = "Event",
			LiteralName = "TRADE_SKILL_NAME_UPDATE",
		},
		{
			Name = "TradeSkillOptionalReagentBonusTextUpdated",
			Type = "Event",
			LiteralName = "TRADE_SKILL_OPTIONAL_REAGENT_BONUS_TEXT_UPDATED",
			Payload =
			{
				{ Name = "itemID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "TradeSkillShow",
			Type = "Event",
			LiteralName = "TRADE_SKILL_SHOW",
		},
		{
			Name = "UpdateTradeskillRecast",
			Type = "Event",
			LiteralName = "UPDATE_TRADESKILL_RECAST",
		},
	},

	Tables =
	{
		{
			Name = "OptionalReagentItemFlag",
			Type = "Enumeration",
			NumValues = 1,
			MinValue = 0,
			MaxValue = 0,
			Fields =
			{
				{ Name = "TooltipShowsAsStatModifications", Type = "OptionalReagentItemFlag", EnumValue = 0 },
			},
		},
		{
			Name = "OptionalReagentSlot",
			Type = "Structure",
			Fields =
			{
				{ Name = "slotText", Type = "string", Nilable = true },
				{ Name = "options", Type = "table", InnerType = "number", Nilable = false },
			},
		},
	},
};

APIDocumentation:AddDocumentationTable(TradeSkillUI);local Trainer =
{
	Name = "Trainer",
	Type = "System",
	Namespace = "C_Trainer",

	Functions =
	{
	},

	Events =
	{
		{
			Name = "TrainerClosed",
			Type = "Event",
			LiteralName = "TRAINER_CLOSED",
		},
		{
			Name = "TrainerDescriptionUpdate",
			Type = "Event",
			LiteralName = "TRAINER_DESCRIPTION_UPDATE",
		},
		{
			Name = "TrainerServiceInfoNameUpdate",
			Type = "Event",
			LiteralName = "TRAINER_SERVICE_INFO_NAME_UPDATE",
		},
		{
			Name = "TrainerShow",
			Type = "Event",
			LiteralName = "TRAINER_SHOW",
		},
		{
			Name = "TrainerUpdate",
			Type = "Event",
			LiteralName = "TRAINER_UPDATE",
		},
	},

	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(Trainer);local Transmog =
{
	Name = "Transmogrify",
	Type = "System",
	Namespace = "C_Transmog",

	Functions =
	{
		{
			Name = "ClearAllPending",
			Type = "Function",
		},
		{
			Name = "ClearPending",
			Type = "Function",

			Arguments =
			{
				{ Name = "transmogLocation", Type = "table", Mixin = "TransmogLocationMixin", Nilable = false },
			},
		},
		{
			Name = "GetBaseCategory",
			Type = "Function",

			Arguments =
			{
				{ Name = "slotID", Type = "number", Nilable = false },
				{ Name = "transmogID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "categoryID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetCreatureDisplayIDForSource",
			Type = "Function",

			Arguments =
			{
				{ Name = "itemModifiedAppearanceID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "creatureDisplayID", Type = "number", Nilable = true },
			},
		},
		{
			Name = "GetItemIDForSource",
			Type = "Function",

			Arguments =
			{
				{ Name = "itemModifiedAppearanceID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "itemID", Type = "number", Nilable = true },
			},
		},
		{
			Name = "GetSlotForInventoryType",
			Type = "Function",

			Arguments =
			{
				{ Name = "inventoryType", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "slot", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetSlotInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "transmogLocation", Type = "table", Mixin = "TransmogLocationMixin", Nilable = false },
			},

			Returns =
			{
				{ Name = "isTransmogrified", Type = "bool", Nilable = false },
				{ Name = "hasPending", Type = "bool", Nilable = false },
				{ Name = "isPendingCollected", Type = "bool", Nilable = false },
				{ Name = "canTransmogrify", Type = "bool", Nilable = false },
				{ Name = "cannotTransmogrifyReason", Type = "number", Nilable = false },
				{ Name = "hasUndo", Type = "bool", Nilable = false },
				{ Name = "isHideVisual", Type = "bool", Nilable = false },
				{ Name = "texture", Type = "number", Nilable = true },
			},
		},
		{
			Name = "GetSlotUseError",
			Type = "Function",

			Arguments =
			{
				{ Name = "transmogLocation", Type = "table", Mixin = "TransmogLocationMixin", Nilable = false },
			},

			Returns =
			{
				{ Name = "errorCode", Type = "number", Nilable = false },
				{ Name = "errorString", Type = "string", Nilable = false },
			},
		},
		{
			Name = "GetSlotVisualInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "transmogLocation", Type = "table", Mixin = "TransmogLocationMixin", Nilable = false },
			},

			Returns =
			{
				{ Name = "baseSourceID", Type = "number", Nilable = false },
				{ Name = "baseVisualID", Type = "number", Nilable = false },
				{ Name = "appliedSourceID", Type = "number", Nilable = false },
				{ Name = "appliedVisualID", Type = "number", Nilable = false },
				{ Name = "pendingSourceID", Type = "number", Nilable = false },
				{ Name = "pendingVisualID", Type = "number", Nilable = false },
				{ Name = "hasUndo", Type = "bool", Nilable = false },
				{ Name = "isHideVisual", Type = "bool", Nilable = false },
				{ Name = "itemSubclass", Type = "number", Nilable = false },
			},
		},
		{
			Name = "SetPending",
			Type = "Function",

			Arguments =
			{
				{ Name = "transmogLocation", Type = "table", Mixin = "TransmogLocationMixin", Nilable = false },
				{ Name = "transmogID", Type = "number", Nilable = false },
			},
		},
	},

	Events =
	{
		{
			Name = "TransmogCollectionCameraUpdate",
			Type = "Event",
			LiteralName = "TRANSMOG_COLLECTION_CAMERA_UPDATE",
		},
		{
			Name = "TransmogCollectionItemUpdate",
			Type = "Event",
			LiteralName = "TRANSMOG_COLLECTION_ITEM_UPDATE",
		},
		{
			Name = "TransmogCollectionSourceAdded",
			Type = "Event",
			LiteralName = "TRANSMOG_COLLECTION_SOURCE_ADDED",
			Payload =
			{
				{ Name = "itemModifiedAppearanceID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "TransmogCollectionSourceRemoved",
			Type = "Event",
			LiteralName = "TRANSMOG_COLLECTION_SOURCE_REMOVED",
			Payload =
			{
				{ Name = "itemModifiedAppearanceID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "TransmogCollectionUpdated",
			Type = "Event",
			LiteralName = "TRANSMOG_COLLECTION_UPDATED",
			Payload =
			{
				{ Name = "collectionIndex", Type = "number", Nilable = true },
				{ Name = "modID", Type = "number", Nilable = true },
				{ Name = "itemAppearanceID", Type = "number", Nilable = true },
				{ Name = "reason", Type = "string", Nilable = true },
			},
		},
		{
			Name = "TransmogSearchUpdated",
			Type = "Event",
			LiteralName = "TRANSMOG_SEARCH_UPDATED",
			Payload =
			{
				{ Name = "searchType", Type = "number", Nilable = false },
				{ Name = "collectionType", Type = "number", Nilable = true },
			},
		},
		{
			Name = "TransmogSetsUpdateFavorite",
			Type = "Event",
			LiteralName = "TRANSMOG_SETS_UPDATE_FAVORITE",
		},
		{
			Name = "TransmogSourceCollectabilityUpdate",
			Type = "Event",
			LiteralName = "TRANSMOG_SOURCE_COLLECTABILITY_UPDATE",
			Payload =
			{
				{ Name = "itemModifiedAppearanceID", Type = "number", Nilable = false },
				{ Name = "collectable", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "TransmogrifyClose",
			Type = "Event",
			LiteralName = "TRANSMOGRIFY_CLOSE",
		},
		{
			Name = "TransmogrifyItemUpdate",
			Type = "Event",
			LiteralName = "TRANSMOGRIFY_ITEM_UPDATE",
		},
		{
			Name = "TransmogrifyOpen",
			Type = "Event",
			LiteralName = "TRANSMOGRIFY_OPEN",
		},
		{
			Name = "TransmogrifySuccess",
			Type = "Event",
			LiteralName = "TRANSMOGRIFY_SUCCESS",
			Payload =
			{
				{ Name = "transmogLocation", Type = "table", Mixin = "TransmogLocationMixin", Nilable = false },
			},
		},
		{
			Name = "TransmogrifyUpdate",
			Type = "Event",
			LiteralName = "TRANSMOGRIFY_UPDATE",
			Payload =
			{
				{ Name = "transmogLocation", Type = "table", Mixin = "TransmogLocationMixin", Nilable = true },
				{ Name = "action", Type = "string", Nilable = true },
			},
		},
	},

	Tables =
	{
		{
			Name = "TransmogModification",
			Type = "Enumeration",
			NumValues = 2,
			MinValue = 0,
			MaxValue = 1,
			Fields =
			{
				{ Name = "None", Type = "TransmogModification", EnumValue = 0 },
				{ Name = "RightShoulder", Type = "TransmogModification", EnumValue = 1 },
			},
		},
		{
			Name = "TransmogSource",
			Type = "Enumeration",
			NumValues = 10,
			MinValue = 0,
			MaxValue = 9,
			Fields =
			{
				{ Name = "None", Type = "TransmogSource", EnumValue = 0 },
				{ Name = "JournalEncounter", Type = "TransmogSource", EnumValue = 1 },
				{ Name = "Quest", Type = "TransmogSource", EnumValue = 2 },
				{ Name = "Vendor", Type = "TransmogSource", EnumValue = 3 },
				{ Name = "WorldDrop", Type = "TransmogSource", EnumValue = 4 },
				{ Name = "HiddenUntilCollected", Type = "TransmogSource", EnumValue = 5 },
				{ Name = "CantCollect", Type = "TransmogSource", EnumValue = 6 },
				{ Name = "Achievement", Type = "TransmogSource", EnumValue = 7 },
				{ Name = "Profession", Type = "TransmogSource", EnumValue = 8 },
				{ Name = "NotValidForTransmog", Type = "TransmogSource", EnumValue = 9 },
			},
		},
		{
			Name = "TransmogType",
			Type = "Enumeration",
			NumValues = 2,
			MinValue = 0,
			MaxValue = 1,
			Fields =
			{
				{ Name = "Appearance", Type = "TransmogType", EnumValue = 0 },
				{ Name = "Illusion", Type = "TransmogType", EnumValue = 1 },
			},
		},
	},
};

APIDocumentation:AddDocumentationTable(Transmog);local TransmogItems =
{
	Name = "Transmogrify",
	Type = "System",
	Namespace = "C_TransmogCollection",

	Functions =
	{
		{
			Name = "GetAppearanceSources",
			Type = "Function",

			Arguments =
			{
				{ Name = "appearanceID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "sources", Type = "table", InnerType = "AppearanceSourceInfo", Nilable = false },
			},
		},
		{
			Name = "GetIllusionSourceInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "sourceID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "visualID", Type = "number", Nilable = false },
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "hyperlink", Type = "string", Nilable = false },
				{ Name = "icon", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetSourceIcon",
			Type = "Function",

			Arguments =
			{
				{ Name = "itemModifiedAppearanceID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "icon", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetSourceInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "sourceID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "sourceInfo", Type = "AppearanceSourceInfo", Nilable = false },
			},
		},
	},

	Events =
	{
	},

	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(TransmogItems);local TransmogSets =
{
	Name = "Transmogrify",
	Type = "System",
	Namespace = "C_TransmogSets",

	Functions =
	{
		{
			Name = "ClearLatestSource",
			Type = "Function",
		},
		{
			Name = "ClearNewSource",
			Type = "Function",

			Arguments =
			{
				{ Name = "sourceID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "ClearSetNewSourcesForSlot",
			Type = "Function",

			Arguments =
			{
				{ Name = "transmogSetID", Type = "number", Nilable = false },
				{ Name = "slot", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetAllSourceIDs",
			Type = "Function",

			Arguments =
			{
				{ Name = "transmogSetID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "sources", Type = "table", InnerType = "number", Nilable = false },
			},
		},
		{
			Name = "GetBaseSetsCounts",
			Type = "Function",

			Returns =
			{
				{ Name = "numCollected", Type = "number", Nilable = false },
				{ Name = "numTotal", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetBaseSetsFilter",
			Type = "Function",

			Arguments =
			{
				{ Name = "index", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "isChecked", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "GetCameraIDs",
			Type = "Function",

			Returns =
			{
				{ Name = "detailsCameraID", Type = "number", Nilable = true },
				{ Name = "vendorCameraID", Type = "number", Nilable = true },
			},
		},
		{
			Name = "GetIsFavorite",
			Type = "Function",

			Arguments =
			{
				{ Name = "transmogSetID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "isFavorite", Type = "bool", Nilable = false },
				{ Name = "isGroupFavorite", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "GetLatestSource",
			Type = "Function",

			Returns =
			{
				{ Name = "sourceID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetSetNewSources",
			Type = "Function",

			Arguments =
			{
				{ Name = "transmogSetID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "sourceIDs", Type = "table", InnerType = "number", Nilable = false },
			},
		},
		{
			Name = "GetSetsContainingSourceID",
			Type = "Function",

			Arguments =
			{
				{ Name = "sourceID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "setIDs", Type = "table", InnerType = "number", Nilable = false },
			},
		},
		{
			Name = "GetSourceIDsForSlot",
			Type = "Function",

			Arguments =
			{
				{ Name = "transmogSetID", Type = "number", Nilable = false },
				{ Name = "slot", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "sources", Type = "table", InnerType = "number", Nilable = false },
			},
		},
		{
			Name = "GetSourcesForSlot",
			Type = "Function",

			Arguments =
			{
				{ Name = "transmogSetID", Type = "number", Nilable = false },
				{ Name = "slot", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "sources", Type = "table", InnerType = "AppearanceSourceInfo", Nilable = false },
			},
		},
		{
			Name = "HasUsableSets",
			Type = "Function",

			Returns =
			{
				{ Name = "hasUsableSets", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsBaseSetCollected",
			Type = "Function",

			Arguments =
			{
				{ Name = "transmogSetID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "isCollected", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsNewSource",
			Type = "Function",

			Arguments =
			{
				{ Name = "sourceID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "isNew", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "SetBaseSetsFilter",
			Type = "Function",

			Arguments =
			{
				{ Name = "index", Type = "number", Nilable = false },
				{ Name = "isChecked", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "SetHasNewSources",
			Type = "Function",

			Arguments =
			{
				{ Name = "transmogSetID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "hasNewSources", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "SetHasNewSourcesForSlot",
			Type = "Function",

			Arguments =
			{
				{ Name = "transmogSetID", Type = "number", Nilable = false },
				{ Name = "slot", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "hasNewSources", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "SetIsFavorite",
			Type = "Function",

			Arguments =
			{
				{ Name = "transmogSetID", Type = "number", Nilable = false },
				{ Name = "isFavorite", Type = "bool", Nilable = false },
			},
		},
	},

	Events =
	{
	},

	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(TransmogSets);local Tutorial =
{
	Name = "Tutorial",
	Type = "System",
	Namespace = "C_Tutorial",

	Functions =
	{
	},

	Events =
	{
		{
			Name = "NpeTutorialUpdate",
			Type = "Event",
			LiteralName = "NPE_TUTORIAL_UPDATE",
		},
		{
			Name = "TutorialHighlightSpell",
			Type = "Event",
			LiteralName = "TUTORIAL_HIGHLIGHT_SPELL",
			Payload =
			{
				{ Name = "spellID", Type = "number", Nilable = false },
				{ Name = "tutorialGlobalStringTag", Type = "string", Nilable = false },
			},
		},
		{
			Name = "TutorialTrigger",
			Type = "Event",
			LiteralName = "TUTORIAL_TRIGGER",
			Payload =
			{
				{ Name = "tutorialIndex", Type = "number", Nilable = false },
				{ Name = "forceShow", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "TutorialUnhighlightSpell",
			Type = "Event",
			LiteralName = "TUTORIAL_UNHIGHLIGHT_SPELL",
		},
	},

	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(Tutorial);local UIMacros =
{
	Name = "UIMacros",
	Type = "System",
	Namespace = "C_Macro",

	Functions =
	{
	},

	Events =
	{
		{
			Name = "ExecuteChatLine",
			Type = "Event",
			LiteralName = "EXECUTE_CHAT_LINE",
			Payload =
			{
				{ Name = "chatLine", Type = "string", Nilable = false },
			},
		},
		{
			Name = "UpdateMacros",
			Type = "Event",
			LiteralName = "UPDATE_MACROS",
		},
	},

	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(UIMacros);local UIManager =
{
	Name = "UI",
	Type = "System",
	Namespace = "C_UI",

	Functions =
	{
		{
			Name = "Reload",
			Type = "Function",
		},
	},

	Events =
	{
		{
			Name = "UiScaleChanged",
			Type = "Event",
			LiteralName = "UI_SCALE_CHANGED",
		},
	},

	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(UIManager);local UIModelInfo =
{
	Name = "ModelInfo",
	Type = "System",
	Namespace = "C_ModelInfo",

	Functions =
	{
		{
			Name = "AddActiveModelScene",
			Type = "Function",
			Documentation = { "This function does nothing in public clients" },

			Arguments =
			{
				{ Name = "modelSceneFrame", Type = "table", Nilable = false },
				{ Name = "modelSceneID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "AddActiveModelSceneActor",
			Type = "Function",
			Documentation = { "This function does nothing in public clients" },

			Arguments =
			{
				{ Name = "modelSceneFrameActor", Type = "table", Nilable = false },
				{ Name = "modelSceneActorID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "ClearActiveModelScene",
			Type = "Function",
			Documentation = { "This function does nothing in public clients" },

			Arguments =
			{
				{ Name = "modelSceneFrame", Type = "table", Nilable = false },
			},
		},
		{
			Name = "ClearActiveModelSceneActor",
			Type = "Function",
			Documentation = { "This function does nothing in public clients" },

			Arguments =
			{
				{ Name = "modelSceneFrameActor", Type = "table", Nilable = false },
			},
		},
		{
			Name = "GetModelSceneActorDisplayInfoByID",
			Type = "Function",

			Arguments =
			{
				{ Name = "modelActorDisplayID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "actorDisplayInfo", Type = "UIModelSceneActorDisplayInfo", Nilable = false },
			},
		},
		{
			Name = "GetModelSceneActorInfoByID",
			Type = "Function",

			Arguments =
			{
				{ Name = "modelActorID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "actorInfo", Type = "UIModelSceneActorInfo", Nilable = false },
			},
		},
		{
			Name = "GetModelSceneCameraInfoByID",
			Type = "Function",

			Arguments =
			{
				{ Name = "modelSceneCameraID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "modelSceneCameraInfo", Type = "UIModelSceneCameraInfo", Nilable = false },
			},
		},
		{
			Name = "GetModelSceneInfoByID",
			Type = "Function",

			Arguments =
			{
				{ Name = "modelSceneID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "modelSceneType", Type = "ModelSceneType", Nilable = false },
				{ Name = "modelCameraIDs", Type = "table", InnerType = "number", Nilable = false },
				{ Name = "modelActorsIDs", Type = "table", InnerType = "number", Nilable = false },
			},
		},
	},

	Events =
	{
		{
			Name = "UiModelSceneInfoUpdated",
			Type = "Event",
			LiteralName = "UI_MODEL_SCENE_INFO_UPDATED",
		},
	},

	Tables =
	{
		{
			Name = "ItemTryOnReason",
			Type = "Enumeration",
			NumValues = 4,
			MinValue = 0,
			MaxValue = 3,
			Fields =
			{
				{ Name = "Success", Type = "ItemTryOnReason", EnumValue = 0 },
				{ Name = "WrongRace", Type = "ItemTryOnReason", EnumValue = 1 },
				{ Name = "NotEquippable", Type = "ItemTryOnReason", EnumValue = 2 },
				{ Name = "DataPending", Type = "ItemTryOnReason", EnumValue = 3 },
			},
		},
		{
			Name = "ModelSceneSetting",
			Type = "Enumeration",
			NumValues = 1,
			MinValue = 1,
			MaxValue = 1,
			Fields =
			{
				{ Name = "AlignLightToOrbitDelta", Type = "ModelSceneSetting", EnumValue = 1 },
			},
		},
		{
			Name = "ModelSceneType",
			Type = "Enumeration",
			NumValues = 20,
			MinValue = 0,
			MaxValue = 19,
			Fields =
			{
				{ Name = "MountJournal", Type = "ModelSceneType", EnumValue = 0 },
				{ Name = "PetJournalCard", Type = "ModelSceneType", EnumValue = 1 },
				{ Name = "ShopCard", Type = "ModelSceneType", EnumValue = 2 },
				{ Name = "EncounterJournal", Type = "ModelSceneType", EnumValue = 3 },
				{ Name = "PetJournalLoadout", Type = "ModelSceneType", EnumValue = 4 },
				{ Name = "ArtifactTier2", Type = "ModelSceneType", EnumValue = 5 },
				{ Name = "ArtifactTier2ForgingScene", Type = "ModelSceneType", EnumValue = 6 },
				{ Name = "ArtifactTier2SlamEffect", Type = "ModelSceneType", EnumValue = 7 },
				{ Name = "CommentatorVictoryFanfare", Type = "ModelSceneType", EnumValue = 8 },
				{ Name = "ArtifactRelicTalentEffect", Type = "ModelSceneType", EnumValue = 9 },
				{ Name = "PvPWarModeOrb", Type = "ModelSceneType", EnumValue = 10 },
				{ Name = "PvPWarModeFire", Type = "ModelSceneType", EnumValue = 11 },
				{ Name = "PartyPose", Type = "ModelSceneType", EnumValue = 12 },
				{ Name = "AzeriteItemLevelUpToast", Type = "ModelSceneType", EnumValue = 13 },
				{ Name = "AzeritePowers", Type = "ModelSceneType", EnumValue = 14 },
				{ Name = "AzeriteRewardGlow", Type = "ModelSceneType", EnumValue = 15 },
				{ Name = "HeartOfAzeroth", Type = "ModelSceneType", EnumValue = 16 },
				{ Name = "WorldMapThreat", Type = "ModelSceneType", EnumValue = 17 },
				{ Name = "Soulbinds", Type = "ModelSceneType", EnumValue = 18 },
				{ Name = "JailersTowerAnimaGlow", Type = "ModelSceneType", EnumValue = 19 },
			},
		},
		{
			Name = "UIModelSceneActorDisplayInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "animation", Type = "number", Nilable = false },
				{ Name = "animationVariation", Type = "number", Nilable = false },
				{ Name = "animSpeed", Type = "number", Nilable = false },
				{ Name = "animationKitID", Type = "number", Nilable = true },
				{ Name = "spellVisualKitID", Type = "number", Nilable = true },
				{ Name = "alpha", Type = "number", Nilable = false },
				{ Name = "scale", Type = "number", Nilable = false },
			},
		},
		{
			Name = "UIModelSceneActorInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "modelActorID", Type = "number", Nilable = false },
				{ Name = "scriptTag", Type = "string", Nilable = false },
				{ Name = "position", Type = "table", Mixin = "Vector3DMixin", Nilable = false },
				{ Name = "yaw", Type = "number", Nilable = false },
				{ Name = "pitch", Type = "number", Nilable = false },
				{ Name = "roll", Type = "number", Nilable = false },
				{ Name = "normalizeScaleAggressiveness", Type = "number", Nilable = true },
				{ Name = "useCenterForOriginX", Type = "bool", Nilable = false },
				{ Name = "useCenterForOriginY", Type = "bool", Nilable = false },
				{ Name = "useCenterForOriginZ", Type = "bool", Nilable = false },
				{ Name = "modelActorDisplayID", Type = "number", Nilable = true },
			},
		},
		{
			Name = "UIModelSceneCameraInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "modelSceneCameraID", Type = "number", Nilable = false },
				{ Name = "scriptTag", Type = "string", Nilable = false },
				{ Name = "cameraType", Type = "string", Nilable = false },
				{ Name = "target", Type = "table", Mixin = "Vector3DMixin", Nilable = false },
				{ Name = "yaw", Type = "number", Nilable = false },
				{ Name = "pitch", Type = "number", Nilable = false },
				{ Name = "roll", Type = "number", Nilable = false },
				{ Name = "zoomDistance", Type = "number", Nilable = false },
				{ Name = "minZoomDistance", Type = "number", Nilable = false },
				{ Name = "maxZoomDistance", Type = "number", Nilable = false },
				{ Name = "zoomedTargetOffset", Type = "table", Mixin = "Vector3DMixin", Nilable = false },
				{ Name = "zoomedYawOffset", Type = "number", Nilable = false },
				{ Name = "zoomedPitchOffset", Type = "number", Nilable = false },
				{ Name = "zoomedRollOffset", Type = "number", Nilable = false },
				{ Name = "flags", Type = "ModelSceneSetting", Nilable = false },
			},
		},
	},
};

APIDocumentation:AddDocumentationTable(UIModelInfo);local UIWidgetManager =
{
	Name = "UIWidgetManager",
	Type = "System",
	Namespace = "C_UIWidgetManager",

	Functions =
	{
		{
			Name = "GetAllWidgetsBySetID",
			Type = "Function",

			Arguments =
			{
				{ Name = "setID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "widgets", Type = "table", InnerType = "UIWidgetInfo", Nilable = false },
			},
		},
		{
			Name = "GetBelowMinimapWidgetSetID",
			Type = "Function",

			Returns =
			{
				{ Name = "setID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetBulletTextListWidgetVisualizationInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "widgetID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "widgetInfo", Type = "BulletTextListWidgetVisualizationInfo", Nilable = true },
			},
		},
		{
			Name = "GetCaptureBarWidgetVisualizationInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "widgetID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "widgetInfo", Type = "CaptureBarWidgetVisualizationInfo", Nilable = true },
			},
		},
		{
			Name = "GetCaptureZoneVisualizationInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "widgetID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "widgetInfo", Type = "CaptureZoneVisualizationInfo", Nilable = true },
			},
		},
		{
			Name = "GetDiscreteProgressStepsVisualizationInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "widgetID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "widgetInfo", Type = "DiscreteProgressStepsVisualizationInfo", Nilable = true },
			},
		},
		{
			Name = "GetDoubleIconAndTextWidgetVisualizationInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "widgetID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "widgetInfo", Type = "DoubleIconAndTextWidgetVisualizationInfo", Nilable = true },
			},
		},
		{
			Name = "GetDoubleStateIconRowVisualizationInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "widgetID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "widgetInfo", Type = "DoubleStateIconRowVisualizationInfo", Nilable = true },
			},
		},
		{
			Name = "GetDoubleStatusBarWidgetVisualizationInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "widgetID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "widgetInfo", Type = "DoubleStatusBarWidgetVisualizationInfo", Nilable = true },
			},
		},
		{
			Name = "GetHorizontalCurrenciesWidgetVisualizationInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "widgetID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "widgetInfo", Type = "HorizontalCurrenciesWidgetVisualizationInfo", Nilable = true },
			},
		},
		{
			Name = "GetIconAndTextWidgetVisualizationInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "widgetID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "widgetInfo", Type = "IconAndTextWidgetVisualizationInfo", Nilable = true },
			},
		},
		{
			Name = "GetIconTextAndBackgroundWidgetVisualizationInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "widgetID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "widgetInfo", Type = "IconTextAndBackgroundWidgetVisualizationInfo", Nilable = true },
			},
		},
		{
			Name = "GetIconTextAndCurrenciesWidgetVisualizationInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "widgetID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "widgetInfo", Type = "IconTextAndCurrenciesWidgetVisualizationInfo", Nilable = true },
			},
		},
		{
			Name = "GetObjectiveTrackerWidgetSetID",
			Type = "Function",

			Returns =
			{
				{ Name = "setID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetPowerBarWidgetSetID",
			Type = "Function",

			Returns =
			{
				{ Name = "setID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetScenarioHeaderCurrenciesAndBackgroundWidgetVisualizationInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "widgetID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "widgetInfo", Type = "ScenarioHeaderCurrenciesAndBackgroundWidgetVisualizationInfo", Nilable = true },
			},
		},
		{
			Name = "GetScenarioHeaderTimerWidgetVisualizationInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "widgetID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "widgetInfo", Type = "ScenarioHeaderTimerWidgetVisualizationInfo", Nilable = true },
			},
		},
		{
			Name = "GetSpellDisplayVisualizationInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "widgetID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "widgetInfo", Type = "SpellDisplayVisualizationInfo", Nilable = true },
			},
		},
		{
			Name = "GetStackedResourceTrackerWidgetVisualizationInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "widgetID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "widgetInfo", Type = "StackedResourceTrackerWidgetVisualizationInfo", Nilable = true },
			},
		},
		{
			Name = "GetStatusBarWidgetVisualizationInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "widgetID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "widgetInfo", Type = "StatusBarWidgetVisualizationInfo", Nilable = true },
			},
		},
		{
			Name = "GetTextWithStateWidgetVisualizationInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "widgetID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "widgetInfo", Type = "TextWithStateWidgetVisualizationInfo", Nilable = true },
			},
		},
		{
			Name = "GetTextureAndTextRowVisualizationInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "widgetID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "widgetInfo", Type = "TextureAndTextRowVisualizationInfo", Nilable = true },
			},
		},
		{
			Name = "GetTextureAndTextVisualizationInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "widgetID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "widgetInfo", Type = "TextureAndTextVisualizationInfo", Nilable = true },
			},
		},
		{
			Name = "GetTextureWithAnimationVisualizationInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "widgetID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "widgetInfo", Type = "TextureWithAnimationVisualizationInfo", Nilable = true },
			},
		},
		{
			Name = "GetTopCenterWidgetSetID",
			Type = "Function",

			Returns =
			{
				{ Name = "setID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetWidgetLayoutDirectionFromWidgetSetID",
			Type = "Function",

			Arguments =
			{
				{ Name = "widgetSetID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "layoutDirection", Type = "UIWidgetLayoutDirection", Nilable = false },
			},
		},
		{
			Name = "GetZoneControlVisualizationInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "widgetID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "widgetInfo", Type = "ZoneControlVisualizationInfo", Nilable = true },
			},
		},
		{
			Name = "RegisterUnitForWidgetUpdates",
			Type = "Function",

			Arguments =
			{
				{ Name = "unitToken", Type = "string", Nilable = false },
			},
		},
		{
			Name = "SetProcessingUnit",
			Type = "Function",

			Arguments =
			{
				{ Name = "unit", Type = "string", Nilable = true },
			},
		},
		{
			Name = "UnregisterUnitForWidgetUpdates",
			Type = "Function",

			Arguments =
			{
				{ Name = "unitToken", Type = "string", Nilable = false },
			},
		},
	},

	Events =
	{
		{
			Name = "UpdateAllUiWidgets",
			Type = "Event",
			LiteralName = "UPDATE_ALL_UI_WIDGETS",
		},
		{
			Name = "UpdateUiWidget",
			Type = "Event",
			LiteralName = "UPDATE_UI_WIDGET",
			Payload =
			{
				{ Name = "widgetInfo", Type = "UIWidgetInfo", Nilable = false },
			},
		},
	},

	Tables =
	{
		{
			Name = "CaptureBarWidgetFillDirectionType",
			Type = "Enumeration",
			NumValues = 2,
			MinValue = 0,
			MaxValue = 1,
			Fields =
			{
				{ Name = "RightToLeft", Type = "CaptureBarWidgetFillDirectionType", EnumValue = 0 },
				{ Name = "LeftToRight", Type = "CaptureBarWidgetFillDirectionType", EnumValue = 1 },
			},
		},
		{
			Name = "CaptureBarWidgetGlowAnimType",
			Type = "Enumeration",
			NumValues = 2,
			MinValue = 0,
			MaxValue = 1,
			Fields =
			{
				{ Name = "None", Type = "CaptureBarWidgetGlowAnimType", EnumValue = 0 },
				{ Name = "Pulse", Type = "CaptureBarWidgetGlowAnimType", EnumValue = 1 },
			},
		},
		{
			Name = "IconAndTextWidgetState",
			Type = "Enumeration",
			NumValues = 4,
			MinValue = 0,
			MaxValue = 3,
			Fields =
			{
				{ Name = "Hidden", Type = "IconAndTextWidgetState", EnumValue = 0 },
				{ Name = "Shown", Type = "IconAndTextWidgetState", EnumValue = 1 },
				{ Name = "ShownWithDynamicIconFlashing", Type = "IconAndTextWidgetState", EnumValue = 2 },
				{ Name = "ShownWithDynamicIconNotFlashing", Type = "IconAndTextWidgetState", EnumValue = 3 },
			},
		},
		{
			Name = "IconState",
			Type = "Enumeration",
			NumValues = 3,
			MinValue = 0,
			MaxValue = 2,
			Fields =
			{
				{ Name = "Hidden", Type = "IconState", EnumValue = 0 },
				{ Name = "ShowState1", Type = "IconState", EnumValue = 1 },
				{ Name = "ShowState2", Type = "IconState", EnumValue = 2 },
			},
		},
		{
			Name = "SpellDisplayIconDisplayType",
			Type = "Enumeration",
			NumValues = 3,
			MinValue = 0,
			MaxValue = 2,
			Fields =
			{
				{ Name = "Buff", Type = "SpellDisplayIconDisplayType", EnumValue = 0 },
				{ Name = "Debuff", Type = "SpellDisplayIconDisplayType", EnumValue = 1 },
				{ Name = "Circular", Type = "SpellDisplayIconDisplayType", EnumValue = 2 },
			},
		},
		{
			Name = "SpellDisplayIconSizeType",
			Type = "Enumeration",
			NumValues = 3,
			MinValue = 0,
			MaxValue = 2,
			Fields =
			{
				{ Name = "Small", Type = "SpellDisplayIconSizeType", EnumValue = 0 },
				{ Name = "Medium", Type = "SpellDisplayIconSizeType", EnumValue = 1 },
				{ Name = "Large", Type = "SpellDisplayIconSizeType", EnumValue = 2 },
			},
		},
		{
			Name = "SpellDisplayTextShownStateType",
			Type = "Enumeration",
			NumValues = 2,
			MinValue = 0,
			MaxValue = 1,
			Fields =
			{
				{ Name = "Shown", Type = "SpellDisplayTextShownStateType", EnumValue = 0 },
				{ Name = "Hidden", Type = "SpellDisplayTextShownStateType", EnumValue = 1 },
			},
		},
		{
			Name = "StatusBarColorTintValue",
			Type = "Enumeration",
			NumValues = 9,
			MinValue = 0,
			MaxValue = 8,
			Fields =
			{
				{ Name = "None", Type = "StatusBarColorTintValue", EnumValue = 0 },
				{ Name = "Black", Type = "StatusBarColorTintValue", EnumValue = 1 },
				{ Name = "White", Type = "StatusBarColorTintValue", EnumValue = 2 },
				{ Name = "Red", Type = "StatusBarColorTintValue", EnumValue = 3 },
				{ Name = "Yellow", Type = "StatusBarColorTintValue", EnumValue = 4 },
				{ Name = "Orange", Type = "StatusBarColorTintValue", EnumValue = 5 },
				{ Name = "Purple", Type = "StatusBarColorTintValue", EnumValue = 6 },
				{ Name = "Green", Type = "StatusBarColorTintValue", EnumValue = 7 },
				{ Name = "Blue", Type = "StatusBarColorTintValue", EnumValue = 8 },
			},
		},
		{
			Name = "StatusBarOverrideBarTextShownType",
			Type = "Enumeration",
			NumValues = 4,
			MinValue = 0,
			MaxValue = 3,
			Fields =
			{
				{ Name = "Never", Type = "StatusBarOverrideBarTextShownType", EnumValue = 0 },
				{ Name = "Always", Type = "StatusBarOverrideBarTextShownType", EnumValue = 1 },
				{ Name = "OnlyOnMouseover", Type = "StatusBarOverrideBarTextShownType", EnumValue = 2 },
				{ Name = "OnlyNotOnMouseover", Type = "StatusBarOverrideBarTextShownType", EnumValue = 3 },
			},
		},
		{
			Name = "StatusBarValueTextType",
			Type = "Enumeration",
			NumValues = 7,
			MinValue = 0,
			MaxValue = 6,
			Fields =
			{
				{ Name = "Hidden", Type = "StatusBarValueTextType", EnumValue = 0 },
				{ Name = "Percentage", Type = "StatusBarValueTextType", EnumValue = 1 },
				{ Name = "Value", Type = "StatusBarValueTextType", EnumValue = 2 },
				{ Name = "Time", Type = "StatusBarValueTextType", EnumValue = 3 },
				{ Name = "TimeShowOneLevelOnly", Type = "StatusBarValueTextType", EnumValue = 4 },
				{ Name = "ValueOverMax", Type = "StatusBarValueTextType", EnumValue = 5 },
				{ Name = "ValueOverMaxNormalized", Type = "StatusBarValueTextType", EnumValue = 6 },
			},
		},
		{
			Name = "UIWidgetFlag",
			Type = "Enumeration",
			NumValues = 1,
			MinValue = 1,
			MaxValue = 1,
			Fields =
			{
				{ Name = "UniversalWidget", Type = "UIWidgetFlag", EnumValue = 1 },
			},
		},
		{
			Name = "UIWidgetTextSizeType",
			Type = "Enumeration",
			NumValues = 4,
			MinValue = 0,
			MaxValue = 3,
			Fields =
			{
				{ Name = "Small", Type = "UIWidgetTextSizeType", EnumValue = 0 },
				{ Name = "Medium", Type = "UIWidgetTextSizeType", EnumValue = 1 },
				{ Name = "Large", Type = "UIWidgetTextSizeType", EnumValue = 2 },
				{ Name = "Huge", Type = "UIWidgetTextSizeType", EnumValue = 3 },
			},
		},
		{
			Name = "WidgetAnimationType",
			Type = "Enumeration",
			NumValues = 2,
			MinValue = 0,
			MaxValue = 1,
			Fields =
			{
				{ Name = "None", Type = "WidgetAnimationType", EnumValue = 0 },
				{ Name = "Fade", Type = "WidgetAnimationType", EnumValue = 1 },
			},
		},
		{
			Name = "WidgetCurrencyClass",
			Type = "Enumeration",
			NumValues = 2,
			MinValue = 0,
			MaxValue = 1,
			Fields =
			{
				{ Name = "Currency", Type = "WidgetCurrencyClass", EnumValue = 0 },
				{ Name = "Item", Type = "WidgetCurrencyClass", EnumValue = 1 },
			},
		},
		{
			Name = "WidgetEnabledState",
			Type = "Enumeration",
			NumValues = 4,
			MinValue = 0,
			MaxValue = 3,
			Fields =
			{
				{ Name = "Disabled", Type = "WidgetEnabledState", EnumValue = 0 },
				{ Name = "Enabled", Type = "WidgetEnabledState", EnumValue = 1 },
				{ Name = "Red", Type = "WidgetEnabledState", EnumValue = 2 },
				{ Name = "Highlight", Type = "WidgetEnabledState", EnumValue = 3 },
			},
		},
		{
			Name = "WidgetShownState",
			Type = "Enumeration",
			NumValues = 2,
			MinValue = 0,
			MaxValue = 1,
			Fields =
			{
				{ Name = "Hidden", Type = "WidgetShownState", EnumValue = 0 },
				{ Name = "Shown", Type = "WidgetShownState", EnumValue = 1 },
			},
		},
		{
			Name = "ZoneControlActiveState",
			Type = "Enumeration",
			NumValues = 2,
			MinValue = 0,
			MaxValue = 1,
			Fields =
			{
				{ Name = "Inactive", Type = "ZoneControlActiveState", EnumValue = 0 },
				{ Name = "Active", Type = "ZoneControlActiveState", EnumValue = 1 },
			},
		},
		{
			Name = "ZoneControlDangerFlashType",
			Type = "Enumeration",
			NumValues = 4,
			MinValue = 0,
			MaxValue = 3,
			Fields =
			{
				{ Name = "ShowOnGoodStates", Type = "ZoneControlDangerFlashType", EnumValue = 0 },
				{ Name = "ShowOnBadStates", Type = "ZoneControlDangerFlashType", EnumValue = 1 },
				{ Name = "ShowOnBoth", Type = "ZoneControlDangerFlashType", EnumValue = 2 },
				{ Name = "ShowOnNeither", Type = "ZoneControlDangerFlashType", EnumValue = 3 },
			},
		},
		{
			Name = "ZoneControlFillType",
			Type = "Enumeration",
			NumValues = 4,
			MinValue = 0,
			MaxValue = 3,
			Fields =
			{
				{ Name = "SingleFillClockwise", Type = "ZoneControlFillType", EnumValue = 0 },
				{ Name = "SingleFillCounterClockwise", Type = "ZoneControlFillType", EnumValue = 1 },
				{ Name = "DoubleFillClockwise", Type = "ZoneControlFillType", EnumValue = 2 },
				{ Name = "DoubleFillCounterClockwise", Type = "ZoneControlFillType", EnumValue = 3 },
			},
		},
		{
			Name = "ZoneControlLeadingEdgeType",
			Type = "Enumeration",
			NumValues = 2,
			MinValue = 0,
			MaxValue = 1,
			Fields =
			{
				{ Name = "NoLeadingEdge", Type = "ZoneControlLeadingEdgeType", EnumValue = 0 },
				{ Name = "UseLeadingEdge", Type = "ZoneControlLeadingEdgeType", EnumValue = 1 },
			},
		},
		{
			Name = "ZoneControlMode",
			Type = "Enumeration",
			NumValues = 4,
			MinValue = 0,
			MaxValue = 3,
			Fields =
			{
				{ Name = "BothStatesAreGood", Type = "ZoneControlMode", EnumValue = 0 },
				{ Name = "State1IsGood", Type = "ZoneControlMode", EnumValue = 1 },
				{ Name = "State2IsGood", Type = "ZoneControlMode", EnumValue = 2 },
				{ Name = "NeitherStateIsGood", Type = "ZoneControlMode", EnumValue = 3 },
			},
		},
		{
			Name = "ZoneControlState",
			Type = "Enumeration",
			NumValues = 2,
			MinValue = 0,
			MaxValue = 1,
			Fields =
			{
				{ Name = "State1", Type = "ZoneControlState", EnumValue = 0 },
				{ Name = "State2", Type = "ZoneControlState", EnumValue = 1 },
			},
		},
		{
			Name = "BulletTextListWidgetVisualizationInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "shownState", Type = "WidgetShownState", Nilable = false },
				{ Name = "enabledState", Type = "WidgetEnabledState", Nilable = false },
				{ Name = "lines", Type = "table", InnerType = "string", Nilable = false },
				{ Name = "widgetSizeSetting", Type = "number", Nilable = false },
				{ Name = "textureKit", Type = "string", Nilable = false },
				{ Name = "frameTextureKit", Type = "string", Nilable = false },
				{ Name = "hasTimer", Type = "bool", Nilable = false },
				{ Name = "orderIndex", Type = "number", Nilable = false },
				{ Name = "widgetTag", Type = "string", Nilable = false },
				{ Name = "inAnimType", Type = "WidgetAnimationType", Nilable = false },
				{ Name = "outAnimType", Type = "WidgetAnimationType", Nilable = false },
				{ Name = "widgetScale", Type = "UIWidgetScale", Nilable = false },
				{ Name = "layoutDirection", Type = "UIWidgetLayoutDirection", Nilable = false },
			},
		},
		{
			Name = "CaptureBarWidgetVisualizationInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "shownState", Type = "WidgetShownState", Nilable = false },
				{ Name = "barValue", Type = "number", Nilable = false },
				{ Name = "barMinValue", Type = "number", Nilable = false },
				{ Name = "barMaxValue", Type = "number", Nilable = false },
				{ Name = "neutralZoneSize", Type = "number", Nilable = false },
				{ Name = "neutralZoneCenter", Type = "number", Nilable = false },
				{ Name = "tooltip", Type = "string", Nilable = false },
				{ Name = "glowAnimType", Type = "CaptureBarWidgetGlowAnimType", Nilable = false },
				{ Name = "fillDirectionType", Type = "CaptureBarWidgetFillDirectionType", Nilable = false },
				{ Name = "widgetSizeSetting", Type = "number", Nilable = false },
				{ Name = "textureKit", Type = "string", Nilable = false },
				{ Name = "frameTextureKit", Type = "string", Nilable = false },
				{ Name = "hasTimer", Type = "bool", Nilable = false },
				{ Name = "orderIndex", Type = "number", Nilable = false },
				{ Name = "widgetTag", Type = "string", Nilable = false },
				{ Name = "inAnimType", Type = "WidgetAnimationType", Nilable = false },
				{ Name = "outAnimType", Type = "WidgetAnimationType", Nilable = false },
				{ Name = "widgetScale", Type = "UIWidgetScale", Nilable = false },
				{ Name = "layoutDirection", Type = "UIWidgetLayoutDirection", Nilable = false },
			},
		},
		{
			Name = "CaptureZoneVisualizationInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "shownState", Type = "WidgetShownState", Nilable = false },
				{ Name = "mode", Type = "ZoneControlMode", Nilable = false },
				{ Name = "leadingEdgeType", Type = "ZoneControlLeadingEdgeType", Nilable = false },
				{ Name = "dangerFlashType", Type = "ZoneControlDangerFlashType", Nilable = false },
				{ Name = "zoneInfo", Type = "ZoneEntry", Nilable = false },
				{ Name = "widgetSizeSetting", Type = "number", Nilable = false },
				{ Name = "textureKit", Type = "string", Nilable = false },
				{ Name = "frameTextureKit", Type = "string", Nilable = false },
				{ Name = "hasTimer", Type = "bool", Nilable = false },
				{ Name = "orderIndex", Type = "number", Nilable = false },
				{ Name = "widgetTag", Type = "string", Nilable = false },
				{ Name = "inAnimType", Type = "WidgetAnimationType", Nilable = false },
				{ Name = "outAnimType", Type = "WidgetAnimationType", Nilable = false },
				{ Name = "widgetScale", Type = "UIWidgetScale", Nilable = false },
				{ Name = "layoutDirection", Type = "UIWidgetLayoutDirection", Nilable = false },
			},
		},
		{
			Name = "DiscreteProgressStepsVisualizationInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "shownState", Type = "WidgetShownState", Nilable = false },
				{ Name = "tooltip", Type = "string", Nilable = false },
				{ Name = "progressMin", Type = "number", Nilable = false },
				{ Name = "progressMax", Type = "number", Nilable = false },
				{ Name = "progressVal", Type = "number", Nilable = false },
				{ Name = "numSteps", Type = "number", Nilable = false },
				{ Name = "widgetSizeSetting", Type = "number", Nilable = false },
				{ Name = "textureKit", Type = "string", Nilable = false },
				{ Name = "frameTextureKit", Type = "string", Nilable = false },
				{ Name = "hasTimer", Type = "bool", Nilable = false },
				{ Name = "orderIndex", Type = "number", Nilable = false },
				{ Name = "widgetTag", Type = "string", Nilable = false },
				{ Name = "inAnimType", Type = "WidgetAnimationType", Nilable = false },
				{ Name = "outAnimType", Type = "WidgetAnimationType", Nilable = false },
				{ Name = "widgetScale", Type = "UIWidgetScale", Nilable = false },
				{ Name = "layoutDirection", Type = "UIWidgetLayoutDirection", Nilable = false },
			},
		},
		{
			Name = "DoubleIconAndTextWidgetVisualizationInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "shownState", Type = "WidgetShownState", Nilable = false },
				{ Name = "label", Type = "string", Nilable = false },
				{ Name = "leftText", Type = "string", Nilable = false },
				{ Name = "leftTooltip", Type = "string", Nilable = false },
				{ Name = "rightText", Type = "string", Nilable = false },
				{ Name = "rightTooltip", Type = "string", Nilable = false },
				{ Name = "widgetSizeSetting", Type = "number", Nilable = false },
				{ Name = "textureKit", Type = "string", Nilable = false },
				{ Name = "frameTextureKit", Type = "string", Nilable = false },
				{ Name = "hasTimer", Type = "bool", Nilable = false },
				{ Name = "orderIndex", Type = "number", Nilable = false },
				{ Name = "widgetTag", Type = "string", Nilable = false },
				{ Name = "inAnimType", Type = "WidgetAnimationType", Nilable = false },
				{ Name = "outAnimType", Type = "WidgetAnimationType", Nilable = false },
				{ Name = "widgetScale", Type = "UIWidgetScale", Nilable = false },
				{ Name = "layoutDirection", Type = "UIWidgetLayoutDirection", Nilable = false },
			},
		},
		{
			Name = "DoubleStateIconRowVisualizationInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "shownState", Type = "WidgetShownState", Nilable = false },
				{ Name = "leftIcons", Type = "table", InnerType = "UIWidgetStateIconInfo", Nilable = false },
				{ Name = "rightIcons", Type = "table", InnerType = "UIWidgetStateIconInfo", Nilable = false },
				{ Name = "widgetSizeSetting", Type = "number", Nilable = false },
				{ Name = "textureKit", Type = "string", Nilable = false },
				{ Name = "frameTextureKit", Type = "string", Nilable = false },
				{ Name = "hasTimer", Type = "bool", Nilable = false },
				{ Name = "orderIndex", Type = "number", Nilable = false },
				{ Name = "widgetTag", Type = "string", Nilable = false },
				{ Name = "inAnimType", Type = "WidgetAnimationType", Nilable = false },
				{ Name = "outAnimType", Type = "WidgetAnimationType", Nilable = false },
				{ Name = "widgetScale", Type = "UIWidgetScale", Nilable = false },
				{ Name = "layoutDirection", Type = "UIWidgetLayoutDirection", Nilable = false },
			},
		},
		{
			Name = "DoubleStatusBarWidgetVisualizationInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "shownState", Type = "WidgetShownState", Nilable = false },
				{ Name = "leftBarMin", Type = "number", Nilable = false },
				{ Name = "leftBarMax", Type = "number", Nilable = false },
				{ Name = "leftBarValue", Type = "number", Nilable = false },
				{ Name = "leftBarTooltip", Type = "string", Nilable = false },
				{ Name = "rightBarMin", Type = "number", Nilable = false },
				{ Name = "rightBarMax", Type = "number", Nilable = false },
				{ Name = "rightBarValue", Type = "number", Nilable = false },
				{ Name = "rightBarTooltip", Type = "string", Nilable = false },
				{ Name = "barValueTextType", Type = "StatusBarValueTextType", Nilable = false },
				{ Name = "text", Type = "string", Nilable = false },
				{ Name = "widgetSizeSetting", Type = "number", Nilable = false },
				{ Name = "textureKit", Type = "string", Nilable = false },
				{ Name = "frameTextureKit", Type = "string", Nilable = false },
				{ Name = "hasTimer", Type = "bool", Nilable = false },
				{ Name = "orderIndex", Type = "number", Nilable = false },
				{ Name = "widgetTag", Type = "string", Nilable = false },
				{ Name = "inAnimType", Type = "WidgetAnimationType", Nilable = false },
				{ Name = "outAnimType", Type = "WidgetAnimationType", Nilable = false },
				{ Name = "widgetScale", Type = "UIWidgetScale", Nilable = false },
				{ Name = "layoutDirection", Type = "UIWidgetLayoutDirection", Nilable = false },
			},
		},
		{
			Name = "HorizontalCurrenciesWidgetVisualizationInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "shownState", Type = "WidgetShownState", Nilable = false },
				{ Name = "currencies", Type = "table", InnerType = "UIWidgetCurrencyInfo", Nilable = false },
				{ Name = "widgetSizeSetting", Type = "number", Nilable = false },
				{ Name = "textureKit", Type = "string", Nilable = false },
				{ Name = "frameTextureKit", Type = "string", Nilable = false },
				{ Name = "hasTimer", Type = "bool", Nilable = false },
				{ Name = "orderIndex", Type = "number", Nilable = false },
				{ Name = "widgetTag", Type = "string", Nilable = false },
				{ Name = "inAnimType", Type = "WidgetAnimationType", Nilable = false },
				{ Name = "outAnimType", Type = "WidgetAnimationType", Nilable = false },
				{ Name = "widgetScale", Type = "UIWidgetScale", Nilable = false },
				{ Name = "layoutDirection", Type = "UIWidgetLayoutDirection", Nilable = false },
			},
		},
		{
			Name = "IconAndTextWidgetVisualizationInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "state", Type = "IconAndTextWidgetState", Nilable = false },
				{ Name = "text", Type = "string", Nilable = false },
				{ Name = "tooltip", Type = "string", Nilable = false },
				{ Name = "dynamicTooltip", Type = "string", Nilable = false },
				{ Name = "widgetSizeSetting", Type = "number", Nilable = false },
				{ Name = "textureKit", Type = "string", Nilable = false },
				{ Name = "frameTextureKit", Type = "string", Nilable = false },
				{ Name = "hasTimer", Type = "bool", Nilable = false },
				{ Name = "orderIndex", Type = "number", Nilable = false },
				{ Name = "widgetTag", Type = "string", Nilable = false },
				{ Name = "inAnimType", Type = "WidgetAnimationType", Nilable = false },
				{ Name = "outAnimType", Type = "WidgetAnimationType", Nilable = false },
				{ Name = "widgetScale", Type = "UIWidgetScale", Nilable = false },
				{ Name = "layoutDirection", Type = "UIWidgetLayoutDirection", Nilable = false },
			},
		},
		{
			Name = "IconTextAndBackgroundWidgetVisualizationInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "shownState", Type = "WidgetShownState", Nilable = false },
				{ Name = "text", Type = "string", Nilable = false },
				{ Name = "widgetSizeSetting", Type = "number", Nilable = false },
				{ Name = "textureKit", Type = "string", Nilable = false },
				{ Name = "frameTextureKit", Type = "string", Nilable = false },
				{ Name = "hasTimer", Type = "bool", Nilable = false },
				{ Name = "orderIndex", Type = "number", Nilable = false },
				{ Name = "widgetTag", Type = "string", Nilable = false },
				{ Name = "inAnimType", Type = "WidgetAnimationType", Nilable = false },
				{ Name = "outAnimType", Type = "WidgetAnimationType", Nilable = false },
				{ Name = "widgetScale", Type = "UIWidgetScale", Nilable = false },
				{ Name = "layoutDirection", Type = "UIWidgetLayoutDirection", Nilable = false },
			},
		},
		{
			Name = "IconTextAndCurrenciesWidgetVisualizationInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "shownState", Type = "WidgetShownState", Nilable = false },
				{ Name = "enabledState", Type = "WidgetEnabledState", Nilable = false },
				{ Name = "descriptionShownState", Type = "WidgetShownState", Nilable = false },
				{ Name = "descriptionEnabledState", Type = "WidgetEnabledState", Nilable = false },
				{ Name = "text", Type = "string", Nilable = false },
				{ Name = "description", Type = "string", Nilable = false },
				{ Name = "currencies", Type = "table", InnerType = "UIWidgetCurrencyInfo", Nilable = false },
				{ Name = "widgetSizeSetting", Type = "number", Nilable = false },
				{ Name = "textureKit", Type = "string", Nilable = false },
				{ Name = "frameTextureKit", Type = "string", Nilable = false },
				{ Name = "hasTimer", Type = "bool", Nilable = false },
				{ Name = "orderIndex", Type = "number", Nilable = false },
				{ Name = "widgetTag", Type = "string", Nilable = false },
				{ Name = "inAnimType", Type = "WidgetAnimationType", Nilable = false },
				{ Name = "outAnimType", Type = "WidgetAnimationType", Nilable = false },
				{ Name = "widgetScale", Type = "UIWidgetScale", Nilable = false },
				{ Name = "layoutDirection", Type = "UIWidgetLayoutDirection", Nilable = false },
			},
		},
		{
			Name = "ScenarioHeaderCurrenciesAndBackgroundWidgetVisualizationInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "shownState", Type = "WidgetShownState", Nilable = false },
				{ Name = "currencies", Type = "table", InnerType = "UIWidgetCurrencyInfo", Nilable = false },
				{ Name = "headerText", Type = "string", Nilable = false },
				{ Name = "widgetSizeSetting", Type = "number", Nilable = false },
				{ Name = "textureKit", Type = "string", Nilable = false },
				{ Name = "frameTextureKit", Type = "string", Nilable = false },
				{ Name = "hasTimer", Type = "bool", Nilable = false },
				{ Name = "orderIndex", Type = "number", Nilable = false },
				{ Name = "widgetTag", Type = "string", Nilable = false },
				{ Name = "inAnimType", Type = "WidgetAnimationType", Nilable = false },
				{ Name = "outAnimType", Type = "WidgetAnimationType", Nilable = false },
				{ Name = "widgetScale", Type = "UIWidgetScale", Nilable = false },
				{ Name = "layoutDirection", Type = "UIWidgetLayoutDirection", Nilable = false },
			},
		},
		{
			Name = "ScenarioHeaderTimerWidgetVisualizationInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "shownState", Type = "WidgetShownState", Nilable = false },
				{ Name = "timerMin", Type = "number", Nilable = false },
				{ Name = "timerMax", Type = "number", Nilable = false },
				{ Name = "timerValue", Type = "number", Nilable = false },
				{ Name = "headerText", Type = "string", Nilable = false },
				{ Name = "timerTooltip", Type = "string", Nilable = false },
				{ Name = "widgetSizeSetting", Type = "number", Nilable = false },
				{ Name = "textureKit", Type = "string", Nilable = false },
				{ Name = "frameTextureKit", Type = "string", Nilable = false },
				{ Name = "hasTimer", Type = "bool", Nilable = false },
				{ Name = "orderIndex", Type = "number", Nilable = false },
				{ Name = "widgetTag", Type = "string", Nilable = false },
				{ Name = "inAnimType", Type = "WidgetAnimationType", Nilable = false },
				{ Name = "outAnimType", Type = "WidgetAnimationType", Nilable = false },
				{ Name = "widgetScale", Type = "UIWidgetScale", Nilable = false },
				{ Name = "layoutDirection", Type = "UIWidgetLayoutDirection", Nilable = false },
			},
		},
		{
			Name = "SpellDisplayVisualizationInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "shownState", Type = "WidgetShownState", Nilable = false },
				{ Name = "enabledState", Type = "WidgetEnabledState", Nilable = false },
				{ Name = "spellInfo", Type = "UIWidgetSpellInfo", Nilable = false },
				{ Name = "widgetSizeSetting", Type = "number", Nilable = false },
				{ Name = "textureKit", Type = "string", Nilable = false },
				{ Name = "frameTextureKit", Type = "string", Nilable = false },
				{ Name = "hasTimer", Type = "bool", Nilable = false },
				{ Name = "orderIndex", Type = "number", Nilable = false },
				{ Name = "widgetTag", Type = "string", Nilable = false },
				{ Name = "inAnimType", Type = "WidgetAnimationType", Nilable = false },
				{ Name = "outAnimType", Type = "WidgetAnimationType", Nilable = false },
				{ Name = "widgetScale", Type = "UIWidgetScale", Nilable = false },
				{ Name = "layoutDirection", Type = "UIWidgetLayoutDirection", Nilable = false },
			},
		},
		{
			Name = "StackedResourceTrackerWidgetVisualizationInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "shownState", Type = "WidgetShownState", Nilable = false },
				{ Name = "resources", Type = "table", InnerType = "UIWidgetCurrencyInfo", Nilable = false },
				{ Name = "widgetSizeSetting", Type = "number", Nilable = false },
				{ Name = "textureKit", Type = "string", Nilable = false },
				{ Name = "frameTextureKit", Type = "string", Nilable = false },
				{ Name = "hasTimer", Type = "bool", Nilable = false },
				{ Name = "orderIndex", Type = "number", Nilable = false },
				{ Name = "widgetTag", Type = "string", Nilable = false },
				{ Name = "inAnimType", Type = "WidgetAnimationType", Nilable = false },
				{ Name = "outAnimType", Type = "WidgetAnimationType", Nilable = false },
				{ Name = "widgetScale", Type = "UIWidgetScale", Nilable = false },
				{ Name = "layoutDirection", Type = "UIWidgetLayoutDirection", Nilable = false },
			},
		},
		{
			Name = "StatusBarWidgetVisualizationInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "shownState", Type = "WidgetShownState", Nilable = false },
				{ Name = "barMin", Type = "number", Nilable = false },
				{ Name = "barMax", Type = "number", Nilable = false },
				{ Name = "barValue", Type = "number", Nilable = false },
				{ Name = "text", Type = "string", Nilable = false },
				{ Name = "tooltip", Type = "string", Nilable = false },
				{ Name = "barValueTextType", Type = "StatusBarValueTextType", Nilable = false },
				{ Name = "overrideBarText", Type = "string", Nilable = false },
				{ Name = "overrideBarTextShownType", Type = "StatusBarOverrideBarTextShownType", Nilable = false },
				{ Name = "colorTint", Type = "StatusBarColorTintValue", Nilable = false },
				{ Name = "partitionValues", Type = "table", InnerType = "number", Nilable = false },
				{ Name = "widgetSizeSetting", Type = "number", Nilable = false },
				{ Name = "textureKit", Type = "string", Nilable = false },
				{ Name = "frameTextureKit", Type = "string", Nilable = false },
				{ Name = "hasTimer", Type = "bool", Nilable = false },
				{ Name = "orderIndex", Type = "number", Nilable = false },
				{ Name = "widgetTag", Type = "string", Nilable = false },
				{ Name = "inAnimType", Type = "WidgetAnimationType", Nilable = false },
				{ Name = "outAnimType", Type = "WidgetAnimationType", Nilable = false },
				{ Name = "widgetScale", Type = "UIWidgetScale", Nilable = false },
				{ Name = "layoutDirection", Type = "UIWidgetLayoutDirection", Nilable = false },
			},
		},
		{
			Name = "TextWithStateWidgetVisualizationInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "shownState", Type = "WidgetShownState", Nilable = false },
				{ Name = "enabledState", Type = "WidgetEnabledState", Nilable = false },
				{ Name = "text", Type = "string", Nilable = false },
				{ Name = "tooltip", Type = "string", Nilable = false },
				{ Name = "textSizeType", Type = "UIWidgetTextSizeType", Nilable = false },
				{ Name = "widgetSizeSetting", Type = "number", Nilable = false },
				{ Name = "textureKit", Type = "string", Nilable = false },
				{ Name = "frameTextureKit", Type = "string", Nilable = false },
				{ Name = "hasTimer", Type = "bool", Nilable = false },
				{ Name = "orderIndex", Type = "number", Nilable = false },
				{ Name = "widgetTag", Type = "string", Nilable = false },
				{ Name = "inAnimType", Type = "WidgetAnimationType", Nilable = false },
				{ Name = "outAnimType", Type = "WidgetAnimationType", Nilable = false },
				{ Name = "widgetScale", Type = "UIWidgetScale", Nilable = false },
				{ Name = "layoutDirection", Type = "UIWidgetLayoutDirection", Nilable = false },
			},
		},
		{
			Name = "TextureAndTextEntryInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "text", Type = "string", Nilable = false },
				{ Name = "tooltip", Type = "string", Nilable = false },
			},
		},
		{
			Name = "TextureAndTextRowVisualizationInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "shownState", Type = "WidgetShownState", Nilable = false },
				{ Name = "entries", Type = "table", InnerType = "TextureAndTextEntryInfo", Nilable = false },
				{ Name = "textSizeType", Type = "UIWidgetTextSizeType", Nilable = false },
				{ Name = "widgetSizeSetting", Type = "number", Nilable = false },
				{ Name = "textureKit", Type = "string", Nilable = false },
				{ Name = "frameTextureKit", Type = "string", Nilable = false },
				{ Name = "hasTimer", Type = "bool", Nilable = false },
				{ Name = "orderIndex", Type = "number", Nilable = false },
				{ Name = "widgetTag", Type = "string", Nilable = false },
				{ Name = "inAnimType", Type = "WidgetAnimationType", Nilable = false },
				{ Name = "outAnimType", Type = "WidgetAnimationType", Nilable = false },
				{ Name = "widgetScale", Type = "UIWidgetScale", Nilable = false },
				{ Name = "layoutDirection", Type = "UIWidgetLayoutDirection", Nilable = false },
			},
		},
		{
			Name = "TextureAndTextVisualizationInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "shownState", Type = "WidgetShownState", Nilable = false },
				{ Name = "text", Type = "string", Nilable = false },
				{ Name = "tooltip", Type = "string", Nilable = false },
				{ Name = "widgetSizeSetting", Type = "number", Nilable = false },
				{ Name = "textureKit", Type = "string", Nilable = false },
				{ Name = "frameTextureKit", Type = "string", Nilable = false },
				{ Name = "hasTimer", Type = "bool", Nilable = false },
				{ Name = "orderIndex", Type = "number", Nilable = false },
				{ Name = "widgetTag", Type = "string", Nilable = false },
				{ Name = "inAnimType", Type = "WidgetAnimationType", Nilable = false },
				{ Name = "outAnimType", Type = "WidgetAnimationType", Nilable = false },
				{ Name = "widgetScale", Type = "UIWidgetScale", Nilable = false },
				{ Name = "layoutDirection", Type = "UIWidgetLayoutDirection", Nilable = false },
			},
		},
		{
			Name = "TextureWithAnimationVisualizationInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "shownState", Type = "WidgetShownState", Nilable = false },
				{ Name = "tooltip", Type = "string", Nilable = false },
				{ Name = "widgetSizeSetting", Type = "number", Nilable = false },
				{ Name = "textureKit", Type = "string", Nilable = false },
				{ Name = "frameTextureKit", Type = "string", Nilable = false },
				{ Name = "hasTimer", Type = "bool", Nilable = false },
				{ Name = "orderIndex", Type = "number", Nilable = false },
				{ Name = "widgetTag", Type = "string", Nilable = false },
				{ Name = "inAnimType", Type = "WidgetAnimationType", Nilable = false },
				{ Name = "outAnimType", Type = "WidgetAnimationType", Nilable = false },
				{ Name = "widgetScale", Type = "UIWidgetScale", Nilable = false },
				{ Name = "layoutDirection", Type = "UIWidgetLayoutDirection", Nilable = false },
			},
		},
		{
			Name = "UIWidgetCurrencyInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "iconFileID", Type = "number", Nilable = false },
				{ Name = "leadingText", Type = "string", Nilable = false },
				{ Name = "text", Type = "string", Nilable = false },
				{ Name = "tooltip", Type = "string", Nilable = false },
				{ Name = "isCurrencyMaxed", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "UIWidgetInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "widgetID", Type = "number", Nilable = false },
				{ Name = "widgetSetID", Type = "number", Nilable = false },
				{ Name = "widgetType", Type = "UIWidgetVisualizationType", Nilable = false },
				{ Name = "unitToken", Type = "string", Nilable = true },
			},
		},
		{
			Name = "UIWidgetSpellInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "spellID", Type = "number", Nilable = false },
				{ Name = "tooltip", Type = "string", Nilable = false },
				{ Name = "text", Type = "string", Nilable = false },
				{ Name = "stackDisplay", Type = "number", Nilable = false },
				{ Name = "iconSizeType", Type = "SpellDisplayIconSizeType", Nilable = false },
				{ Name = "iconDisplayType", Type = "SpellDisplayIconDisplayType", Nilable = false },
				{ Name = "textShownState", Type = "SpellDisplayTextShownStateType", Nilable = false },
			},
		},
		{
			Name = "UIWidgetStateIconInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "iconState", Type = "IconState", Nilable = false },
				{ Name = "state1Tooltip", Type = "string", Nilable = false },
				{ Name = "state2Tooltip", Type = "string", Nilable = false },
			},
		},
		{
			Name = "ZoneControlVisualizationInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "shownState", Type = "WidgetShownState", Nilable = false },
				{ Name = "mode", Type = "ZoneControlMode", Nilable = false },
				{ Name = "leadingEdgeType", Type = "ZoneControlLeadingEdgeType", Nilable = false },
				{ Name = "dangerFlashType", Type = "ZoneControlDangerFlashType", Nilable = false },
				{ Name = "zoneEntries", Type = "table", InnerType = "ZoneEntry", Nilable = false },
				{ Name = "widgetSizeSetting", Type = "number", Nilable = false },
				{ Name = "textureKit", Type = "string", Nilable = false },
				{ Name = "frameTextureKit", Type = "string", Nilable = false },
				{ Name = "hasTimer", Type = "bool", Nilable = false },
				{ Name = "orderIndex", Type = "number", Nilable = false },
				{ Name = "widgetTag", Type = "string", Nilable = false },
				{ Name = "inAnimType", Type = "WidgetAnimationType", Nilable = false },
				{ Name = "outAnimType", Type = "WidgetAnimationType", Nilable = false },
				{ Name = "widgetScale", Type = "UIWidgetScale", Nilable = false },
				{ Name = "layoutDirection", Type = "UIWidgetLayoutDirection", Nilable = false },
			},
		},
		{
			Name = "ZoneEntry",
			Type = "Structure",
			Fields =
			{
				{ Name = "state", Type = "ZoneControlState", Nilable = false },
				{ Name = "activeState", Type = "ZoneControlActiveState", Nilable = false },
				{ Name = "fillType", Type = "ZoneControlFillType", Nilable = false },
				{ Name = "min", Type = "number", Nilable = false },
				{ Name = "max", Type = "number", Nilable = false },
				{ Name = "current", Type = "number", Nilable = false },
				{ Name = "capturePoint", Type = "number", Nilable = false },
				{ Name = "tooltip", Type = "string", Nilable = false },
			},
		},
	},
};

APIDocumentation:AddDocumentationTable(UIWidgetManager);local Unit =
{
	Name = "Unit",
	Type = "System",

	Functions =
	{
		{
			Name = "GetNegativeCorruptionEffectInfo",
			Type = "Function",

			Returns =
			{
				{ Name = "corruptionEffects", Type = "table", InnerType = "CorruptionEffectInfo", Nilable = false },
			},
		},
		{
			Name = "GetUnitChargedPowerPoints",
			Type = "Function",

			Arguments =
			{
				{ Name = "unit", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "pointIndices", Type = "table", InnerType = "number", Nilable = false },
			},
		},
		{
			Name = "GetUnitPowerBarInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "unitToken", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "info", Type = "UnitPowerBarInfo", Nilable = false },
			},
		},
		{
			Name = "GetUnitPowerBarInfoByID",
			Type = "Function",

			Arguments =
			{
				{ Name = "barID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "info", Type = "UnitPowerBarInfo", Nilable = false },
			},
		},
		{
			Name = "GetUnitPowerBarStrings",
			Type = "Function",

			Arguments =
			{
				{ Name = "unitToken", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "name", Type = "string", Nilable = true },
				{ Name = "tooltip", Type = "string", Nilable = true },
				{ Name = "cost", Type = "string", Nilable = true },
			},
		},
		{
			Name = "GetUnitPowerBarStringsByID",
			Type = "Function",

			Arguments =
			{
				{ Name = "barID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "name", Type = "string", Nilable = true },
				{ Name = "tooltip", Type = "string", Nilable = true },
				{ Name = "cost", Type = "string", Nilable = true },
			},
		},
		{
			Name = "GetUnitPowerBarTextureInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "unitToken", Type = "string", Nilable = false },
				{ Name = "textureIndex", Type = "number", Nilable = false },
				{ Name = "timerIndex", Type = "number", Nilable = true },
			},

			Returns =
			{
				{ Name = "texture", Type = "number", Nilable = false },
				{ Name = "colorR", Type = "number", Nilable = false },
				{ Name = "colorG", Type = "number", Nilable = false },
				{ Name = "colorB", Type = "number", Nilable = false },
				{ Name = "colorA", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetUnitPowerBarTextureInfoByID",
			Type = "Function",

			Arguments =
			{
				{ Name = "barID", Type = "number", Nilable = false },
				{ Name = "textureIndex", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "texture", Type = "number", Nilable = false },
				{ Name = "colorR", Type = "number", Nilable = false },
				{ Name = "colorG", Type = "number", Nilable = false },
				{ Name = "colorB", Type = "number", Nilable = false },
				{ Name = "colorA", Type = "number", Nilable = false },
			},
		},
		{
			Name = "IsUnitModelReadyForUI",
			Type = "Function",

			Arguments =
			{
				{ Name = "unitToken", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "isReady", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "PlayerVehicleHasComboPoints",
			Type = "Function",

			Returns =
			{
				{ Name = "vehicleHasComboPoints", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "SetPortraitTexture",
			Type = "Function",

			Arguments =
			{
				{ Name = "textureObject", Type = "table", Nilable = false },
				{ Name = "unitToken", Type = "string", Nilable = false },
			},
		},
		{
			Name = "SetPortraitTextureFromCreatureDisplayID",
			Type = "Function",

			Arguments =
			{
				{ Name = "textureObject", Type = "table", Nilable = false },
				{ Name = "creatureDisplayID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "UnitAlliedRaceInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "unit", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "isAlliedRace", Type = "bool", Nilable = false },
				{ Name = "hasHeritageArmorUnlocked", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "UnitChromieTimeID",
			Type = "Function",

			Arguments =
			{
				{ Name = "unit", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "ID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "UnitClass",
			Type = "Function",

			Arguments =
			{
				{ Name = "unit", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "className", Type = "string", Nilable = false },
				{ Name = "classFilename", Type = "string", Nilable = false },
				{ Name = "classID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "UnitClassBase",
			Type = "Function",

			Arguments =
			{
				{ Name = "unit", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "classFilename", Type = "string", Nilable = false },
				{ Name = "classID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "UnitInPartyShard",
			Type = "Function",

			Arguments =
			{
				{ Name = "unit", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "inPartyShard", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "UnitIsConnected",
			Type = "Function",

			Arguments =
			{
				{ Name = "unit", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "isConnected", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "UnitIsOwnerOrControllerOfUnit",
			Type = "Function",

			Arguments =
			{
				{ Name = "controllingUnit", Type = "string", Nilable = false },
				{ Name = "controlledUnit", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "unitIsOwnerOrControllerOfUnit", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "UnitNameplateShowsWidgetsOnly",
			Type = "Function",

			Arguments =
			{
				{ Name = "unit", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "nameplateShowsWidgetsOnly", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "UnitPhaseReason",
			Type = "Function",

			Arguments =
			{
				{ Name = "unit", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "reason", Type = "PhaseReason", Nilable = true },
			},
		},
		{
			Name = "UnitPower",
			Type = "Function",

			Arguments =
			{
				{ Name = "unitToken", Type = "string", Nilable = false },
				{ Name = "powerType", Type = "PowerType", Nilable = false, Default = "NumPowerTypes" },
				{ Name = "unmodified", Type = "bool", Nilable = false, Default = false },
			},

			Returns =
			{
				{ Name = "power", Type = "number", Nilable = false },
			},
		},
		{
			Name = "UnitPowerBarID",
			Type = "Function",

			Arguments =
			{
				{ Name = "unitToken", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "barID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "UnitPowerDisplayMod",
			Type = "Function",

			Arguments =
			{
				{ Name = "powerType", Type = "PowerType", Nilable = false },
			},

			Returns =
			{
				{ Name = "displayMod", Type = "number", Nilable = false },
			},
		},
		{
			Name = "UnitPowerMax",
			Type = "Function",

			Arguments =
			{
				{ Name = "unitToken", Type = "string", Nilable = false },
				{ Name = "powerType", Type = "PowerType", Nilable = false, Default = "NumPowerTypes" },
				{ Name = "unmodified", Type = "bool", Nilable = false, Default = false },
			},

			Returns =
			{
				{ Name = "maxPower", Type = "number", Nilable = false },
			},
		},
		{
			Name = "UnitPvpClassification",
			Type = "Function",

			Arguments =
			{
				{ Name = "unit", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "classification", Type = "PvPUnitClassification", Nilable = true },
			},
		},
		{
			Name = "UnitQuestTrivialLevelRange",
			Type = "Function",

			Arguments =
			{
				{ Name = "unit", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "levelRange", Type = "number", Nilable = false },
			},
		},
		{
			Name = "UnitQuestTrivialLevelRangeScaling",
			Type = "Function",

			Arguments =
			{
				{ Name = "unit", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "levelRange", Type = "number", Nilable = false },
			},
		},
		{
			Name = "UnitSex",
			Type = "Function",

			Arguments =
			{
				{ Name = "unit", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "sex", Type = "number", Nilable = true },
			},
		},
		{
			Name = "UnitTreatAsPlayerForDisplay",
			Type = "Function",

			Arguments =
			{
				{ Name = "unit", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "treatAsPlayer", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "UnitWidgetSet",
			Type = "Function",

			Arguments =
			{
				{ Name = "unit", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "uiWidgetSet", Type = "number", Nilable = false },
			},
		},
	},

	Events =
	{
		{
			Name = "ArenaCooldownsUpdate",
			Type = "Event",
			LiteralName = "ARENA_COOLDOWNS_UPDATE",
			Payload =
			{
				{ Name = "unitTarget", Type = "string", Nilable = false },
			},
		},
		{
			Name = "ArenaCrowdControlSpellUpdate",
			Type = "Event",
			LiteralName = "ARENA_CROWD_CONTROL_SPELL_UPDATE",
			Payload =
			{
				{ Name = "unitTarget", Type = "string", Nilable = false },
				{ Name = "spellID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "AutofollowBegin",
			Type = "Event",
			LiteralName = "AUTOFOLLOW_BEGIN",
			Payload =
			{
				{ Name = "name", Type = "string", Nilable = false },
			},
		},
		{
			Name = "AutofollowEnd",
			Type = "Event",
			LiteralName = "AUTOFOLLOW_END",
		},
		{
			Name = "CancelSummon",
			Type = "Event",
			LiteralName = "CANCEL_SUMMON",
		},
		{
			Name = "ConfirmBinder",
			Type = "Event",
			LiteralName = "CONFIRM_BINDER",
			Payload =
			{
				{ Name = "areaName", Type = "string", Nilable = false },
			},
		},
		{
			Name = "ConfirmSummon",
			Type = "Event",
			LiteralName = "CONFIRM_SUMMON",
			Payload =
			{
				{ Name = "summonReason", Type = "number", Nilable = false },
				{ Name = "skippingStartExperience", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "HearthstoneBound",
			Type = "Event",
			LiteralName = "HEARTHSTONE_BOUND",
		},
		{
			Name = "HonorXpUpdate",
			Type = "Event",
			LiteralName = "HONOR_XP_UPDATE",
			Payload =
			{
				{ Name = "unitTarget", Type = "string", Nilable = false },
			},
		},
		{
			Name = "IncomingResurrectChanged",
			Type = "Event",
			LiteralName = "INCOMING_RESURRECT_CHANGED",
			Payload =
			{
				{ Name = "unitTarget", Type = "string", Nilable = false },
			},
		},
		{
			Name = "IncomingSummonChanged",
			Type = "Event",
			LiteralName = "INCOMING_SUMMON_CHANGED",
			Payload =
			{
				{ Name = "unitTarget", Type = "string", Nilable = false },
			},
		},
		{
			Name = "KnownTitlesUpdate",
			Type = "Event",
			LiteralName = "KNOWN_TITLES_UPDATE",
			Payload =
			{
				{ Name = "unitTarget", Type = "string", Nilable = false },
			},
		},
		{
			Name = "LocalplayerPetRenamed",
			Type = "Event",
			LiteralName = "LOCALPLAYER_PET_RENAMED",
		},
		{
			Name = "MirrorTimerPause",
			Type = "Event",
			LiteralName = "MIRROR_TIMER_PAUSE",
			Payload =
			{
				{ Name = "timerName", Type = "string", Nilable = false },
				{ Name = "paused", Type = "number", Nilable = false },
			},
		},
		{
			Name = "MirrorTimerStart",
			Type = "Event",
			LiteralName = "MIRROR_TIMER_START",
			Payload =
			{
				{ Name = "timerName", Type = "string", Nilable = false },
				{ Name = "value", Type = "number", Nilable = false },
				{ Name = "maxValue", Type = "number", Nilable = false },
				{ Name = "scale", Type = "number", Nilable = false },
				{ Name = "paused", Type = "number", Nilable = false },
				{ Name = "timerLabel", Type = "string", Nilable = false },
			},
		},
		{
			Name = "MirrorTimerStop",
			Type = "Event",
			LiteralName = "MIRROR_TIMER_STOP",
			Payload =
			{
				{ Name = "timerName", Type = "string", Nilable = false },
			},
		},
		{
			Name = "NeutralFactionSelectResult",
			Type = "Event",
			LiteralName = "NEUTRAL_FACTION_SELECT_RESULT",
			Payload =
			{
				{ Name = "success", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ObjectEnteredAOI",
			Type = "Event",
			LiteralName = "OBJECT_ENTERED_AOI",
			Payload =
			{
				{ Name = "guid", Type = "string", Nilable = false },
			},
		},
		{
			Name = "ObjectLeftAOI",
			Type = "Event",
			LiteralName = "OBJECT_LEFT_AOI",
			Payload =
			{
				{ Name = "guid", Type = "string", Nilable = false },
			},
		},
		{
			Name = "PetBarUpdateUsable",
			Type = "Event",
			LiteralName = "PET_BAR_UPDATE_USABLE",
		},
		{
			Name = "PetUiUpdate",
			Type = "Event",
			LiteralName = "PET_UI_UPDATE",
		},
		{
			Name = "PlayerDamageDoneMods",
			Type = "Event",
			LiteralName = "PLAYER_DAMAGE_DONE_MODS",
			Payload =
			{
				{ Name = "unitTarget", Type = "string", Nilable = false },
			},
		},
		{
			Name = "PlayerEnterCombat",
			Type = "Event",
			LiteralName = "PLAYER_ENTER_COMBAT",
		},
		{
			Name = "PlayerFarsightFocusChanged",
			Type = "Event",
			LiteralName = "PLAYER_FARSIGHT_FOCUS_CHANGED",
		},
		{
			Name = "PlayerFlagsChanged",
			Type = "Event",
			LiteralName = "PLAYER_FLAGS_CHANGED",
			Payload =
			{
				{ Name = "unitTarget", Type = "string", Nilable = false },
			},
		},
		{
			Name = "PlayerFocusChanged",
			Type = "Event",
			LiteralName = "PLAYER_FOCUS_CHANGED",
		},
		{
			Name = "PlayerLeaveCombat",
			Type = "Event",
			LiteralName = "PLAYER_LEAVE_COMBAT",
		},
		{
			Name = "PlayerLevelChanged",
			Type = "Event",
			LiteralName = "PLAYER_LEVEL_CHANGED",
			Payload =
			{
				{ Name = "oldLevel", Type = "number", Nilable = false },
				{ Name = "newLevel", Type = "number", Nilable = false },
			},
		},
		{
			Name = "PlayerLevelUp",
			Type = "Event",
			LiteralName = "PLAYER_LEVEL_UP",
			Payload =
			{
				{ Name = "level", Type = "number", Nilable = false },
				{ Name = "healthDelta", Type = "number", Nilable = false },
				{ Name = "powerDelta", Type = "number", Nilable = false },
				{ Name = "numNewTalents", Type = "number", Nilable = false },
				{ Name = "numNewPvpTalentSlots", Type = "number", Nilable = false },
				{ Name = "strengthDelta", Type = "number", Nilable = false },
				{ Name = "agilityDelta", Type = "number", Nilable = false },
				{ Name = "staminaDelta", Type = "number", Nilable = false },
				{ Name = "intellectDelta", Type = "number", Nilable = false },
			},
		},
		{
			Name = "PlayerMountDisplayChanged",
			Type = "Event",
			LiteralName = "PLAYER_MOUNT_DISPLAY_CHANGED",
		},
		{
			Name = "PlayerPvpKillsChanged",
			Type = "Event",
			LiteralName = "PLAYER_PVP_KILLS_CHANGED",
			Payload =
			{
				{ Name = "unitTarget", Type = "string", Nilable = false },
			},
		},
		{
			Name = "PlayerPvpRankChanged",
			Type = "Event",
			LiteralName = "PLAYER_PVP_RANK_CHANGED",
			Payload =
			{
				{ Name = "unitTarget", Type = "string", Nilable = false },
			},
		},
		{
			Name = "PlayerRegenDisabled",
			Type = "Event",
			LiteralName = "PLAYER_REGEN_DISABLED",
		},
		{
			Name = "PlayerRegenEnabled",
			Type = "Event",
			LiteralName = "PLAYER_REGEN_ENABLED",
		},
		{
			Name = "PlayerSpecializationChanged",
			Type = "Event",
			LiteralName = "PLAYER_SPECIALIZATION_CHANGED",
			Payload =
			{
				{ Name = "unitTarget", Type = "string", Nilable = false },
			},
		},
		{
			Name = "PlayerStartedLooking",
			Type = "Event",
			LiteralName = "PLAYER_STARTED_LOOKING",
		},
		{
			Name = "PlayerStartedMoving",
			Type = "Event",
			LiteralName = "PLAYER_STARTED_MOVING",
		},
		{
			Name = "PlayerStartedTurning",
			Type = "Event",
			LiteralName = "PLAYER_STARTED_TURNING",
		},
		{
			Name = "PlayerStoppedLooking",
			Type = "Event",
			LiteralName = "PLAYER_STOPPED_LOOKING",
		},
		{
			Name = "PlayerStoppedMoving",
			Type = "Event",
			LiteralName = "PLAYER_STOPPED_MOVING",
		},
		{
			Name = "PlayerStoppedTurning",
			Type = "Event",
			LiteralName = "PLAYER_STOPPED_TURNING",
		},
		{
			Name = "PlayerTargetChanged",
			Type = "Event",
			LiteralName = "PLAYER_TARGET_CHANGED",
		},
		{
			Name = "PlayerTrialXpUpdate",
			Type = "Event",
			LiteralName = "PLAYER_TRIAL_XP_UPDATE",
			Payload =
			{
				{ Name = "unitTarget", Type = "string", Nilable = false },
			},
		},
		{
			Name = "PlayerUpdateResting",
			Type = "Event",
			LiteralName = "PLAYER_UPDATE_RESTING",
		},
		{
			Name = "PlayerXpUpdate",
			Type = "Event",
			LiteralName = "PLAYER_XP_UPDATE",
			Payload =
			{
				{ Name = "unitTarget", Type = "string", Nilable = false },
			},
		},
		{
			Name = "PortraitsUpdated",
			Type = "Event",
			LiteralName = "PORTRAITS_UPDATED",
		},
		{
			Name = "ProvingGroundsScoreUpdate",
			Type = "Event",
			LiteralName = "PROVING_GROUNDS_SCORE_UPDATE",
			Payload =
			{
				{ Name = "points", Type = "number", Nilable = false },
			},
		},
		{
			Name = "PvpTimerUpdate",
			Type = "Event",
			LiteralName = "PVP_TIMER_UPDATE",
			Payload =
			{
				{ Name = "unitTarget", Type = "string", Nilable = false },
			},
		},
		{
			Name = "RunePowerUpdate",
			Type = "Event",
			LiteralName = "RUNE_POWER_UPDATE",
			Payload =
			{
				{ Name = "runeIndex", Type = "number", Nilable = false },
				{ Name = "added", Type = "bool", Nilable = true },
			},
		},
		{
			Name = "ShowFactionSelectUi",
			Type = "Event",
			LiteralName = "SHOW_FACTION_SELECT_UI",
		},
		{
			Name = "SpellConfirmationPrompt",
			Type = "Event",
			LiteralName = "SPELL_CONFIRMATION_PROMPT",
			Payload =
			{
				{ Name = "spellID", Type = "number", Nilable = false },
				{ Name = "effectValue", Type = "number", Nilable = false },
				{ Name = "message", Type = "string", Nilable = false },
				{ Name = "duration", Type = "number", Nilable = false },
				{ Name = "currencyTypesID", Type = "number", Nilable = false },
				{ Name = "currencyCost", Type = "number", Nilable = false },
				{ Name = "currentDifficulty", Type = "number", Nilable = false },
			},
		},
		{
			Name = "SpellConfirmationTimeout",
			Type = "Event",
			LiteralName = "SPELL_CONFIRMATION_TIMEOUT",
			Payload =
			{
				{ Name = "spellID", Type = "number", Nilable = false },
				{ Name = "effectValue", Type = "number", Nilable = false },
			},
		},
		{
			Name = "UnitAbsorbAmountChanged",
			Type = "Event",
			LiteralName = "UNIT_ABSORB_AMOUNT_CHANGED",
			Payload =
			{
				{ Name = "unitTarget", Type = "string", Nilable = false },
			},
		},
		{
			Name = "UnitAttack",
			Type = "Event",
			LiteralName = "UNIT_ATTACK",
			Payload =
			{
				{ Name = "unitTarget", Type = "string", Nilable = false },
			},
		},
		{
			Name = "UnitAttackPower",
			Type = "Event",
			LiteralName = "UNIT_ATTACK_POWER",
			Payload =
			{
				{ Name = "unitTarget", Type = "string", Nilable = false },
			},
		},
		{
			Name = "UnitAttackSpeed",
			Type = "Event",
			LiteralName = "UNIT_ATTACK_SPEED",
			Payload =
			{
				{ Name = "unitTarget", Type = "string", Nilable = false },
			},
		},
		{
			Name = "UnitAura",
			Type = "Event",
			LiteralName = "UNIT_AURA",
			Payload =
			{
				{ Name = "unitTarget", Type = "string", Nilable = false },
			},
		},
		{
			Name = "UnitCheatToggleEvent",
			Type = "Event",
			LiteralName = "UNIT_CHEAT_TOGGLE_EVENT",
		},
		{
			Name = "UnitClassificationChanged",
			Type = "Event",
			LiteralName = "UNIT_CLASSIFICATION_CHANGED",
			Payload =
			{
				{ Name = "unitTarget", Type = "string", Nilable = false },
			},
		},
		{
			Name = "UnitCombat",
			Type = "Event",
			LiteralName = "UNIT_COMBAT",
			Payload =
			{
				{ Name = "unitTarget", Type = "string", Nilable = false },
				{ Name = "event", Type = "string", Nilable = false },
				{ Name = "flagText", Type = "string", Nilable = false },
				{ Name = "amount", Type = "number", Nilable = false },
				{ Name = "schoolMask", Type = "number", Nilable = false },
			},
		},
		{
			Name = "UnitConnection",
			Type = "Event",
			LiteralName = "UNIT_CONNECTION",
			Payload =
			{
				{ Name = "unitTarget", Type = "string", Nilable = false },
				{ Name = "isConnected", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "UnitDamage",
			Type = "Event",
			LiteralName = "UNIT_DAMAGE",
			Payload =
			{
				{ Name = "unitTarget", Type = "string", Nilable = false },
			},
		},
		{
			Name = "UnitDefense",
			Type = "Event",
			LiteralName = "UNIT_DEFENSE",
			Payload =
			{
				{ Name = "unitTarget", Type = "string", Nilable = false },
			},
		},
		{
			Name = "UnitDisplaypower",
			Type = "Event",
			LiteralName = "UNIT_DISPLAYPOWER",
			Payload =
			{
				{ Name = "unitTarget", Type = "string", Nilable = false },
			},
		},
		{
			Name = "UnitFaction",
			Type = "Event",
			LiteralName = "UNIT_FACTION",
			Payload =
			{
				{ Name = "unitTarget", Type = "string", Nilable = false },
			},
		},
		{
			Name = "UnitFlags",
			Type = "Event",
			LiteralName = "UNIT_FLAGS",
			Payload =
			{
				{ Name = "unitTarget", Type = "string", Nilable = false },
			},
		},
		{
			Name = "UnitHealAbsorbAmountChanged",
			Type = "Event",
			LiteralName = "UNIT_HEAL_ABSORB_AMOUNT_CHANGED",
			Payload =
			{
				{ Name = "unitTarget", Type = "string", Nilable = false },
			},
		},
		{
			Name = "UnitHealPrediction",
			Type = "Event",
			LiteralName = "UNIT_HEAL_PREDICTION",
			Payload =
			{
				{ Name = "unitTarget", Type = "string", Nilable = false },
			},
		},
		{
			Name = "UnitHealth",
			Type = "Event",
			LiteralName = "UNIT_HEALTH",
			Payload =
			{
				{ Name = "unitTarget", Type = "string", Nilable = false },
			},
		},
		{
			Name = "UnitInventoryChanged",
			Type = "Event",
			LiteralName = "UNIT_INVENTORY_CHANGED",
			Payload =
			{
				{ Name = "unitTarget", Type = "string", Nilable = false },
			},
		},
		{
			Name = "UnitLevel",
			Type = "Event",
			LiteralName = "UNIT_LEVEL",
			Payload =
			{
				{ Name = "unitTarget", Type = "string", Nilable = false },
			},
		},
		{
			Name = "UnitMana",
			Type = "Event",
			LiteralName = "UNIT_MANA",
			Payload =
			{
				{ Name = "unitTarget", Type = "string", Nilable = false },
			},
		},
		{
			Name = "UnitMaxhealth",
			Type = "Event",
			LiteralName = "UNIT_MAXHEALTH",
			Payload =
			{
				{ Name = "unitTarget", Type = "string", Nilable = false },
			},
		},
		{
			Name = "UnitMaxpower",
			Type = "Event",
			LiteralName = "UNIT_MAXPOWER",
			Payload =
			{
				{ Name = "unitTarget", Type = "string", Nilable = false },
				{ Name = "powerType", Type = "string", Nilable = false },
			},
		},
		{
			Name = "UnitModelChanged",
			Type = "Event",
			LiteralName = "UNIT_MODEL_CHANGED",
			Payload =
			{
				{ Name = "unitTarget", Type = "string", Nilable = false },
			},
		},
		{
			Name = "UnitNameUpdate",
			Type = "Event",
			LiteralName = "UNIT_NAME_UPDATE",
			Payload =
			{
				{ Name = "unitTarget", Type = "string", Nilable = false },
			},
		},
		{
			Name = "UnitOtherPartyChanged",
			Type = "Event",
			LiteralName = "UNIT_OTHER_PARTY_CHANGED",
			Payload =
			{
				{ Name = "unitTarget", Type = "string", Nilable = false },
			},
		},
		{
			Name = "UnitPet",
			Type = "Event",
			LiteralName = "UNIT_PET",
			Payload =
			{
				{ Name = "unitTarget", Type = "string", Nilable = false },
			},
		},
		{
			Name = "UnitPetExperience",
			Type = "Event",
			LiteralName = "UNIT_PET_EXPERIENCE",
			Payload =
			{
				{ Name = "unitTarget", Type = "string", Nilable = false },
			},
		},
		{
			Name = "UnitPhase",
			Type = "Event",
			LiteralName = "UNIT_PHASE",
			Payload =
			{
				{ Name = "unitTarget", Type = "string", Nilable = false },
			},
		},
		{
			Name = "UnitPortraitUpdate",
			Type = "Event",
			LiteralName = "UNIT_PORTRAIT_UPDATE",
			Payload =
			{
				{ Name = "unitTarget", Type = "string", Nilable = false },
			},
		},
		{
			Name = "UnitPowerBarHide",
			Type = "Event",
			LiteralName = "UNIT_POWER_BAR_HIDE",
			Payload =
			{
				{ Name = "unitTarget", Type = "string", Nilable = false },
			},
		},
		{
			Name = "UnitPowerBarShow",
			Type = "Event",
			LiteralName = "UNIT_POWER_BAR_SHOW",
			Payload =
			{
				{ Name = "unitTarget", Type = "string", Nilable = false },
			},
		},
		{
			Name = "UnitPowerBarTimerUpdate",
			Type = "Event",
			LiteralName = "UNIT_POWER_BAR_TIMER_UPDATE",
			Payload =
			{
				{ Name = "unitTarget", Type = "string", Nilable = false },
			},
		},
		{
			Name = "UnitPowerFrequent",
			Type = "Event",
			LiteralName = "UNIT_POWER_FREQUENT",
			Payload =
			{
				{ Name = "unitTarget", Type = "string", Nilable = false },
				{ Name = "powerType", Type = "string", Nilable = false },
			},
		},
		{
			Name = "UnitPowerPointCharge",
			Type = "Event",
			LiteralName = "UNIT_POWER_POINT_CHARGE",
			Payload =
			{
				{ Name = "unitTarget", Type = "string", Nilable = false },
			},
		},
		{
			Name = "UnitPowerUpdate",
			Type = "Event",
			LiteralName = "UNIT_POWER_UPDATE",
			Payload =
			{
				{ Name = "unitTarget", Type = "string", Nilable = false },
				{ Name = "powerType", Type = "string", Nilable = false },
			},
		},
		{
			Name = "UnitQuestLogChanged",
			Type = "Event",
			LiteralName = "UNIT_QUEST_LOG_CHANGED",
			Payload =
			{
				{ Name = "unitTarget", Type = "string", Nilable = false },
			},
		},
		{
			Name = "UnitRangedAttackPower",
			Type = "Event",
			LiteralName = "UNIT_RANGED_ATTACK_POWER",
			Payload =
			{
				{ Name = "unitTarget", Type = "string", Nilable = false },
			},
		},
		{
			Name = "UnitRangeddamage",
			Type = "Event",
			LiteralName = "UNIT_RANGEDDAMAGE",
			Payload =
			{
				{ Name = "unitTarget", Type = "string", Nilable = false },
			},
		},
		{
			Name = "UnitResistances",
			Type = "Event",
			LiteralName = "UNIT_RESISTANCES",
			Payload =
			{
				{ Name = "unitTarget", Type = "string", Nilable = false },
			},
		},
		{
			Name = "UnitSpellHaste",
			Type = "Event",
			LiteralName = "UNIT_SPELL_HASTE",
			Payload =
			{
				{ Name = "unitTarget", Type = "string", Nilable = false },
			},
		},
		{
			Name = "UnitSpellcastChannelStart",
			Type = "Event",
			LiteralName = "UNIT_SPELLCAST_CHANNEL_START",
			Payload =
			{
				{ Name = "unitTarget", Type = "string", Nilable = false },
				{ Name = "castGUID", Type = "string", Nilable = false },
				{ Name = "spellID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "UnitSpellcastChannelStop",
			Type = "Event",
			LiteralName = "UNIT_SPELLCAST_CHANNEL_STOP",
			Payload =
			{
				{ Name = "unitTarget", Type = "string", Nilable = false },
				{ Name = "castGUID", Type = "string", Nilable = false },
				{ Name = "spellID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "UnitSpellcastChannelUpdate",
			Type = "Event",
			LiteralName = "UNIT_SPELLCAST_CHANNEL_UPDATE",
			Payload =
			{
				{ Name = "unitTarget", Type = "string", Nilable = false },
				{ Name = "castGUID", Type = "string", Nilable = false },
				{ Name = "spellID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "UnitSpellcastDelayed",
			Type = "Event",
			LiteralName = "UNIT_SPELLCAST_DELAYED",
			Payload =
			{
				{ Name = "unitTarget", Type = "string", Nilable = false },
				{ Name = "castGUID", Type = "string", Nilable = false },
				{ Name = "spellID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "UnitSpellcastFailed",
			Type = "Event",
			LiteralName = "UNIT_SPELLCAST_FAILED",
			Payload =
			{
				{ Name = "unitTarget", Type = "string", Nilable = false },
				{ Name = "castGUID", Type = "string", Nilable = false },
				{ Name = "spellID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "UnitSpellcastFailedQuiet",
			Type = "Event",
			LiteralName = "UNIT_SPELLCAST_FAILED_QUIET",
			Payload =
			{
				{ Name = "unitTarget", Type = "string", Nilable = false },
				{ Name = "castGUID", Type = "string", Nilable = false },
				{ Name = "spellID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "UnitSpellcastInterrupted",
			Type = "Event",
			LiteralName = "UNIT_SPELLCAST_INTERRUPTED",
			Payload =
			{
				{ Name = "unitTarget", Type = "string", Nilable = false },
				{ Name = "castGUID", Type = "string", Nilable = false },
				{ Name = "spellID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "UnitSpellcastInterruptible",
			Type = "Event",
			LiteralName = "UNIT_SPELLCAST_INTERRUPTIBLE",
			Payload =
			{
				{ Name = "unitTarget", Type = "string", Nilable = false },
			},
		},
		{
			Name = "UnitSpellcastNotInterruptible",
			Type = "Event",
			LiteralName = "UNIT_SPELLCAST_NOT_INTERRUPTIBLE",
			Payload =
			{
				{ Name = "unitTarget", Type = "string", Nilable = false },
			},
		},
		{
			Name = "UnitSpellcastStart",
			Type = "Event",
			LiteralName = "UNIT_SPELLCAST_START",
			Payload =
			{
				{ Name = "unitTarget", Type = "string", Nilable = false },
				{ Name = "castGUID", Type = "string", Nilable = false },
				{ Name = "spellID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "UnitSpellcastStop",
			Type = "Event",
			LiteralName = "UNIT_SPELLCAST_STOP",
			Payload =
			{
				{ Name = "unitTarget", Type = "string", Nilable = false },
				{ Name = "castGUID", Type = "string", Nilable = false },
				{ Name = "spellID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "UnitSpellcastSucceeded",
			Type = "Event",
			LiteralName = "UNIT_SPELLCAST_SUCCEEDED",
			Payload =
			{
				{ Name = "unitTarget", Type = "string", Nilable = false },
				{ Name = "castGUID", Type = "string", Nilable = false },
				{ Name = "spellID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "UnitStats",
			Type = "Event",
			LiteralName = "UNIT_STATS",
			Payload =
			{
				{ Name = "unitTarget", Type = "string", Nilable = false },
			},
		},
		{
			Name = "UnitTarget",
			Type = "Event",
			LiteralName = "UNIT_TARGET",
			Payload =
			{
				{ Name = "unitTarget", Type = "string", Nilable = false },
			},
		},
		{
			Name = "UnitTargetableChanged",
			Type = "Event",
			LiteralName = "UNIT_TARGETABLE_CHANGED",
			Payload =
			{
				{ Name = "unitTarget", Type = "string", Nilable = false },
			},
		},
		{
			Name = "UnitThreatListUpdate",
			Type = "Event",
			LiteralName = "UNIT_THREAT_LIST_UPDATE",
			Payload =
			{
				{ Name = "unitTarget", Type = "string", Nilable = false },
			},
		},
		{
			Name = "UnitThreatSituationUpdate",
			Type = "Event",
			LiteralName = "UNIT_THREAT_SITUATION_UPDATE",
			Payload =
			{
				{ Name = "unitTarget", Type = "string", Nilable = false },
			},
		},
		{
			Name = "UpdateExhaustion",
			Type = "Event",
			LiteralName = "UPDATE_EXHAUSTION",
		},
		{
			Name = "UpdateMouseoverUnit",
			Type = "Event",
			LiteralName = "UPDATE_MOUSEOVER_UNIT",
		},
		{
			Name = "UpdateStealth",
			Type = "Event",
			LiteralName = "UPDATE_STEALTH",
		},
		{
			Name = "VehicleAngleUpdate",
			Type = "Event",
			LiteralName = "VEHICLE_ANGLE_UPDATE",
			Payload =
			{
				{ Name = "normalizedPitch", Type = "number", Nilable = false },
				{ Name = "radians", Type = "number", Nilable = false },
			},
		},
	},

	Tables =
	{
		{
			Name = "PhaseReason",
			Type = "Enumeration",
			NumValues = 4,
			MinValue = 0,
			MaxValue = 3,
			Fields =
			{
				{ Name = "Phasing", Type = "PhaseReason", EnumValue = 0 },
				{ Name = "Sharding", Type = "PhaseReason", EnumValue = 1 },
				{ Name = "WarMode", Type = "PhaseReason", EnumValue = 2 },
				{ Name = "ChromieTime", Type = "PhaseReason", EnumValue = 3 },
			},
		},
		{
			Name = "PowerType",
			Type = "Enumeration",
			NumValues = 22,
			MinValue = -2,
			MaxValue = 19,
			Fields =
			{
				{ Name = "HealthCost", Type = "PowerType", EnumValue = -2 },
				{ Name = "None", Type = "PowerType", EnumValue = -1 },
				{ Name = "Mana", Type = "PowerType", EnumValue = 0 },
				{ Name = "Rage", Type = "PowerType", EnumValue = 1 },
				{ Name = "Focus", Type = "PowerType", EnumValue = 2 },
				{ Name = "Energy", Type = "PowerType", EnumValue = 3 },
				{ Name = "ComboPoints", Type = "PowerType", EnumValue = 4 },
				{ Name = "Runes", Type = "PowerType", EnumValue = 5 },
				{ Name = "RunicPower", Type = "PowerType", EnumValue = 6 },
				{ Name = "SoulShards", Type = "PowerType", EnumValue = 7 },
				{ Name = "LunarPower", Type = "PowerType", EnumValue = 8 },
				{ Name = "HolyPower", Type = "PowerType", EnumValue = 9 },
				{ Name = "Alternate", Type = "PowerType", EnumValue = 10 },
				{ Name = "Maelstrom", Type = "PowerType", EnumValue = 11 },
				{ Name = "Chi", Type = "PowerType", EnumValue = 12 },
				{ Name = "Insanity", Type = "PowerType", EnumValue = 13 },
				{ Name = "Obsolete", Type = "PowerType", EnumValue = 14 },
				{ Name = "Obsolete2", Type = "PowerType", EnumValue = 15 },
				{ Name = "ArcaneCharges", Type = "PowerType", EnumValue = 16 },
				{ Name = "Fury", Type = "PowerType", EnumValue = 17 },
				{ Name = "Pain", Type = "PowerType", EnumValue = 18 },
				{ Name = "NumPowerTypes", Type = "PowerType", EnumValue = 19 },
			},
		},
		{
			Name = "PvPUnitClassification",
			Type = "Enumeration",
			NumValues = 11,
			MinValue = 0,
			MaxValue = 10,
			Fields =
			{
				{ Name = "FlagCarrierHorde", Type = "PvPUnitClassification", EnumValue = 0 },
				{ Name = "FlagCarrierAlliance", Type = "PvPUnitClassification", EnumValue = 1 },
				{ Name = "FlagCarrierNeutral", Type = "PvPUnitClassification", EnumValue = 2 },
				{ Name = "CartRunnerHorde", Type = "PvPUnitClassification", EnumValue = 3 },
				{ Name = "CartRunnerAlliance", Type = "PvPUnitClassification", EnumValue = 4 },
				{ Name = "AssassinHorde", Type = "PvPUnitClassification", EnumValue = 5 },
				{ Name = "AssassinAlliance", Type = "PvPUnitClassification", EnumValue = 6 },
				{ Name = "OrbCarrierBlue", Type = "PvPUnitClassification", EnumValue = 7 },
				{ Name = "OrbCarrierGreen", Type = "PvPUnitClassification", EnumValue = 8 },
				{ Name = "OrbCarrierOrange", Type = "PvPUnitClassification", EnumValue = 9 },
				{ Name = "OrbCarrierPurple", Type = "PvPUnitClassification", EnumValue = 10 },
			},
		},
		{
			Name = "CorruptionEffectInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "description", Type = "string", Nilable = false },
				{ Name = "minCorruption", Type = "number", Nilable = false },
			},
		},
		{
			Name = "UnitPowerBarInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "ID", Type = "number", Nilable = false },
				{ Name = "barType", Type = "number", Nilable = false },
				{ Name = "minPower", Type = "number", Nilable = false },
				{ Name = "startInset", Type = "number", Nilable = false },
				{ Name = "endInset", Type = "number", Nilable = false },
				{ Name = "smooth", Type = "bool", Nilable = false },
				{ Name = "hideFromOthers", Type = "bool", Nilable = false },
				{ Name = "showOnRaid", Type = "bool", Nilable = false },
				{ Name = "opaqueSpark", Type = "bool", Nilable = false },
				{ Name = "opaqueFlash", Type = "bool", Nilable = false },
				{ Name = "anchorTop", Type = "bool", Nilable = false },
				{ Name = "forcePercentage", Type = "bool", Nilable = false },
				{ Name = "sparkUnderFrame", Type = "bool", Nilable = false },
				{ Name = "flashAtMinPower", Type = "bool", Nilable = false },
				{ Name = "fractionalCounter", Type = "bool", Nilable = false },
				{ Name = "animateNumbers", Type = "bool", Nilable = false },
			},
		},
	},
};

APIDocumentation:AddDocumentationTable(Unit);local UserFeedback =
{
	Name = "UserFeedback",
	Type = "System",
	Namespace = "C_UserFeedback",

	Functions =
	{
		{
			Name = "SubmitBug",
			Type = "Function",

			Arguments =
			{
				{ Name = "bugInfo", Type = "string", Nilable = false },
				{ Name = "suppressNotification", Type = "bool", Nilable = false, Default = false },
			},

			Returns =
			{
				{ Name = "success", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "SubmitSuggestion",
			Type = "Function",

			Arguments =
			{
				{ Name = "suggestion", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "success", Type = "bool", Nilable = false },
			},
		},
	},

	Events =
	{
	},

	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(UserFeedback);local Vehicle =
{
	Name = "Vehicle",
	Type = "System",
	Namespace = "C_Vehicle",

	Functions =
	{
	},

	Events =
	{
		{
			Name = "PlayerGainsVehicleData",
			Type = "Event",
			LiteralName = "PLAYER_GAINS_VEHICLE_DATA",
			Payload =
			{
				{ Name = "unitTarget", Type = "string", Nilable = false },
				{ Name = "vehicleUIIndicatorID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "PlayerLosesVehicleData",
			Type = "Event",
			LiteralName = "PLAYER_LOSES_VEHICLE_DATA",
			Payload =
			{
				{ Name = "unitTarget", Type = "string", Nilable = false },
			},
		},
		{
			Name = "UnitEnteredVehicle",
			Type = "Event",
			LiteralName = "UNIT_ENTERED_VEHICLE",
			Payload =
			{
				{ Name = "unitTarget", Type = "string", Nilable = false },
				{ Name = "showVehicleFrame", Type = "bool", Nilable = false },
				{ Name = "isControlSeat", Type = "bool", Nilable = false },
				{ Name = "vehicleUIIndicatorID", Type = "number", Nilable = false },
				{ Name = "vehicleGUID", Type = "string", Nilable = false },
				{ Name = "mayChooseExit", Type = "bool", Nilable = false },
				{ Name = "hasPitch", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "UnitEnteringVehicle",
			Type = "Event",
			LiteralName = "UNIT_ENTERING_VEHICLE",
			Payload =
			{
				{ Name = "unitTarget", Type = "string", Nilable = false },
				{ Name = "showVehicleFrame", Type = "bool", Nilable = false },
				{ Name = "isControlSeat", Type = "bool", Nilable = false },
				{ Name = "vehicleUIIndicatorID", Type = "number", Nilable = false },
				{ Name = "vehicleGUID", Type = "string", Nilable = false },
				{ Name = "mayChooseExit", Type = "bool", Nilable = false },
				{ Name = "hasPitch", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "UnitExitedVehicle",
			Type = "Event",
			LiteralName = "UNIT_EXITED_VEHICLE",
			Payload =
			{
				{ Name = "unitTarget", Type = "string", Nilable = false },
			},
		},
		{
			Name = "UnitExitingVehicle",
			Type = "Event",
			LiteralName = "UNIT_EXITING_VEHICLE",
			Payload =
			{
				{ Name = "unitTarget", Type = "string", Nilable = false },
			},
		},
		{
			Name = "VehicleAngleShow",
			Type = "Event",
			LiteralName = "VEHICLE_ANGLE_SHOW",
			Payload =
			{
				{ Name = "shouldShow", Type = "number", Nilable = true },
			},
		},
		{
			Name = "VehiclePassengersChanged",
			Type = "Event",
			LiteralName = "VEHICLE_PASSENGERS_CHANGED",
		},
		{
			Name = "VehiclePowerShow",
			Type = "Event",
			LiteralName = "VEHICLE_POWER_SHOW",
			Payload =
			{
				{ Name = "shouldShow", Type = "number", Nilable = true },
			},
		},
		{
			Name = "VehicleUpdate",
			Type = "Event",
			LiteralName = "VEHICLE_UPDATE",
		},
	},

	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(Vehicle);local Video =
{
	Name = "Video",
	Type = "System",
	Namespace = "C_VideoOptions",

	Functions =
	{
		{
			Name = "GetGxAdapterInfo",
			Type = "Function",

			Returns =
			{
				{ Name = "adapters", Type = "table", InnerType = "GxAdapterInfoDetails", Nilable = false },
			},
		},
	},

	Events =
	{
		{
			Name = "DisplaySizeChanged",
			Type = "Event",
			LiteralName = "DISPLAY_SIZE_CHANGED",
		},
		{
			Name = "GlueScreenshotFailed",
			Type = "Event",
			LiteralName = "GLUE_SCREENSHOT_FAILED",
		},
		{
			Name = "GxRestarted",
			Type = "Event",
			LiteralName = "GX_RESTARTED",
		},
		{
			Name = "ScreenshotFailed",
			Type = "Event",
			LiteralName = "SCREENSHOT_FAILED",
		},
		{
			Name = "ScreenshotStarted",
			Type = "Event",
			LiteralName = "SCREENSHOT_STARTED",
		},
		{
			Name = "ScreenshotSucceeded",
			Type = "Event",
			LiteralName = "SCREENSHOT_SUCCEEDED",
		},
	},

	Tables =
	{
		{
			Name = "GxAdapterInfoDetails",
			Type = "Structure",
			Fields =
			{
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "isLowPower", Type = "bool", Nilable = false },
				{ Name = "isExternal", Type = "bool", Nilable = false },
			},
		},
	},
};

APIDocumentation:AddDocumentationTable(Video);local VignetteInfo =
{
	Name = "Vignette",
	Type = "System",
	Namespace = "C_VignetteInfo",

	Functions =
	{
		{
			Name = "FindBestUniqueVignette",
			Type = "Function",

			Arguments =
			{
				{ Name = "vignetteGUIDs", Type = "table", InnerType = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "bestUniqueVignetteIndex", Type = "number", Nilable = true },
			},
		},
		{
			Name = "GetVignetteInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "vignetteGUID", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "vignetteInfo", Type = "VignetteInfo", Nilable = true },
			},
		},
		{
			Name = "GetVignettePosition",
			Type = "Function",

			Arguments =
			{
				{ Name = "vignetteGUID", Type = "string", Nilable = false },
				{ Name = "uiMapID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "vignettePosition", Type = "table", Mixin = "Vector2DMixin", Nilable = true },
			},
		},
		{
			Name = "GetVignettes",
			Type = "Function",

			Returns =
			{
				{ Name = "vignetteGUIDs", Type = "table", InnerType = "string", Nilable = false },
			},
		},
	},

	Events =
	{
		{
			Name = "VignetteMinimapUpdated",
			Type = "Event",
			LiteralName = "VIGNETTE_MINIMAP_UPDATED",
			Payload =
			{
				{ Name = "vignetteGUID", Type = "string", Nilable = false },
				{ Name = "onMinimap", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "VignettesUpdated",
			Type = "Event",
			LiteralName = "VIGNETTES_UPDATED",
		},
	},

	Tables =
	{
		{
			Name = "VignetteType",
			Type = "Enumeration",
			NumValues = 2,
			MinValue = 0,
			MaxValue = 1,
			Fields =
			{
				{ Name = "Normal", Type = "VignetteType", EnumValue = 0 },
				{ Name = "PvPBounty", Type = "VignetteType", EnumValue = 1 },
			},
		},
		{
			Name = "VignetteInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "vignetteGUID", Type = "string", Nilable = false },
				{ Name = "objectGUID", Type = "string", Nilable = false },
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "isDead", Type = "bool", Nilable = false },
				{ Name = "onWorldMap", Type = "bool", Nilable = false },
				{ Name = "onMinimap", Type = "bool", Nilable = false },
				{ Name = "isUnique", Type = "bool", Nilable = false },
				{ Name = "inFogOfWar", Type = "bool", Nilable = false },
				{ Name = "atlasName", Type = "string", Nilable = false },
				{ Name = "hasTooltip", Type = "bool", Nilable = false },
				{ Name = "vignetteID", Type = "number", Nilable = false },
				{ Name = "type", Type = "VignetteType", Nilable = false },
				{ Name = "rewardQuestID", Type = "number", Nilable = false },
				{ Name = "widgetSetID", Type = "number", Nilable = true },
			},
		},
	},
};

APIDocumentation:AddDocumentationTable(VignetteInfo);local VoiceChat =
{
	Name = "VoiceChat",
	Type = "System",
	Namespace = "C_VoiceChat",

	Functions =
	{
		{
			Name = "ActivateChannel",
			Type = "Function",

			Arguments =
			{
				{ Name = "channelID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "BeginLocalCapture",
			Type = "Function",

			Arguments =
			{
				{ Name = "listenToLocalUser", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "CanPlayerUseVoiceChat",
			Type = "Function",

			Returns =
			{
				{ Name = "canUseVoiceChat", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "CreateChannel",
			Type = "Function",

			Arguments =
			{
				{ Name = "channelDisplayName", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "status", Type = "VoiceChatStatusCode", Nilable = false },
			},
		},
		{
			Name = "DeactivateChannel",
			Type = "Function",

			Arguments =
			{
				{ Name = "channelID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "EndLocalCapture",
			Type = "Function",
		},
		{
			Name = "GetActiveChannelID",
			Type = "Function",

			Returns =
			{
				{ Name = "channelID", Type = "number", Nilable = true },
			},
		},
		{
			Name = "GetActiveChannelType",
			Type = "Function",

			Returns =
			{
				{ Name = "channelType", Type = "ChatChannelType", Nilable = true },
			},
		},
		{
			Name = "GetAvailableInputDevices",
			Type = "Function",

			Returns =
			{
				{ Name = "inputDevices", Type = "table", InnerType = "VoiceAudioDevice", Nilable = true },
			},
		},
		{
			Name = "GetAvailableOutputDevices",
			Type = "Function",

			Returns =
			{
				{ Name = "outputDevices", Type = "table", InnerType = "VoiceAudioDevice", Nilable = true },
			},
		},
		{
			Name = "GetChannel",
			Type = "Function",

			Arguments =
			{
				{ Name = "channelID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "channel", Type = "VoiceChatChannel", Nilable = true },
			},
		},
		{
			Name = "GetChannelForChannelType",
			Type = "Function",

			Arguments =
			{
				{ Name = "channelType", Type = "ChatChannelType", Nilable = false },
			},

			Returns =
			{
				{ Name = "channel", Type = "VoiceChatChannel", Nilable = true },
			},
		},
		{
			Name = "GetChannelForCommunityStream",
			Type = "Function",

			Arguments =
			{
				{ Name = "clubId", Type = "string", Nilable = false },
				{ Name = "streamId", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "channel", Type = "VoiceChatChannel", Nilable = true },
			},
		},
		{
			Name = "GetCommunicationMode",
			Type = "Function",

			Returns =
			{
				{ Name = "communicationMode", Type = "CommunicationMode", Nilable = true },
			},
		},
		{
			Name = "GetCurrentVoiceChatConnectionStatusCode",
			Type = "Function",

			Returns =
			{
				{ Name = "statusCode", Type = "VoiceChatStatusCode", Nilable = false },
			},
		},
		{
			Name = "GetInputVolume",
			Type = "Function",

			Returns =
			{
				{ Name = "volume", Type = "number", Nilable = true },
			},
		},
		{
			Name = "GetLocalPlayerActiveChannelMemberInfo",
			Type = "Function",

			Returns =
			{
				{ Name = "memberInfo", Type = "VoiceChatMember", Nilable = true },
			},
		},
		{
			Name = "GetLocalPlayerMemberID",
			Type = "Function",

			Arguments =
			{
				{ Name = "channelID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "memberID", Type = "number", Nilable = true },
			},
		},
		{
			Name = "GetMasterVolumeScale",
			Type = "Function",

			Returns =
			{
				{ Name = "scale", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetMemberGUID",
			Type = "Function",

			Arguments =
			{
				{ Name = "memberID", Type = "number", Nilable = false },
				{ Name = "channelID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "memberGUID", Type = "string", Nilable = false },
			},
		},
		{
			Name = "GetMemberID",
			Type = "Function",

			Arguments =
			{
				{ Name = "channelID", Type = "number", Nilable = false },
				{ Name = "memberGUID", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "memberID", Type = "number", Nilable = true },
			},
		},
		{
			Name = "GetMemberInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "memberID", Type = "number", Nilable = false },
				{ Name = "channelID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "memberInfo", Type = "VoiceChatMember", Nilable = true },
			},
		},
		{
			Name = "GetMemberName",
			Type = "Function",

			Arguments =
			{
				{ Name = "memberID", Type = "number", Nilable = false },
				{ Name = "channelID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "memberName", Type = "string", Nilable = true },
			},
		},
		{
			Name = "GetMemberVolume",
			Type = "Function",

			Arguments =
			{
				{ Name = "playerLocation", Type = "table", Mixin = "PlayerLocationMixin", Nilable = false },
			},

			Returns =
			{
				{ Name = "volume", Type = "number", Nilable = true },
			},
		},
		{
			Name = "GetOutputVolume",
			Type = "Function",

			Returns =
			{
				{ Name = "volume", Type = "number", Nilable = true },
			},
		},
		{
			Name = "GetPTTButtonPressedState",
			Type = "Function",

			Returns =
			{
				{ Name = "isPressed", Type = "bool", Nilable = true },
			},
		},
		{
			Name = "GetProcesses",
			Type = "Function",

			Returns =
			{
				{ Name = "processes", Type = "table", InnerType = "VoiceChatProcess", Nilable = false },
			},
		},
		{
			Name = "GetPushToTalkBinding",
			Type = "Function",

			Returns =
			{
				{ Name = "keys", Type = "table", InnerType = "string", Nilable = true },
			},
		},
		{
			Name = "GetVADSensitivity",
			Type = "Function",

			Returns =
			{
				{ Name = "sensitivity", Type = "number", Nilable = true },
			},
		},
		{
			Name = "IsChannelJoinPending",
			Type = "Function",

			Arguments =
			{
				{ Name = "channelType", Type = "ChatChannelType", Nilable = false },
				{ Name = "clubId", Type = "string", Nilable = true },
				{ Name = "streamId", Type = "string", Nilable = true },
			},

			Returns =
			{
				{ Name = "isPending", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsDeafened",
			Type = "Function",

			Returns =
			{
				{ Name = "isDeafened", Type = "bool", Nilable = true },
			},
		},
		{
			Name = "IsEnabled",
			Type = "Function",

			Returns =
			{
				{ Name = "isEnabled", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsLoggedIn",
			Type = "Function",

			Returns =
			{
				{ Name = "isLoggedIn", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsMemberLocalPlayer",
			Type = "Function",

			Arguments =
			{
				{ Name = "memberID", Type = "number", Nilable = false },
				{ Name = "channelID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "isLocalPlayer", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsMemberMuted",
			Type = "Function",

			Arguments =
			{
				{ Name = "playerLocation", Type = "table", Mixin = "PlayerLocationMixin", Nilable = false },
			},

			Returns =
			{
				{ Name = "mutedForMe", Type = "bool", Nilable = true },
			},
		},
		{
			Name = "IsMemberMutedForAll",
			Type = "Function",

			Arguments =
			{
				{ Name = "memberID", Type = "number", Nilable = false },
				{ Name = "channelID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "mutedForAll", Type = "bool", Nilable = true },
			},
		},
		{
			Name = "IsMemberSilenced",
			Type = "Function",

			Arguments =
			{
				{ Name = "memberID", Type = "number", Nilable = false },
				{ Name = "channelID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "silenced", Type = "bool", Nilable = true },
			},
		},
		{
			Name = "IsMuted",
			Type = "Function",

			Returns =
			{
				{ Name = "isMuted", Type = "bool", Nilable = true },
			},
		},
		{
			Name = "IsParentalDisabled",
			Type = "Function",

			Returns =
			{
				{ Name = "isParentalDisabled", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsParentalMuted",
			Type = "Function",

			Returns =
			{
				{ Name = "isParentalMuted", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsPlayerUsingVoice",
			Type = "Function",

			Arguments =
			{
				{ Name = "playerLocation", Type = "table", Mixin = "PlayerLocationMixin", Nilable = false },
			},

			Returns =
			{
				{ Name = "isUsingVoice", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsSilenced",
			Type = "Function",

			Returns =
			{
				{ Name = "isSilenced", Type = "bool", Nilable = true },
			},
		},
		{
			Name = "LeaveChannel",
			Type = "Function",

			Arguments =
			{
				{ Name = "channelID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "Login",
			Type = "Function",

			Returns =
			{
				{ Name = "status", Type = "VoiceChatStatusCode", Nilable = false },
			},
		},
		{
			Name = "Logout",
			Type = "Function",

			Returns =
			{
				{ Name = "status", Type = "VoiceChatStatusCode", Nilable = false },
			},
		},
		{
			Name = "MarkChannelsDiscovered",
			Type = "Function",
			Documentation = { "Once the UI has enumerated all channels, use this to reset the channel discovery state, it will be updated again if appropriate" },
		},
		{
			Name = "RequestJoinAndActivateCommunityStreamChannel",
			Type = "Function",

			Arguments =
			{
				{ Name = "clubId", Type = "string", Nilable = false },
				{ Name = "streamId", Type = "string", Nilable = false },
			},
		},
		{
			Name = "RequestJoinChannelByChannelType",
			Type = "Function",

			Arguments =
			{
				{ Name = "channelType", Type = "ChatChannelType", Nilable = false },
				{ Name = "autoActivate", Type = "bool", Nilable = true },
			},
		},
		{
			Name = "SetCommunicationMode",
			Type = "Function",

			Arguments =
			{
				{ Name = "communicationMode", Type = "CommunicationMode", Nilable = false },
			},
		},
		{
			Name = "SetDeafened",
			Type = "Function",

			Arguments =
			{
				{ Name = "isDeafened", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "SetInputDevice",
			Type = "Function",

			Arguments =
			{
				{ Name = "deviceID", Type = "string", Nilable = false },
			},
		},
		{
			Name = "SetInputVolume",
			Type = "Function",

			Arguments =
			{
				{ Name = "volume", Type = "number", Nilable = false },
			},
		},
		{
			Name = "SetMasterVolumeScale",
			Type = "Function",

			Arguments =
			{
				{ Name = "scale", Type = "number", Nilable = false },
			},
		},
		{
			Name = "SetMemberMuted",
			Type = "Function",

			Arguments =
			{
				{ Name = "playerLocation", Type = "table", Mixin = "PlayerLocationMixin", Nilable = false },
				{ Name = "muted", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "SetMemberVolume",
			Type = "Function",
			Documentation = { "Adjusts member volume across all channels" },

			Arguments =
			{
				{ Name = "playerLocation", Type = "table", Mixin = "PlayerLocationMixin", Nilable = false },
				{ Name = "volume", Type = "number", Nilable = false },
			},
		},
		{
			Name = "SetMuted",
			Type = "Function",

			Arguments =
			{
				{ Name = "isMuted", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "SetOutputDevice",
			Type = "Function",

			Arguments =
			{
				{ Name = "deviceID", Type = "string", Nilable = false },
			},
		},
		{
			Name = "SetOutputVolume",
			Type = "Function",

			Arguments =
			{
				{ Name = "volume", Type = "number", Nilable = false },
			},
		},
		{
			Name = "SetPortraitTexture",
			Type = "Function",

			Arguments =
			{
				{ Name = "textureObject", Type = "table", Nilable = false },
				{ Name = "memberID", Type = "number", Nilable = false },
				{ Name = "channelID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "SetPushToTalkBinding",
			Type = "Function",

			Arguments =
			{
				{ Name = "keys", Type = "table", InnerType = "string", Nilable = false },
			},
		},
		{
			Name = "SetVADSensitivity",
			Type = "Function",

			Arguments =
			{
				{ Name = "sensitivity", Type = "number", Nilable = false },
			},
		},
		{
			Name = "ShouldDiscoverChannels",
			Type = "Function",
			Documentation = { "Use this while loading to determine if the UI should attempt to rediscover the previously joined/active voice channels" },

			Returns =
			{
				{ Name = "shouldDiscoverChannels", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ToggleDeafened",
			Type = "Function",
		},
		{
			Name = "ToggleMemberMuted",
			Type = "Function",

			Arguments =
			{
				{ Name = "playerLocation", Type = "table", Mixin = "PlayerLocationMixin", Nilable = false },
			},
		},
		{
			Name = "ToggleMuted",
			Type = "Function",
		},
	},

	Events =
	{
		{
			Name = "VoiceChatActiveInputDeviceUpdated",
			Type = "Event",
			LiteralName = "VOICE_CHAT_ACTIVE_INPUT_DEVICE_UPDATED",
		},
		{
			Name = "VoiceChatActiveOutputDeviceUpdated",
			Type = "Event",
			LiteralName = "VOICE_CHAT_ACTIVE_OUTPUT_DEVICE_UPDATED",
		},
		{
			Name = "VoiceChatAudioCaptureEnergy",
			Type = "Event",
			LiteralName = "VOICE_CHAT_AUDIO_CAPTURE_ENERGY",
			Payload =
			{
				{ Name = "isSpeaking", Type = "bool", Nilable = false },
				{ Name = "energy", Type = "number", Nilable = false },
			},
		},
		{
			Name = "VoiceChatAudioCaptureStarted",
			Type = "Event",
			LiteralName = "VOICE_CHAT_AUDIO_CAPTURE_STARTED",
		},
		{
			Name = "VoiceChatAudioCaptureStopped",
			Type = "Event",
			LiteralName = "VOICE_CHAT_AUDIO_CAPTURE_STOPPED",
		},
		{
			Name = "VoiceChatChannelActivated",
			Type = "Event",
			LiteralName = "VOICE_CHAT_CHANNEL_ACTIVATED",
			Payload =
			{
				{ Name = "channelID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "VoiceChatChannelDeactivated",
			Type = "Event",
			LiteralName = "VOICE_CHAT_CHANNEL_DEACTIVATED",
			Payload =
			{
				{ Name = "channelID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "VoiceChatChannelDisplayNameChanged",
			Type = "Event",
			LiteralName = "VOICE_CHAT_CHANNEL_DISPLAY_NAME_CHANGED",
			Payload =
			{
				{ Name = "channelID", Type = "number", Nilable = false },
				{ Name = "channelDisplayName", Type = "string", Nilable = false },
			},
		},
		{
			Name = "VoiceChatChannelJoined",
			Type = "Event",
			LiteralName = "VOICE_CHAT_CHANNEL_JOINED",
			Payload =
			{
				{ Name = "status", Type = "VoiceChatStatusCode", Nilable = false },
				{ Name = "channelID", Type = "number", Nilable = false },
				{ Name = "channelType", Type = "ChatChannelType", Nilable = false },
				{ Name = "clubId", Type = "string", Nilable = true },
				{ Name = "streamId", Type = "string", Nilable = true },
			},
		},
		{
			Name = "VoiceChatChannelMemberActiveStateChanged",
			Type = "Event",
			LiteralName = "VOICE_CHAT_CHANNEL_MEMBER_ACTIVE_STATE_CHANGED",
			Payload =
			{
				{ Name = "memberID", Type = "number", Nilable = false },
				{ Name = "channelID", Type = "number", Nilable = false },
				{ Name = "isActive", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "VoiceChatChannelMemberAdded",
			Type = "Event",
			LiteralName = "VOICE_CHAT_CHANNEL_MEMBER_ADDED",
			Payload =
			{
				{ Name = "memberID", Type = "number", Nilable = false },
				{ Name = "channelID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "VoiceChatChannelMemberEnergyChanged",
			Type = "Event",
			LiteralName = "VOICE_CHAT_CHANNEL_MEMBER_ENERGY_CHANGED",
			Payload =
			{
				{ Name = "memberID", Type = "number", Nilable = false },
				{ Name = "channelID", Type = "number", Nilable = false },
				{ Name = "speakingEnergy", Type = "number", Nilable = false },
			},
		},
		{
			Name = "VoiceChatChannelMemberGuidUpdated",
			Type = "Event",
			LiteralName = "VOICE_CHAT_CHANNEL_MEMBER_GUID_UPDATED",
			Payload =
			{
				{ Name = "memberID", Type = "number", Nilable = false },
				{ Name = "channelID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "VoiceChatChannelMemberMuteForAllChanged",
			Type = "Event",
			LiteralName = "VOICE_CHAT_CHANNEL_MEMBER_MUTE_FOR_ALL_CHANGED",
			Payload =
			{
				{ Name = "memberID", Type = "number", Nilable = false },
				{ Name = "channelID", Type = "number", Nilable = false },
				{ Name = "isMutedForAll", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "VoiceChatChannelMemberMuteForMeChanged",
			Type = "Event",
			LiteralName = "VOICE_CHAT_CHANNEL_MEMBER_MUTE_FOR_ME_CHANGED",
			Payload =
			{
				{ Name = "memberID", Type = "number", Nilable = false },
				{ Name = "channelID", Type = "number", Nilable = false },
				{ Name = "isMutedForMe", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "VoiceChatChannelMemberRemoved",
			Type = "Event",
			LiteralName = "VOICE_CHAT_CHANNEL_MEMBER_REMOVED",
			Payload =
			{
				{ Name = "memberID", Type = "number", Nilable = false },
				{ Name = "channelID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "VoiceChatChannelMemberSilencedChanged",
			Type = "Event",
			LiteralName = "VOICE_CHAT_CHANNEL_MEMBER_SILENCED_CHANGED",
			Payload =
			{
				{ Name = "memberID", Type = "number", Nilable = false },
				{ Name = "channelID", Type = "number", Nilable = false },
				{ Name = "isSilenced", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "VoiceChatChannelMemberSpeakingStateChanged",
			Type = "Event",
			LiteralName = "VOICE_CHAT_CHANNEL_MEMBER_SPEAKING_STATE_CHANGED",
			Payload =
			{
				{ Name = "memberID", Type = "number", Nilable = false },
				{ Name = "channelID", Type = "number", Nilable = false },
				{ Name = "isSpeaking", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "VoiceChatChannelMemberVolumeChanged",
			Type = "Event",
			LiteralName = "VOICE_CHAT_CHANNEL_MEMBER_VOLUME_CHANGED",
			Payload =
			{
				{ Name = "memberID", Type = "number", Nilable = false },
				{ Name = "channelID", Type = "number", Nilable = false },
				{ Name = "volume", Type = "number", Nilable = false },
			},
		},
		{
			Name = "VoiceChatChannelMuteStateChanged",
			Type = "Event",
			LiteralName = "VOICE_CHAT_CHANNEL_MUTE_STATE_CHANGED",
			Payload =
			{
				{ Name = "channelID", Type = "number", Nilable = false },
				{ Name = "isMuted", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "VoiceChatChannelPttChanged",
			Type = "Event",
			LiteralName = "VOICE_CHAT_CHANNEL_PTT_CHANGED",
			Payload =
			{
				{ Name = "channelID", Type = "number", Nilable = false },
				{ Name = "pushToTalkSetting", Type = "string", Nilable = false },
			},
		},
		{
			Name = "VoiceChatChannelRemoved",
			Type = "Event",
			LiteralName = "VOICE_CHAT_CHANNEL_REMOVED",
			Payload =
			{
				{ Name = "channelID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "VoiceChatChannelTransmitChanged",
			Type = "Event",
			LiteralName = "VOICE_CHAT_CHANNEL_TRANSMIT_CHANGED",
			Payload =
			{
				{ Name = "channelID", Type = "number", Nilable = false },
				{ Name = "isTransmitting", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "VoiceChatChannelVolumeChanged",
			Type = "Event",
			LiteralName = "VOICE_CHAT_CHANNEL_VOLUME_CHANGED",
			Payload =
			{
				{ Name = "channelID", Type = "number", Nilable = false },
				{ Name = "volume", Type = "number", Nilable = false },
			},
		},
		{
			Name = "VoiceChatCommunicationModeChanged",
			Type = "Event",
			LiteralName = "VOICE_CHAT_COMMUNICATION_MODE_CHANGED",
			Payload =
			{
				{ Name = "communicationMode", Type = "CommunicationMode", Nilable = false },
			},
		},
		{
			Name = "VoiceChatConnectionSuccess",
			Type = "Event",
			LiteralName = "VOICE_CHAT_CONNECTION_SUCCESS",
		},
		{
			Name = "VoiceChatDeafenedChanged",
			Type = "Event",
			LiteralName = "VOICE_CHAT_DEAFENED_CHANGED",
			Payload =
			{
				{ Name = "isDeafened", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "VoiceChatError",
			Type = "Event",
			LiteralName = "VOICE_CHAT_ERROR",
			Payload =
			{
				{ Name = "platformCode", Type = "number", Nilable = false },
				{ Name = "statusCode", Type = "VoiceChatStatusCode", Nilable = false },
			},
		},
		{
			Name = "VoiceChatInputDevicesUpdated",
			Type = "Event",
			LiteralName = "VOICE_CHAT_INPUT_DEVICES_UPDATED",
		},
		{
			Name = "VoiceChatLogin",
			Type = "Event",
			LiteralName = "VOICE_CHAT_LOGIN",
			Payload =
			{
				{ Name = "status", Type = "VoiceChatStatusCode", Nilable = false },
			},
		},
		{
			Name = "VoiceChatLogout",
			Type = "Event",
			LiteralName = "VOICE_CHAT_LOGOUT",
			Payload =
			{
				{ Name = "status", Type = "VoiceChatStatusCode", Nilable = false },
			},
		},
		{
			Name = "VoiceChatMutedChanged",
			Type = "Event",
			LiteralName = "VOICE_CHAT_MUTED_CHANGED",
			Payload =
			{
				{ Name = "isMuted", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "VoiceChatOutputDevicesUpdated",
			Type = "Event",
			LiteralName = "VOICE_CHAT_OUTPUT_DEVICES_UPDATED",
		},
		{
			Name = "VoiceChatPendingChannelJoinState",
			Type = "Event",
			LiteralName = "VOICE_CHAT_PENDING_CHANNEL_JOIN_STATE",
			Payload =
			{
				{ Name = "channelType", Type = "ChatChannelType", Nilable = false },
				{ Name = "clubId", Type = "string", Nilable = true },
				{ Name = "streamId", Type = "string", Nilable = true },
				{ Name = "pendingJoin", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "VoiceChatPttButtonPressedStateChanged",
			Type = "Event",
			LiteralName = "VOICE_CHAT_PTT_BUTTON_PRESSED_STATE_CHANGED",
			Payload =
			{
				{ Name = "isPressed", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "VoiceChatSilencedChanged",
			Type = "Event",
			LiteralName = "VOICE_CHAT_SILENCED_CHANGED",
			Payload =
			{
				{ Name = "isSilenced", Type = "bool", Nilable = false },
			},
		},
	},

	Tables =
	{
		{
			Name = "CommunicationMode",
			Type = "Enumeration",
			NumValues = 2,
			MinValue = 0,
			MaxValue = 1,
			Fields =
			{
				{ Name = "PushToTalk", Type = "CommunicationMode", EnumValue = 0 },
				{ Name = "OpenMic", Type = "CommunicationMode", EnumValue = 1 },
			},
		},
		{
			Name = "VoiceChatStatusCode",
			Type = "Enumeration",
			NumValues = 25,
			MinValue = 0,
			MaxValue = 24,
			Fields =
			{
				{ Name = "Success", Type = "VoiceChatStatusCode", EnumValue = 0 },
				{ Name = "OperationPending", Type = "VoiceChatStatusCode", EnumValue = 1 },
				{ Name = "TooManyRequests", Type = "VoiceChatStatusCode", EnumValue = 2 },
				{ Name = "LoginProhibited", Type = "VoiceChatStatusCode", EnumValue = 3 },
				{ Name = "ClientNotInitialized", Type = "VoiceChatStatusCode", EnumValue = 4 },
				{ Name = "ClientNotLoggedIn", Type = "VoiceChatStatusCode", EnumValue = 5 },
				{ Name = "ClientAlreadyLoggedIn", Type = "VoiceChatStatusCode", EnumValue = 6 },
				{ Name = "ChannelNameTooShort", Type = "VoiceChatStatusCode", EnumValue = 7 },
				{ Name = "ChannelNameTooLong", Type = "VoiceChatStatusCode", EnumValue = 8 },
				{ Name = "ChannelAlreadyExists", Type = "VoiceChatStatusCode", EnumValue = 9 },
				{ Name = "AlreadyInChannel", Type = "VoiceChatStatusCode", EnumValue = 10 },
				{ Name = "TargetNotFound", Type = "VoiceChatStatusCode", EnumValue = 11 },
				{ Name = "Failure", Type = "VoiceChatStatusCode", EnumValue = 12 },
				{ Name = "ServiceLost", Type = "VoiceChatStatusCode", EnumValue = 13 },
				{ Name = "UnableToLaunchProxy", Type = "VoiceChatStatusCode", EnumValue = 14 },
				{ Name = "ProxyConnectionTimeOut", Type = "VoiceChatStatusCode", EnumValue = 15 },
				{ Name = "ProxyConnectionUnableToConnect", Type = "VoiceChatStatusCode", EnumValue = 16 },
				{ Name = "ProxyConnectionUnexpectedDisconnect", Type = "VoiceChatStatusCode", EnumValue = 17 },
				{ Name = "Disabled", Type = "VoiceChatStatusCode", EnumValue = 18 },
				{ Name = "UnsupportedChatChannelType", Type = "VoiceChatStatusCode", EnumValue = 19 },
				{ Name = "InvalidCommunityStream", Type = "VoiceChatStatusCode", EnumValue = 20 },
				{ Name = "PlayerSilenced", Type = "VoiceChatStatusCode", EnumValue = 21 },
				{ Name = "PlayerVoiceChatParentalDisabled", Type = "VoiceChatStatusCode", EnumValue = 22 },
				{ Name = "InvalidInputDevice", Type = "VoiceChatStatusCode", EnumValue = 23 },
				{ Name = "InvalidOutputDevice", Type = "VoiceChatStatusCode", EnumValue = 24 },
			},
		},
		{
			Name = "VoiceAudioDevice",
			Type = "Structure",
			Fields =
			{
				{ Name = "deviceID", Type = "string", Nilable = false },
				{ Name = "displayName", Type = "string", Nilable = false },
				{ Name = "power", Type = "number", Nilable = false },
				{ Name = "isActive", Type = "bool", Nilable = false },
				{ Name = "isSystemDefault", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "VoiceChatChannel",
			Type = "Structure",
			Fields =
			{
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "channelID", Type = "number", Nilable = false },
				{ Name = "channelType", Type = "ChatChannelType", Nilable = false },
				{ Name = "clubId", Type = "string", Nilable = false },
				{ Name = "streamId", Type = "string", Nilable = false },
				{ Name = "volume", Type = "number", Nilable = false },
				{ Name = "isActive", Type = "bool", Nilable = false },
				{ Name = "isMuted", Type = "bool", Nilable = false },
				{ Name = "isTransmitting", Type = "bool", Nilable = false },
				{ Name = "isLocalProcess", Type = "bool", Nilable = false },
				{ Name = "members", Type = "table", InnerType = "VoiceChatMember", Nilable = false },
			},
		},
		{
			Name = "VoiceChatMember",
			Type = "Structure",
			Fields =
			{
				{ Name = "energy", Type = "number", Nilable = false },
				{ Name = "memberID", Type = "number", Nilable = false },
				{ Name = "isActive", Type = "bool", Nilable = false },
				{ Name = "isSpeaking", Type = "bool", Nilable = false },
				{ Name = "isMutedForAll", Type = "bool", Nilable = false },
				{ Name = "isSilenced", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "VoiceChatProcess",
			Type = "Structure",
			Fields =
			{
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "channels", Type = "table", InnerType = "VoiceChatChannel", Nilable = false },
			},
		},
	},
};

APIDocumentation:AddDocumentationTable(VoiceChat);local VoidStorageInfo =
{
	Name = "VoidStorageInfo",
	Type = "System",
	Namespace = "C_VoidStorageInfo",

	Functions =
	{
	},

	Events =
	{
		{
			Name = "VoidDepositWarning",
			Type = "Event",
			LiteralName = "VOID_DEPOSIT_WARNING",
			Payload =
			{
				{ Name = "slot", Type = "number", Nilable = false },
				{ Name = "link", Type = "string", Nilable = false },
			},
		},
		{
			Name = "VoidStorageClose",
			Type = "Event",
			LiteralName = "VOID_STORAGE_CLOSE",
		},
		{
			Name = "VoidStorageContentsUpdate",
			Type = "Event",
			LiteralName = "VOID_STORAGE_CONTENTS_UPDATE",
		},
		{
			Name = "VoidStorageDepositUpdate",
			Type = "Event",
			LiteralName = "VOID_STORAGE_DEPOSIT_UPDATE",
			Payload =
			{
				{ Name = "slot", Type = "number", Nilable = false },
			},
		},
		{
			Name = "VoidStorageOpen",
			Type = "Event",
			LiteralName = "VOID_STORAGE_OPEN",
		},
		{
			Name = "VoidStorageUpdate",
			Type = "Event",
			LiteralName = "VOID_STORAGE_UPDATE",
		},
		{
			Name = "VoidTransferDone",
			Type = "Event",
			LiteralName = "VOID_TRANSFER_DONE",
		},
		{
			Name = "VoidTransferSuccess",
			Type = "Event",
			LiteralName = "VOID_TRANSFER_SUCCESS",
		},
	},

	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(VoidStorageInfo);local WarCampaign =
{
	Name = "WarCampaign",
	Type = "System",
	Namespace = "C_CampaignInfo",

	Functions =
	{
		{
			Name = "GetAvailableCampaigns",
			Type = "Function",

			Returns =
			{
				{ Name = "campaignIDs", Type = "table", InnerType = "number", Nilable = false },
			},
		},
		{
			Name = "GetCampaignChapterInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "campaignChapterID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "campaignChapterInfo", Type = "CampaignChapterInfo", Nilable = true },
			},
		},
		{
			Name = "GetCampaignInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "campaignID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "campaignInfo", Type = "CampaignInfo", Nilable = true },
			},
		},
		{
			Name = "GetChapterIDs",
			Type = "Function",

			Arguments =
			{
				{ Name = "campaignID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "chapterIDs", Type = "table", InnerType = "number", Nilable = true },
			},
		},
		{
			Name = "GetCurrentChapterID",
			Type = "Function",

			Arguments =
			{
				{ Name = "campaignID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "currentChapterID", Type = "number", Nilable = true },
			},
		},
		{
			Name = "GetFailureReason",
			Type = "Function",

			Arguments =
			{
				{ Name = "campaignID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "failureReason", Type = "CampaignFailureReason", Nilable = true },
			},
		},
		{
			Name = "GetState",
			Type = "Function",

			Arguments =
			{
				{ Name = "campaignID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "state", Type = "CampaignState", Nilable = false },
			},
		},
		{
			Name = "IsCampaignQuest",
			Type = "Function",

			Arguments =
			{
				{ Name = "questID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "isCampaignQuest", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "UsesNormalQuestIcons",
			Type = "Function",

			Arguments =
			{
				{ Name = "campaignID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "useNormalQuestIcons", Type = "bool", Nilable = false },
			},
		},
	},

	Events =
	{
	},

	Tables =
	{
		{
			Name = "CampaignState",
			Type = "Enumeration",
			NumValues = 4,
			MinValue = 0,
			MaxValue = 3,
			Fields =
			{
				{ Name = "Invalid", Type = "CampaignState", EnumValue = 0 },
				{ Name = "Complete", Type = "CampaignState", EnumValue = 1 },
				{ Name = "InProgress", Type = "CampaignState", EnumValue = 2 },
				{ Name = "Stalled", Type = "CampaignState", EnumValue = 3 },
			},
		},
		{
			Name = "CampaignChapterInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "description", Type = "string", Nilable = false },
				{ Name = "rewardQuestID", Type = "number", Nilable = false },
				{ Name = "orderIndex", Type = "number", Nilable = false },
			},
		},
		{
			Name = "CampaignFailureReason",
			Type = "Structure",
			Fields =
			{
				{ Name = "text", Type = "string", Nilable = false },
				{ Name = "questID", Type = "number", Nilable = true },
				{ Name = "mapID", Type = "number", Nilable = true },
			},
		},
		{
			Name = "CampaignInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "description", Type = "string", Nilable = false },
				{ Name = "uiTextureKit", Type = "string", Nilable = false },
				{ Name = "isWarCampaign", Type = "bool", Nilable = false },
			},
		},
	},
};

APIDocumentation:AddDocumentationTable(WarCampaign);local WeeklyRewards =
{
	Name = "WeeklyRewards",
	Type = "System",
	Namespace = "C_WeeklyRewards",

	Functions =
	{
		{
			Name = "CanClaimPVPRewards",
			Type = "Function",

			Returns =
			{
				{ Name = "canClaimRewards", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "CanClaimRewards",
			Type = "Function",

			Returns =
			{
				{ Name = "canClaimRewards", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ClaimReward",
			Type = "Function",

			Arguments =
			{
				{ Name = "id", Type = "number", Nilable = false },
			},
		},
		{
			Name = "CloseInteraction",
			Type = "Function",
		},
		{
			Name = "GetActivities",
			Type = "Function",

			Returns =
			{
				{ Name = "activities", Type = "table", InnerType = "WeeklyRewardActivityInfo", Nilable = false },
			},
		},
		{
			Name = "GetConquestWeeklyProgress",
			Type = "Function",

			Returns =
			{
				{ Name = "weeklyProgress", Type = "ConquestWeeklyProgress", Nilable = false },
			},
		},
		{
			Name = "GetExampleRewardItemHyperlinks",
			Type = "Function",

			Arguments =
			{
				{ Name = "id", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "hyperlink", Type = "string", Nilable = false },
				{ Name = "upgradeHyperlink", Type = "string", Nilable = false },
			},
		},
		{
			Name = "GetItemHyperlink",
			Type = "Function",

			Arguments =
			{
				{ Name = "itemDBID", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "hyperlink", Type = "string", Nilable = false },
			},
		},
		{
			Name = "IsWeeklyProgressValid",
			Type = "Function",

			Returns =
			{
				{ Name = "isWeeklyProgressValid", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "RequestWeeklyProgress",
			Type = "Function",
		},
	},

	Events =
	{
		{
			Name = "WeeklyRewardsHide",
			Type = "Event",
			LiteralName = "WEEKLY_REWARDS_HIDE",
		},
		{
			Name = "WeeklyRewardsItemChanged",
			Type = "Event",
			LiteralName = "WEEKLY_REWARDS_ITEM_CHANGED",
		},
		{
			Name = "WeeklyRewardsShow",
			Type = "Event",
			LiteralName = "WEEKLY_REWARDS_SHOW",
		},
		{
			Name = "WeeklyRewardsUpdate",
			Type = "Event",
			LiteralName = "WEEKLY_REWARDS_UPDATE",
		},
	},

	Tables =
	{
		{
			Name = "ConquestProgressBarDisplayType",
			Type = "Enumeration",
			NumValues = 3,
			MinValue = 0,
			MaxValue = 2,
			Fields =
			{
				{ Name = "FirstChest", Type = "ConquestProgressBarDisplayType", EnumValue = 0 },
				{ Name = "AdditionalChest", Type = "ConquestProgressBarDisplayType", EnumValue = 1 },
				{ Name = "Seasonal", Type = "ConquestProgressBarDisplayType", EnumValue = 2 },
			},
		},
		{
			Name = "ConquestWeeklyProgress",
			Type = "Structure",
			Fields =
			{
				{ Name = "progress", Type = "number", Nilable = false },
				{ Name = "maxProgress", Type = "number", Nilable = false },
				{ Name = "displayType", Type = "ConquestProgressBarDisplayType", Nilable = false },
				{ Name = "unlocksCompleted", Type = "number", Nilable = false },
				{ Name = "maxUnlocks", Type = "number", Nilable = false },
				{ Name = "sampleItemHyperlink", Type = "string", Nilable = false },
			},
		},
		{
			Name = "WeeklyRewardActivityInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "type", Type = "WeeklyRewardChestThresholdType", Nilable = false },
				{ Name = "index", Type = "number", Nilable = false },
				{ Name = "threshold", Type = "number", Nilable = false },
				{ Name = "progress", Type = "number", Nilable = false },
				{ Name = "id", Type = "number", Nilable = false },
				{ Name = "level", Type = "number", Nilable = false },
				{ Name = "rewards", Type = "table", InnerType = "WeeklyRewardActivityRewardInfo", Nilable = false },
			},
		},
		{
			Name = "WeeklyRewardActivityRewardInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "type", Type = "CachedRewardType", Nilable = false },
				{ Name = "id", Type = "number", Nilable = false },
				{ Name = "quantity", Type = "number", Nilable = false },
				{ Name = "itemDBID", Type = "string", Nilable = true },
			},
		},
	},
};

APIDocumentation:AddDocumentationTable(WeeklyRewards);local WorldStateInfo =
{
	Name = "WorldStateInfo",
	Type = "System",
	Namespace = "C_WorldStateInfo",

	Functions =
	{
	},

	Events =
	{
		{
			Name = "StartTimer",
			Type = "Event",
			LiteralName = "START_TIMER",
			Payload =
			{
				{ Name = "timerType", Type = "number", Nilable = false },
				{ Name = "timeRemaining", Type = "number", Nilable = false },
				{ Name = "totalTime", Type = "number", Nilable = false },
			},
		},
		{
			Name = "WorldStateTimerStart",
			Type = "Event",
			LiteralName = "WORLD_STATE_TIMER_START",
			Payload =
			{
				{ Name = "timerID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "WorldStateTimerStop",
			Type = "Event",
			LiteralName = "WORLD_STATE_TIMER_STOP",
			Payload =
			{
				{ Name = "timerID", Type = "number", Nilable = false },
			},
		},
	},

	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(WorldStateInfo);local WowEntitlementInfo =
{
	Name = "WowEntitlementInfo",
	Type = "System",
	Namespace = "C_WowEntitlementInfo",

	Functions =
	{
	},

	Events =
	{
		{
			Name = "EntitlementDelivered",
			Type = "Event",
			LiteralName = "ENTITLEMENT_DELIVERED",
			Payload =
			{
				{ Name = "entitlementType", Type = "WoWEntitlementType", Nilable = false },
				{ Name = "textureID", Type = "number", Nilable = false },
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "payloadID", Type = "number", Nilable = true },
				{ Name = "showFancyToast", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "RafEntitlementDelivered",
			Type = "Event",
			LiteralName = "RAF_ENTITLEMENT_DELIVERED",
			Payload =
			{
				{ Name = "entitlementType", Type = "WoWEntitlementType", Nilable = false },
				{ Name = "textureID", Type = "number", Nilable = false },
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "payloadID", Type = "number", Nilable = true },
				{ Name = "showFancyToast", Type = "bool", Nilable = false },
			},
		},
	},

	Tables =
	{
		{
			Name = "WoWEntitlementType",
			Type = "Enumeration",
			NumValues = 10,
			MinValue = 0,
			MaxValue = 9,
			Fields =
			{
				{ Name = "Item", Type = "WoWEntitlementType", EnumValue = 0 },
				{ Name = "Mount", Type = "WoWEntitlementType", EnumValue = 1 },
				{ Name = "Battlepet", Type = "WoWEntitlementType", EnumValue = 2 },
				{ Name = "Toy", Type = "WoWEntitlementType", EnumValue = 3 },
				{ Name = "Appearance", Type = "WoWEntitlementType", EnumValue = 4 },
				{ Name = "AppearanceSet", Type = "WoWEntitlementType", EnumValue = 5 },
				{ Name = "GameTime", Type = "WoWEntitlementType", EnumValue = 6 },
				{ Name = "Title", Type = "WoWEntitlementType", EnumValue = 7 },
				{ Name = "Illusion", Type = "WoWEntitlementType", EnumValue = 8 },
				{ Name = "Invalid", Type = "WoWEntitlementType", EnumValue = 9 },
			},
		},
	},
};

APIDocumentation:AddDocumentationTable(WowEntitlementInfo);local WowTokenUI =
{
	Name = "WowTokenUI",
	Type = "System",
	Namespace = "C_WowTokenUI",

	Functions =
	{
		{
			Name = "StartTokenSell",
			Type = "Function",

			Arguments =
			{
				{ Name = "tokenGUID", Type = "string", Nilable = false },
			},
		},
	},

	Events =
	{
		{
			Name = "TokenAuctionSold",
			Type = "Event",
			LiteralName = "TOKEN_AUCTION_SOLD",
		},
		{
			Name = "TokenBuyConfirmRequired",
			Type = "Event",
			LiteralName = "TOKEN_BUY_CONFIRM_REQUIRED",
		},
		{
			Name = "TokenBuyResult",
			Type = "Event",
			LiteralName = "TOKEN_BUY_RESULT",
			Payload =
			{
				{ Name = "result", Type = "number", Nilable = false },
			},
		},
		{
			Name = "TokenCanVeteranBuyUpdate",
			Type = "Event",
			LiteralName = "TOKEN_CAN_VETERAN_BUY_UPDATE",
			Payload =
			{
				{ Name = "result", Type = "number", Nilable = false },
			},
		},
		{
			Name = "TokenDistributionsUpdated",
			Type = "Event",
			LiteralName = "TOKEN_DISTRIBUTIONS_UPDATED",
			Payload =
			{
				{ Name = "result", Type = "number", Nilable = false },
			},
		},
		{
			Name = "TokenMarketPriceUpdated",
			Type = "Event",
			LiteralName = "TOKEN_MARKET_PRICE_UPDATED",
			Payload =
			{
				{ Name = "result", Type = "number", Nilable = false },
			},
		},
		{
			Name = "TokenRedeemBalanceUpdated",
			Type = "Event",
			LiteralName = "TOKEN_REDEEM_BALANCE_UPDATED",
		},
		{
			Name = "TokenRedeemConfirmRequired",
			Type = "Event",
			LiteralName = "TOKEN_REDEEM_CONFIRM_REQUIRED",
			Payload =
			{
				{ Name = "choiceType", Type = "number", Nilable = false },
			},
		},
		{
			Name = "TokenRedeemFrameShow",
			Type = "Event",
			LiteralName = "TOKEN_REDEEM_FRAME_SHOW",
		},
		{
			Name = "TokenRedeemGameTimeUpdated",
			Type = "Event",
			LiteralName = "TOKEN_REDEEM_GAME_TIME_UPDATED",
		},
		{
			Name = "TokenRedeemResult",
			Type = "Event",
			LiteralName = "TOKEN_REDEEM_RESULT",
			Payload =
			{
				{ Name = "result", Type = "number", Nilable = false },
				{ Name = "choiceType", Type = "number", Nilable = false },
			},
		},
		{
			Name = "TokenSellConfirmRequired",
			Type = "Event",
			LiteralName = "TOKEN_SELL_CONFIRM_REQUIRED",
		},
		{
			Name = "TokenSellConfirmed",
			Type = "Event",
			LiteralName = "TOKEN_SELL_CONFIRMED",
		},
		{
			Name = "TokenSellResult",
			Type = "Event",
			LiteralName = "TOKEN_SELL_RESULT",
			Payload =
			{
				{ Name = "result", Type = "number", Nilable = false },
			},
		},
		{
			Name = "TokenStatusChanged",
			Type = "Event",
			LiteralName = "TOKEN_STATUS_CHANGED",
		},
	},

	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(WowTokenUI);local ZoneAbility =
{
	Name = "ZoneAbility",
	Type = "System",
	Namespace = "C_ZoneAbility",

	Functions =
	{
		{
			Name = "GetActiveAbilities",
			Type = "Function",

			Returns =
			{
				{ Name = "zoneAbilities", Type = "table", InnerType = "ZoneAbilityInfo", Nilable = false },
			},
		},
	},

	Events =
	{
	},

	Tables =
	{
		{
			Name = "ZoneAbilityInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "zoneAbilityID", Type = "number", Nilable = false },
				{ Name = "uiPriority", Type = "number", Nilable = false },
				{ Name = "spellID", Type = "number", Nilable = false },
				{ Name = "textureKit", Type = "string", Nilable = false },
				{ Name = "tutorialText", Type = "string", Nilable = true },
			},
		},
	},
};

APIDocumentation:AddDocumentationTable(ZoneAbility);local Action =
{
	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(Action);local AppearanceSource =
{
	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(AppearanceSource);local AuctionHouseEnums =
{
	Tables =
	{
		{
			Name = "AuctionHouseCommoditySortOrder",
			Type = "Enumeration",
			NumValues = 2,
			MinValue = 0,
			MaxValue = 1,
			Fields =
			{
				{ Name = "UnitPrice", Type = "AuctionHouseCommoditySortOrder", EnumValue = 0 },
				{ Name = "Quantity", Type = "AuctionHouseCommoditySortOrder", EnumValue = 1 },
			},
		},
		{
			Name = "AuctionHouseFilter",
			Type = "Enumeration",
			NumValues = 11,
			MinValue = 0,
			MaxValue = 10,
			Fields =
			{
				{ Name = "UncollectedOnly", Type = "AuctionHouseFilter", EnumValue = 0 },
				{ Name = "UsableOnly", Type = "AuctionHouseFilter", EnumValue = 1 },
				{ Name = "UpgradesOnly", Type = "AuctionHouseFilter", EnumValue = 2 },
				{ Name = "ExactMatch", Type = "AuctionHouseFilter", EnumValue = 3 },
				{ Name = "PoorQuality", Type = "AuctionHouseFilter", EnumValue = 4 },
				{ Name = "CommonQuality", Type = "AuctionHouseFilter", EnumValue = 5 },
				{ Name = "UncommonQuality", Type = "AuctionHouseFilter", EnumValue = 6 },
				{ Name = "RareQuality", Type = "AuctionHouseFilter", EnumValue = 7 },
				{ Name = "EpicQuality", Type = "AuctionHouseFilter", EnumValue = 8 },
				{ Name = "LegendaryQuality", Type = "AuctionHouseFilter", EnumValue = 9 },
				{ Name = "ArtifactQuality", Type = "AuctionHouseFilter", EnumValue = 10 },
			},
		},
		{
			Name = "AuctionHouseItemSortOrder",
			Type = "Enumeration",
			NumValues = 2,
			MinValue = 0,
			MaxValue = 1,
			Fields =
			{
				{ Name = "Bid", Type = "AuctionHouseItemSortOrder", EnumValue = 0 },
				{ Name = "Buyout", Type = "AuctionHouseItemSortOrder", EnumValue = 1 },
			},
		},
		{
			Name = "AuctionHouseSortOrder",
			Type = "Enumeration",
			NumValues = 6,
			MinValue = 0,
			MaxValue = 5,
			Fields =
			{
				{ Name = "Price", Type = "AuctionHouseSortOrder", EnumValue = 0 },
				{ Name = "Name", Type = "AuctionHouseSortOrder", EnumValue = 1 },
				{ Name = "Level", Type = "AuctionHouseSortOrder", EnumValue = 2 },
				{ Name = "Bid", Type = "AuctionHouseSortOrder", EnumValue = 3 },
				{ Name = "Buyout", Type = "AuctionHouseSortOrder", EnumValue = 4 },
				{ Name = "TimeRemaining", Type = "AuctionHouseSortOrder", EnumValue = 5 },
			},
		},
		{
			Name = "AuctionHouseTimeLeftBand",
			Type = "Enumeration",
			NumValues = 4,
			MinValue = 0,
			MaxValue = 3,
			Fields =
			{
				{ Name = "Short", Type = "AuctionHouseTimeLeftBand", EnumValue = 0 },
				{ Name = "Medium", Type = "AuctionHouseTimeLeftBand", EnumValue = 1 },
				{ Name = "Long", Type = "AuctionHouseTimeLeftBand", EnumValue = 2 },
				{ Name = "VeryLong", Type = "AuctionHouseTimeLeftBand", EnumValue = 3 },
			},
		},
	},
};

APIDocumentation:AddDocumentationTable(AuctionHouseEnums);local Base =
{
	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(Base);local BountyShared =
{
	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(BountyShared);local CalendarConstants =
{
	Tables =
	{
		{
			Name = "CalendarCommandType",
			Type = "Enumeration",
			NumValues = 12,
			MinValue = 0,
			MaxValue = 11,
			Fields =
			{
				{ Name = "CalendarCommandCreate", Type = "CalendarCommandType", EnumValue = 0 },
				{ Name = "CalendarCommandInvite", Type = "CalendarCommandType", EnumValue = 1 },
				{ Name = "CalendarCommandRsvp", Type = "CalendarCommandType", EnumValue = 2 },
				{ Name = "CalendarCommandRemoveInvite", Type = "CalendarCommandType", EnumValue = 3 },
				{ Name = "CalendarCommandRemoveEvent", Type = "CalendarCommandType", EnumValue = 4 },
				{ Name = "CalendarCommandStatus", Type = "CalendarCommandType", EnumValue = 5 },
				{ Name = "CalendarCommandModeratorStatus", Type = "CalendarCommandType", EnumValue = 6 },
				{ Name = "CalendarCommandGetCalendar", Type = "CalendarCommandType", EnumValue = 7 },
				{ Name = "CalendarCommandGetEvent", Type = "CalendarCommandType", EnumValue = 8 },
				{ Name = "CalendarCommandUpdateEvent", Type = "CalendarCommandType", EnumValue = 9 },
				{ Name = "CalendarCommandComplain", Type = "CalendarCommandType", EnumValue = 10 },
				{ Name = "CalendarCommandNotes", Type = "CalendarCommandType", EnumValue = 11 },
			},
		},
		{
			Name = "CalendarErrorType",
			Type = "Enumeration",
			NumValues = 51,
			MinValue = 0,
			MaxValue = 50,
			Fields =
			{
				{ Name = "CalendarErrorSuccess", Type = "CalendarErrorType", EnumValue = 0 },
				{ Name = "CalendarErrorCommunityEventsExceeded", Type = "CalendarErrorType", EnumValue = 1 },
				{ Name = "CalendarErrorEventsExceeded", Type = "CalendarErrorType", EnumValue = 2 },
				{ Name = "CalendarErrorSelfInvitesExceeded", Type = "CalendarErrorType", EnumValue = 3 },
				{ Name = "CalendarErrorOtherInvitesExceeded", Type = "CalendarErrorType", EnumValue = 4 },
				{ Name = "CalendarErrorNoPermission", Type = "CalendarErrorType", EnumValue = 5 },
				{ Name = "CalendarErrorEventInvalid", Type = "CalendarErrorType", EnumValue = 6 },
				{ Name = "CalendarErrorNotInvited", Type = "CalendarErrorType", EnumValue = 7 },
				{ Name = "CalendarErrorUnknownError", Type = "CalendarErrorType", EnumValue = 8 },
				{ Name = "CalendarErrorNotInGuild", Type = "CalendarErrorType", EnumValue = 9 },
				{ Name = "CalendarErrorNotInCommunity", Type = "CalendarErrorType", EnumValue = 10 },
				{ Name = "CalendarErrorTargetAlreadyInvited", Type = "CalendarErrorType", EnumValue = 11 },
				{ Name = "CalendarErrorNameNotFound", Type = "CalendarErrorType", EnumValue = 12 },
				{ Name = "CalendarErrorWrongFaction", Type = "CalendarErrorType", EnumValue = 13 },
				{ Name = "CalendarErrorIgnored", Type = "CalendarErrorType", EnumValue = 14 },
				{ Name = "CalendarErrorInvitesExceeded", Type = "CalendarErrorType", EnumValue = 15 },
				{ Name = "CalendarErrorInvalidMaxSize", Type = "CalendarErrorType", EnumValue = 16 },
				{ Name = "CalendarErrorInvalidDate", Type = "CalendarErrorType", EnumValue = 17 },
				{ Name = "CalendarErrorInvalidTime", Type = "CalendarErrorType", EnumValue = 18 },
				{ Name = "CalendarErrorNoInvites", Type = "CalendarErrorType", EnumValue = 19 },
				{ Name = "CalendarErrorNeedsTitle", Type = "CalendarErrorType", EnumValue = 20 },
				{ Name = "CalendarErrorEventPassed", Type = "CalendarErrorType", EnumValue = 21 },
				{ Name = "CalendarErrorEventLocked", Type = "CalendarErrorType", EnumValue = 22 },
				{ Name = "CalendarErrorDeleteCreatorFailed", Type = "CalendarErrorType", EnumValue = 23 },
				{ Name = "CalendarErrorDataAlreadySet", Type = "CalendarErrorType", EnumValue = 24 },
				{ Name = "CalendarErrorCalendarDisabled", Type = "CalendarErrorType", EnumValue = 25 },
				{ Name = "CalendarErrorRestrictedAccount", Type = "CalendarErrorType", EnumValue = 26 },
				{ Name = "CalendarErrorArenaEventsExceeded", Type = "CalendarErrorType", EnumValue = 27 },
				{ Name = "CalendarErrorRestrictedLevel", Type = "CalendarErrorType", EnumValue = 28 },
				{ Name = "CalendarErrorSquelched", Type = "CalendarErrorType", EnumValue = 29 },
				{ Name = "CalendarErrorNoInvite", Type = "CalendarErrorType", EnumValue = 30 },
				{ Name = "CalendarErrorComplaintDisabled", Type = "CalendarErrorType", EnumValue = 31 },
				{ Name = "CalendarErrorComplaintSelf", Type = "CalendarErrorType", EnumValue = 32 },
				{ Name = "CalendarErrorComplaintSameGuild", Type = "CalendarErrorType", EnumValue = 33 },
				{ Name = "CalendarErrorComplaintGm", Type = "CalendarErrorType", EnumValue = 34 },
				{ Name = "CalendarErrorComplaintLimit", Type = "CalendarErrorType", EnumValue = 35 },
				{ Name = "CalendarErrorComplaintNotFound", Type = "CalendarErrorType", EnumValue = 36 },
				{ Name = "CalendarErrorEventWrongServer", Type = "CalendarErrorType", EnumValue = 37 },
				{ Name = "CalendarErrorNoCommunityInvites", Type = "CalendarErrorType", EnumValue = 38 },
				{ Name = "CalendarErrorInvalidSignup", Type = "CalendarErrorType", EnumValue = 39 },
				{ Name = "CalendarErrorNoModerator", Type = "CalendarErrorType", EnumValue = 40 },
				{ Name = "CalendarErrorModeratorRestricted", Type = "CalendarErrorType", EnumValue = 41 },
				{ Name = "CalendarErrorInvalidNotes", Type = "CalendarErrorType", EnumValue = 42 },
				{ Name = "CalendarErrorInvalidTitle", Type = "CalendarErrorType", EnumValue = 43 },
				{ Name = "CalendarErrorInvalidDescription", Type = "CalendarErrorType", EnumValue = 44 },
				{ Name = "CalendarErrorInvalidClub", Type = "CalendarErrorType", EnumValue = 45 },
				{ Name = "CalendarErrorCreatorNotFound", Type = "CalendarErrorType", EnumValue = 46 },
				{ Name = "CalendarErrorEventThrottled", Type = "CalendarErrorType", EnumValue = 47 },
				{ Name = "CalendarErrorInviteThrottled", Type = "CalendarErrorType", EnumValue = 48 },
				{ Name = "CalendarErrorInternal", Type = "CalendarErrorType", EnumValue = 49 },
				{ Name = "CalendarErrorComplaintAdded", Type = "CalendarErrorType", EnumValue = 50 },
			},
		},
		{
			Name = "CalendarEventBits",
			Type = "Enumeration",
			NumValues = 15,
			MinValue = 1,
			MaxValue = 3788,
			Fields =
			{
				{ Name = "CalendarEventBitPlayer", Type = "CalendarEventBits", EnumValue = 1 },
				{ Name = "CalendarEventBitGuildDeprecated", Type = "CalendarEventBits", EnumValue = 2 },
				{ Name = "CalendarEventBitSystem", Type = "CalendarEventBits", EnumValue = 4 },
				{ Name = "CalendarEventBitHoliday", Type = "CalendarEventBits", EnumValue = 8 },
				{ Name = "CalendarEventBitLocked", Type = "CalendarEventBits", EnumValue = 16 },
				{ Name = "CalendarEventBitAutoApprove", Type = "CalendarEventBits", EnumValue = 32 },
				{ Name = "CalendarEventBitCommunityAnnouncement", Type = "CalendarEventBits", EnumValue = 64 },
				{ Name = "CalendarEventBitRaidLockout", Type = "CalendarEventBits", EnumValue = 128 },
				{ Name = "CalendarEventBitArenaDeprecated", Type = "CalendarEventBits", EnumValue = 256 },
				{ Name = "CalendarEventBitRaidResetDeprecated", Type = "CalendarEventBits", EnumValue = 512 },
				{ Name = "CalendarEventBitCommunitySignup", Type = "CalendarEventBits", EnumValue = 1024 },
				{ Name = "CalendarEventBitGuildSignup", Type = "CalendarEventBits", EnumValue = 2048 },
				{ Name = "CommunityWide", Type = "CalendarEventBits", EnumValue = 3136 },
				{ Name = "PlayerCreated", Type = "CalendarEventBits", EnumValue = 3395 },
				{ Name = "CantComplain", Type = "CalendarEventBits", EnumValue = 3788 },
			},
		},
		{
			Name = "CalendarEventRepeatOptions",
			Type = "Enumeration",
			NumValues = 4,
			MinValue = 0,
			MaxValue = 3,
			Fields =
			{
				{ Name = "CalendarRepeatNever", Type = "CalendarEventRepeatOptions", EnumValue = 0 },
				{ Name = "CalendarRepeatWeekly", Type = "CalendarEventRepeatOptions", EnumValue = 1 },
				{ Name = "CalendarRepeatBiweekly", Type = "CalendarEventRepeatOptions", EnumValue = 2 },
				{ Name = "CalendarRepeatMonthly", Type = "CalendarEventRepeatOptions", EnumValue = 3 },
			},
		},
		{
			Name = "CalendarEventType",
			Type = "Enumeration",
			NumValues = 6,
			MinValue = 0,
			MaxValue = 5,
			Fields =
			{
				{ Name = "Raid", Type = "CalendarEventType", EnumValue = 0 },
				{ Name = "Dungeon", Type = "CalendarEventType", EnumValue = 1 },
				{ Name = "PvP", Type = "CalendarEventType", EnumValue = 2 },
				{ Name = "Meeting", Type = "CalendarEventType", EnumValue = 3 },
				{ Name = "Other", Type = "CalendarEventType", EnumValue = 4 },
				{ Name = "HeroicDeprecated", Type = "CalendarEventType", EnumValue = 5 },
			},
		},
		{
			Name = "CalendarFilterFlags",
			Type = "Enumeration",
			NumValues = 5,
			MinValue = 1,
			MaxValue = 16,
			Fields =
			{
				{ Name = "WeeklyHoliday", Type = "CalendarFilterFlags", EnumValue = 1 },
				{ Name = "Darkmoon", Type = "CalendarFilterFlags", EnumValue = 2 },
				{ Name = "Battleground", Type = "CalendarFilterFlags", EnumValue = 4 },
				{ Name = "RaidLockout", Type = "CalendarFilterFlags", EnumValue = 8 },
				{ Name = "RaidReset", Type = "CalendarFilterFlags", EnumValue = 16 },
			},
		},
		{
			Name = "CalendarGetEventType",
			Type = "Enumeration",
			NumValues = 4,
			MinValue = 0,
			MaxValue = 2,
			Fields =
			{
				{ Name = "Get", Type = "CalendarGetEventType", EnumValue = 0 },
				{ Name = "Add", Type = "CalendarGetEventType", EnumValue = 1 },
				{ Name = "Copy", Type = "CalendarGetEventType", EnumValue = 2 },
				{ Name = "DefaultCalendarGetEventType", Type = "CalendarGetEventType", EnumValue = 0 },
			},
		},
		{
			Name = "CalendarHolidayFilterType",
			Type = "Enumeration",
			NumValues = 3,
			MinValue = 0,
			MaxValue = 2,
			Fields =
			{
				{ Name = "Weekly", Type = "CalendarHolidayFilterType", EnumValue = 0 },
				{ Name = "Darkmoon", Type = "CalendarHolidayFilterType", EnumValue = 1 },
				{ Name = "Battleground", Type = "CalendarHolidayFilterType", EnumValue = 2 },
			},
		},
		{
			Name = "CalendarInviteBits",
			Type = "Enumeration",
			NumValues = 4,
			MinValue = 1,
			MaxValue = 8,
			Fields =
			{
				{ Name = "CalendarInviteBitPendingInvite", Type = "CalendarInviteBits", EnumValue = 1 },
				{ Name = "CalendarInviteBitModerator", Type = "CalendarInviteBits", EnumValue = 2 },
				{ Name = "CalendarInviteBitCreator", Type = "CalendarInviteBits", EnumValue = 4 },
				{ Name = "CalendarInviteBitSignup", Type = "CalendarInviteBits", EnumValue = 8 },
			},
		},
		{
			Name = "CalendarInviteSortType",
			Type = "Enumeration",
			NumValues = 6,
			MinValue = 0,
			MaxValue = 5,
			Fields =
			{
				{ Name = "CalendarInviteSortName", Type = "CalendarInviteSortType", EnumValue = 0 },
				{ Name = "CalendarInviteSortLevel", Type = "CalendarInviteSortType", EnumValue = 1 },
				{ Name = "CalendarInviteSortClass", Type = "CalendarInviteSortType", EnumValue = 2 },
				{ Name = "CalendarInviteSortStatus", Type = "CalendarInviteSortType", EnumValue = 3 },
				{ Name = "CalendarInviteSortParty", Type = "CalendarInviteSortType", EnumValue = 4 },
				{ Name = "CalendarInviteSortNotes", Type = "CalendarInviteSortType", EnumValue = 5 },
			},
		},
		{
			Name = "CalendarInviteType",
			Type = "Enumeration",
			NumValues = 2,
			MinValue = 0,
			MaxValue = 1,
			Fields =
			{
				{ Name = "Normal", Type = "CalendarInviteType", EnumValue = 0 },
				{ Name = "Signup", Type = "CalendarInviteType", EnumValue = 1 },
			},
		},
		{
			Name = "CalendarModeratorStatus",
			Type = "Enumeration",
			NumValues = 3,
			MinValue = 0,
			MaxValue = 2,
			Fields =
			{
				{ Name = "CalendarModeratorNone", Type = "CalendarModeratorStatus", EnumValue = 0 },
				{ Name = "CalendarModeratorModerator", Type = "CalendarModeratorStatus", EnumValue = 1 },
				{ Name = "CalendarModeratorCreator", Type = "CalendarModeratorStatus", EnumValue = 2 },
			},
		},
		{
			Name = "CalendarStatus",
			Type = "Enumeration",
			NumValues = 9,
			MinValue = 0,
			MaxValue = 8,
			Fields =
			{
				{ Name = "Invited", Type = "CalendarStatus", EnumValue = 0 },
				{ Name = "Available", Type = "CalendarStatus", EnumValue = 1 },
				{ Name = "Declined", Type = "CalendarStatus", EnumValue = 2 },
				{ Name = "Confirmed", Type = "CalendarStatus", EnumValue = 3 },
				{ Name = "Out", Type = "CalendarStatus", EnumValue = 4 },
				{ Name = "Standby", Type = "CalendarStatus", EnumValue = 5 },
				{ Name = "Signedup", Type = "CalendarStatus", EnumValue = 6 },
				{ Name = "NotSignedup", Type = "CalendarStatus", EnumValue = 7 },
				{ Name = "Tentative", Type = "CalendarStatus", EnumValue = 8 },
			},
		},
		{
			Name = "CalendarType",
			Type = "Enumeration",
			NumValues = 8,
			MinValue = 0,
			MaxValue = 7,
			Fields =
			{
				{ Name = "Player", Type = "CalendarType", EnumValue = 0 },
				{ Name = "Community", Type = "CalendarType", EnumValue = 1 },
				{ Name = "RaidLockout", Type = "CalendarType", EnumValue = 2 },
				{ Name = "RaidResetDeprecated", Type = "CalendarType", EnumValue = 3 },
				{ Name = "Holiday", Type = "CalendarType", EnumValue = 4 },
				{ Name = "HolidayWeekly", Type = "CalendarType", EnumValue = 5 },
				{ Name = "HolidayDarkmoon", Type = "CalendarType", EnumValue = 6 },
				{ Name = "HolidayBattleground", Type = "CalendarType", EnumValue = 7 },
			},
		},
		{
			Name = "CalendarWebActionType",
			Type = "Enumeration",
			NumValues = 7,
			MinValue = 0,
			MaxValue = 6,
			Fields =
			{
				{ Name = "Accept", Type = "CalendarWebActionType", EnumValue = 0 },
				{ Name = "Decline", Type = "CalendarWebActionType", EnumValue = 1 },
				{ Name = "Remove", Type = "CalendarWebActionType", EnumValue = 2 },
				{ Name = "ReportSpam", Type = "CalendarWebActionType", EnumValue = 3 },
				{ Name = "Signup", Type = "CalendarWebActionType", EnumValue = 4 },
				{ Name = "Tentative", Type = "CalendarWebActionType", EnumValue = 5 },
				{ Name = "TentativeSignup", Type = "CalendarWebActionType", EnumValue = 6 },
			},
		},
		{
			Name = "HolidayCalendarFlags",
			Type = "Enumeration",
			NumValues = 2,
			MinValue = 1,
			MaxValue = 2,
			Fields =
			{
				{ Name = "Alliance", Type = "HolidayCalendarFlags", EnumValue = 1 },
				{ Name = "Horde", Type = "HolidayCalendarFlags", EnumValue = 2 },
			},
		},
		{
			Name = "HolidayFlags",
			Type = "Enumeration",
			NumValues = 4,
			MinValue = 1,
			MaxValue = 8,
			Fields =
			{
				{ Name = "IsRegionwide", Type = "HolidayFlags", EnumValue = 1 },
				{ Name = "DontShowInCalendar", Type = "HolidayFlags", EnumValue = 2 },
				{ Name = "DontDisplayEnd", Type = "HolidayFlags", EnumValue = 4 },
				{ Name = "DontDisplayBanner", Type = "HolidayFlags", EnumValue = 8 },
			},
		},
	},
};

APIDocumentation:AddDocumentationTable(CalendarConstants);local CharacterCustomizationShared =
{
	Tables =
	{
		{
			Name = "ChrCustomizationCategoryFlag",
			Type = "Enumeration",
			NumValues = 1,
			MinValue = 1,
			MaxValue = 1,
			Fields =
			{
				{ Name = "UndressModel", Type = "ChrCustomizationCategoryFlag", EnumValue = 1 },
			},
		},
		{
			Name = "ChrCustomizationOptionType",
			Type = "Enumeration",
			NumValues = 3,
			MinValue = 0,
			MaxValue = 2,
			Fields =
			{
				{ Name = "SelectionPopout", Type = "ChrCustomizationOptionType", EnumValue = 0 },
				{ Name = "Checkbox", Type = "ChrCustomizationOptionType", EnumValue = 1 },
				{ Name = "Slider", Type = "ChrCustomizationOptionType", EnumValue = 2 },
			},
		},
		{
			Name = "Unitsex",
			Type = "Enumeration",
			NumValues = 3,
			MinValue = 0,
			MaxValue = 2,
			Fields =
			{
				{ Name = "Male", Type = "Unitsex", EnumValue = 0 },
				{ Name = "Female", Type = "Unitsex", EnumValue = 1 },
				{ Name = "None", Type = "Unitsex", EnumValue = 2 },
			},
		},
		{
			Name = "CharCustomizationChoice",
			Type = "Structure",
			Fields =
			{
				{ Name = "id", Type = "number", Nilable = false },
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "swatchColor1", Type = "table", Mixin = "ColorMixin", Nilable = true },
				{ Name = "swatchColor2", Type = "table", Mixin = "ColorMixin", Nilable = true },
			},
		},
		{
			Name = "CharCustomizationOption",
			Type = "Structure",
			Fields =
			{
				{ Name = "id", Type = "number", Nilable = false },
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "orderIndex", Type = "number", Nilable = false },
				{ Name = "optionType", Type = "ChrCustomizationOptionType", Nilable = false },
				{ Name = "choices", Type = "table", InnerType = "CharCustomizationChoice", Nilable = false },
				{ Name = "currentChoiceIndex", Type = "number", Nilable = false },
			},
		},
	},
};

APIDocumentation:AddDocumentationTable(CharacterCustomizationShared);local ChatConstants =
{
	Tables =
	{
		{
			Name = "ChatChannelRuleset",
			Type = "Enumeration",
			NumValues = 2,
			MinValue = 0,
			MaxValue = 1,
			Fields =
			{
				{ Name = "None", Type = "ChatChannelRuleset", EnumValue = 0 },
				{ Name = "Mentor", Type = "ChatChannelRuleset", EnumValue = 1 },
			},
		},
		{
			Name = "ChatChannelType",
			Type = "Enumeration",
			NumValues = 5,
			MinValue = 0,
			MaxValue = 4,
			Fields =
			{
				{ Name = "None", Type = "ChatChannelType", EnumValue = 0 },
				{ Name = "Custom", Type = "ChatChannelType", EnumValue = 1 },
				{ Name = "PrivateParty", Type = "ChatChannelType", EnumValue = 2 },
				{ Name = "PublicParty", Type = "ChatChannelType", EnumValue = 3 },
				{ Name = "Communities", Type = "ChatChannelType", EnumValue = 4 },
			},
		},
	},
};

APIDocumentation:AddDocumentationTable(ChatConstants);local ClubShared =
{
	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(ClubShared);local Color =
{
	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(Color);local CovenantCallingsConstants =
{
	Tables =
	{
		{
			Name = "CallingStates",
			Type = "Enumeration",
			NumValues = 3,
			MinValue = 0,
			MaxValue = 2,
			Fields =
			{
				{ Name = "QuestOffer", Type = "CallingStates", EnumValue = 0 },
				{ Name = "QuestActive", Type = "CallingStates", EnumValue = 1 },
				{ Name = "QuestCompleted", Type = "CallingStates", EnumValue = 2 },
			},
		},
		{
			Name = "Callings",
			Type = "Constants",
			Values =
			{
				{ Name = "MaxCallings", Type = "number", Value = 3 },
			},
		},
	},
};

APIDocumentation:AddDocumentationTable(CovenantCallingsConstants);local CovenantsConstants =
{
	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(CovenantsConstants);local DamageConstants =
{
	Tables =
	{
		{
			Name = "Damageclass",
			Type = "Enumeration",
			NumValues = 44,
			MinValue = 0,
			MaxValue = 127,
			Fields =
			{
				{ Name = "Physical", Type = "Damageclass", EnumValue = 0 },
				{ Name = "Holy", Type = "Damageclass", EnumValue = 1 },
				{ Name = "Fire", Type = "Damageclass", EnumValue = 2 },
				{ Name = "Nature", Type = "Damageclass", EnumValue = 3 },
				{ Name = "Frost", Type = "Damageclass", EnumValue = 4 },
				{ Name = "Shadow", Type = "Damageclass", EnumValue = 5 },
				{ Name = "Arcane", Type = "Damageclass", EnumValue = 6 },
				{ Name = "FirstResist", Type = "Damageclass", EnumValue = 2 },
				{ Name = "LastResist", Type = "Damageclass", EnumValue = 6 },
				{ Name = "MaskPhysical", Type = "Damageclass", EnumValue = 1 },
				{ Name = "MaskHoly", Type = "Damageclass", EnumValue = 2 },
				{ Name = "MaskFire", Type = "Damageclass", EnumValue = 4 },
				{ Name = "MaskNature", Type = "Damageclass", EnumValue = 8 },
				{ Name = "MaskFrost", Type = "Damageclass", EnumValue = 16 },
				{ Name = "MaskShadow", Type = "Damageclass", EnumValue = 32 },
				{ Name = "MaskArcane", Type = "Damageclass", EnumValue = 64 },
				{ Name = "AllPhysical", Type = "Damageclass", EnumValue = 1 },
				{ Name = "AllMagical", Type = "Damageclass", EnumValue = 126 },
				{ Name = "All", Type = "Damageclass", EnumValue = 127 },
				{ Name = "MaskFlamestrike", Type = "Damageclass", EnumValue = 5 },
				{ Name = "MaskFroststrike", Type = "Damageclass", EnumValue = 17 },
				{ Name = "MaskSpellstrike", Type = "Damageclass", EnumValue = 65 },
				{ Name = "MaskShadowstrike", Type = "Damageclass", EnumValue = 33 },
				{ Name = "MaskStormstrike", Type = "Damageclass", EnumValue = 9 },
				{ Name = "MaskHolystrike", Type = "Damageclass", EnumValue = 3 },
				{ Name = "MaskFrostfire", Type = "Damageclass", EnumValue = 20 },
				{ Name = "MaskSpellfire", Type = "Damageclass", EnumValue = 68 },
				{ Name = "MaskFirestorm", Type = "Damageclass", EnumValue = 12 },
				{ Name = "MaskShadowflame", Type = "Damageclass", EnumValue = 36 },
				{ Name = "MaskHolyfire", Type = "Damageclass", EnumValue = 6 },
				{ Name = "MaskSpellfrost", Type = "Damageclass", EnumValue = 80 },
				{ Name = "MaskFroststorm", Type = "Damageclass", EnumValue = 24 },
				{ Name = "MaskShadowfrost", Type = "Damageclass", EnumValue = 48 },
				{ Name = "MaskHolyfrost", Type = "Damageclass", EnumValue = 18 },
				{ Name = "MaskSpellstorm", Type = "Damageclass", EnumValue = 72 },
				{ Name = "MaskSpellshadow", Type = "Damageclass", EnumValue = 96 },
				{ Name = "MaskDivine", Type = "Damageclass", EnumValue = 66 },
				{ Name = "MaskShadowstorm", Type = "Damageclass", EnumValue = 40 },
				{ Name = "MaskHolystorm", Type = "Damageclass", EnumValue = 10 },
				{ Name = "MaskTwilight", Type = "Damageclass", EnumValue = 34 },
				{ Name = "MaskElemental", Type = "Damageclass", EnumValue = 28 },
				{ Name = "MaskChromatic", Type = "Damageclass", EnumValue = 62 },
				{ Name = "MaskMagical", Type = "Damageclass", EnumValue = 126 },
				{ Name = "MaskChaos", Type = "Damageclass", EnumValue = 124 },
			},
		},
		{
			Name = "DamageclassType",
			Type = "Enumeration",
			NumValues = 2,
			MinValue = 0,
			MaxValue = 1,
			Fields =
			{
				{ Name = "Physical", Type = "DamageclassType", EnumValue = 0 },
				{ Name = "Magical", Type = "DamageclassType", EnumValue = 1 },
			},
		},
		{
			Name = "EnvironmentalDamageFlags",
			Type = "Enumeration",
			NumValues = 2,
			MinValue = 1,
			MaxValue = 2,
			Fields =
			{
				{ Name = "OneTime", Type = "EnvironmentalDamageFlags", EnumValue = 1 },
				{ Name = "DmgIsPct", Type = "EnvironmentalDamageFlags", EnumValue = 2 },
			},
		},
		{
			Name = "Environmentaldamagetype",
			Type = "Enumeration",
			NumValues = 6,
			MinValue = 0,
			MaxValue = 5,
			Fields =
			{
				{ Name = "Fatigue", Type = "Environmentaldamagetype", EnumValue = 0 },
				{ Name = "Drowning", Type = "Environmentaldamagetype", EnumValue = 1 },
				{ Name = "Falling", Type = "Environmentaldamagetype", EnumValue = 2 },
				{ Name = "Lava", Type = "Environmentaldamagetype", EnumValue = 3 },
				{ Name = "Slime", Type = "Environmentaldamagetype", EnumValue = 4 },
				{ Name = "Fire", Type = "Environmentaldamagetype", EnumValue = 5 },
			},
		},
	},
};

APIDocumentation:AddDocumentationTable(DamageConstants);local GarrisonConstants =
{
	Tables =
	{
		{
			Name = "CovenantType",
			Type = "Enumeration",
			NumValues = 5,
			MinValue = 0,
			MaxValue = 4,
			Fields =
			{
				{ Name = "None", Type = "CovenantType", EnumValue = 0 },
				{ Name = "Kyrian", Type = "CovenantType", EnumValue = 1 },
				{ Name = "Venthyr", Type = "CovenantType", EnumValue = 2 },
				{ Name = "NightFae", Type = "CovenantType", EnumValue = 3 },
				{ Name = "Necrolord", Type = "CovenantType", EnumValue = 4 },
			},
		},
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
			Name = "GarrAutoCombatantRole",
			Type = "Enumeration",
			NumValues = 6,
			MinValue = 0,
			MaxValue = 5,
			Fields =
			{
				{ Name = "None", Type = "GarrAutoCombatantRole", EnumValue = 0 },
				{ Name = "Melee", Type = "GarrAutoCombatantRole", EnumValue = 1 },
				{ Name = "RangedPhysical", Type = "GarrAutoCombatantRole", EnumValue = 2 },
				{ Name = "RangedMagic", Type = "GarrAutoCombatantRole", EnumValue = 3 },
				{ Name = "HealSupport", Type = "GarrAutoCombatantRole", EnumValue = 4 },
				{ Name = "Tank", Type = "GarrAutoCombatantRole", EnumValue = 5 },
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
			NumValues = 10,
			MinValue = 0,
			MaxValue = 9,
			Fields =
			{
				{ Name = "MeleeDamage", Type = "GarrAutoMissionEventType", EnumValue = 0 },
				{ Name = "RangeDamage", Type = "GarrAutoMissionEventType", EnumValue = 1 },
				{ Name = "SpellMeleeDamage", Type = "GarrAutoMissionEventType", EnumValue = 2 },
				{ Name = "SpellRangeDamage", Type = "GarrAutoMissionEventType", EnumValue = 3 },
				{ Name = "Heal", Type = "GarrAutoMissionEventType", EnumValue = 4 },
				{ Name = "PeriodicDamage", Type = "GarrAutoMissionEventType", EnumValue = 5 },
				{ Name = "PeriodicHeal", Type = "GarrAutoMissionEventType", EnumValue = 6 },
				{ Name = "ApplyAura", Type = "GarrAutoMissionEventType", EnumValue = 7 },
				{ Name = "RemoveAura", Type = "GarrAutoMissionEventType", EnumValue = 8 },
				{ Name = "Died", Type = "GarrAutoMissionEventType", EnumValue = 9 },
			},
		},
		{
			Name = "GarrAutoPreviewTargetType",
			Type = "Enumeration",
			NumValues = 5,
			MinValue = 0,
			MaxValue = 8,
			Fields =
			{
				{ Name = "None", Type = "GarrAutoPreviewTargetType", EnumValue = 0 },
				{ Name = "Damage", Type = "GarrAutoPreviewTargetType", EnumValue = 1 },
				{ Name = "Heal", Type = "GarrAutoPreviewTargetType", EnumValue = 2 },
				{ Name = "Buff", Type = "GarrAutoPreviewTargetType", EnumValue = 4 },
				{ Name = "Debuff", Type = "GarrAutoPreviewTargetType", EnumValue = 8 },
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
			NumValues = 4,
			MinValue = 0,
			MaxValue = 3,
			Fields =
			{
				{ Name = "Initial", Type = "GarrTalentCostType", EnumValue = 0 },
				{ Name = "Respec", Type = "GarrTalentCostType", EnumValue = 1 },
				{ Name = "MakePermanent", Type = "GarrTalentCostType", EnumValue = 2 },
				{ Name = "TreeReset", Type = "GarrTalentCostType", EnumValue = 3 },
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
			NumValues = 8,
			MinValue = 0,
			MaxValue = 7,
			Fields =
			{
				{ Name = "Generic", Type = "GarrTalentFeatureType", EnumValue = 0 },
				{ Name = "AnimaDiversion", Type = "GarrTalentFeatureType", EnumValue = 1 },
				{ Name = "TravelPortals", Type = "GarrTalentFeatureType", EnumValue = 2 },
				{ Name = "Adventures", Type = "GarrTalentFeatureType", EnumValue = 3 },
				{ Name = "ReservoirUpgrades", Type = "GarrTalentFeatureType", EnumValue = 4 },
				{ Name = "SanctumUnique", Type = "GarrTalentFeatureType", EnumValue = 5 },
				{ Name = "SoulBinds", Type = "GarrTalentFeatureType", EnumValue = 6 },
				{ Name = "AnimaDiversionMap", Type = "GarrTalentFeatureType", EnumValue = 7 },
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
			Name = "GarrTalentSocketType",
			Type = "Enumeration",
			NumValues = 3,
			MinValue = 0,
			MaxValue = 2,
			Fields =
			{
				{ Name = "None", Type = "GarrTalentSocketType", EnumValue = 0 },
				{ Name = "Spell", Type = "GarrTalentSocketType", EnumValue = 1 },
				{ Name = "Conduit", Type = "GarrTalentSocketType", EnumValue = 2 },
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
			NumValues = 4,
			MinValue = 0,
			MaxValue = 3,
			Fields =
			{
				{ Name = "Generic", Type = "GarrTalentUI", EnumValue = 0 },
				{ Name = "CovenantSanctum", Type = "GarrTalentUI", EnumValue = 1 },
				{ Name = "SoulBinds", Type = "GarrTalentUI", EnumValue = 2 },
				{ Name = "AnimaDiversionMap", Type = "GarrTalentUI", EnumValue = 3 },
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
		{
			Name = "GarrisonConstsExposed",
			Type = "Constants",
			Values =
			{
				{ Name = "GARRISON_AUTO_COMBATANT_FULL_HEAL_COST", Type = "number", Value = 100 },
			},
		},
	},
};

APIDocumentation:AddDocumentationTable(GarrisonConstants);local GarrisonShared =
{
	Tables =
	{
		{
			Name = "GarrisonAbilityEffect",
			Type = "Structure",
			Fields =
			{
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "description", Type = "string", Nilable = false },
				{ Name = "icon", Type = "number", Nilable = false },
				{ Name = "factor", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GarrisonFollowerAbilityInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "id", Type = "number", Nilable = false },
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "description", Type = "string", Nilable = false },
				{ Name = "icon", Type = "number", Nilable = false },
				{ Name = "isTrait", Type = "bool", Nilable = false },
				{ Name = "isSpecialization", Type = "bool", Nilable = false },
				{ Name = "temporary", Type = "bool", Nilable = false },
				{ Name = "category", Type = "string", Nilable = true },
				{ Name = "counters", Type = "table", InnerType = "GarrisonAbilityEffect", Nilable = false },
				{ Name = "isEmptySlot", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "GarrisonTalentCurrencyCostInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "currencyType", Type = "number", Nilable = false },
				{ Name = "currencyQuantity", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GarrisonTalentInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "id", Type = "number", Nilable = false },
				{ Name = "ability", Type = "GarrisonFollowerAbilityInfo", Nilable = false },
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "icon", Type = "number", Nilable = false },
				{ Name = "tier", Type = "number", Nilable = false },
				{ Name = "uiOrder", Type = "number", Nilable = false },
				{ Name = "type", Type = "number", Nilable = false },
				{ Name = "prerequisiteTalentID", Type = "number", Nilable = true },
				{ Name = "selected", Type = "bool", Nilable = false },
				{ Name = "researched", Type = "bool", Nilable = false },
				{ Name = "researchDuration", Type = "number", Nilable = false },
				{ Name = "startTime", Type = "number", Nilable = false },
				{ Name = "timeRemaining", Type = "number", Nilable = false },
				{ Name = "researchGoldCost", Type = "number", Nilable = false },
				{ Name = "researchCurrencyCosts", Type = "table", InnerType = "GarrisonTalentCurrencyCostInfo", Nilable = false },
				{ Name = "talentAvailability", Type = "GarrisonTalentAvailability", Nilable = false },
				{ Name = "talentRank", Type = "number", Nilable = false },
				{ Name = "talentMaxRank", Type = "number", Nilable = false },
				{ Name = "isBeingResearched", Type = "bool", Nilable = false },
				{ Name = "description", Type = "string", Nilable = false },
				{ Name = "perkSpellID", Type = "number", Nilable = false },
				{ Name = "researchDescription", Type = "string", Nilable = true },
				{ Name = "playerConditionReason", Type = "string", Nilable = true },
				{ Name = "socketInfo", Type = "GarrisonTalentSocketInfo", Nilable = false },
			},
		},
		{
			Name = "GarrisonTalentSocketInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "socketType", Type = "number", Nilable = false },
				{ Name = "socketSubtype", Type = "number", Nilable = false },
				{ Name = "misc0", Type = "number", Nilable = false },
				{ Name = "misc1", Type = "number", Nilable = false },
			},
		},
	},
};

APIDocumentation:AddDocumentationTable(GarrisonShared);local GuildInfoShared =
{
	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(GuildInfoShared);local ItemConstants =
{
	Tables =
	{
		{
			Name = "InventoryType",
			Type = "Enumeration",
			NumValues = 29,
			MinValue = 0,
			MaxValue = 28,
			Fields =
			{
				{ Name = "IndexNonEquipType", Type = "InventoryType", EnumValue = 0 },
				{ Name = "IndexHeadType", Type = "InventoryType", EnumValue = 1 },
				{ Name = "IndexNeckType", Type = "InventoryType", EnumValue = 2 },
				{ Name = "IndexShoulderType", Type = "InventoryType", EnumValue = 3 },
				{ Name = "IndexBodyType", Type = "InventoryType", EnumValue = 4 },
				{ Name = "IndexChestType", Type = "InventoryType", EnumValue = 5 },
				{ Name = "IndexWaistType", Type = "InventoryType", EnumValue = 6 },
				{ Name = "IndexLegsType", Type = "InventoryType", EnumValue = 7 },
				{ Name = "IndexFeetType", Type = "InventoryType", EnumValue = 8 },
				{ Name = "IndexWristType", Type = "InventoryType", EnumValue = 9 },
				{ Name = "IndexHandType", Type = "InventoryType", EnumValue = 10 },
				{ Name = "IndexFingerType", Type = "InventoryType", EnumValue = 11 },
				{ Name = "IndexTrinketType", Type = "InventoryType", EnumValue = 12 },
				{ Name = "IndexWeaponType", Type = "InventoryType", EnumValue = 13 },
				{ Name = "IndexShieldType", Type = "InventoryType", EnumValue = 14 },
				{ Name = "IndexRangedType", Type = "InventoryType", EnumValue = 15 },
				{ Name = "IndexCloakType", Type = "InventoryType", EnumValue = 16 },
				{ Name = "Index2HweaponType", Type = "InventoryType", EnumValue = 17 },
				{ Name = "IndexBagType", Type = "InventoryType", EnumValue = 18 },
				{ Name = "IndexTabardType", Type = "InventoryType", EnumValue = 19 },
				{ Name = "IndexRobeType", Type = "InventoryType", EnumValue = 20 },
				{ Name = "IndexWeaponmainhandType", Type = "InventoryType", EnumValue = 21 },
				{ Name = "IndexWeaponoffhandType", Type = "InventoryType", EnumValue = 22 },
				{ Name = "IndexHoldableType", Type = "InventoryType", EnumValue = 23 },
				{ Name = "IndexAmmoType", Type = "InventoryType", EnumValue = 24 },
				{ Name = "IndexThrownType", Type = "InventoryType", EnumValue = 25 },
				{ Name = "IndexRangedrightType", Type = "InventoryType", EnumValue = 26 },
				{ Name = "IndexQuiverType", Type = "InventoryType", EnumValue = 27 },
				{ Name = "IndexRelicType", Type = "InventoryType", EnumValue = 28 },
			},
		},
		{
			Name = "ItemQuality",
			Type = "Enumeration",
			NumValues = 9,
			MinValue = 0,
			MaxValue = 8,
			Fields =
			{
				{ Name = "Poor", Type = "ItemQuality", EnumValue = 0 },
				{ Name = "Common", Type = "ItemQuality", EnumValue = 1 },
				{ Name = "Uncommon", Type = "ItemQuality", EnumValue = 2 },
				{ Name = "Rare", Type = "ItemQuality", EnumValue = 3 },
				{ Name = "Epic", Type = "ItemQuality", EnumValue = 4 },
				{ Name = "Legendary", Type = "ItemQuality", EnumValue = 5 },
				{ Name = "Artifact", Type = "ItemQuality", EnumValue = 6 },
				{ Name = "Heirloom", Type = "ItemQuality", EnumValue = 7 },
				{ Name = "WoWToken", Type = "ItemQuality", EnumValue = 8 },
			},
		},
	},
};

APIDocumentation:AddDocumentationTable(ItemConstants);local ItemLocationShared =
{
	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(ItemLocationShared);local ItemShared =
{
	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(ItemShared);local LegendaryCraftingTypes =
{
	Tables =
	{
		{
			Name = "RuneforgePowerState",
			Type = "Enumeration",
			NumValues = 3,
			MinValue = 0,
			MaxValue = 2,
			Fields =
			{
				{ Name = "Available", Type = "RuneforgePowerState", EnumValue = 0 },
				{ Name = "Unavailable", Type = "RuneforgePowerState", EnumValue = 1 },
				{ Name = "Invalid", Type = "RuneforgePowerState", EnumValue = 2 },
			},
		},
	},
};

APIDocumentation:AddDocumentationTable(LegendaryCraftingTypes);local LevelConstants =
{
	Tables =
	{
		{
			Name = "LevelConstsExposed",
			Type = "Constants",
			Values =
			{
				{ Name = "MIN_RES_SICKNESS_LEVEL", Type = "number", Value = 10 },
			},
		},
	},
};

APIDocumentation:AddDocumentationTable(LevelConstants);local ModelScene =
{
	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(ModelScene);local NamePlate =
{
	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(NamePlate);local PetScalingConstants =
{
	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(PetScalingConstants);local Player =
{
	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(Player);local PlayerMentorshipConstants =
{
	Tables =
	{
		{
			Name = "PlayerMentorshipApplicationResult",
			Type = "Enumeration",
			NumValues = 3,
			MinValue = 0,
			MaxValue = 2,
			Fields =
			{
				{ Name = "Success", Type = "PlayerMentorshipApplicationResult", EnumValue = 0 },
				{ Name = "AlreadyMentor", Type = "PlayerMentorshipApplicationResult", EnumValue = 1 },
				{ Name = "Ineligible", Type = "PlayerMentorshipApplicationResult", EnumValue = 2 },
			},
		},
		{
			Name = "PlayerMentorshipStatus",
			Type = "Enumeration",
			NumValues = 3,
			MinValue = 0,
			MaxValue = 2,
			Fields =
			{
				{ Name = "None", Type = "PlayerMentorshipStatus", EnumValue = 0 },
				{ Name = "Newcomer", Type = "PlayerMentorshipStatus", EnumValue = 1 },
				{ Name = "Mentor", Type = "PlayerMentorshipStatus", EnumValue = 2 },
			},
		},
	},
};

APIDocumentation:AddDocumentationTable(PlayerMentorshipConstants);local QuestConstants =
{
	Tables =
	{
		{
			Name = "QuestTagType",
			Type = "Enumeration",
			NumValues = 16,
			MinValue = 0,
			MaxValue = 15,
			Fields =
			{
				{ Name = "Tag", Type = "QuestTagType", EnumValue = 0 },
				{ Name = "Profession", Type = "QuestTagType", EnumValue = 1 },
				{ Name = "Normal", Type = "QuestTagType", EnumValue = 2 },
				{ Name = "PvP", Type = "QuestTagType", EnumValue = 3 },
				{ Name = "PetBattle", Type = "QuestTagType", EnumValue = 4 },
				{ Name = "Bounty", Type = "QuestTagType", EnumValue = 5 },
				{ Name = "Dungeon", Type = "QuestTagType", EnumValue = 6 },
				{ Name = "Invasion", Type = "QuestTagType", EnumValue = 7 },
				{ Name = "Raid", Type = "QuestTagType", EnumValue = 8 },
				{ Name = "Contribution", Type = "QuestTagType", EnumValue = 9 },
				{ Name = "RatedReward", Type = "QuestTagType", EnumValue = 10 },
				{ Name = "InvasionWrapper", Type = "QuestTagType", EnumValue = 11 },
				{ Name = "FactionAssault", Type = "QuestTagType", EnumValue = 12 },
				{ Name = "Islands", Type = "QuestTagType", EnumValue = 13 },
				{ Name = "Threat", Type = "QuestTagType", EnumValue = 14 },
				{ Name = "CovenantCalling", Type = "QuestTagType", EnumValue = 15 },
			},
		},
		{
			Name = "RelativeContentDifficulty",
			Type = "Enumeration",
			NumValues = 5,
			MinValue = 0,
			MaxValue = 4,
			Fields =
			{
				{ Name = "Trivial", Type = "RelativeContentDifficulty", EnumValue = 0 },
				{ Name = "Easy", Type = "RelativeContentDifficulty", EnumValue = 1 },
				{ Name = "Fair", Type = "RelativeContentDifficulty", EnumValue = 2 },
				{ Name = "Difficult", Type = "RelativeContentDifficulty", EnumValue = 3 },
				{ Name = "Impossible", Type = "RelativeContentDifficulty", EnumValue = 4 },
			},
		},
		{
			Name = "QuestWatchConsts",
			Type = "Constants",
			Values =
			{
				{ Name = "MAX_QUEST_WATCHES", Type = "number", Value = 25 },
				{ Name = "MAX_WORLD_QUEST_WATCHES_AUTOMATIC", Type = "number", Value = 1 },
				{ Name = "MAX_WORLD_QUEST_WATCHES_MANUAL", Type = "number", Value = 5 },
			},
		},
	},
};

APIDocumentation:AddDocumentationTable(QuestConstants);local QuestSessionConstants =
{
	Tables =
	{
		{
			Name = "QuestSessionCommand",
			Type = "Enumeration",
			NumValues = 4,
			MinValue = 0,
			MaxValue = 3,
			Fields =
			{
				{ Name = "None", Type = "QuestSessionCommand", EnumValue = 0 },
				{ Name = "Start", Type = "QuestSessionCommand", EnumValue = 1 },
				{ Name = "Stop", Type = "QuestSessionCommand", EnumValue = 2 },
				{ Name = "SessionActiveNoCommand", Type = "QuestSessionCommand", EnumValue = 3 },
			},
		},
		{
			Name = "QuestSessionResult",
			Type = "Enumeration",
			NumValues = 32,
			MinValue = 0,
			MaxValue = 31,
			Fields =
			{
				{ Name = "Ok", Type = "QuestSessionResult", EnumValue = 0 },
				{ Name = "NotInParty", Type = "QuestSessionResult", EnumValue = 1 },
				{ Name = "InvalidOwner", Type = "QuestSessionResult", EnumValue = 2 },
				{ Name = "AlreadyActive", Type = "QuestSessionResult", EnumValue = 3 },
				{ Name = "NotActive", Type = "QuestSessionResult", EnumValue = 4 },
				{ Name = "InRaid", Type = "QuestSessionResult", EnumValue = 5 },
				{ Name = "OwnerRefused", Type = "QuestSessionResult", EnumValue = 6 },
				{ Name = "Timeout", Type = "QuestSessionResult", EnumValue = 7 },
				{ Name = "Disabled", Type = "QuestSessionResult", EnumValue = 8 },
				{ Name = "Started", Type = "QuestSessionResult", EnumValue = 9 },
				{ Name = "Stopped", Type = "QuestSessionResult", EnumValue = 10 },
				{ Name = "Joined", Type = "QuestSessionResult", EnumValue = 11 },
				{ Name = "Left", Type = "QuestSessionResult", EnumValue = 12 },
				{ Name = "OwnerLeft", Type = "QuestSessionResult", EnumValue = 13 },
				{ Name = "ReadyCheckFailed", Type = "QuestSessionResult", EnumValue = 14 },
				{ Name = "PartyDestroyed", Type = "QuestSessionResult", EnumValue = 15 },
				{ Name = "MemberTimeout", Type = "QuestSessionResult", EnumValue = 16 },
				{ Name = "AlreadyMember", Type = "QuestSessionResult", EnumValue = 17 },
				{ Name = "NotOwner", Type = "QuestSessionResult", EnumValue = 18 },
				{ Name = "AlreadyOwner", Type = "QuestSessionResult", EnumValue = 19 },
				{ Name = "AlreadyJoined", Type = "QuestSessionResult", EnumValue = 20 },
				{ Name = "NotMember", Type = "QuestSessionResult", EnumValue = 21 },
				{ Name = "Busy", Type = "QuestSessionResult", EnumValue = 22 },
				{ Name = "JoinRejected", Type = "QuestSessionResult", EnumValue = 23 },
				{ Name = "Logout", Type = "QuestSessionResult", EnumValue = 24 },
				{ Name = "Empty", Type = "QuestSessionResult", EnumValue = 25 },
				{ Name = "QuestNotCompleted", Type = "QuestSessionResult", EnumValue = 26 },
				{ Name = "Resync", Type = "QuestSessionResult", EnumValue = 27 },
				{ Name = "Restricted", Type = "QuestSessionResult", EnumValue = 28 },
				{ Name = "InPetBattle", Type = "QuestSessionResult", EnumValue = 29 },
				{ Name = "InvalidPublicParty", Type = "QuestSessionResult", EnumValue = 30 },
				{ Name = "Unknown", Type = "QuestSessionResult", EnumValue = 31 },
			},
		},
	},
};

APIDocumentation:AddDocumentationTable(QuestSessionConstants);local QueueSpecific =
{
	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(QueueSpecific);local RecruitAFriendShared =
{
	Tables =
	{
		{
			Name = "RafLinkType",
			Type = "Enumeration",
			NumValues = 4,
			MinValue = 0,
			MaxValue = 3,
			Fields =
			{
				{ Name = "None", Type = "RafLinkType", EnumValue = 0 },
				{ Name = "Recruit", Type = "RafLinkType", EnumValue = 1 },
				{ Name = "Friend", Type = "RafLinkType", EnumValue = 2 },
				{ Name = "Both", Type = "RafLinkType", EnumValue = 3 },
			},
		},
	},
};

APIDocumentation:AddDocumentationTable(RecruitAFriendShared);local ScriptRegionShared =
{
	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(ScriptRegionShared);local SuperTrackManagerShared =
{
	Tables =
	{
		{
			Name = "SuperTrackingType",
			Type = "Enumeration",
			NumValues = 4,
			MinValue = 0,
			MaxValue = 3,
			Fields =
			{
				{ Name = "Quest", Type = "SuperTrackingType", EnumValue = 0 },
				{ Name = "UserWaypoint", Type = "SuperTrackingType", EnumValue = 1 },
				{ Name = "Corpse", Type = "SuperTrackingType", EnumValue = 2 },
				{ Name = "Scenario", Type = "SuperTrackingType", EnumValue = 3 },
			},
		},
	},
};

APIDocumentation:AddDocumentationTable(SuperTrackManagerShared);local TextureShared =
{
	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(TextureShared);local Time =
{
	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(Time);local TradeSkillUITypes =
{
	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(TradeSkillUITypes);local UIWidgetManagerShared =
{
	Tables =
	{
		{
			Name = "UIWidgetLayoutDirection",
			Type = "Enumeration",
			NumValues = 5,
			MinValue = 0,
			MaxValue = 4,
			Fields =
			{
				{ Name = "Default", Type = "UIWidgetLayoutDirection", EnumValue = 0 },
				{ Name = "Vertical", Type = "UIWidgetLayoutDirection", EnumValue = 1 },
				{ Name = "Horizontal", Type = "UIWidgetLayoutDirection", EnumValue = 2 },
				{ Name = "Overlap", Type = "UIWidgetLayoutDirection", EnumValue = 3 },
				{ Name = "HorizontalForceNewRow", Type = "UIWidgetLayoutDirection", EnumValue = 4 },
			},
		},
		{
			Name = "UIWidgetScale",
			Type = "Enumeration",
			NumValues = 6,
			MinValue = 0,
			MaxValue = 5,
			Fields =
			{
				{ Name = "OneHundred", Type = "UIWidgetScale", EnumValue = 0 },
				{ Name = "Ninty", Type = "UIWidgetScale", EnumValue = 1 },
				{ Name = "Eighty", Type = "UIWidgetScale", EnumValue = 2 },
				{ Name = "Seventy", Type = "UIWidgetScale", EnumValue = 3 },
				{ Name = "Sixty", Type = "UIWidgetScale", EnumValue = 4 },
				{ Name = "Fifty", Type = "UIWidgetScale", EnumValue = 5 },
			},
		},
		{
			Name = "UIWidgetSetLayoutDirection",
			Type = "Enumeration",
			NumValues = 2,
			MinValue = 0,
			MaxValue = 1,
			Fields =
			{
				{ Name = "Vertical", Type = "UIWidgetSetLayoutDirection", EnumValue = 0 },
				{ Name = "Horizontal", Type = "UIWidgetSetLayoutDirection", EnumValue = 1 },
			},
		},
		{
			Name = "UIWidgetVisualizationType",
			Type = "Enumeration",
			NumValues = 21,
			MinValue = 0,
			MaxValue = 20,
			Fields =
			{
				{ Name = "IconAndText", Type = "UIWidgetVisualizationType", EnumValue = 0 },
				{ Name = "CaptureBar", Type = "UIWidgetVisualizationType", EnumValue = 1 },
				{ Name = "StatusBar", Type = "UIWidgetVisualizationType", EnumValue = 2 },
				{ Name = "DoubleStatusBar", Type = "UIWidgetVisualizationType", EnumValue = 3 },
				{ Name = "IconTextAndBackground", Type = "UIWidgetVisualizationType", EnumValue = 4 },
				{ Name = "DoubleIconAndText", Type = "UIWidgetVisualizationType", EnumValue = 5 },
				{ Name = "StackedResourceTracker", Type = "UIWidgetVisualizationType", EnumValue = 6 },
				{ Name = "IconTextAndCurrencies", Type = "UIWidgetVisualizationType", EnumValue = 7 },
				{ Name = "TextWithState", Type = "UIWidgetVisualizationType", EnumValue = 8 },
				{ Name = "HorizontalCurrencies", Type = "UIWidgetVisualizationType", EnumValue = 9 },
				{ Name = "BulletTextList", Type = "UIWidgetVisualizationType", EnumValue = 10 },
				{ Name = "ScenarioHeaderCurrenciesAndBackground", Type = "UIWidgetVisualizationType", EnumValue = 11 },
				{ Name = "TextureAndText", Type = "UIWidgetVisualizationType", EnumValue = 12 },
				{ Name = "SpellDisplay", Type = "UIWidgetVisualizationType", EnumValue = 13 },
				{ Name = "DoubleStateIconRow", Type = "UIWidgetVisualizationType", EnumValue = 14 },
				{ Name = "TextureAndTextRow", Type = "UIWidgetVisualizationType", EnumValue = 15 },
				{ Name = "ZoneControl", Type = "UIWidgetVisualizationType", EnumValue = 16 },
				{ Name = "CaptureZone", Type = "UIWidgetVisualizationType", EnumValue = 17 },
				{ Name = "TextureWithAnimation", Type = "UIWidgetVisualizationType", EnumValue = 18 },
				{ Name = "DiscreteProgressSteps", Type = "UIWidgetVisualizationType", EnumValue = 19 },
				{ Name = "ScenarioHeaderTimer", Type = "UIWidgetVisualizationType", EnumValue = 20 },
			},
		},
	},
};

APIDocumentation:AddDocumentationTable(UIWidgetManagerShared);local UnitShared =
{
	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(UnitShared);local VectorShared =
{
	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(VectorShared);local VehicleConstants =
{
	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(VehicleConstants);