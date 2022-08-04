-- fix missing values

Enum = {
    PlayerCurrencyFlagsDbFlags = {
        IgnoreMaxQtyOnload = 1,
        Reuse1 = 2,
        InBackpack = 4,
        UnusedInUI = 8,
        Reuse2 = 16,
    }
}

BaseAPIMixin = {};

function BaseAPIMixin:GetType()
	return assert(false);
end

function BaseAPIMixin:GetPrettyType()
	return self:GetType();
end

function BaseAPIMixin:GetLinkHexColor()
	return "ffffff";
end

function BaseAPIMixin:GetName()
	return self.Name;
end

function BaseAPIMixin:GetFullName()
	return self:GetName();
end

function BaseAPIMixin:GetParentName()
	return "";
end

function BaseAPIMixin:GetLoweredParentName()
	if not self.loweredParentName then
		self.loweredParentName = self:GetParentName():lower();
	end
	return self.loweredParentName;
end

function BaseAPIMixin:GetLoweredName()
	if not self.loweredName then
		self.loweredName = self:GetName():lower();
	end
	return self.loweredName;
end

function BaseAPIMixin:GetClipboardString()
	return self:GetFullName();
end

function BaseAPIMixin:GenerateAPILink()
	return ("|cff%s|Hapi:%s:%s:%s|h%s|h|r"):format(self:GetLinkHexColor(), self:GetType(), self:GetName(), self:GetParentName(), self:GetFullName());
end

function BaseAPIMixin:GetSingleOutputLine()
	return ("%s %s"):format(self:GetPrettyType(), self:GenerateAPILink());
end

function BaseAPIMixin:GetDetailedOutputLines()
	return { self:GetSingleOutputLine() };
end

function BaseAPIMixin:MatchesSearchString(searchString)
	return false;
end

function BaseAPIMixin:MatchesName(name, parentName)
	if name == self:GetName() then
		return not parentName or parentName == self:GetParentName();
	end
	return false;
end

function BaseAPIMixin:MatchesNameCaseInsenstive(name, parentName)
	if name == self:GetLoweredName() then
		return not parentName or parentName == self:GetLoweredParentName();
	end
	return false;
end

function BaseAPIMixin:MatchesAnyAPI(apiTable, searchString)
	if apiTable then
		for i, apiInfo in ipairs(apiTable) do
			if apiInfo:MatchesSearchString(searchString) then
				return true;
			end
		end
	end
	return false;
end

function BaseAPIMixin:MatchesAnyDocumentation(searchString)
	if self.Documentation then
		for i, documentation in ipairs(self.Documentation) do
			if documentation:lower():match(searchString) then
				return true;
			end
		end
	end
end

function BaseAPIMixin:AddDocumentationTags(lines)
	if self.Documentation then
		for i, documentation in ipairs(self.Documentation) do
			table.insert(lines, APIDocumentation:GetIndentString() .. documentation);
		end
	end
end

function BaseAPIMixin:AddSystemTag(lines)
	if self.System then
		table.insert(lines, APIDocumentation:GetIndentString() .. ("Part of the %s system"):format(self.System:GenerateAPILink()));
	end
end

FieldsAPIMixin = CreateFromMixins(BaseAPIMixin);

function FieldsAPIMixin:GetParentName()
	if self.Function then
		return self.Function:GetName(); 
	end

	if self.Table then
		return self.Table:GetName(); 
	end
	return "";
end

function FieldsAPIMixin:GetType()
	return "field";
end

function FieldsAPIMixin:GetLinkHexColor()
	return "ffdd55";
end

function FieldsAPIMixin:MatchesSearchString(searchString)
	if self:GetLoweredName():match(searchString) then
		return true;
	end
	
    if self:MatchesAnyDocumentation(searchString) then
	    return true;
    end

	return false;
end

