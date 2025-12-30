local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloxforge/ui/refs/heads/main/main.lua"))()

local window = lib.new()

local tab1 = window:newTab("ragebot")
local tab2 = window:newTab("visuals")

local section1 = tab1:newSection("general")
local toggle1 = section1:newToggle("enabled", false, function(state)
	print("toggle state:", state) 
	-- returns boolean
end)

local slider1 = section1:newSlider("fov", 0, 180, 90, function(value)
	print("slider value:", value)
	-- returns number
end)

local multiSelect = section1:newSelectbox("Parts", {"Head", "Torso", "Arms"}, true, --[[ multiple is true ]] {"Head"}, function(selected)
	print("selected parts:", selected)
	-- SET FALSE OR TRUE!!, IN NOT SETTED IT WILL CAUSE ERROR
	-- if multiple is false:
	-- string, else
	-- returns table if multiple is true:
	-- selected parts:  ▼  {
	-- 	[1] = "Head"
	-- }
end)

local bind1 = section1:newBind("activation key", "F", function(key, isPress)
	if isPress then
		window:Toggle() --[[ toggles the window ]]
	else
		print("bind key changed to:", key or "None")
	end
end)