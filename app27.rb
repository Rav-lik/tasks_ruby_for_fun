# =>(hash rocket) позволяет присвоить ключ-значение в виде строки
#при попытке использования : присваивается не строчка, а символ - ключ-значение.
contacts = {
  '****ya' => { email: '*****@mail.ru', cell_phone: '+7702*******', work_phone: '-' },
  '***va' => { email: '*********@mail.ru', cell_phone: '+7701+++++++++', wprk_phone: '-' },
  '****v' => {email: '**********@mail.ru', cell_phone: '+7701-----', work_phone: '-' }
}

puts 'Enter the family that you are looking for: '
surname = gets.strip.downcase

puts "Email: #{contacts[surname][:email]}\nPhone: #{contacts[surname][:cell_phone]}\nWork phone: #{contacts[surname][:work_phone]}\n"