function FieldsAPIMixin:GetLuaType()
	if self.InnerType then
		local complexType = APIDocumentation:FindAPIByName("table", self.InnerType);
		return ("%s of %s"):format(self.Type, complexType and complexType:GenerateAPILink() or self.InnerType)
	end

	if self.EnumValue then
		return self.EnumValue;
	end

	local complexType = APIDocumentation:FindAPIByName("table", self.Type);
	return complexType and complexType:GenerateAPILink() or self.Type;
end

function FieldsAPIMixin:GetStrideIndex()
	return self.StrideIndex;
end

function FieldsAPIMixin:IsOptional()
	return self.Default ~= nil or self.Nilable;
end

function FieldsAPIMixin:GetSingleOutputLine()
	local optionalString = "";
	if self:IsOptional() then
		if self.Default ~= nil then
			optionalString = ("(default:%s) "):format(tostring(self.Default));
		else
			optionalString = "(optional) ";
		end
	end
	if self.Documentation then
		return ("%s%s %s - %s"):format(optionalString, self:GetLuaType(), self:GenerateAPILink(), table.concat(self.Documentation, " "));
	end
	return ("%s%s %s"):format(optionalString, self:GetLuaType(), self:GenerateAPILink());
end

function FieldsAPIMixin:GetArgumentString(decorateOptionals, includeColorCodes)
	local prefix = decorateOptionals ~= false and self:IsOptional() and "optional " or "";
	if includeColorCodes ~= false then
		return ("|cff%s%s%s|r"):format(self:GetLinkHexColor(), prefix, self:GetName());
	end
	return ("%s%s"):format(prefix, self:GetName());
end

function FieldsAPIMixin:GetReturnString(decorateOptionals, includeColorCodes)
	return self:GetArgumentString(decorateOptionals, includeColorCodes); -- Nothing special currently
end

function FieldsAPIMixin:GetPayloadString(decorateOptionals, includeColorCodes)
	return self:GetReturnString(decorateOptionals, includeColorCodes); -- Nothing special currently
end
FunctionsAPIMixin = CreateFromMixins(BaseAPIMixin);

function FunctionsAPIMixin:GetParentName()
	if self.System then
		return self.System:GetName(); 
	end

	return "";
end

function FunctionsAPIMixin:GetType()
	return "function";
end

function FunctionsAPIMixin:GetLinkHexColor()
	return "55ddff";
end

function FunctionsAPIMixin:GetFullName(decorateOptionals, includeColorCodes)
	if self.System and self.System:GetNamespaceName() ~= "" then
		return ("%s.%s(%s)"):format(self.System:GetNamespaceName(), self:GetName(), self:GetArgumentString(decorateOptionals, includeColorCodes));
	end
	return ("%s(%s)"):format(self:GetName(), self:GetArgumentString(decorateOptionals, includeColorCodes));
end

function FunctionsAPIMixin:MatchesSearchString(searchString)
	if self:GetLoweredName():match(searchString) then
		return true;
	end

	if self:MatchesAnyDocumentation(searchString) then
		return true;
	end

	if self:MatchesAnyAPI(self.Arguments, searchString) then
		return true
	end

	if self:MatchesAnyAPI(self.Returns, searchString) then
		return true
	end

	return false;
end

function FunctionsAPIMixin:GetArgumentString(decorateOptionals, includeColorCodes)
	if self.Arguments then
		local values = {};
		for i, argumentInfo in ipairs(self.Arguments) do
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

function FunctionsAPIMixin:GetReturnString(decorateOptionals, includeColorCodes)
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

function FunctionsAPIMixin:GetClipboardString()
	if self.Returns then
		return ("local %s = %s"):format(self:GetReturnString(false, false), self:GetFullName(false, false));
	end
	return self:GetFullName(false, false);
end

