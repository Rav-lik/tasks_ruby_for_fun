shine = 0
hold = 0
1.upto(5) do |i| # used double nesting
  shine = i
  1.upto(5) do |j|
    hold = j
    puts "Shine #{shine} Hold #{hold}"
  end
end
