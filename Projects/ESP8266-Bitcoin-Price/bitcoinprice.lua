wifi.setmode(wifi.STATION)
wifi.sta.config("YOUR_NETWORK_NAME","YOUR_NETWORK_PASSWORD")
print(wifi.sta.getip())
conn=net.createConnection(net.TCP, 0) 
conn:on("receive", function(conn, payload) print(payload) end )
conn:connect(80,"api.coindesk.com")
conn:send("GET /v1/bpi/currentprice.json HTTP/1.1\r\nHost: api.coindesk.com\r\nConnection: keep-alive\r\nAccept: */*\r\n\r\n")
