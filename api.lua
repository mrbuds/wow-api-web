--[[

    https://github.com/Gethe/wow-ui-source/tree/beta/AddOns/Blizzard_APIDocumentation

--]]

-- add functions and globals needed by addon

function Mixin(object, ...)
	for i = 1, select("#", ...) do
		local mixin = select(i, ...);
        for k, v in pairs(mixin) do
            --if k == "GenerateAPILink" then
            --    object[k] = GenerateAPILink
            --end
			object[k] = v;
		end
	end

	return object;
end

function CreateFromMixins(...)
	return Mixin({}, ...)
end


ChatTypeInfo = {
    ["SYSTEM"] = {
        ["r"] = 1,
        ["b"] = 0,
        ["g"] = 1,
        ["id"] = 1,
        ["sticky"] = 0,
        colorNameByClass = false,
        flashTab = false,
        flashTabOnGeneral = false
    }
}

function string:split(inputstr)
    if not inputstr then return nil end
    local t = {}
    local i = 1
    for str in string.gmatch(inputstr, "([^"..self.."]+)") do
            t[i] = str
            i = i + 1
    end
    return unpack(t) -- i know wtf, but we need it for blizzard functions
end

function string:split2(inputstr)
    if not inputstr then return nil end
    local t = {}
    local i = 1
    for str in string.gmatch(inputstr, "([^"..self.."]+)") do
            t[i] = str
            i = i + 1
    end
    return t
end

unpack = table.unpack

DEFAULT_CHAT_FRAME = {} -- configure output here
function DEFAULT_CHAT_FRAME:AddMessage(message)
    print(message)
end
function DEFAULT_CHAT_FRAME:SetMaxLines() end

local removelinks = true

