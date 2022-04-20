##################################
#Define arrays
#################################
@arr1 = Array.new(10, 1)
@arr2 = Array.new(10, 1)

##################################
#Helper methods
##################################
def attack(arr)
  sleep 1
  i = rand(0..9)
  if arr[i] == 1
    arr[i] = 0
  puts "Robot to #{i} index is destroyed"
  else
      puts "Missed to #{i} index"
  end
sleep 1
end

def stats
  cnt1 = @arr1.count { |x| x == 1 }
  cnt2 = @arr2.count { |x| x == 1 }
  puts "1st team #{cnt1} robots in formation"
  puts "#{@arr1}"
  puts "2st team #{cnt2} robots in formation"
  puts "#{@arr2}"
end

##################################
# Victory check
##################################
def victory?
  robots_left1 = @arr1.count { |x| x == 1 }
  robots_left2 = @arr2.count { |x| x == 1 }

  if robots_left1 == 0
    puts "Team 2 wins, in team left #{robots_left2} robots"
    return true
  end

  if robots_left2 == 0
    puts "Team 1 wins, in team left #{robots_left1} robots"
    return true
  end

  false
end

##################################
# Main loop
##################################

loop do
  puts 'The First team strikes'
  attack(@arr2)
  exit if victory?
  stats
  sleep 3
  puts

  puts 'The Second team strikes'
  attack(@arr1)
  exit if victory?
  stats
  sleep 3
  puts # empty string
end
