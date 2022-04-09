##################################
#Define variables
#################################
@humans = 10
@machines = 10

##################################
#Helper methods
##################################
def luck?
  rand(0..1) == 1
end

def boom
  diff = rand(1..5)
  if luck?
    @machines -= diff
    puts "#{diff} machines are destroyed"
  else
    @humans -= diff
    puts "#{diff} human died"
  end
end

# Method return random name of the city
def random_city
  dice = rand(1..5)
  if dice == 1
    'Moscow'
  elsif dice == 2
    'Los-Angeles'
  elsif dice == 3
    'Peking'
  elsif dice == 4
    'London'
  else
    'Seul'
  end
end

def random_sleep
  sleep rand(0.3..1.5)
end

def stats
  if @humans < 0
    @humans = 0
  end
  if @machines < 0
    @machines = 0    
  end 
  puts "Left #{@humans} humans and #{@machines} machines"
end

##################################
# Events
##################################

def event1
  puts "Rocket launched into the #{random_city} city"
  random_sleep
  boom
end

def event2
  puts "Used radioactive weapons in the #{random_city} city"
  random_sleep
  boom
end

def event3
  puts "A group of soldiers break through the enemy defences in the #{random_city} city"
  random_sleep
  boom
end

##################################
# Victory check
##################################

def check_victory?
  true == (@humans <= 0) || (@machines <= 0)
end

##################################
# Main loop
##################################

loop do
  if check_victory?
    puts @humans > @machines ? 'Humans win' : 'Machines win'
    exit
  end

dice = rand(1..3)

if dice == 1
  event1
elsif dice == 2
  event2
elsif dice == 3
  event3
end

  stats
  sleep rand(0.3..1.5)
end