-- with .js we can't read Blizzard_APIDocumentation.toc
local stringtocfile = [[BaseAPIMixin.lua
FieldsAPIMixin.lua
FunctionsAPIMixin.lua
SystemsAPIMixin.lua
TablesAPIMixin.lua
EventsAPIMixin.lua
Blizzard_APIDocumentation.lua
AccountInfoDocumentation.lua
AchievementInfoDocumentation.lua
ActionBarFrameDocumentation.lua
AddOnsDocumentation.lua
AdventureJournalDocumentation.lua
AdventureMapDocumentation.lua
AlliedRacesFrameDocumentation.lua
AnimaDiversionUIDocumentation.lua
AreaPoiInfoDocumentation.lua
ArtifactUIDocumentation.lua
AuctionHouseDocumentation.lua
AzeriteEmpoweredItemDocumentation.lua
AzeriteEssenceDocumentation.lua
AzeriteItemDocumentation.lua
BankDocumentation.lua
BarberShopDocumentation.lua
BattleNetDocumentation.lua
BattlePetDocumentation.lua
BlackMarketInfoDocumentation.lua
BrowserDocumentation.lua
CVarDocumentation.lua
CalendarDocumentation.lua
ChallengeModeInfoDocumentation.lua
ChatBubblesDocumentation.lua
ChatInfoDocumentation.lua
ChromieTimeUIDocumentation.lua
CinematicDocumentation.lua
ClassColorDocumentation.lua
ClassTrialDocumentation.lua
ClubDocumentation.lua
ClubFinderDocumentation.lua
CombatLogDocumentation.lua
CommentatorFrameDocumentation.lua
CompactUnitFramesDocumentation.lua
ConfigurationWarningsDocumentation.lua
ConsoleDocumentation.lua
ContainerDocumentation.lua
ContributionCollectorDocumentation.lua
CovenantCallingsDocumentation.lua
CovenantPreviewDocumentation.lua
CovenantSanctumDocumentation.lua
CovenantsDocumentation.lua
CreatureInfoDocumentation.lua
CurrencyInfoDocumentation.lua
CursorDocumentation.lua
DateAndTimeDocumentation.lua
DeathInfoDocumentation.lua
DuelInfoDocumentation.lua
EncounterInfoDocumentation.lua
EncounterJournalDocumentation.lua
EquipmentManagerDocumentation.lua
ExpansionDocumentation.lua
FogOfWarDocumentation.lua
FriendListDocumentation.lua
GMTicketInfoDocumentation.lua
GamePadDocumentation.lua
GarrisonInfoDocumentation.lua
GlyphInfoDocumentation.lua
GossipInfoDocumentation.lua
GuildBankDocumentation.lua
GuildInfoDocumentation.lua
HeirloomInfoDocumentation.lua
InGameNavigationDocumentation.lua
IncomingSummonDocumentation.lua
InstanceEncounterDocumentation.lua
InvasionInfoDocumentation.lua
IslandsInfoDocumentation.lua
IslandsQueueUIDocumentation.lua
ItemDocumentation.lua
ItemInteractionUIDocumentation.lua
ItemSocketInfoDocumentation.lua
ItemTextDocumentation.lua
ItemUpgradeDocumentation.lua
KeyBindingsDocumentation.lua
KnowledgeBaseDocumentation.lua
LFGInfoDocumentation.lua
LFGListInfoDocumentation.lua
LFGuildInfoDocumentation.lua
LegendaryCraftingDocumentation.lua
LevelLinkDocumentation.lua
LevelSquishDocumentation.lua
LoadingScreenDocumentation.lua
LootDocumentation.lua
LoreTextDocumentation.lua
LossOfControlDocumentation.lua
MailInfoDocumentation.lua
MapDocumentation.lua
MapExplorationDocumentation.lua
MerchantFrameDocumentation.lua
MinimapDocumentation.lua
MountJournalDocumentation.lua
MythicPlusInfoDocumentation.lua
NamePlateManagerDocumentation.lua
PaperDollInfoDocumentation.lua
PartyInfoDocumentation.lua
PartyPoseUIDocumentation.lua
PetInfoDocumentation.lua
PetJournalInfoDocumentation.lua
PlayerChoiceDocumentation.lua
PlayerInfoDocumentation.lua
PlayerLocationDocumentation.lua
PlayerMentorshipDocumentation.lua
PvpInfoDocumentation.lua
QuestLineInfoDocumentation.lua
QuestLogDocumentation.lua
QuestOfferDocumentation.lua
QuestSessionDocumentation.lua
QuestTaskInfoDocumentation.lua
RaidLocksDocumentation.lua
RecruitAFriendDocumentation.lua
ReportSystemDocumentation.lua
ReputationInfoDocumentation.lua
ResearchInfoDocumentation.lua
RestrictedActionsDocumentation.lua
ScenarioInfoDocumentation.lua
ScrappingMachineUIDocumentation.lua
ScriptWarningsDocumentation.lua
ScriptedAnimationsDocumentation.lua
SecureTransferDocumentation.lua
SkillInfoDocumentation.lua
SocialInfoDocumentation.lua
SocialQueueDocumentation.lua
SocialRestrictionsDocumentation.lua
SoulbindsDocumentation.lua
SoundDocumentation.lua
SpecializationInfoDocumentation.lua
SpellDocumentation.lua
SpellActivationOverlayDocumentation.lua
SpellBookDocumentation.lua
SplashScreenDocumentation.lua
StableInfoDocumentation.lua
StorePublicUIDocumentation.lua
SummonInfoDocumentation.lua
SuperTrackManagerDocumentation.lua
SystemDocumentation.lua
TalkingHeadDocumentation.lua
TaxiMapDocumentation.lua
TextureUtilsDocumentation.lua
TooltipConstantsDocumentation.lua
ToyBoxInfoDocumentation.lua
TradeInfoDocumentation.lua
TradeSkillUIDocumentation.lua
TrainerDocumentation.lua
TransmogDocumentation.lua
TransmogItemsDocumentation.lua
TransmogSetsDocumentation.lua
TutorialDocumentation.lua
UIMacrosDocumentation.lua
UIManagerDocumentation.lua
UIModelInfoDocumentation.lua
UIWidgetManagerDocumentation.lua
UnitDocumentation.lua
UserFeedbackDocumentation.lua
VehicleDocumentation.lua
VideoDocumentation.lua
VignetteInfoDocumentation.lua
VoiceChatDocumentation.lua
VoidStorageInfoDocumentation.lua
WarCampaignDocumentation.lua
WeeklyRewardsDocumentation.lua
WorldStateInfoDocumentation.lua
WowEntitlementInfoDocumentation.lua
WowTokenUIDocumentation.lua
ZoneAbilityDocumentation.lua
ActionDocumentation.lua
AppearanceSourceDocumentation.lua
AuctionHouseEnumsDocumentation.lua
BaseDocumentation.lua
BountySharedDocumentation.lua
CalendarConstantsDocumentation.lua
CharacterCustomizationSharedDocumentation.lua
ChatConstantsDocumentation.lua
ClubSharedDocumentation.lua
ColorDocumentation.lua
CovenantCallingsConstantsDocumentation.lua
CovenantsConstantsDocumentation.lua
DamageConstantsDocumentation.lua
GarrisonConstantsDocumentation.lua
GarrisonSharedDocumentation.lua
GuildInfoSharedDocumentation.lua
ItemConstantsDocumentation.lua
ItemLocationSharedDocumentation.lua
ItemSharedDocumentation.lua
LegendaryCraftingTypesDocumentation.lua
LevelConstantsDocumentation.lua
ModelSceneDocumentation.lua
NamePlateDocumentation.lua
PetScalingConstantsDocumentation.lua
PlayerDocumentation.lua
PlayerMentorshipConstantsDocumentation.lua
QuestConstantsDocumentation.lua
QuestSessionConstantsDocumentation.lua
QueueSpecificDocumentation.lua
RecruitAFriendSharedDocumentation.lua
ScriptRegionSharedDocumentation.lua
SuperTrackManagerSharedDocumentation.lua
TextureSharedDocumentation.lua
TimeDocumentation.lua
TradeSkillUITypesDocumentation.lua
UIWidgetManagerSharedDocumentation.lua
UnitSharedDocumentation.lua
VectorSharedDocumentation.lua
VehicleConstantsDocumentation.lua]]

