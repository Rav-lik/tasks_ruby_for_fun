class Robot
  attr_accessor :x, :y

  def initialize(options={})
    @x = options[:x] || 0
    @y = options[:y] || 0
  end

  def label
    '*'
  end

  def right
    self.x += 1    
  end

  def left
    self.x -= 1
  end

  def up
    self.y += 1
  end

  def down
    self.y -= 1    
  end
end

class Dog
  attr_accessor :x, :y

  def initialize(options={})
    @x = options[:x] || 0
    @y = options[:y] || 0
  end

  def label
    '@'
  end

  def right
    self.x += 1    
  end

  def left
  end

  def up
  end

  def down
    self.y -= 1    
  end
end

class Commander

  def move(who)
    m = [:right, :left, :up, :down].sample
    who.send(m)
  end
end

commander = Commander.new
arr = Array.new(10) { Robot.new }
4.times { arr.push(Dog.new(x: -12, y: 12)) }

loop do
  puts "\e[H\e[2J"

  12.downto(-12) do |y|
    -12.upto(12) do |x|
      somebody = arr.find { |somebody| somebody.x == x && somebody.y == y }
      if somebody
        print somebody.label
      else
        print '.'
      end

      #arr.each do |who|
      #  commander.move(who)
      #  if x == who.x && y == who.y
      #    print who.label
      #  else
      #    print '.'
      #  end
      #end
    end
    puts
  end

  #game_over = arr.combination(2).any? do |a, b|
  #  a.x == b.x && \
  #  a.y == b.y && \
  #  a.label != b.label
  #end

  #if game_over
  #  puts 'Game over'
  #  exit
  #end

  win = arr.combination(4).any? do |a, b, c, d|
    (a.x >= 12 || a.y <= -12) && a.label == '@' && \
    (b.x >= 12 || b.y <= -12) && b.label == '@' && \
    (c.x >= 12 || c.y <= -12) && c.label == '@' && \
    (d.x >= 12 || d.y <= -12) && d.label == '@'
  end

  #win = arr.any? do |dog|
  #  (dog.x == 12 || dog.y == -12) && dog.label == '@'
  #end

  if win
    puts 'Win!'
    exit
  end

  arr.each do |somebody|
    commander.move(somebody)
  end

  sleep 0.5
end