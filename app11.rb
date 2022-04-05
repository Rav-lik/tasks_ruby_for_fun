# Land on the Moon
puts 'Section length?'
length = gets.to_i
puts 'Section width?'
width = gets.to_i
if length * width < 50
  puts 'Price is 1000$'
elsif length * width >= 50 && length * width <= 100
  puts 'Price is 1500$'
elsif length * width > 100
  puts "Price is #{length * width *25}"
end
