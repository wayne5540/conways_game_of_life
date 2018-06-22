# live < 2, die
# live 2/3, live
# live with >3, die
# dead with == 3, spawn


world = [
  [0,0,0,0,0],
  [0,0,0,0,0],
  [0,0,0,0,0],
  [0,0,0,0,0],
  [0,0,0,0,0]
]

# being god, make some life alive!
world[1][1] = 1
world[1][2] = 1
world[1][3] = 1

# print to console

world.each do |row|
  row.each do |cell|
    print cell
  end
  print "\n"
end
