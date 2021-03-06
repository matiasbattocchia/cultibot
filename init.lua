uart.setup(0, 115200, 8, 0, 1, 1)

dofile('settings.lua')
dofile('i2c.lua')
dofile('am2320.lua')
dofile('sensors.lua')
dofile('mqtt.lua')
dofile('time_control.lua')
dofile('sensor_control.lua')
dofile('relay_logic.lua')
dofile('wifi_event_monitor.lua')

-- Enable network configuration within time window

dofile('wifi.lua')
--dofile('http.lua')
--dofile('encoding.lua')
--dofile('mostacholes.lua')
--dofile('controllers.lua')

--dofile('telnet.lua')

test = tmr.create()
test:register(10000, tmr.ALARM_AUTO, function()
  local sec, usec, rate = rtctime.get()
  print(sec)
end)
