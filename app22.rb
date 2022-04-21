loop do
    print "(R)ock, (S)cissors, (P)aper? "
    s = gets.strip.capitalize
    
    if s.empty?
        puts "You finish"
        exit 
    end

    result = [:rock, :scissors, :paper]

    :rock > :scissors
    :scissors > :paper
    :paper > :rock

    if s == "R"
        s = :rock
    elsif s == "S"
        s = :scissors
    elsif s == "P"
        s = :paper
    end

    dice = rand(0..2)

    pc = result[dice]

    if s > pc
        puts 'You win'
    elsif pc > s 
        puts 'You lost'
    else
        puts 'Draw'
    end

end


