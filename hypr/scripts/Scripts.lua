local M = {}

----------------------Brightness-----------------------------------
local iDIR = os.getenv("HOME") .. "/.config/swaync/icons"

function M.Get_brightness()
    local handle = io.popen("brightnessctl -m | cut -d, -f4 | tr -d '%'")
    if not handle then return 0 end

    local output = handle:read("*a")
    handle:close()

    local num = tonumber(output)
    return num or 0
end

function M.Send_notification(brightness)
    local level = math.min(100, math.ceil(brightness / 20) * 20)
    local icon_path = string.format("%s/brightness-%d.png", iDIR, level)

    local cmd = string.format(
        'notify-send -e ' ..
        '-h string:x-canonical-private-synchronous:brightness_notif ' ..
        '-h int:value:"%d" -u low -i "%s" ' ..
        '"Screen" "Brightness: %d%%"',
        brightness, icon_path, brightness
    )
    hl.dispatch(hl.dsp.exec_cmd(cmd))
end

function M.Change_brightness_exec(delta)
    local current = M.Get_brightness()
    local new = math.max(5, math.min(100, current + delta))

    hl.dispatch(hl.dsp.exec_cmd("brightnessctl set " .. new .. "%"))
    M.Send_notification(new)
end

function M.Change_brightness(cmd, step)
    if cmd == "inc" then
        M.Change_brightness_exec(step)
    elseif cmd == "dec" then
        M.Change_brightness_exec(-step)
    else
        return M.Get_brightness()
    end
end

----------------------CliboardManager-----------------------------


----------------------------Zoom----------------------------------
function M.Zoom_in()
  local current = hl.get_config("cursor.zoom_factor")
  if current < 1 then
    current = 1
  end
  hl.config({ cursor = { zoom_factor = current * 1.25 } })
end

function M.Zoom_out()
  local current = hl.get_config("cursor.zoom_factor")
  if current < 1 then
    current = 1
  end
  local new_zoom = current / 1.25
  if new_zoom < 1 then
    new_zoom = 1.0
  end
  hl.config({ cursor = { zoom_factor = new_zoom } })
end

return M
