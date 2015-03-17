-- *************************************************************************************************
-- User config
-- *************************************************************************************************

-- Access point setting
ap_SSID = "WifiSwitch"
ap_PASSWORD = "WifiSwitch"

-- MQTT settings
MQTT_URL = "104.236.200.131"
MQTT_PORT = 1883


-- *************************************************************************************************
-- Init start
-- *************************************************************************************************

if file.open("connected","r") == nil then
	dofile("connect.lua")
else
	--Check if connected to Wi-Fi before running mqtt script
	if wifi.sta.status() ~= 5 then tmr.alarm(6, 10000,0, function(d) dofile('init.lua') end) return end
	if wifi.sta.status() == 5 then dofile('mqtt.lua') return end
end


-- tmr.alarm(0, 1000, 1, function()
--    if wifi.sta.getip() == nil then
--       print("Connecting to AP...")
--    else
--       print('IP: ',wifi.sta.getip())
--       tmr.stop(0)
--    end
-- end)