function FunctionsAPIMixin:GetDetailedOutputLines()
	local lines = {};
	table.insert(lines, self:GetSingleOutputLine());

	self:AddSystemTag(lines);
	self:AddDocumentationTags(lines);

	if self.Arguments then
		table.insert(lines, APIDocumentation:GetIndentString() .. "Arguments");
		for i, argumentInfo in ipairs(self.Arguments) do
			if argumentInfo:GetStrideIndex() == 1 then
				table.insert(lines, APIDocumentation:GetIndentString(2) .. "(Variable arguments)");
			end

			table.insert(lines, APIDocumentation:GetIndentString(2) .. ("%d. %s"):format(i, argumentInfo:GetSingleOutputLine()));
		end
	end

	if self.Returns then
		table.insert(lines, APIDocumentation:GetIndentString() .. "Returns");
		for i, returnInfo in ipairs(self.Returns) do
			if returnInfo:GetStrideIndex() == 1 then
				table.insert(lines, APIDocumentation:GetIndentString(2) .. "(Variable returns)");
			end
			table.insert(lines, APIDocumentation:GetIndentString(2) .. ("%d. %s"):format(i, returnInfo:GetSingleOutputLine()));
		end
	end

	return lines;
end
SystemsAPIMixin = CreateFromMixins(BaseAPIMixin);

function SystemsAPIMixin:GetType()
	return "system";
end

function SystemsAPIMixin:GetLinkHexColor()
	return "ff55dd";
end

function SystemsAPIMixin:GetNamespaceName()
	return self.Namespace or "";
end

function SystemsAPIMixin:GetLoweredNamespaceName()
	if not self.loweredNamespaceName then
		self.loweredNamespaceName = self:GetNamespaceName():lower();
	end
	return self.loweredNamespaceName;
end

function SystemsAPIMixin:MatchesSearchString(searchString)
	if self:GetLoweredName():match(searchString) then
		return true;
	end

	if self:MatchesAnyDocumentation(searchString) then
		return true;
	end

	return false;
end

function SystemsAPIMixin:GetSingleOutputLine()
	if self.Namespace then
		return ("%s %s (%s)"):format(self:GetPrettyType(), self:GenerateAPILink(), self.Namespace);
	end
	return BaseAPIMixin.GetSingleOutputLine(self);
end

function SystemsAPIMixin:GetDetailedOutputLines()
	local lines = {};
	table.insert(lines, self:GetSingleOutputLine());

	self:AddDocumentationTags(lines);

	if self.Functions and #self.Functions > 0 then
		table.insert(lines, APIDocumentation:GetIndentString() .. "Functions");
		for i, functionInfo in ipairs(self.Functions) do
			table.insert(lines, APIDocumentation:GetIndentString(2) .. functionInfo:GetSingleOutputLine());
		end
	end

	if self.Events and #self.Events > 0 then
		table.insert(lines, APIDocumentation:GetIndentString() .. "Events");
		for i, eventInfo in ipairs(self.Events) do
			table.insert(lines, APIDocumentation:GetIndentString(2) .. eventInfo:GetSingleOutputLine());
		end
	end

	if self.Tables and #self.Tables > 0 then
		table.insert(lines, APIDocumentation:GetIndentString() .. "Tables");
		for i, tableInfo in ipairs(self.Tables) do
			table.insert(lines, APIDocumentation:GetIndentString(2) .. tableInfo:GetSingleOutputLine());
		end
	end

	return lines;
end

function SystemsAPIMixin:MatchesName(name, parentName)
	if BaseAPIMixin.MatchesName(self, name, parentName) then
		return true;
	end

	return name == self:GetNamespaceName();
end

function SystemsAPIMixin:MatchesNameCaseInsenstive(name, parentName)
	if BaseAPIMixin.MatchesNameCaseInsenstive(self, name, parentName) then
		return true;
	end

	return name == self:GetLoweredNamespaceName();
end

