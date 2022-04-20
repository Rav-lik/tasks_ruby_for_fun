#Define variable
@balance = 20

#Helping methods

def animate_number
    9.times do |i|
        print "\b#{i}"
        sleep rand(0.01..0.2)
    end
end

##################################
# Loss check
##################################

def loss_check?
    true == (@balance <= 0)
end

# Player's age check
print 'Your age: '
age = gets.to_i
if age < 18
  puts 'We are sorry, but you are under 18'
  exit
end

##################################
#Main loop
##################################

loop do
  if loss_check?
    puts 'Try again'
    exit
  end
  
  puts 'Press Enter to pull the handle...'
  gets
  print 'Results:  '
  x = rand(0..5)
  animate_number
  print "\b#{x}  "
  y = rand(0..5)
  animate_number
  print "\b#{y}  "
  z = rand(0..5)
  animate_number
  print "\b#{z}  "

  if x == 0 && y == 0 && z == 0
    @balance = 0
  elsif x == 0 && y == 0 && z == 1
    @balance += 10
    puts "You win 10 $"
  elsif x == 0 && y == 0 && z == 2
    @balance -= 20
    puts "You lost 20 $"
  elsif x == 0 && y == 0 && z == 3
    @balance += 30
    puts "You win 30 $"
  elsif x == 0 && y == 0 && z == 4
    puts "You are potato"
  elsif x == 0 && y == 0 && z == 5
    @balance += 10_000
    puts "You win 10_000 $"
  else
    @balance -= 0.5
    puts "You lost 50 cents"
  end
puts "Your balance is #{@balance} $"

end

  
