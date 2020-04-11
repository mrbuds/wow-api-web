local TradeSkillUI =
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
			Name = "GetOptionalReagentTooltipText",
			Type = "Function",

			Arguments =
			{
				{ Name = "recipeSpellID", Type = "number", Nilable = false },
				{ Name = "optionalReagentIndex", Type = "number", Nilable = false },
				{ Name = "optionalReagents", Type = "table", InnerType = "OptionalReagentInfo", Nilable = false },
			},

			Returns =
			{
				{ Name = "tooltipText", Type = "string", Nilable = true },
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
			Name = "TradeSkillOptionalReagentTooltipUpdated",
			Type = "Event",
			LiteralName = "TRADE_SKILL_OPTIONAL_REAGENT_TOOLTIP_UPDATED",
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

APIDocumentation:AddDocumentationTable(TradeSkillUI);