function SystemsAPIMixin:FindAllAPIMatches(apiToSearchFor)
	apiToSearchFor = apiToSearchFor:lower();

	local matches = {
		tables = {},
		functions = {},
		events = {},
	};

	APIDocumentationMixin:AddAllMatches(self.Tables, matches.tables, apiToSearchFor);
	APIDocumentationMixin:AddAllMatches(self.Functions, matches.functions, apiToSearchFor);
	APIDocumentationMixin:AddAllMatches(self.Events, matches.events, apiToSearchFor);

	-- Only return something if we matched anything
	for name, subTable in pairs(matches) do
		if #subTable > 0 then
			return matches;
		end
	end

	return nil;
end

local function AddAll(apiContainer, matchesContainer)
	if apiContainer then
	    for i, apiInfo in ipairs(apiContainer) do
		    table.insert(matchesContainer, apiInfo); 
	    end
	end
end

function SystemsAPIMixin:ListAllAPI()
	local allAPI = {
		tables = {},
		functions = {},
		events = {},
	};

	AddAll(self.Tables, allAPI.tables);
	AddAll(self.Functions, allAPI.functions);
	AddAll(self.Events, allAPI.events);

	return allAPI;
end

function SystemsAPIMixin:GetNumTables()
	return self.Tables and #self.Tables or 0;
end

function SystemsAPIMixin:GetNumFunctions()
	return self.Functions and #self.Functions or 0;
end

function SystemsAPIMixin:GetNumEvents()
	return self.Events and #self.Events or 0;
end
TablesAPIMixin = CreateFromMixins(BaseAPIMixin);

function TablesAPIMixin:GetParentName()
	if self.System then
		return self.System:GetName(); 
	end

	return "";
end

function TablesAPIMixin:GetType()
	return "table";
end

function TablesAPIMixin:GetPrettyType()
	return self.Type:lower();
end

function TablesAPIMixin:GetLinkHexColor()
	return "55ffdd";
end

function TablesAPIMixin:GetFullName() -- override
	if self.Type == "Enumeration" then
		return ("Enum.%s"):format(self:GetName());
	end

	return BaseAPIMixin.GetFullName(self);
end

function TablesAPIMixin:MatchesSearchString(searchString)
	if self:GetLoweredName():match(searchString) then
		return true;
	end

	if self:MatchesAnyDocumentation(searchString) then
		return true;
	end

	if self:MatchesAnyAPI(self.Fields, searchString) then
		return true
	end
	return false;
end

function TablesAPIMixin:GetDetailedOutputLines()
	local lines = {};
	table.insert(lines, self:GetSingleOutputLine());

	self:AddSystemTag(lines);
	self:AddDocumentationTags(lines);

	if self.Fields then
		if self.Type == "Enumeration" then
			table.insert(lines, APIDocumentation:GetIndentString() .. "Num Values: " .. self.NumValues);
			table.insert(lines, APIDocumentation:GetIndentString() .. "Min Value: " .. self.MinValue);
			table.insert(lines, APIDocumentation:GetIndentString() .. "Max Value: " .. self.MaxValue);
			table.insert(lines, APIDocumentation:GetIndentString() .. "Values");
		else
			table.insert(lines, APIDocumentation:GetIndentString() .. "Fields");
		end

		for i, fieldInfo in ipairs(self.Fields) do
			table.insert(lines, APIDocumentation:GetIndentString(2) .. fieldInfo:GetSingleOutputLine());
		end
	end

	return lines;
end
EventsAPIMixin = CreateFromMixins(BaseAPIMixin);

function EventsAPIMixin:GetParentName() -- override
	if self.System then
		return self.System:GetName(); 
	end

	return "";
end

function EventsAPIMixin:GetType() -- override
	return "event";
end

function EventsAPIMixin:GetLinkHexColor()
	return "77ff22";
end

function EventsAPIMixin:GetClipboardString()
	local lines = {};
	table.insert(lines, ([[if event == "%s" then]]):format(self.LiteralName));
	table.insert(lines, ("\tlocal %s = ...;"):format(self:GetPayloadString(false, false)));
	table.insert(lines, "end");
	return table.concat(lines, "\r\n");
end

