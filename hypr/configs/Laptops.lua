local scriptsDir = ".config/hypr/scripts/"

hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd(scriptsDir .. "Brightness.sh --dec"), {repeating = true, description = "Brightness up"})
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd(scriptsDir .. "Brightness.sh --inc"), {repeating = true, description = "Brightness down"})
