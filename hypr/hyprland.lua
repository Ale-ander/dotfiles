--- Sourcing external config files ---
local configDir = "configs/" -- Config directory path

-- Key shortcut
require(configDir .. "Keybinds")

-- App at startup
require(configDir .. "StartupApps")

-- Environmental variables
require(configDir .. "ENVariables")

-- Environmental variables
require(configDir .. "Laptops")

-- Environmental variables
require(configDir .. "WindowRules")

-- Environmental variables
require(configDir .. "SystemSettings")

-- Environmental variables
require(configDir .. "monitors")

-- Animations
require(configDir .. "Animations")
