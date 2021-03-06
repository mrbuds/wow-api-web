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
Blizzard_APIDocumentation.lua]]

for _,line in pairs(("\n"):split2(stringtocfile)) do
    if line then
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

require("fulldoc2")

if args and args:sub(1,4) == "api:" then
    APIDocumentation:HandleAPILink(args, nil)
else
    APIDocumentation:HandleSlashCommand(args)
end
