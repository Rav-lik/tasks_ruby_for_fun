number = rand(1..10_000)
print 'Привет! Я загадал число от 1 до 10_000, попробуй угадать: '
i = 1
loop do 
  input = gets.to_i

  if input == number
    puts 'Правильно!'
    exit
  end
  if input > number
  print "Number of trying is #{i}. Искомое число меньше вашего ответа: "
  else
    print "Number of trying is #{i}. Искомое число больше вашего ответа: "
  end
  i += 1
end
