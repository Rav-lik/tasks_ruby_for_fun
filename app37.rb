# Class of the robot
class Robot
  # Accessors - so that you can find out the coordinates from the ouside
  attr_accessor :x, :y, :n

  # Constructor takes a hash. If not set, it will be an impty hash
  # In the hash we expect two paramentrs - the initial coordinates of the robot
  # if not set, will default to zero
  def initialize (options={})
    @x = options[:x] || 0
    @y = options[:y] || 0
    @n = options[:n] || rand(1..10)
  end

  def right
    self.x += 1# if self.n.even?
  end

  def left
    self.x -= 1# if self.n.even?   
  end

  def up
    self.y += 1# if self.n.odd?   
  end

  def down
    self.y -= 1# if self.n.odd?   
  end
end

# Class "Commander", which will command and move robots
class Commander
  # Give a command to move the robot. The method accepts an object
  # and supervised (send) a random command to it.
  def move(who)
    m = [:right, :left, :up, :down].sample
    who.send(m)    
  end
end

# Create object of the commander,
# commander will be one in this version of the programm
commander = Commander.new

# Array of 10 robots
arr = Array.new(10) { Robot.new }

# In an infinite loop (press ^C to stop of the programm )
loop do
  # Cunnig way to clear the screen
  puts "\e[H\e[2J"

  # Draw an imaginary grid. Grid starts from -30 to 30 by x,
  # and -12 to 12 in Y.
  (12).downto(-12) do |y|
    (-30).upto(30) do |x|
      # Checking if we have a robot in the array with x and y coordinates
      found = arr.any? { |robot| robot.x == x && robot.y == y }
      
      # If found, we draw an asterisk, else a dot 
      if found
        print '*'
      else 
        print '.'
      end
    end
    
    # Just transfer the string
    puts
  end

  # Move each robot in a random direction
  arr.each do |robot|
    commander.move(robot)
  end

  # Half second delay
  sleep 0.5
end