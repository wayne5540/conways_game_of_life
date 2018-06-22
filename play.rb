


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

puts "Generation 1"

world.each do |row|
  row.each do |cell|
    print cell
  end
  print "\n"
end

puts "========="

# Evolution #1

world = world.map.with_index do |row, row_index|
  row.map.with_index do |cell, cell_index|
    n = world[(row_index-1) % 5][(cell_index) % 5]
    s = world[(row_index+1) % 5][(cell_index) % 5]
    w = world[(row_index) % 5][(cell_index-1) % 5]
    e = world[(row_index) % 5][(cell_index+1) % 5]
    nw = world[(row_index-1) % 5][(cell_index-1) % 5]
    ne = world[(row_index-1) % 5][(cell_index+1) % 5]
    sw = world[(row_index+1) % 5][(cell_index-1) % 5]
    se = world[(row_index+1) % 5][(cell_index-1) % 5]

    around = [n,s,w,e,nw,ne,sw,se]
    sum = around.sum

    # live < 2, die
    # live 2/3, live
    # live with >3, die
    # dead with == 3, spawn
    if cell == 1
      if sum < 2 || sum > 3
        0
      else
        1
      end
    else
      if sum == 3
        1
      else
        0
      end
    end
  end
end

# print to console
puts "Generation 2"

world.each do |row|
  row.each do |cell|
    print cell
  end
  print "\n"
end
