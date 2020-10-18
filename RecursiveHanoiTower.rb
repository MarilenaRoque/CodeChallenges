

# hanoi_steps(3, 1, 2, 3)
def hanoi_steps(n, start="1", aux="2", target="3")
  unless n == 0
    hanoi_steps(n-1, start, target, aux)
    puts "#{start}->#{target}"
    hanoi_steps(n-1, aux, start, target)
  end
end 

#move the top to the auxiliar
#move the bottom disk to the target
#move the top disk from the auxiliar to the target

#hanoi_steps(2)
# => 1->2 
#    1->3 
#    2->3

hanoi_steps(3)
# => 1->3 
#    1->2
#    3->2
#    1->3
#    2->1
#    2->3
#    1->3

#hanoi_steps(4)
# => 1->2
#    1->3
#    2->3
#    1->2
#    3->1
#    3->2
#    1->2
#    1->3
#    2->3
#    2->1
#    3->1
#    2->3
#    1->2
#    1->3
#    2->3