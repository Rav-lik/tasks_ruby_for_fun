puts 'Your salary?'
salary = gets.to_i
tax_rate = 0.3
save_money = 0.15
year_salary = salary * 12
year_save_money = year_salary * save_money
puts "Tax: #{salary * tax_rate}"
puts "Salary of the year: #{year_salary}; Money set aside of the year: #{year_save_money}; Money set aside for 5 years: #{year_save_money * 5}"                                                       
