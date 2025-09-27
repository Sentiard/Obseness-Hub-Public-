-- ThemeConfig
local ThemeConfig = {
    TextColor = Color3.fromRGB(240, 240, 240),
    Background = Color3.fromRGB(15, 20, 30),
    Topbar = Color3.fromRGB(25, 30, 50),
    Shadow = Color3.fromRGB(20, 20, 20),
    NotificationBackground = Color3.fromRGB(20, 20, 20),
    NotificationActionsBackground = Color3.fromRGB(230, 230, 230),
    TabBackground = Color3.fromRGB(25, 25, 25),
    TabStroke = Color3.fromRGB(35, 40, 50),
    TabBackgroundSelected = Color3.fromRGB(25, 30, 30),
    TabTextColor = Color3.fromRGB(240, 240, 240),
    SelectedTabTextColor = Color3.fromRGB(240, 240, 240),
    ElementBackground = Color3.fromRGB(25, 30, 30),
    ElementBackgroundHover = Color3.fromRGB(25, 30, 45),
    SecondaryElementBackground = Color3.fromRGB(25, 25, 25),
    ElementStroke = Color3.fromRGB(35, 40, 50),
    SecondaryElementStroke = Color3.fromRGB(40, 40, 40),
    SliderBackground = Color3.fromRGB(35, 40, 60),
    SliderProgress = Color3.fromRGB(45, 40, 50),
    SliderStroke = Color3.fromRGB(45, 40, 60),
    ToggleBackground = Color3.fromRGB(30, 30, 30),
    ToggleEnabled = Color3.fromRGB(0, 146, 214),
    ToggleDisabled = Color3.fromRGB(100, 100, 100),
    ToggleEnabledStroke = Color3.fromRGB(0, 170, 255),
    ToggleDisabledStroke = Color3.fromRGB(125, 125, 125),
    ToggleEnabledOuterStroke = Color3.fromRGB(100, 100, 100),
    ToggleDisabledOuterStroke = Color3.fromRGB(65, 65, 65),
    DropdownSelected = Color3.fromRGB(40, 40, 40),
    DropdownUnselected = Color3.fromRGB(30, 30, 30),
    InputBackground = Color3.fromRGB(30, 30, 255),
    InputStroke = Color3.fromRGB(65, 65, 65),
    PlaceholderColor = Color3.fromRGB(178, 178, 178)
}

-- Rayfield and Version Load
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local OHVersion = "2.0"

-- UI Create
local Window = Rayfield:CreateWindow({
   Name = "Obseness Hub",
   Icon = 0,
   LoadingTitle = "Obseness Hub",
   LoadingSubtitle = "by Obseness",
   ShowText = OHVersion,
   Theme = ThemeConfig,
   ToggleUIKeybind = "K",
   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false,
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil,
      FileName = "Obseness Hub"
   },
   KeySystem = true,
   KeySettings = {
      Title = "Key",
      Subtitle = "Key System",
      Note = OHVersion,
      FileName = "Key",
      SaveKey = true,
      GrabKeyFromSite = false,
      Key = {"Obseness"}
   }
})

Rayfield:Notify({
   Title = "Loading Successfully!",
   Content = OHVersion,
   Duration = 5,
   Image = 4483362458,
})

-- Safe Load Function
local function safeLoad(url)
    local ok, res = pcall(function() return game:HttpGet(url) end)
    if not ok or not res or res == "" then
        Rayfield:Notify({Title = "Load Failed", Content = "Failed to fetch: "..url, Duration = 4})
        return
    end
    local fn, err = loadstring(res)
    if not fn then
        Rayfield:Notify({Title = "Parse Error", Content = err, Duration = 4})
        return
    end
    local suc, runErr = pcall(fn)
    if not suc then
        Rayfield:Notify({Title = "Runtime Error", Content = runErr, Duration = 4})
    end
end

-- Tabs
local Tab = Window:CreateTab("Main", 4483362458)
local Tab2 = Window:CreateTab("Misc", 4483362458)
local Tab3 = Window:CreateTab("Credit", 4483362458)
local Tab4 = Window:CreateTab("Update Logs", 4483362458)

-- Sections
Tab:CreateSection("Main")
Tab2:CreateSection("Misc")
Tab3:CreateSection("Credit")
Tab4:CreateSection("Update Logs")

-- Buttons (Main)
Tab:CreateButton({
   Name = "Alchemy Hub",
   Callback = function()
      safeLoad("https://scripts.alchemyhub.xyz")
   end,
})
Tab:CreateButton({
   Name = "Chiyo Hub",
   Callback = function()
      safeLoad("https://raw.githubusercontent.com/kaisenlmao/loader/refs/heads/main/chiyo.lua")
   end,
})
Tab:CreateButton({
   Name = "Zetra Hub",
   Callback = function()
      safeLoad("https://zetrax.cc")
   end,
})

-- Buttons (Misc)
Tab2:CreateButton({
   Name = "infinite yield",
   Callback = function()
      safeLoad("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source")
   end,
})

-- Credit
Tab3:CreateLabel("Made By. Obseness", 4483362458, Color3.fromRGB(150,150,150), false)

-- Update Logs
Tab4:CreateParagraph({
   Title = "Date. 2025-09-27",
   Content = "Version: " .. OHVersion .. "\n\n- Big Update -\nFix Theme System\nRemove Version Tab and Add Update Logs"
})


