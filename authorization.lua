local function acc()
while true do
  term.clear()
  term.setCursorPos(1, 1)
  print("Enter your login: ")
  account = "Ваш_Логін"
  input_a = read()
  if input_a == account then
   break
  end
end
end

local function pass()
while true do
  term.clear()
  term.setCursorPos(1, 1)
  print("Enter your password: ")
  password = "Ваш_Пароль"
  input_p = read("*")
  if input_p == password then
   term.clear()
   term.setCursorPos(1, 1)
   term.setTextColour( colours.yellow)
   print("CraftOS 1.5")
   term.setTextColour( colours.white)
   break
  end
end
end

-- То що нижче цього повідомлення, тоже пишемо, інакше працювати не буде.
acc()
pass()