for _,line in pairs(("\n"):split2(stringtocfile)) do
    local char1 = line:sub(1,1)
    if char1 ~= "" and char1 ~= "#" then
        require("Blizzard_APIDocumentation." .. line:sub(1,-5))
        -- replace some mixin functions to remove links & color codes after they are loaded
        -- i don't like how i do it but can't find a proper way
        if removelinks then
            if line == "BaseAPIMixin.lua" then
                function BaseAPIMixin:GenerateAPILink()
                --  return ("|cff%s|Hapi:%s:%s:%s|h%s|h|r"):format(self:GetLinkHexColor(), self:GetType(), self:GetName(), self:GetParentName(), self:GetFullName());
                --  return self:GetFullName()
                    return ("<a class='api' style='color: #%s' href='?search=api:%s:%s:%s'>%s</a>"):format(self:GetLinkHexColor(), self:GetType(), self:GetName(), self:GetParentName(), self:GetFullName());
                end
            end

            if line == "FieldsAPIMixin.lua" then
                function FieldsAPIMixin:GetArgumentString(decorateOptionals, includeColorCodes)
                    --local includeColorCodes = false
                    local prefix = decorateOptionals ~= false and self:IsOptional() and "optional " or "";
                    if includeColorCodes ~= false then
                        return ("<span style='color: #%s'>%s%s</span>"):format(self:GetLinkHexColor(), prefix, self:GetName());
                    end
                    return ("%s%s"):format(prefix, self:GetName());
                end
            end

            if line == "EventsAPIMixin.lua" then
                function EventsAPIMixin:GetPayloadString(decorateOptionals, includeColorCodes) -- override
                    --local includeColorCodes = false
                    if self.Payload then
                        local values = {};
                        for _, payloadInfo in ipairs(self.Payload) do
                            if includeColorCodes ~= false then
                                table.insert(values, ("%s<span style='color: #%s'/>"):format(payloadInfo:GetPayloadString(decorateOptionals, includeColorCodes), self:GetLinkHexColor()));
                            else
                                table.insert(values, payloadInfo:GetPayloadString(decorateOptionals, includeColorCodes));
                            end
                        end
                        return table.concat(values, ", ");
                    end
                    return "";
                end
            end
            if line == "FunctionsAPIMixin.lua" then
                function FunctionsAPIMixin:GetArgumentString(decorateOptionals)
                    local includeColorCodes = false
                    if self.Arguments then
                        local values = {};
                        for _, argumentInfo in ipairs(self.Arguments) do
                            if includeColorCodes ~= false then
                                table.insert(values, ("%s|cff%s"):format(argumentInfo:GetArgumentString(decorateOptionals, includeColorCodes), self:GetLinkHexColor()));
                            else
                                table.insert(values, argumentInfo:GetArgumentString(decorateOptionals, includeColorCodes));
                            end
                        end
                        return table.concat(values, ", ");
                    end
                    return "";
                end
                function FunctionsAPIMixin:GetReturnString(decorateOptionals)
                    local includeColorCodes = false
                    if self.Returns then
                        local values = {};
                        for i, returnInfo in ipairs(self.Returns) do
                            if includeColorCodes ~= false then
                                table.insert(values, ("%s|cff%s"):format(returnInfo:GetReturnString(decorateOptionals, includeColorCodes), self:GetLinkHexColor()));
                            else
                                table.insert(values, returnInfo:GetReturnString(decorateOptionals, includeColorCodes));
                            end
                        end
                        return table.concat(values, ", ");
                    end
                    return "";
                end
            end
        end
    end
end

-- replace < > with &lt; &gt;
function APIDocumentation:OutputUsage()
	self:WriteLine("Usage:");

	self:WriteLine("Search for API");
	self:WriteLine(self:GetIndentString() .. "/api search &lt;api name&gt;");
	self:WriteLine(self:GetIndentString() .. "or");
	self:WriteLine(self:GetIndentString() .. "/api s &lt;api name&gt;");
	self:WriteLine(self:GetIndentString() .. "Example: /api search item");
	self:WriteLine(" ");

	self:WriteLine("List all systems");
	self:WriteLine(self:GetIndentString() .. "/api system list");
	self:WriteLine(" ");

	self:WriteLine("Search system for API");
	self:WriteLine(self:GetIndentString() .. "/api &lt;system name&gt; search &lt;api name&gt;");
	self:WriteLine(self:GetIndentString() .. "or");
	self:WriteLine(self:GetIndentString() .. "/api &lt;system name&gt; s &lt;api name&gt;");
	self:WriteLine(self:GetIndentString() .. "Example: /api artifactui search relic");
	self:WriteLine(" ");

	self:WriteLine("List all API in a system");
	self:WriteLine(self:GetIndentString() .. "/api &lt;system name&gt; list");
	self:WriteLine(self:GetIndentString() .. "Example: /api artifactui list");
	self:WriteLine(" ");
	self:WriteLine("All searches support Lua patterns.");
end

if args and args:sub(1,4) == "api:" then
    APIDocumentation:HandleAPILink(args, nil)
else
    APIDocumentation:HandleSlashCommand(args)
end
