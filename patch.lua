-- fix missing values

local Enum = {
    PlayerCurrencyFlagsDbFlags = {
        IgnoreMaxQtyOnload = 1,
        Reuse1 = 2,
        InBackpack = 4,
        UnusedInUI = 8,
        Reuse2 = 16,
    }
}

local CustomOptionTattoo = 5
local CustomOptionTattooColor = 8
local Constants = {
    CharCustomizationConstants = {
        CHAR_CUSTOMIZE_CUSTOM_DISPLAY_OPTION_FIRST = CustomOptionTattoo,
        CHAR_CUSTOMIZE_CUSTOM_DISPLAY_OPTION_LAST = CustomOptionTattooColor
    }
}