
-- file.remove("connected.lua")
-- file.open("connected.lua","w")

print("starting connected server")
print(wifi.sta.getip())
srv=net.createServer(net.TCP) srv:listen(80,function(conn)
conn:on("receive",function(conn,payload)
print(payload)

if string.find(payload,"favicon.ico") == nil then
end

conn:send("Connected!")
end)

conn:on("sent",function(conn) conn:close() end)

end)

-- file.close()
