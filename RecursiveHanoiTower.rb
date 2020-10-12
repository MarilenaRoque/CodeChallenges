## pseudo code
def hanoi_steps(number_of_discs,  start='1', aux='2', target='3')
    unless number_of_discs == 0
      ## move all the disks above the last one to the auxiliar, using the target as an auxiliar
      hanoi_steps(number_of_discs-1, start, target, aux)
      ## move the last one to the target
      puts "#{start}->#{target}"
      ## move all the disks that was on the auxiliar to the target.
      hanoi_steps(number_of_discs-1, aux, start, target)
    end
  end