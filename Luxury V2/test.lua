task.spawn(function()
	local ImportGlobals

	-- Holds the actual DOM data
	local ObjectTree = {
		{
			1,
			"ModuleScript",
			{
				"Luxury"
			},
			{
				{
					2,
					"Folder",
					{
						"List"
					},
					{
						{
							4,
							"ModuleScript",
							{
								"Blade Ball"
							}
						},
						{
							3,
							"ModuleScript",
							{
								"Blox Fruit"
							}
						},
						{
							6,
							"ModuleScript",
							{
								"Sword Burst 3"
							}
						},
						{
							5,
							"ModuleScript",
							{
								"King Legacy"
							}
						}
					}
				}
			}
		}
	}

	-- Holds direct closure data
	local ClosureBindings = {
		function()local maui,script,require,getfenv,setfenv=ImportGlobals(1)local luxury = {
			["King Legacy"] = {id = 4520749081},
			["Blade Ball"] = {id = 13772394625},
			["Blox Fruit"] = {id = 2753915549},
			["Sword Burst 3"] = {id = 11523257493},
			}

			local luxury_ui = loadstring(game:HttpGet("https://raw.githubusercontent.com/SixZensED/Scripts/main/Luxury%20V2/Libraryv2.lua"))()

			for index,value in pairs(luxury) do
				print(index,value)
			end

			return luxury end,
		[3] = function()local maui,script,require,getfenv,setfenv=ImportGlobals(3)local module = {}

			return module
		end,
		[4] = function()local maui,script,require,getfenv,setfenv=ImportGlobals(4)local module = {}

			return module
		end,
		[5] = function()local maui,script,require,getfenv,setfenv=ImportGlobals(5)local module = {}
			print("yes")
			return module
		end,
		[6] = function()local maui,script,require,getfenv,setfenv=ImportGlobals(6)local module = {}

			return module
		end
	} -- [RefId] = Closure

	-- Set up from data
	do
		-- Localizing certain libraries and built-ins for runtime efficiency
		local task, setmetatable, error, newproxy, getmetatable, next, table, unpack, coroutine, script, type, require, pcall, getfenv, setfenv, rawget= task, setmetatable, error, newproxy, getmetatable, next, table, unpack, coroutine, script, type, require, pcall, getfenv, setfenv, rawget

		local table_insert = table.insert
		local table_remove = table.remove

		-- lol
		local table_freeze = table.freeze or function(t) return t end

		-- If we're not running on Roblox or Lune runtime, we won't have a task library
		local Defer = task and task.defer or function(f, ...)
			local Thread = coroutine.create(f)
			coroutine.resume(Thread, ...)
			return Thread
		end

		-- `maui.Version` compat
		local Version = "0.0.0-venv"

		local RefBindings = {} -- [RefId] = RealObject

		local ScriptClosures = {}
		local StoredModuleValues = {}
		local ScriptsToRun = {}

		-- maui.Shared
		local SharedEnvironment = {}

		-- We're creating 'fake' instance refs soley for traversal of the DOM for require() compatibility
		-- It's meant to be as lazy as possible lol
		local RefChildren = {} -- [Ref] = {ChildrenRef, ...}

		-- Implemented instance methods
		local InstanceMethods = {
			GetChildren = function(self)
				local Children = RefChildren[self]
				local ReturnArray = {}

				for Child in next, Children do
					table_insert(ReturnArray, Child)
				end

				return ReturnArray
			end,

			-- Not implementing `recursive` arg, as it isn't needed for us here
			FindFirstChild = function(self, name)
				if not name then
					error("Argument 1 missing or nil", 2)
				end

				for Child in next, RefChildren[self] do
					if Child.Name == name then
						return Child
					end
				end

				return
			end,

			GetFullName = function(self)
				local Path = self.Name
				local ObjectPointer = self.Parent

				while ObjectPointer do
					Path = ObjectPointer.Name .. "." .. Path

					-- Move up the DOM (parent will be nil at the end, and this while loop will stop)
					ObjectPointer = ObjectPointer.Parent
					task.wait()
				end

				return "VirtualEnv." .. Path
			end,
		}

		-- "Proxies" to instance methods, with err checks etc
		local InstanceMethodProxies = {}
		for MethodName, Method in next, InstanceMethods do
			InstanceMethodProxies[MethodName] = function(self, ...)
				if not RefChildren[self] then
					error("Expected ':' not '.' calling member function " .. MethodName, 1)
				end

				return Method(self, ...)
			end
		end

		local function CreateRef(className, name, parent)
			-- `name` and `parent` can also be set later by the init script if they're absent

			-- Extras
			local StringValue_Value

			-- Will be set to RefChildren later aswell
			local Children = setmetatable({}, {__mode = "k"})

			-- Err funcs
			local function InvalidMember(member)
				error(member .. " is not a valid (virtual) member of " .. className .. " \"" .. name .. "\"", 1)
			end

			local function ReadOnlyProperty(property)
				error("Unable to assign (virtual) property " .. property .. ". Property is read only", 1)
			end

			local Ref = newproxy(true)
			local RefMetatable = getmetatable(Ref)

			RefMetatable.__index = function(_, index)
				if index == "ClassName" then -- First check "properties"
					return className
				elseif index == "Name" then
					return name
				elseif index == "Parent" then
					return parent
				elseif className == "StringValue" and index == "Value" then
					-- Supporting StringValue.Value for Rojo .txt file conv
					return StringValue_Value
				else -- Lastly, check "methods"
					local InstanceMethod = InstanceMethodProxies[index]

					if InstanceMethod then
						return InstanceMethod
					end
				end

				-- Next we'll look thru child refs
				for Child in next, Children do
					if Child.Name == index then
						return Child
					end
				end

				-- At this point, no member was found; this is the same err format as Roblox
				InvalidMember(index)
			end

			RefMetatable.__newindex = function(_, index, value)
				-- __newindex is only for props fyi
				if index == "ClassName" then
					ReadOnlyProperty(index)
				elseif index == "Name" then
					name = value
				elseif index == "Parent" then
					-- We'll just ignore the process if it's trying to set itself
					if value == Ref then
						return
					end

					if parent ~= nil then
						-- Remove this ref from the CURRENT parent
						RefChildren[parent][Ref] = nil
					end

					parent = value

					if value ~= nil then
						-- And NOW we're setting the new parent
						RefChildren[value][Ref] = true
					end
				elseif className == "StringValue" and index == "Value" then
					-- Supporting StringValue.Value for Rojo .txt file conv
					StringValue_Value = value
				else
					-- Same err as __index when no member is found
					InvalidMember(index)
				end
			end

			RefMetatable.__tostring = function()
				return name
			end

			RefChildren[Ref] = Children

			if parent ~= nil then
				RefChildren[parent][Ref] = true
			end

			return Ref
		end

		-- Create real ref DOM from object tree
		local function CreateRefFromObject(object, parent)
			local RefId = object[1]
			local ClassName = object[2]
			local Properties = object[3]
			local Children = object[4] -- Optional

			local Name = table_remove(Properties, 1)

			local Ref = CreateRef(ClassName, Name, parent) -- 3rd arg may be nil if this is from root
			RefBindings[RefId] = Ref

			if Properties then
				for PropertyName, PropertyValue in next, Properties do
					Ref[PropertyName] = PropertyValue
				end
			end

			if Children then
				for _, ChildObject in next, Children do
					CreateRefFromObject(ChildObject, Ref)
				end
			end

			return Ref
		end

		local RealObjectRoot = {}
		for _, Object in next, ObjectTree do
			table_insert(RealObjectRoot, CreateRefFromObject(Object))
		end

		-- Now we'll set script closure refs and check if they should be ran as a BaseScript
		for RefId, Closure in next, ClosureBindings do
			local Ref = RefBindings[RefId]

			ScriptClosures[Ref] = Closure

			local ClassName = Ref.ClassName
			if ClassName == "LocalScript" or ClassName == "Script" then
				table_insert(ScriptsToRun, Ref)
			end
		end

		local function LoadScript(scriptRef)
			local ScriptClassName = scriptRef.ClassName

			-- First we'll check for a cached module value (packed into a tbl)
			local StoredModuleValue = StoredModuleValues[scriptRef]
			if StoredModuleValue and ScriptClassName == "ModuleScript" then
				return unpack(StoredModuleValue)
			end

			local Closure = ScriptClosures[scriptRef]
			if not Closure then
				return
			end

			-- If it's a BaseScript, we'll just run it directly!
			if ScriptClassName == "LocalScript" or ScriptClassName == "Script" then
				Closure()
				return
			else
				local ClosureReturn = {Closure()}
				StoredModuleValues[scriptRef] = ClosureReturn
				return unpack(ClosureReturn)
			end
		end

		-- We'll assign the actual func from the top of this output for flattening user globals at runtime
		-- Returns (in a tuple order): maui, script, require, getfenv, setfenv
		function ImportGlobals(refId)
			local ScriptRef = RefBindings[refId]

			local Closure = ScriptClosures[ScriptRef]
			if not Closure then
				return
			end

			-- This will be set right after the other global funcs, it's for handling proper behavior when
			-- getfenv/setfenv is called and safeenv needs to be disabled
			local EnvHasBeenSet = false
			local RealEnv
			local VirtualEnv
			local SetEnv

			local Global_maui = table_freeze({
				Version = Version,
				Script = script, -- The actual script object for the script this is running on, not a fake ref
				Shared = SharedEnvironment,

				-- For compatibility purposes..
				GetScript = function()
					return script
				end,
				GetShared = function()
					return SharedEnvironment
				end,
			})

			local Global_script = ScriptRef

			local function Global_require(module, ...)
				if RefChildren[module] and module.ClassName == "ModuleScript" and ScriptClosures[module] then
					return LoadScript(module)
				end

				return require(module, ...)
			end

			-- Calling these flattened getfenv/setfenv functions will disable safeenv for the WHOLE SCRIPT
			local function Global_getfenv(stackLevel, ...)
				-- Now we have to set the env for the other variables used here to be valid
				if not EnvHasBeenSet then
					SetEnv()
				end

				if type(stackLevel) == "number" and stackLevel >= 0 then
					if stackLevel == 0 then
						return VirtualEnv
					else
						-- Offset by 1 for the actual env
						stackLevel = stackLevel + 1

						local GetOk, FunctionEnv = pcall(getfenv, stackLevel)
						if GetOk and FunctionEnv == RealEnv then
							return VirtualEnv
						end
					end
				end

				return getfenv(stackLevel, ...)
			end

			local function Global_setfenv(stackLevel, newEnv, ...)
				if not EnvHasBeenSet then
					SetEnv()
				end

				if type(stackLevel) == "number" and stackLevel >= 0 then
					if stackLevel == 0 then
						return setfenv(VirtualEnv, newEnv)
					else
						stackLevel = stackLevel + 1

						local GetOk, FunctionEnv = pcall(getfenv, stackLevel)
						if GetOk and FunctionEnv == RealEnv then
							return setfenv(VirtualEnv, newEnv)
						end
					end
				end

				return setfenv(stackLevel, newEnv, ...)
			end

			-- From earlier, will ONLY be set if needed
			function SetEnv()
				RealEnv = getfenv(0)

				local GlobalEnvOverride = {
					["maui"] = Global_maui,
					["script"] = Global_script,
					["require"] = Global_require,
					["getfenv"] = Global_getfenv,
					["setfenv"] = Global_setfenv,
				}

				VirtualEnv = setmetatable({}, {
					__index = function(_, index)
						local IndexInVirtualEnv = rawget(VirtualEnv, index)
						if IndexInVirtualEnv ~= nil then
							return IndexInVirtualEnv
						end

						local IndexInGlobalEnvOverride = GlobalEnvOverride[index]
						if IndexInGlobalEnvOverride ~= nil then
							return IndexInGlobalEnvOverride
						end

						return RealEnv[index]
					end
				})

				setfenv(Closure, VirtualEnv)
				EnvHasBeenSet = true
			end
			return Global_maui, Global_script, Global_require, Global_getfenv, Global_setfenv
		end

		for _, ScriptRef in next, ScriptsToRun do
			Defer(LoadScript, ScriptRef)
		end

		do
			local MainModule
			for _, Ref in next, RealObjectRoot do
				if Ref.ClassName == "ModuleScript" and Ref.Name == "Luxury" then
					MainModule = Ref
					break
				end
			end

			if MainModule then
				return LoadScript(MainModule)
			end
		end
	end
end)
