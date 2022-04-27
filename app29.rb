#def total_weight(soccer_ball_count, tennis_ball_count, golf_ball_count)
#  soccer_ball_count * 410 + tennis_ball_count * 58 + golf_ball_count * 45 + 29
#end

#x = total_weight(3, 2, 1)
#puts x

def total_weight(options={})
  a = options[:soccer_ball_count] || 0
  b = options[:tennis_ball_count] || 0
  c = options[:golf_ball_count] || 0
  a * 410 + b * 58 + c * 45 + 29
end

x = total_weight(soccer_ball_count: 3, tennis_ball_count: 2, golf_ball_count:1)
puts x
