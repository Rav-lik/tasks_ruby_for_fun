def get_password(what)
  print "Your #{what} : "
  secret = '******'
  fuck = 'fuck you'
  top_secret = gets.to_i
  puts top_secret == 1 ? secret : fuck
end

password = get_password('password')
age = get_password('age')