function EventsAPIMixin:GetFullName(decorateOptionals, includeColorCodes) -- override
	if self.System then
		return ("Event.%s.%s -> %s"):format(self.System:GetName(), self:GetName(), self:GetPayloadString(decorateOptionals, includeColorCodes));
	end
	return ("Event.%s -> %s"):format(self:GetName(), self:GetPayloadString(decorateOptionals, includeColorCodes));
end

function EventsAPIMixin:MatchesSearchString(searchString) -- override
	if self:GetLoweredName():match(searchString) then
		return true;
	end

	if self.System and self.System:GetLoweredName():match(searchString) then
		return true;
	end

	if self.LiteralName:lower():match(searchString) then
		return true;
	end

	if self:MatchesAnyDocumentation(searchString) then
		return true;
	end

	if self:MatchesAnyAPI(self.Payload, searchString) then
		return true
	end

	return false;
end

function EventsAPIMixin:GetPayloadString(decorateOptionals, includeColorCodes) -- override
	if self.Payload then
		local values = {};
		for i, payloadInfo in ipairs(self.Payload) do
			if includeColorCodes ~= false then
				table.insert(values, ("%s|cff%s"):format(payloadInfo:GetPayloadString(decorateOptionals, includeColorCodes), self:GetLinkHexColor()));
			else
				table.insert(values, payloadInfo:GetPayloadString(decorateOptionals, includeColorCodes));
			end
		end
		return table.concat(values, ", ");
	end
	return "";
end

function EventsAPIMixin:GetDetailedOutputLines() -- override
	local lines = {};
	table.insert(lines, self:GetSingleOutputLine());

	self:AddSystemTag(lines);
	self:AddDocumentationTags(lines);

	table.insert(lines, APIDocumentation:GetIndentString() .. "Literal Name: \"" .. self.LiteralName .. "\"");

	if self.Payload then
		table.insert(lines, APIDocumentation:GetIndentString() .. "Payload");
		for i, payloadInfo in ipairs(self.Payload) do
			table.insert(lines, APIDocumentation:GetIndentString(2) .. ("%d. %s"):format(i, payloadInfo:GetSingleOutputLine()));
		end
	end

	return lines;
end
APIDocumentationMixin = {};

-- "public"
function APIDocumentationMixin:OnLoad()
	self.tables = {};
	self.functions = {};
	self.systems = {};
	self.fields = {};
	self.events = {};
	self.callbacks = {};

	self.Commands = {
		Default = 1,
		CopyAPI = 2,
		OpenDump = 3,
	};

	DEFAULT_CHAT_FRAME:SetMaxLines(2000);
end

function APIDocumentationMixin:HandleSlashCommand(command)
	local commands = { (" "):split(command) };

	if commands[1] == "?" or commands[1] == "help" or commands[1] == "" then
		self:OutputUsage();
	elseif commands[1] == "stats" then
		self:OutputStats();
	elseif commands[1] == "system" then
		if commands[2] == "list" then
			self:OutputAllSystems();
		else
			self:OutputUsage();
		end
	elseif commands[1] == "s" or commands[1] == "search" then
		self:OutputAllAPIMatches(unpack(commands, 2));
	elseif commands[1] then
		self:TryHandlingSystemSearchCommand(unpack(commands));
	else
		self:OutputUsage();
	end
end

function APIDocumentationMixin:HandleAPILink(link, command)
	local _, type, name, parentName = (":"):split(link);
	local apiInfo = self:FindAPIByName(type, name, parentName);
	if apiInfo then
		if command == self.Commands.CopyAPI then
			self:HandleCopyAPI(apiInfo);
		elseif command == self.Commands.OpenDump then
			self:HandleOpenDump(apiInfo);
		else
			self:HandleDefaultCommand(apiInfo);
		end
	end
end

function APIDocumentationMixin:HandleDefaultCommand(apiInfo)
	self:WriteLine(" ");
	self:WriteAllLines(apiInfo:GetDetailedOutputLines());
