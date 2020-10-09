def move(starting, goal)
    auxiliar = 0
    moves = ""
    [1, 2, 3].each do |el|
      auxiliar = el if ![starting, goal].include?(el)
    end
    moves << "#{starting}->#{auxiliar}"
    moves << " #{starting}->#{goal}"
    moves << " #{auxiliar}->#{goal}"
  end
  
  puts move(1, 3)
  # => 1->2 1->3 2->3
  
  puts move(2, 3)
  # => 2->1 2->3 1->3