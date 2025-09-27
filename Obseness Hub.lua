-- Settings
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Obseness Hub",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "Obseness Hub",
   LoadingSubtitle = "by Obseness",
   ShowText = "Rayfield", -- for mobile users to unhide rayfield, change if you'd like
   Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   ToggleUIKeybind = "K", -- The keybind to toggle the UI visibility (string like "K" or Enum.KeyCode)

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Obseness Hub"
   },

   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "Key",
      Subtitle = "Key System",
      Note = "Key is My Name.", -- Use this to tell the user how to get a key
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"Obseness"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

Rayfield:Notify({
   Title = "Loading Successfully!",
   Content = "Made By. Obseness",
   Duration = 5,
   Image = 4483362458,
})

-- Tabs
local Tab = Window:CreateTab("Main", 4483362458) -- Title, Image
local Tab2 = Window:CreateTab("Misc", 4483362458) -- Title, Image
local Tab3 = Window:CreateTab("Credit", 4483362458) -- Title, Image
local Tab4 = Window:CreateTab("Versions", 4483362458) -- Title, Image

-- Sections
local Section = Tab:CreateSection("Main")
local Section = Tab2:CreateSection("Misc")
local Section = Tab3:CreateSection("Credit")
local Section = Tab4:CreateSection("Version")

-- Buttons (Main)
local Button = Tab:CreateButton({
   Name = "Alchemy Hub",
   Callback = function()
   loadstring(game:HttpGet("https://scripts.alchemyhub.xyz"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Chiyo Hub",
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/kaisenlmao/loader/refs/heads/main/chiyo.lua"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Clude Hub",
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/CludeHub/CludeHub-all-scripts/refs/heads/main/HuntyZombie-CludeHub-NeverloseMenuCheat.lua"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Zetra Hub",
   Callback = function()
   loadstring(game:HttpGet("https://zetrax.cc"))()
   end,
})
local Button = Tab:CreateButton({
   Name = "LS Hub(My first script hub)",
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/Sentiard/lshub/refs/heads/main/Source"))()
   end,
})

-- Buttons (Misc)
local Button = Tab2:CreateButton({
   Name = "infinite yield",
   Callback = function()
   loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
   end,
})

-- Credit
local Label = Tab3:CreateLabel("Made By. Obseness", 4483362458, Color3.fromRGB(150, 150, 150), false) -- Title, Icon, Color, IgnoreTheme

-- Version
local OHVersion = "V1.0"

local Paragraph = Tab4:CreateParagraph({Title = "Date. 2025-09-27", Content = OHVersion})
