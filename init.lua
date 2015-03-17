if file.open("connected","r") == nil then
	dofile("connect.lua")
else
	--Check if connected to Wi-Fi before running mqtt script
	if wifi.sta.status() ~= 5 then tmr.alarm(6, 10000,0, function(d) dofile('init.lua') end) return end
	if wifi.sta.status() == 5 then dofile('mqtt.lua') return end
end