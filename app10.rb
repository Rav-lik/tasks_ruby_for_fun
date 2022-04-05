puts 'Your login?'
login = gets.chomp
puts 'password'
password = gets.to_i
if login == 'admin' || password == 12345
  puts 'access to the safe deposit box is allowed'
end