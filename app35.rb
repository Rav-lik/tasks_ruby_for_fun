class Car
  attr_accessor :state # = attr_reader :state && attr_writer :state

  def initialize
    @state = :closed
  end

  #def state  # = attr_reader :state
  #  @state
  #end  
  
  #def state=(value)  # = attr_writer :state
  #  @state = value
  #end
  
  #def open
  #  @state = :open    
  #end

  def how_are_you
    puts "My state is #{@state}"
  end
end

car1 = Car.new
car1.state = :open

car2 = Car.new
car2.state = :broken

car1.how_are_you
car2.how_are_you