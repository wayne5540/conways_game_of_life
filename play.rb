
def redraw(world, generation_index)
  system("clear")
  puts "Generation #{generation_index}"

  world.each do |row|
    row.each do |cell|
      if cell == 1
        print "x"
      else
        print "-"
      end
    end
    print "\n"
  end
end

size = 20
world = Array.new(size) { Array.new(size) { 0 } }

# being god, make some life alive!
world[5][6] = 1
world[5][7] = 1
world[5][8] = 1


redraw(world, 0)


# Evolve!

100.times do |i|
  sleep(0.2)
  world = world.map.with_index do |row, row_index|
    row.map.with_index do |cell, cell_index|
      n = world[(row_index-1) % size][(cell_index) % size]
      s = world[(row_index+1) % size][(cell_index) % size]
      w = world[(row_index) % size][(cell_index-1) % size]
      e = world[(row_index) % size][(cell_index+1) % size]
      nw = world[(row_index-1) % size][(cell_index-1) % size]
      ne = world[(row_index-1) % size][(cell_index+1) % size]
      sw = world[(row_index+1) % size][(cell_index-1) % size]
      se = world[(row_index+1) % size][(cell_index-1) % size]

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

  redraw(world, i+1)
end




