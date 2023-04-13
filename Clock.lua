local mon = peripheral.wrap('monitor_2')
mon.setTextColor(colors.yellow)
mon.setTextScale(5)
while true do
  mon.setCursorPos(1,1)
  mon.write(os.date("%T"))
  sleep(1)
end
