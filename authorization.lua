while true do
term.clear()
term.setCursorPos(1, 1)
l = "Ваш_Логін"
print("Enter your login: ")
log = read()
if log == l then
  print("OK")
  sleep(2)
else
  print("Error, please try again.")
  sleep(2)
end
term.clear()
term.setCursorPos(1, 1)
p = "Ваш_Пароль"
print("Enter your password: ")
pass = read("*")
if pass == p then
  print("Access granted")
  rs.setOutput("left", true)
  sleep(3)
  rs.setOutput("left", false)
else
  print("Access denied")
  sleep(1)
end
end
