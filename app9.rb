puts 'Your age?'
age = gets.to_i
puts 'Are you the membership of United Russia party? (y/n)'
answer = gets.chomp.downcase
if age >=18 && answer == 'y'
  puts 'Site login allowed'
end