end

function APIDocumentationMixin:HandleCopyAPI(apiInfo)
	local clipboardString = apiInfo:GetClipboardString();
	CopyToClipboard(clipboardString);
	self:WriteLineF("Copied to clipboard: %s", clipboardString);
end

function APIDocumentationMixin:HandleOpenDump(apiInfo)
	if apiInfo.Type == "Function" then
		local dumpString;
		local systemNamespace = apiInfo.System and apiInfo.System:GetNamespaceName() or nil;
		if systemNamespace and systemNamespace ~= "" then
			dumpString = ("/dump %s.%s()"):format(systemNamespace, apiInfo.Name);
		else
			dumpString = ("/dump %s()"):format(apiInfo.Name);
		end

		local desiredCursorPosition = #dumpString - 1;
		ChatFrame_OpenChat(dumpString, nil, desiredCursorPosition);
	else
		self:WriteLine("Can only /dump functions");
	end
end

function APIDocumentationMixin:FindAPIByName(apiType, name, parentName)
	local apiTable = self:GetAPITableByTypeName(apiType);
	if apiTable then
		for i, apiInfo in ipairs(apiTable) do
			if apiInfo:MatchesName(name, parentName) then
				return apiInfo;
			end
		end
	end
	return nil;
end

function APIDocumentationMixin:GetAPITableByTypeName(apiType)
	if apiType == "function" then
		return self.functions;
	elseif apiType == "table" then
		return self.tables;
	elseif apiType == "system" then
		return self.systems;
	elseif apiType == "field" then
		return self.fields;
	elseif apiType == "event" then
		return self.events;
	elseif apiType == "callback" then
		return self.callbacks;
	end
	return nil;
end

function APIDocumentationMixin:OutputUsage()
	self:WriteLine("Usage:");

	self:WriteLine("Search for API");
	self:WriteLine(self:GetIndentString() .. "/api search <api name>");
	self:WriteLine(self:GetIndentString() .. "or");
	self:WriteLine(self:GetIndentString() .. "/api s <api name>");
	self:WriteLine(self:GetIndentString() .. "Example: /api search item");
	self:WriteLine(" ");

	self:WriteLine("List all systems");
	self:WriteLine(self:GetIndentString() .. "/api system list");
	self:WriteLine(" ");

	self:WriteLine("Search system for API");
	self:WriteLine(self:GetIndentString() .. "/api <system name> search <api name>");
	self:WriteLine(self:GetIndentString() .. "or");
	self:WriteLine(self:GetIndentString() .. "/api <system name> s <api name>");
	self:WriteLine(self:GetIndentString() .. "Example: /api artifactui search relic");
	self:WriteLine(" ");

	self:WriteLine("List all API in a system");
	self:WriteLine(self:GetIndentString() .. "/api <system name> list");
	self:WriteLine(self:GetIndentString() .. "Example: /api artifactui list");
	self:WriteLine(" ");
	self:WriteLine("All searches support Lua patterns.");
end

