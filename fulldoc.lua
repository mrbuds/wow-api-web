local AccountInfo =
{
	Name = "AccountInfo",
	Type = "System",
	Namespace = "C_AccountInfo",

	Functions =
	{
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
				{ Name = "name", Type = "string", Nilable = false },
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

APIDocumentation:AddDocumentationTable(AlliedRacesFrame);local AreaPoiInfo =
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
			Name = "GetAreaPOITimeLeft",
			Type = "Function",

			Arguments =
			{
				{ Name = "areaPoiID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "minutesLeft", Type = "number", Nilable = false },
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
	},

	Events =
	{
		{
			Name = "AuctionBidderListUpdate",
			Type = "Event",
			LiteralName = "AUCTION_BIDDER_LIST_UPDATE",
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
			Name = "AuctionHouseShow",
			Type = "Event",
			LiteralName = "AUCTION_HOUSE_SHOW",
		},
		{
			Name = "AuctionItemListUpdate",
			Type = "Event",
			LiteralName = "AUCTION_ITEM_LIST_UPDATE",
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
			Name = "AuctionOwnedListUpdate",
			Type = "Event",
			LiteralName = "AUCTION_OWNED_LIST_UPDATE",
		},
		{
			Name = "NewAuctionUpdate",
			Type = "Event",
			LiteralName = "NEW_AUCTION_UPDATE",
		},
	},

	Tables =
	{
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
			Name = "AzeriteEmpoweredItemPowerInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "azeritePowerID", Type = "number", Nilable = false },
				{ Name = "spellID", Type = "number", Nilable = false },
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

APIDocumentation:AddDocumentationTable(AzeriteEmpoweredItem);local AzeriteItem =
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
	},

	Events =
	{
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
			Name = "BarberShopOpen",
			Type = "Event",
			LiteralName = "BARBER_SHOP_OPEN",
		},
		{
			Name = "BarberShopSuccess",
			Type = "Event",
			LiteralName = "BARBER_SHOP_SUCCESS",
		},
	},

	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(BarberShop);local BattleNet =
{
	Name = "BattleNet",
	Type = "System",
	Namespace = "C_BattleNet",

	Functions =
	{
	},

	Events =
	{
	},

	Tables =
	{
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

APIDocumentation:AddDocumentationTable(Browser);local ChallengeModeInfo =
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
			Name = "ReportPlayer",
			Type = "Function",

			Arguments =
			{
				{ Name = "complaintType", Type = "string", Nilable = false },
				{ Name = "playerLocation", Type = "table", Mixin = "PlayerLocationMixin", Nilable = true },
				{ Name = "comment", Type = "string", Nilable = true },
			},
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

APIDocumentation:AddDocumentationTable(ChatInfo);local Cinematic =
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

APIDocumentation:AddDocumentationTable(Cinematic);local ClassTrial =
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

APIDocumentation:AddDocumentationTable(ClassTrial);local CombatLog =
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
				{ Name = "token", Type = "string", Nilable = false },
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
			Name = "GetPlayerInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "teamIndex", Type = "number", Nilable = false },
				{ Name = "playerIndex", Type = "number", Nilable = false },
			},

			Returns =
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
			Name = "GetTeamHighlightColor",
			Type = "Function",

			Arguments =
			{
				{ Name = "teamIndex", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "highlightColorR", Type = "number", Nilable = false },
				{ Name = "highlightColorG", Type = "number", Nilable = false },
				{ Name = "highlightColorB", Type = "number", Nilable = false },
				{ Name = "highlightColorA", Type = "number", Nilable = false },
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
			Name = "GetTrackedDefensiveCooldowns",
			Type = "Function",

			Arguments =
			{
				{ Name = "teamIndex", Type = "number", Nilable = false },
				{ Name = "playerIndex", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "trackedDefensiveCooldowns", Type = "table", InnerType = "number", Nilable = true },
			},
		},
		{
			Name = "GetTrackedOffensiveCooldowns",
			Type = "Function",

			Arguments =
			{
				{ Name = "teamIndex", Type = "number", Nilable = false },
				{ Name = "playerIndex", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "trackedCooldowns", Type = "table", InnerType = "number", Nilable = true },
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
			Name = "IsTrackedDefensiveCooldown",
			Type = "Function",

			Arguments =
			{
				{ Name = "teamIndex", Type = "number", Nilable = false },
				{ Name = "playerIndex", Type = "number", Nilable = false },
				{ Name = "spellID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "isTrackedCooldown", Type = "bool", Nilable = false },
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
			Name = "IsTrackedOffensiveCooldown",
			Type = "Function",

			Arguments =
			{
				{ Name = "teamIndex", Type = "number", Nilable = false },
				{ Name = "playerIndex", Type = "number", Nilable = false },
				{ Name = "spellID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "isTrackedCooldown", Type = "bool", Nilable = false },
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
				{ Name = "token", Type = "string", Nilable = false },
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
	},

	Tables =
	{
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
				{ Name = "ConsoleDeviceSseoUtdated", Type = "ConfigurationWarning", EnumValue = 2 },
				{ Name = "DriverBlacklisted", Type = "ConfigurationWarning", EnumValue = 3 },
				{ Name = "DriverOutOfDate", Type = "ConfigurationWarning", EnumValue = 4 },
				{ Name = "DeviceBlacklisted", Type = "ConfigurationWarning", EnumValue = 5 },
				{ Name = "GraphicsApiwIllBeOutdated", Type = "ConfigurationWarning", EnumValue = 6 },
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
			NumValues = 10,
			MinValue = 0,
			MaxValue = 9,
			Fields =
			{
				{ Name = "CategoryDebug", Type = "ConsoleCategory", EnumValue = 0 },
				{ Name = "CategoryGraphics", Type = "ConsoleCategory", EnumValue = 1 },
				{ Name = "CategoryConsole", Type = "ConsoleCategory", EnumValue = 2 },
				{ Name = "CategoryCombat", Type = "ConsoleCategory", EnumValue = 3 },
				{ Name = "CategoryGame", Type = "ConsoleCategory", EnumValue = 4 },
				{ Name = "CategoryDefault", Type = "ConsoleCategory", EnumValue = 5 },
				{ Name = "CategoryNet", Type = "ConsoleCategory", EnumValue = 6 },
				{ Name = "CategorySound", Type = "ConsoleCategory", EnumValue = 7 },
				{ Name = "CategoryGm", Type = "ConsoleCategory", EnumValue = 8 },
				{ Name = "CategoryNone", Type = "ConsoleCategory", EnumValue = 9 },
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

APIDocumentation:AddDocumentationTable(ContributionCollector);local CreatureInfo =
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
	Name = "CurrencyInfo",
	Type = "System",
	Namespace = "C_CurrencyInfo",

	Functions =
	{
		{
			Name = "GetAzeriteCurrencyID",
			Type = "Function",

			Returns =
			{
				{ Name = "azeriteCurrencyID", Type = "number", Nilable = false },
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
			Name = "GetDateFromEpoch",
			Type = "Function",

			Arguments =
			{
				{ Name = "epoch", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "date", Type = "CalendarDate", Nilable = false },
			},
		},
		{
			Name = "GetTodaysDate",
			Type = "Function",

			Returns =
			{
				{ Name = "date", Type = "CalendarDate", Nilable = false },
			},
		},
		{
			Name = "GetYesterdaysDate",
			Type = "Function",

			Returns =
			{
				{ Name = "date", Type = "CalendarDate", Nilable = false },
			},
		},
	},

	Events =
	{
	},

	Tables =
	{
		{
			Name = "CalendarDate",
			Type = "Structure",
			Fields =
			{
				{ Name = "day", Type = "number", Nilable = false },
				{ Name = "weekDay", Type = "number", Nilable = false },
				{ Name = "month", Type = "number", Nilable = false },
				{ Name = "year", Type = "number", Nilable = false },
			},
		},
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
	},

	Tables =
	{
		{
			Name = "ExpansionDisplayInfoFeature",
			Type = "Structure",
			Fields =
			{
				{ Name = "icon", Type = "number", Nilable = false },
				{ Name = "text", Type = "string", Nilable = false },
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

APIDocumentation:AddDocumentationTable(FogOfWar);local GMTicketInfo =
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

APIDocumentation:AddDocumentationTable(GMTicketInfo);local GarrisonInfo =
{
	Name = "GarrisonInfo",
	Type = "System",
	Namespace = "C_Garrison",

	Functions =
	{
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
				{ Name = "texturePrefix", Type = "string", Nilable = false },
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
			Name = "GarrisonFollowerDeathInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "followerID", Type = "string", Nilable = false },
				{ Name = "state", Type = "number", Nilable = false },
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
			Name = "GetGossipPoiForUiMapID",
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
			Name = "GetGossipPoiInfo",
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
		},
	},

	Tables =
	{
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
			Name = "IsGuildRankAssignmentAllowed",
			Type = "Function",

			Arguments =
			{
				{ Name = "guid", Type = "string", Nilable = false },
				{ Name = "rankOrder", Type = "number", Nilable = false },
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
				{ Name = "bkgColorR", Type = "number", Nilable = true },
				{ Name = "bkgColorG", Type = "number", Nilable = true },
				{ Name = "bkgColorB", Type = "number", Nilable = true },
				{ Name = "borderColorR", Type = "number", Nilable = true },
				{ Name = "borderColorG", Type = "number", Nilable = true },
				{ Name = "borderColorB", Type = "number", Nilable = true },
				{ Name = "emblemColorR", Type = "number", Nilable = true },
				{ Name = "emblemColorG", Type = "number", Nilable = true },
				{ Name = "emblemColorB", Type = "number", Nilable = true },
				{ Name = "emblemFilename", Type = "string", Nilable = true },
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

APIDocumentation:AddDocumentationTable(HeirloomInfo);local InstanceEncounter =
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
				{ Name = "Standard", Type = "ItemQuality", EnumValue = 1 },
				{ Name = "Good", Type = "ItemQuality", EnumValue = 2 },
				{ Name = "Superior", Type = "ItemQuality", EnumValue = 3 },
				{ Name = "Epic", Type = "ItemQuality", EnumValue = 4 },
				{ Name = "Legendary", Type = "ItemQuality", EnumValue = 5 },
				{ Name = "Artifact", Type = "ItemQuality", EnumValue = 6 },
				{ Name = "Heirloom", Type = "ItemQuality", EnumValue = 7 },
				{ Name = "WoWToken", Type = "ItemQuality", EnumValue = 8 },
			},
		},
	},
};

APIDocumentation:AddDocumentationTable(Item);local ItemSocketInfo =
{
	Name = "ItemSocketInfo",
	Type = "System",
	Namespace = "C_ItemSocketInfo",

	Functions =
	{
	},

	Events =
	{
		{
			Name = "SocketInfoAccept",
			Type = "Event",
			LiteralName = "SOCKET_INFO_ACCEPT",
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
			Name = "LfgBonusFactionIdUpdated",
			Type = "Event",
			LiteralName = "LFG_BONUS_FACTION_ID_UPDATED",
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
			Name = "CopyActiveEntryInfoToCreationFields",
			Type = "Function",
		},
		{
			Name = "Search",
			Type = "Function",

			Arguments =
			{
				{ Name = "categoryID", Type = "number", Nilable = false },
				{ Name = "searchTerms", Type = "table", InnerType = "LFGSearchTerms", Nilable = false, Documentation = { "The outer table represents AND terms and the inner tables represent OR terms." } },
				{ Name = "filter", Type = "number", Nilable = false, Default = 0 },
				{ Name = "preferredFilters", Type = "number", Nilable = false, Default = 0 },
				{ Name = "languageFilter", Type = "WowLocale", Nilable = true },
			},
		},
	},

	Events =
	{
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
			Name = "LFGSearchTerms",
			Type = "Structure",
			Fields =
			{
				{ Name = "matches", Type = "table", InnerType = "string", Nilable = false, Documentation = { "Represent OR terms, 3 is the max terms considered. Terms beyond the primary are only considered on fuzzy match enabled activities, like Mythic+." } },
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

APIDocumentation:AddDocumentationTable(LFGuildInfo);local LoadingScreen =
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
			Name = "LootJournalListUpdate",
			Type = "Event",
			LiteralName = "LOOT_JOURNAL_LIST_UPDATE",
		},
		{
			Name = "LootOpened",
			Type = "Event",
			LiteralName = "LOOT_OPENED",
			Payload =
			{
				{ Name = "autoLoot", Type = "bool", Nilable = false },
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
				{ Name = "ITEM_TOAST_METHOD_LOOT", Type = "number", Nilable = false },
				{ Name = "lessAwesome", Type = "bool", Nilable = false },
				{ Name = "upgraded", Type = "bool", Nilable = false },
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

APIDocumentation:AddDocumentationTable(Loot);local LootJournal =
{
	Name = "LootJournal",
	Type = "System",
	Namespace = "C_LootJournal",

	Functions =
	{
	},

	Events =
	{
	},

	Tables =
	{
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
	},
};

APIDocumentation:AddDocumentationTable(LootJournal);local LossOfControl =
{
	Name = "LossOfControl",
	Type = "System",
	Namespace = "C_LossOfControl",

	Functions =
	{
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
			Name = "GetBountySetIDForMap",
			Type = "Function",

			Arguments =
			{
				{ Name = "uiMapID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "bountySetID", Type = "number", Nilable = false },
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
	},

	Events =
	{
		{
			Name = "NewWmoChunk",
			Type = "Event",
			LiteralName = "NEW_WMO_CHUNK",
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
		{
			Name = "MapBannerInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "areaPoiID", Type = "number", Nilable = false },
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "atlasName", Type = "string", Nilable = false },
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
				{ Name = "affixIDs", Type = "table", InnerType = "number", Nilable = false },
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
			Name = "GetSeasonBestForMap",
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
			Name = "MythicPlusMember",
			Type = "Structure",
			Fields =
			{
				{ Name = "name", Type = "string", Nilable = true },
				{ Name = "specID", Type = "number", Nilable = false },
				{ Name = "classID", Type = "number", Nilable = false },
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
	},

	Events =
	{
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
				{ Name = "widgetSetID", Type = "number", Nilable = false },
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
	},
};

APIDocumentation:AddDocumentationTable(PetJournalInfo);local PlayerLocation =
{
	Name = "PlayerLocationInfo",
	Type = "System",
	Namespace = "C_PlayerInfo",

	Functions =
	{
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
	},

	Events =
	{
	},

	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(PlayerLocation);local PvpInfo =
{
	Name = "PvpInfo",
	Type = "System",
	Namespace = "C_PvP",

	Functions =
	{
		{
			Name = "CanToggleWarMode",
			Type = "Function",

			Returns =
			{
				{ Name = "canTogglePvP", Type = "bool", Nilable = false },
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
			Name = "GetBrawlInfo",
			Type = "Function",
			Documentation = { "If nil is returned, PVP_BRAWL_INFO_UPDATED event will be sent when the data is ready." },

			Returns =
			{
				{ Name = "brawlInfo", Type = "PvpBrawlInfo", Nilable = true },
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
			Name = "HasArenaSkirmishWinToday",
			Type = "Function",

			Returns =
			{
				{ Name = "hasArenaSkirmishWinToday", Type = "bool", Nilable = false },
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
			Name = "IsPVPMap",
			Type = "Function",

			Returns =
			{
				{ Name = "isPVPMap", Type = "bool", Nilable = false },
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
			Name = "PvpBrawlInfoUpdated",
			Type = "Event",
			LiteralName = "PVP_BRAWL_INFO_UPDATED",
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
			Name = "PvpBrawlInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "shortDescription", Type = "string", Nilable = false },
				{ Name = "longDescription", Type = "string", Nilable = false },
				{ Name = "active", Type = "bool", Nilable = false },
				{ Name = "timeLeftUntilNextChange", Type = "number", Nilable = false },
				{ Name = "lfgDungeonID", Type = "number", Nilable = false },
				{ Name = "brawlType", Type = "BrawlType", Nilable = false },
				{ Name = "mapNames", Type = "table", InnerType = "string", Nilable = false },
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
	},
};

APIDocumentation:AddDocumentationTable(PvpInfo);local QuestChoice =
{
	Name = "QuestChoice",
	Type = "System",
	Namespace = "C_QuestChoice",

	Functions =
	{
	},

	Events =
	{
		{
			Name = "QuestChoiceClose",
			Type = "Event",
			LiteralName = "QUEST_CHOICE_CLOSE",
		},
		{
			Name = "QuestChoiceUpdate",
			Type = "Event",
			LiteralName = "QUEST_CHOICE_UPDATE",
		},
	},

	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(QuestChoice);local QuestLineInfo =
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
			Name = "GetQuestInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "questID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "title", Type = "string", Nilable = false },
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
			Name = "QuestHasWarModeBonus",
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
			Name = "SetMapForQuestPOIs",
			Type = "Function",

			Arguments =
			{
				{ Name = "uiMapID", Type = "number", Nilable = false },
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
	},

	Events =
	{
		{
			Name = "QuestAccepted",
			Type = "Event",
			LiteralName = "QUEST_ACCEPTED",
			Payload =
			{
				{ Name = "questIndex", Type = "number", Nilable = false },
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
				{ Name = "questIndex", Type = "number", Nilable = false },
			},
		},
		{
			Name = "QuestlineUpdate",
			Type = "Event",
			LiteralName = "QUESTLINE_UPDATE",
		},
		{
			Name = "SuperTrackedQuestChanged",
			Type = "Event",
			LiteralName = "SUPER_TRACKED_QUEST_CHANGED",
			Payload =
			{
				{ Name = "superTrackedQuestID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "TaskProgressUpdate",
			Type = "Event",
			LiteralName = "TASK_PROGRESS_UPDATE",
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
			Name = "QuestTag",
			Type = "Enumeration",
			NumValues = 10,
			MinValue = 0,
			MaxValue = 102,
			Fields =
			{
				{ Name = "Group", Type = "QuestTag", EnumValue = 1 },
				{ Name = "Pvp", Type = "QuestTag", EnumValue = 41 },
				{ Name = "Raid", Type = "QuestTag", EnumValue = 62 },
				{ Name = "Dungeon", Type = "QuestTag", EnumValue = 81 },
				{ Name = "Legendary", Type = "QuestTag", EnumValue = 83 },
				{ Name = "Heroic", Type = "QuestTag", EnumValue = 85 },
				{ Name = "Raid10", Type = "QuestTag", EnumValue = 88 },
				{ Name = "Raid25", Type = "QuestTag", EnumValue = 89 },
				{ Name = "Scenario", Type = "QuestTag", EnumValue = 98 },
				{ Name = "Account", Type = "QuestTag", EnumValue = 102 },
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

APIDocumentation:AddDocumentationTable(QuestOffer);local QuestTaskInfo =
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
			Name = "GetDistanceSqToQuest",
			Type = "Function",

			Arguments =
			{
				{ Name = "questID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "distanceSquared", Type = "number", Nilable = false },
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
			},
		},
	},
};

APIDocumentation:AddDocumentationTable(QuestTaskInfo);local RecruitAFriend =
{
	Name = "RecruitAFriend",
	Type = "System",
	Namespace = "C_RecruitAFriend",

	Functions =
	{
	},

	Events =
	{
		{
			Name = "LevelGrantProposed",
			Type = "Event",
			LiteralName = "LEVEL_GRANT_PROPOSED",
			Payload =
			{
				{ Name = "senderName", Type = "string", Nilable = false },
			},
		},
		{
			Name = "PartyReferAFriendUpdated",
			Type = "Event",
			LiteralName = "PARTY_REFER_A_FRIEND_UPDATED",
			Payload =
			{
				{ Name = "unitTarget", Type = "string", Nilable = false },
			},
		},
		{
			Name = "RecruitAFriendCanEmail",
			Type = "Event",
			LiteralName = "RECRUIT_A_FRIEND_CAN_EMAIL",
			Payload =
			{
				{ Name = "resultCode", Type = "number", Nilable = false },
			},
		},
		{
			Name = "RecruitAFriendInvitationFailed",
			Type = "Event",
			LiteralName = "RECRUIT_A_FRIEND_INVITATION_FAILED",
			Payload =
			{
				{ Name = "failureReason", Type = "string", Nilable = false },
			},
		},
		{
			Name = "RecruitAFriendInviterFriendAdded",
			Type = "Event",
			LiteralName = "RECRUIT_A_FRIEND_INVITER_FRIEND_ADDED",
			Payload =
			{
				{ Name = "name", Type = "string", Nilable = false },
			},
		},
		{
			Name = "RecruitAFriendSystemStatus",
			Type = "Event",
			LiteralName = "RECRUIT_A_FRIEND_SYSTEM_STATUS",
		},
		{
			Name = "SorByTextUpdated",
			Type = "Event",
			LiteralName = "SOR_BY_TEXT_UPDATED",
		},
		{
			Name = "SorCountsUpdated",
			Type = "Event",
			LiteralName = "SOR_COUNTS_UPDATED",
		},
		{
			Name = "SorStartExperienceIncomplete",
			Type = "Event",
			LiteralName = "SOR_START_EXPERIENCE_INCOMPLETE",
		},
	},

	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(RecruitAFriend);local ReputationInfo =
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

APIDocumentation:AddDocumentationTable(ScriptWarnings);local SecureTransfer =
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
	Namespace = "C_SocialInfo",

	Functions =
	{
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
			Name = "SocialQueuePlayerInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "guid", Type = "string", Nilable = false },
				{ Name = "clubId", Type = "string", Nilable = true },
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
	},
};

APIDocumentation:AddDocumentationTable(SocialQueue);local Sound =
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

APIDocumentation:AddDocumentationTable(SpellBook);local StableInfo =
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

APIDocumentation:AddDocumentationTable(StorePublicUI);local System =
{
	Name = "SystemInfo",
	Type = "System",
	Namespace = "C_System",

	Functions =
	{
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
			Documentation = { "Returns information on taxi nodes at the given flight master." },

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
			Name = "TaxiNodeInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "nodeID", Type = "number", Nilable = false },
				{ Name = "position", Type = "table", Mixin = "Vector2DMixin", Nilable = false },
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "state", Type = "FlightPathState", Nilable = false },
				{ Name = "slotIndex", Type = "number", Nilable = false },
				{ Name = "textureKitPrefix", Type = "string", Nilable = true },
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
				{ Name = "textureKitPrefix", Type = "string", Nilable = true },
			},
		},
	},
};

APIDocumentation:AddDocumentationTable(TaxiMap);local ToyBoxInfo =
{
	Name = "ToyBoxInfo",
	Type = "System",
	Namespace = "C_ToyBoxInfo",

	Functions =
	{
	},

	Events =
	{
		{
			Name = "ToysUpdated",
			Type = "Event",
			LiteralName = "TOYS_UPDATED",
			Payload =
			{
				{ Name = "itemID", Type = "number", Nilable = true },
				{ Name = "isNew", Type = "bool", Nilable = true },
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
				{ Name = "invSlot", Type = "number", Nilable = false },
				{ Name = "transmogType", Type = "number", Nilable = false },
			},
		},
		{
			Name = "TransmogrifyUpdate",
			Type = "Event",
			LiteralName = "TRANSMOGRIFY_UPDATE",
			Payload =
			{
				{ Name = "slotID", Type = "number", Nilable = true },
				{ Name = "transmogType", Type = "number", Nilable = true },
				{ Name = "action", Type = "string", Nilable = true },
			},
		},
	},

	Tables =
	{
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
			Name = "ModelSceneSetting",
			Type = "Enumeration",
			NumValues = 1,
			MinValue = 1,
			MaxValue = 1,
			Fields =
			{
				{ Name = "AlignLightToOrbitDelta", Type = "ModelSceneSetting", EnumValue = 0 },
			},
		},
		{
			Name = "ModelSceneType",
			Type = "Enumeration",
			NumValues = 16,
			MinValue = 0,
			MaxValue = 15,
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
				{ Name = "PvpWarModeOrb", Type = "ModelSceneType", EnumValue = 10 },
				{ Name = "PvpWarModeFire", Type = "ModelSceneType", EnumValue = 11 },
				{ Name = "PartyPose", Type = "ModelSceneType", EnumValue = 12 },
				{ Name = "AzeriteItemLevelUpToast", Type = "ModelSceneType", EnumValue = 13 },
				{ Name = "AzeritePowers", Type = "ModelSceneType", EnumValue = 14 },
				{ Name = "AzeriteRewardGlow", Type = "ModelSceneType", EnumValue = 15 },
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
			Name = "GetTextureWithStateVisualizationInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "widgetID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "widgetInfo", Type = "TextureWithStateVisualizationInfo", Nilable = true },
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
			Name = "UIWidgetVisualizationType",
			Type = "Enumeration",
			NumValues = 13,
			MinValue = 0,
			MaxValue = 12,
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
				{ Name = "TextureWithState", Type = "UIWidgetVisualizationType", EnumValue = 12 },
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
			Name = "BulletTextListWidgetVisualizationInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "shownState", Type = "WidgetShownState", Nilable = false },
				{ Name = "enabledState", Type = "WidgetEnabledState", Nilable = false },
				{ Name = "lines", Type = "table", InnerType = "string", Nilable = false },
				{ Name = "orderIndex", Type = "number", Nilable = false },
				{ Name = "widgetTag", Type = "string", Nilable = false },
			},
		},
		{
			Name = "CaptureBarWidgetVisualizationInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "shownState", Type = "WidgetShownState", Nilable = false },
				{ Name = "barPercent", Type = "number", Nilable = false },
				{ Name = "neutralPercent", Type = "number", Nilable = false },
				{ Name = "textureKitID", Type = "number", Nilable = false },
				{ Name = "orderIndex", Type = "number", Nilable = false },
				{ Name = "widgetTag", Type = "string", Nilable = false },
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
				{ Name = "textureKitID", Type = "number", Nilable = false },
				{ Name = "orderIndex", Type = "number", Nilable = false },
				{ Name = "widgetTag", Type = "string", Nilable = false },
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
				{ Name = "rightBarMin", Type = "number", Nilable = false },
				{ Name = "rightBarMax", Type = "number", Nilable = false },
				{ Name = "rightBarValue", Type = "number", Nilable = false },
				{ Name = "text", Type = "string", Nilable = false },
				{ Name = "textureKitID", Type = "number", Nilable = false },
				{ Name = "orderIndex", Type = "number", Nilable = false },
				{ Name = "widgetTag", Type = "string", Nilable = false },
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
			Name = "HorizontalCurrenciesWidgetVisualizationInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "shownState", Type = "WidgetShownState", Nilable = false },
				{ Name = "currencies", Type = "table", InnerType = "UIWidgetCurrencyInfo", Nilable = false },
				{ Name = "orderIndex", Type = "number", Nilable = false },
				{ Name = "widgetTag", Type = "string", Nilable = false },
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
				{ Name = "textureKitID", Type = "number", Nilable = false },
				{ Name = "hasTimer", Type = "bool", Nilable = false },
				{ Name = "orderIndex", Type = "number", Nilable = false },
				{ Name = "widgetTag", Type = "string", Nilable = false },
			},
		},
		{
			Name = "IconTextAndBackgroundWidgetVisualizationInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "shownState", Type = "WidgetShownState", Nilable = false },
				{ Name = "value", Type = "number", Nilable = false },
				{ Name = "textureKitID", Type = "number", Nilable = false },
				{ Name = "orderIndex", Type = "number", Nilable = false },
				{ Name = "widgetTag", Type = "string", Nilable = false },
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
				{ Name = "textureKitID", Type = "number", Nilable = false },
				{ Name = "orderIndex", Type = "number", Nilable = false },
				{ Name = "widgetTag", Type = "string", Nilable = false },
			},
		},
		{
			Name = "ScenarioHeaderCurrenciesAndBackgroundWidgetVisualizationInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "shownState", Type = "WidgetShownState", Nilable = false },
				{ Name = "currencies", Type = "table", InnerType = "UIWidgetCurrencyInfo", Nilable = false },
				{ Name = "frameTextureKitID", Type = "number", Nilable = false },
				{ Name = "orderIndex", Type = "number", Nilable = false },
				{ Name = "widgetTag", Type = "string", Nilable = false },
			},
		},
		{
			Name = "StackedResourceTrackerWidgetVisualizationInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "shownState", Type = "WidgetShownState", Nilable = false },
				{ Name = "resources", Type = "table", InnerType = "UIWidgetCurrencyInfo", Nilable = false },
				{ Name = "frameTextureKitID", Type = "number", Nilable = false },
				{ Name = "orderIndex", Type = "number", Nilable = false },
				{ Name = "widgetTag", Type = "string", Nilable = false },
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
				{ Name = "barWidth", Type = "number", Nilable = false },
				{ Name = "barValueInSeconds", Type = "number", Nilable = false },
				{ Name = "frameTextureKitID", Type = "number", Nilable = false },
				{ Name = "fillTextureKitID", Type = "number", Nilable = false },
				{ Name = "orderIndex", Type = "number", Nilable = false },
				{ Name = "widgetTag", Type = "string", Nilable = false },
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
				{ Name = "widgetWidth", Type = "number", Nilable = false },
				{ Name = "orderIndex", Type = "number", Nilable = false },
				{ Name = "widgetTag", Type = "string", Nilable = false },
			},
		},
		{
			Name = "TextureWithStateVisualizationInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "shownState", Type = "WidgetShownState", Nilable = false },
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "backgroundTextureKitID", Type = "number", Nilable = false },
				{ Name = "portraitTextureKitID", Type = "number", Nilable = false },
				{ Name = "orderIndex", Type = "number", Nilable = false },
				{ Name = "widgetTag", Type = "string", Nilable = false },
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
			Name = "UnitIsWarModeActive",
			Type = "Function",

			Arguments =
			{
				{ Name = "unit", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "warModeActive", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "UnitIsWarModeDesired",
			Type = "Function",

			Arguments =
			{
				{ Name = "unit", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "warModeDesired", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "UnitIsWarModePhased",
			Type = "Function",

			Arguments =
			{
				{ Name = "unit", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "warModePhased", Type = "bool", Nilable = false },
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
			Name = "PlayerStartedMoving",
			Type = "Event",
			LiteralName = "PLAYER_STARTED_MOVING",
		},
		{
			Name = "PlayerStoppedMoving",
			Type = "Event",
			LiteralName = "PLAYER_STOPPED_MOVING",
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
			Name = "UnitHealthFrequent",
			Type = "Event",
			LiteralName = "UNIT_HEALTH_FREQUENT",
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
	},
};

APIDocumentation:AddDocumentationTable(Unit);local Vehicle =
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
				{ Name = "PvpBounty", Type = "VignetteType", EnumValue = 1 },
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
				{ Name = "status", Type = "VoiceChatStatusCode", Nilable = false },
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
				{ Name = "clubId", Type = "string", Nilable = false },
				{ Name = "streamId", Type = "string", Nilable = false },
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
			NumValues = 23,
			MinValue = 0,
			MaxValue = 22,
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
			Name = "GetCurrentCampaignChapterID",
			Type = "Function",

			Returns =
			{
				{ Name = "campaignChapterID", Type = "number", Nilable = true },
			},
		},
		{
			Name = "GetCurrentCampaignID",
			Type = "Function",

			Returns =
			{
				{ Name = "campaignID", Type = "number", Nilable = true },
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
	},

	Events =
	{
	},

	Tables =
	{
		{
			Name = "CampaignChapterInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "description", Type = "string", Nilable = false },
				{ Name = "rewardQuestID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "CampaignInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "description", Type = "string", Nilable = false },
				{ Name = "uiTextureKitID", Type = "number", Nilable = false },
				{ Name = "visibilityConditionMatched", Type = "bool", Nilable = false },
				{ Name = "playerConditionFailedReason", Type = "string", Nilable = true },
				{ Name = "complete", Type = "bool", Nilable = false },
			},
		},
	},
};

APIDocumentation:AddDocumentationTable(WarCampaign);local WorldStateInfo =
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

APIDocumentation:AddDocumentationTable(WorldStateInfo);local WowTokenUI =
{
	Name = "WowTokenUI",
	Type = "System",
	Namespace = "C_WowTokenUI",

	Functions =
	{
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

	Functions =
	{
	},

	Events =
	{
	},

	Tables =
	{
		{
			Name = "ZoneAbilityType",
			Type = "Enumeration",
			NumValues = 4,
			MinValue = 0,
			MaxValue = 3,
			Fields =
			{
				{ Name = "Garrison", Type = "ZoneAbilityType", EnumValue = 0 },
				{ Name = "OrderHall", Type = "ZoneAbilityType", EnumValue = 1 },
				{ Name = "Argus", Type = "ZoneAbilityType", EnumValue = 2 },
				{ Name = "WarEffort", Type = "ZoneAbilityType", EnumValue = 3 },
			},
		},
	},
};

APIDocumentation:AddDocumentationTable(ZoneAbility);local Calendar =
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
			Name = "EventGetClubID",
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
				{ Name = "eventIndex", Type = "number", Nilable = false },
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
			Name = "EventSetClubID",
			Type = "Function",

			Arguments =
			{
				{ Name = "clubID", Type = "string", Nilable = false },
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
				{ Name = "status", Type = "number", Nilable = false },
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
			Name = "GetDate",
			Type = "Function",

			Returns =
			{
				{ Name = "date", Type = "CalendarTime", Nilable = false },
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
			Name = "MassInviteCommunity",
			Type = "Function",

			Arguments =
			{
				{ Name = "clubID", Type = "string", Nilable = false },
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
			Name = "CalendarEventType",
			Type = "Enumeration",
			NumValues = 6,
			MinValue = 0,
			MaxValue = 5,
			Fields =
			{
				{ Name = "Raid", Type = "CalendarEventType", EnumValue = 0 },
				{ Name = "Dungeon", Type = "CalendarEventType", EnumValue = 1 },
				{ Name = "Pvp", Type = "CalendarEventType", EnumValue = 2 },
				{ Name = "Meeting", Type = "CalendarEventType", EnumValue = 3 },
				{ Name = "Other", Type = "CalendarEventType", EnumValue = 4 },
				{ Name = "HeroicDeprecated", Type = "CalendarEventType", EnumValue = 5 },
			},
		},
		{
			Name = "CalendarTime",
			Type = "Structure",
			Fields =
			{
				{ Name = "monthDay", Type = "number", Nilable = false },
				{ Name = "month", Type = "number", Nilable = false },
				{ Name = "weekday", Type = "number", Nilable = false },
				{ Name = "year", Type = "number", Nilable = false },
				{ Name = "hour", Type = "number", Nilable = false },
				{ Name = "minute", Type = "number", Nilable = false },
			},
		},
		{
			Name = "CalendarDayEvent",
			Type = "Structure",
			Fields =
			{
				{ Name = "title", Type = "string", Nilable = false },
				{ Name = "isCustomTitle", Type = "bool", Nilable = false },
				{ Name = "startTime", Type = "CalendarTime", Nilable = false },
				{ Name = "endTime", Type = "CalendarTime", Nilable = false },
				{ Name = "calendarType", Type = "string", Nilable = false },
				{ Name = "sequenceType", Type = "string", Nilable = false },
				{ Name = "eventType", Type = "number", Nilable = false },
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
			},
		},
		{
			Name = "CalendarEventStatusOption",
			Type = "Structure",
			Fields =
			{
				{ Name = "optionIndex", Type = "number", Nilable = false },
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
				{ Name = "month", Type = "number", Nilable = false },
				{ Name = "monthDay", Type = "number", Nilable = false },
				{ Name = "weekday", Type = "number", Nilable = false },
				{ Name = "hour", Type = "number", Nilable = false },
				{ Name = "minute", Type = "number", Nilable = false },
				{ Name = "eventType", Type = "CalendarEventType", Nilable = false },
				{ Name = "title", Type = "string", Nilable = false },
				{ Name = "calendarType", Type = "string", Nilable = false },
				{ Name = "texture", Type = "number", Nilable = false },
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

APIDocumentation:AddDocumentationTable(Calendar);local Club =
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
			Name = "AddClubStreamToChatWindow",
			Type = "Function",

			Arguments =
			{
				{ Name = "clubId", Type = "string", Nilable = false },
				{ Name = "streamId", Type = "string", Nilable = false },
				{ Name = "chatWindowIndex", Type = "number", Nilable = false },
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
			Name = "ClearAutoAdvanceStreamViewMarker",
			Type = "Function",
		},
		{
			Name = "ClearClubPresenceSubscription",
			Type = "Function",
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
			Name = "SetCommunityID",
			Type = "Function",

			Arguments =
			{
				{ Name = "communityID", Type = "number", Nilable = false },
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
				{ Name = "error", Type = "ClubErrorType", Nilable = false },
				{ Name = "ticket", Type = "string", Nilable = false },
				{ Name = "info", Type = "ClubInfo", Nilable = true },
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
			Name = "ClubRoleIdentifier",
			Type = "Enumeration",
			NumValues = 4,
			MinValue = 0,
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
			NumValues = 39,
			MinValue = 0,
			MaxValue = 38,
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
				{ Name = "ErrorClubFull", Type = "ClubErrorType", EnumValue = 15 },
				{ Name = "ErrorClubNoClub", Type = "ClubErrorType", EnumValue = 16 },
				{ Name = "ErrorClubNotMember", Type = "ClubErrorType", EnumValue = 17 },
				{ Name = "ErrorClubAlreadyMember", Type = "ClubErrorType", EnumValue = 18 },
				{ Name = "ErrorClubNoSuchMember", Type = "ClubErrorType", EnumValue = 19 },
				{ Name = "ErrorClubNoSuchInvitation", Type = "ClubErrorType", EnumValue = 20 },
				{ Name = "ErrorClubInvitationAlreadyExists", Type = "ClubErrorType", EnumValue = 21 },
				{ Name = "ErrorClubInvalidRoleID", Type = "ClubErrorType", EnumValue = 22 },
				{ Name = "ErrorClubInsufficientPrivileges", Type = "ClubErrorType", EnumValue = 23 },
				{ Name = "ErrorClubTooManyClubsJoined", Type = "ClubErrorType", EnumValue = 24 },
				{ Name = "ErrorClubVoiceFull", Type = "ClubErrorType", EnumValue = 25 },
				{ Name = "ErrorClubStreamNoStream", Type = "ClubErrorType", EnumValue = 26 },
				{ Name = "ErrorClubStreamInvalidName", Type = "ClubErrorType", EnumValue = 27 },
				{ Name = "ErrorClubStreamCountAtMin", Type = "ClubErrorType", EnumValue = 28 },
				{ Name = "ErrorClubStreamCountAtMax", Type = "ClubErrorType", EnumValue = 29 },
				{ Name = "ErrorClubMemberHasRequiredRole", Type = "ClubErrorType", EnumValue = 30 },
				{ Name = "ErrorClubSentInvitationCountAtMax", Type = "ClubErrorType", EnumValue = 31 },
				{ Name = "ErrorClubReceivedInvitationCountAtMax", Type = "ClubErrorType", EnumValue = 32 },
				{ Name = "ErrorClubTargetIsBanned", Type = "ClubErrorType", EnumValue = 33 },
				{ Name = "ErrorClubBanAlreadyExists", Type = "ClubErrorType", EnumValue = 34 },
				{ Name = "ErrorClubBanCountAtMax", Type = "ClubErrorType", EnumValue = 35 },
				{ Name = "ErrorClubTicketCountAtMax", Type = "ClubErrorType", EnumValue = 36 },
				{ Name = "ErrorClubTicketNoSuchTicket", Type = "ClubErrorType", EnumValue = 37 },
				{ Name = "ErrorClubTicketHasConsumedAllowedRedeemCount", Type = "ClubErrorType", EnumValue = 38 },
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
			Name = "ValidateNameResult",
			Type = "Enumeration",
			NumValues = 17,
			MinValue = 0,
			MaxValue = 16,
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
			Name = "ClubMessageIdentifier",
			Type = "Structure",
			Fields =
			{
				{ Name = "epoch", Type = "number", Nilable = false, Documentation = { "number of microseconds since the UNIX epoch." } },
				{ Name = "position", Type = "number", Nilable = false, Documentation = { "sort order for messages at the same time" } },
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

APIDocumentation:AddDocumentationTable(Club);local Friends =
{
	Name = "Friends",
	Type = "System",
	Namespace = "C_Friends",

	Functions =
	{
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
			},
		},
		{
			Name = "BnFriendAccountOffline",
			Type = "Event",
			LiteralName = "BN_FRIEND_ACCOUNT_OFFLINE",
			Payload =
			{
				{ Name = "friendId", Type = "number", Nilable = false },
			},
		},
		{
			Name = "BnFriendAccountOnline",
			Type = "Event",
			LiteralName = "BN_FRIEND_ACCOUNT_ONLINE",
			Payload =
			{
				{ Name = "friendId", Type = "number", Nilable = false },
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
	},
};

APIDocumentation:AddDocumentationTable(Friends);