class Monkey
  attr_reader :state

  def initialize
    x = rand(0..1)
    x == 0 ? (@state = :stop) : (@state = :run)
  end

  def run
    @state = :run
  end

  def stop
    @state = :stop    
  end

  def how_are_you
    puts "My state is #{state}"
  end
end

#monkey1 = Monkey.new
#monkey1.state

#monkey2 = Monkey.new
#monkey2.state

#monkey1.how_are_you
#monkey2.how_are_you

arr_monkey = Array.new(10) {Monkey.new}

arr_monkey.each do |x|
  x.how_are_you
end