function APIDocumentationMixin:OutputStats()
	self:WriteLine("Stats:");
	self:WriteLineF("Total systems: %d", #self.systems);
	local totalFunctions = 0;
	local totalEvents = 0;
	local totalTables = 0;

	for i, systemInfo in ipairs(self.systems) do
		totalFunctions = totalFunctions + systemInfo:GetNumFunctions();
		totalEvents = totalEvents + systemInfo:GetNumEvents();
		totalTables = totalTables + systemInfo:GetNumTables();
	end

	self:WriteLineF("Total functions: %d", totalFunctions);
	self:WriteLineF("Total events: %d", totalEvents);
	self:WriteLineF("Total tables: %d", totalTables);
end

function APIDocumentationMixin:OutputAllSystems()
	self:WriteLineF("All systems (%d):", #self.systems);
	for i, systemInfo in ipairs(self.systems) do
		self:WriteLine(systemInfo:GetSingleOutputLine());
	end
end

function APIDocumentationMixin:TryHandlingSystemSearchCommand(systemName, subCommand, apiToSearchFor)
	local system = self:FindSystemByName(systemName);
	if system then
		if subCommand == nil then
			self:WriteLine(system:GetSingleOutputLine());
		elseif subCommand == "s" or subCommand == "search" and apiToSearchFor then
			self:OutputAllSystemAPIMatches(system, apiToSearchFor);
		elseif subCommand == "list" then
			self:OutputAllSystemAPI(system);
		else
			self:OutputUsage();
		end
	else
		self:WriteLineF("No system found (%s)", tostring(systemName));
	end
end

function APIDocumentationMixin:OutputAPIMatches(apiMatches, headerName)
	if apiMatches and #apiMatches > 0 then
		self:WriteLineF("Found %d %s", #apiMatches, headerName);
		for i, api in ipairs(apiMatches) do
			self:WriteLine(self:GetIndentString() .. api:GetSingleOutputLine());
		end
	end
end

function APIDocumentationMixin:OutputAllAPIMatches(apiToSearchFor)
	if not apiToSearchFor or apiToSearchFor == "" then
		self:OutputUsage();
		return;
	end
	self:WriteLine(" ");

	local apiMatches = self:FindAllAPIMatches(apiToSearchFor);
	if apiMatches then
		local total = #apiMatches.tables + #apiMatches.functions + #apiMatches.events + #apiMatches.systems + #apiMatches.callbacks;
		assert(total > 0);
		self:WriteLineF("Found %d API that matches %q", total, apiToSearchFor);

		self:OutputAPIMatches(apiMatches.systems, "system(s)");
		self:OutputAPIMatches(apiMatches.functions, "function(s)");
		self:OutputAPIMatches(apiMatches.events, "events(s)");
		self:OutputAPIMatches(apiMatches.tables, "table(s)");
		self:OutputAPIMatches(apiMatches.callbacks, "callback(s)");
	else
		self:WriteLineF("No API found that matches %q", apiToSearchFor);
	end
end

function APIDocumentationMixin:OutputAllSystemAPIMatches(system, apiToSearchFor)
	local apiMatches = system:FindAllAPIMatches(apiToSearchFor);
	if apiMatches then
		local total = #apiMatches.tables + #apiMatches.functions + #apiMatches.events;
		assert(total > 0);
		self:WriteLineF("Found %d API that matches %q", total, apiToSearchFor);

		self:OutputAPIMatches(apiMatches.functions, "function(s)");
		self:OutputAPIMatches(apiMatches.events, "events(s)");
		self:OutputAPIMatches(apiMatches.tables, "table(s)");
	else
		self:WriteLineF("No API found that matches %q in %s", apiToSearchFor, system:GenerateAPILink());
	end
end

function APIDocumentationMixin:OutputAllSystemAPI(system)
	local apiMatches = system:ListAllAPI();
	if apiMatches then
		self:WriteLineF("All API in %s", system:GenerateAPILink());

		self:OutputAPIMatches(apiMatches.functions, "function(s)");
		self:OutputAPIMatches(apiMatches.events, "events(s)");
		self:OutputAPIMatches(apiMatches.tables, "table(s)");
	else
		self:WriteLineF("No API found in %s", system:GenerateAPILink());
	end
end

--[[static]] function APIDocumentationMixin:AddAllMatches(apiContainer, matchesContainer, apiToSearchFor)
	for i, apiInfo in ipairs(apiContainer) do
		if apiInfo:MatchesSearchString(apiToSearchFor) then
			table.insert(matchesContainer, apiInfo);
		end
	end
end

function APIDocumentationMixin:FindAllAPIMatches(apiToSearchFor)
	apiToSearchFor = apiToSearchFor:lower();

	local matches = {
		tables = {},
		functions = {},
		events = {},
		systems = {},
		callbacks = {},
	};

	self:AddAllMatches(self.tables, matches.tables, apiToSearchFor);
	self:AddAllMatches(self.functions, matches.functions, apiToSearchFor);
	self:AddAllMatches(self.systems, matches.systems, apiToSearchFor);
	self:AddAllMatches(self.events, matches.events, apiToSearchFor);
	self:AddAllMatches(self.callbacks, matches.callbacks, apiToSearchFor);

	-- Only return something if we matched anything
	for name, subTable in pairs(matches) do
		if #subTable > 0 then
			return matches;
		end
	end

	return nil;
end

function APIDocumentationMixin:FindSystemByName(systemName)
	systemName = systemName:lower();
	for i, systemInfo in ipairs(self.systems) do
		if systemInfo:MatchesNameCaseInsenstive(systemName) then
			return systemInfo;
		end
	end
	return nil;
end

function APIDocumentationMixin:AddDocumentationTable(documentationInfo)
	if documentationInfo.Name then
		self:AddSystem(documentationInfo);
	else
		for i, tableInfo in ipairs(documentationInfo.Tables) do
			self:AddTable(tableInfo);
		end
	end
end

function APIDocumentationMixin:WriteLine(message)
	local info = ChatTypeInfo["SYSTEM"];
	DEFAULT_CHAT_FRAME:AddMessage(message, info.r, info.g, info.b, info.id);
end

function APIDocumentationMixin:WriteLineF(format, ...)
	self:WriteLine(format:format(...));
end

function APIDocumentationMixin:WriteAllLines(lines)
	for i, line in ipairs(lines) do
		self:WriteLine(line);
	end
end

function APIDocumentationMixin:GetIndentString(numIndent)
	return ("   "):rep(numIndent or 1);
end

-- "private"
function APIDocumentationMixin:AddTable(documentationInfo)
	Mixin(documentationInfo, TablesAPIMixin);

	table.insert(self.tables, documentationInfo);

	if documentationInfo.Fields then
		for i, field in ipairs(documentationInfo.Fields) do
			field.Table = documentationInfo;
			self:AddField(field);
		end
	end
end

function APIDocumentationMixin:AddFunction(documentationInfo)
	Mixin(documentationInfo, FunctionsAPIMixin);

	table.insert(self.functions, documentationInfo);

	if documentationInfo.Arguments then
		for i, field in ipairs(documentationInfo.Arguments) do
			field.Function = documentationInfo;
			self:AddField(field);
		end
	end

	if documentationInfo.Returns then
		for i, field in ipairs(documentationInfo.Returns) do
			field.Function = documentationInfo;
			self:AddField(field);
		end
	end
end

function APIDocumentationMixin:AddEvent(documentationInfo)
	Mixin(documentationInfo, EventsAPIMixin);

	table.insert(self.events, documentationInfo);

	if documentationInfo.Payload then
		for i, field in ipairs(documentationInfo.Payload) do
			field.Event = documentationInfo;
			self:AddField(field);
		end
	end
end

function APIDocumentationMixin:AddField(documentationInfo)
	Mixin(documentationInfo, FieldsAPIMixin);

	table.insert(self.fields, documentationInfo);
end

function APIDocumentationMixin:AddSystem(documentationInfo)
	Mixin(documentationInfo, SystemsAPIMixin);

	table.insert(self.systems, documentationInfo);

	for i, functionInfo in ipairs(documentationInfo.Functions) do
		functionInfo.System = documentationInfo;
		self:AddFunction(functionInfo);
	end

	for i, eventInfo in ipairs(documentationInfo.Events) do
		eventInfo.System = documentationInfo;
		self:AddEvent(eventInfo);
	end

	for i, tableInfo in ipairs(documentationInfo.Tables) do
		tableInfo.System = documentationInfo;
		self:AddTable(tableInfo);
	end
end

APIDocumentation = CreateFromMixins(APIDocumentationMixin);
APIDocumentation:OnLoad();