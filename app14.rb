# Ternary operator puts x == |x| ? y : z 
# if x == |x| is true then operator choose option with method y
# if x == |x| is false then operator choose option with method z
print "Are friends also coming? (y/n):\t"
friends_are_also_coming = gets.chomp.downcase

go_party = "Take money and go party"
stay_home = "Stay home and order pizza"
puts friends_are_also_coming == 'y' ? go_party : stay_home 
