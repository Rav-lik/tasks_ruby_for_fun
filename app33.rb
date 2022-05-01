data = {
  soccer_ball: { name: 'Soccer ball', weight: 410, qty: 5 },
  tennis_ball: { name: 'Tennis ball', weight: 58, qty: 10 },
  golf_ball: { name: 'Golf ball', weight: 45, qty: 15 }
}

puts 'In stock:'
data.each do |k, _|
  puts "#{data[k][:name]}, weight #{data[k][:weight]} grams, quantity: #{data[k][:qty]} pcs."
end