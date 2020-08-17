local LegendaryCrafting =
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

APIDocumentation:AddDocumentationTable(LegendaryCrafting);