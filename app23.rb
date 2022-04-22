# Define hashes

obj_earth = {
  soccer_ball: 410,
  tennis_ball: 58,
  golf_ball: 45
}

obj_moon = obj_earth.transform_values { |v| (v.to_f / 6).round(1) }

# Quantity input
print 'How many soccer balls you want to buy? '
quan_s_ball = gets.to_i

print 'How many tennis balls you want to buy? '
quan_t_ball = gets.to_i

print 'How many golf balls you want to buy? '
quan_g_ball = gets.to_i

puts

# Calculate weight of balls
weight_moon = obj_moon[:soccer_ball] * quan_s_ball + obj_moon[:tennis_ball] * quan_t_ball + obj_moon[:golf_ball] * quan_g_ball

weight_earth = obj_earth[:soccer_ball] * quan_s_ball + obj_earth[:tennis_ball] * quan_t_ball + obj_earth[:golf_ball] * quan_g_ball

puts "Total weight of the balls in your basket on the moon: #{weight_moon}\n\n"
puts "Total weight of the balls in your basket on the Earth: #{weight_earth}"
