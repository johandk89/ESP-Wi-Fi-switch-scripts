-- https://primalcortex.wordpress.com/2015/02/06/nodemcu-and-mqtt-how-to-start/
-- *************************************************************************************************
-- Setup MQTT
-- *************************************************************************************************

m = mqtt.Client(wifi.sta.getmac(), 120, nil, nil)
m:lwt("/lwt", wifi.sta.getmac(), 0, 0)


-- *************************************************************************************************
-- MQTT message received
-- *************************************************************************************************

m:on("offline", function(con) 
     print ("reconnecting...") 
     print(node.heap())
     tmr.alarm(1, 10000, 0, function()
          m:connect(MQTT_URL, MQTT_PORT, 0)
     end)
end)


-- *************************************************************************************************
-- Publish MQTT message
-- on publish message receive event
-- *************************************************************************************************

m:on("message", function(conn, topic, data) 
  print(topic .. ":" ) 
  if data ~= nil then
    print(data)
	pin = 4
	if data == "1" then
		gpio.mode(pin,gpio.OUTPUT)
	    gpio.write(pin,gpio.HIGH)
	    print(gpio.read(pin))
	else
		gpio.mode(pin,gpio.OUTPUT)
	    gpio.write(pin,gpio.LOW)
	    print(gpio.read(pin))
	end
  end
end)

-- *************************************************************************************************
-- Connect to MQTT server and topic
-- *************************************************************************************************

tmr.alarm(0, 1000, 1, function()
 if wifi.sta.status() == 5 then
     tmr.stop(0)
     m:connect(MQTT_URL, MQTT_PORT, 0, function(conn) 
          print("connected")
          m:subscribe("/mqtt/topic/0",0, function(conn) 
               -- m:publish("/topic","hello",0,0, function(conn) print("sent") end)
          end)
     end)
 end
end)