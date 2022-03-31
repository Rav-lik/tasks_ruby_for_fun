sum = 0

24.times do |i|
	sum = sum + 500 + sum * 0.1
	puts "Month #{i+1}, grandma have #{sum} in the chest"
end