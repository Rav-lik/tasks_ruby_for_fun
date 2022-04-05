score = 0
puts 'Do you have higher education? (y/n)'
education = gets.chomp.downcase
if education == 'y'
  score += 1
end
puts 'Do you have experience as a programmer? (y/n)'
experience = gets.chomp.downcase
if experience == 'y'
  score += 1
  puts 'Do you have more than three years of work experience? (y/n)'
  times_experience = gets.chomp.downcase
  if times_experience == 'y'
    score += 1
  end
end
if score > 2
  puts 'Welcome to the USA'
end