local Unit =
{
	Name = "Unit",
	Type = "System",

	Functions =
	{
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
			Name = "UnitPvpClassification",
			Type = "Function",

			Arguments =
			{
				{ Name = "unit", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "classification", Type = "PvpUnitClassification", Nilable = true },
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
		{
			Name = "PvpUnitClassification",
			Type = "Enumeration",
			NumValues = 11,
			MinValue = 0,
			MaxValue = 10,
			Fields =
			{
				{ Name = "FlagCarrierHorde", Type = "PvpUnitClassification", EnumValue = 0 },
				{ Name = "FlagCarrierAlliance", Type = "PvpUnitClassification", EnumValue = 1 },
				{ Name = "FlagCarrierNeutral", Type = "PvpUnitClassification", EnumValue = 2 },
				{ Name = "CartRunnerHorde", Type = "PvpUnitClassification", EnumValue = 3 },
				{ Name = "CartRunnerAlliance", Type = "PvpUnitClassification", EnumValue = 4 },
				{ Name = "AssassinHorde", Type = "PvpUnitClassification", EnumValue = 5 },
				{ Name = "AssassinAlliance", Type = "PvpUnitClassification", EnumValue = 6 },
				{ Name = "OrbCarrierBlue", Type = "PvpUnitClassification", EnumValue = 7 },
				{ Name = "OrbCarrierGreen", Type = "PvpUnitClassification", EnumValue = 8 },
				{ Name = "OrbCarrierOrange", Type = "PvpUnitClassification", EnumValue = 9 },
				{ Name = "OrbCarrierPurple", Type = "PvpUnitClassification", EnumValue = 10 },
			},
		},
	},
};

APIDocumentation:AddDocumentationTable(Unit);