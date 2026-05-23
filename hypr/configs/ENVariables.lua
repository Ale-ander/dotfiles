local apps = require("configs/DefaultsApps")

 -- set default app o env variables for .sh scripts to use
for key, value in pairs(apps) do
    hl.env(key,  value)
end

hl.env("EDITOR", "nvim")
hl.env("QT_QPA_PLATFORMTHEME", "qt6ct")
