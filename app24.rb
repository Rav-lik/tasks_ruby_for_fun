#Stucture JSON hash, accesing a hash as a data source
#obj = {
#   soccer_ball: { weight: 410, colors: [:red, :blue] },
#   tennis_ball: { weight: 58, colors: [:yellow, :white] },
#   golf_ball: {weight: 45, colors: [:white] }
#}

#Structure JSON array, accesing a array as outout in list
#obj = [
#    { type: :soccer_ball, weight: 410, colors: [:red, :blue] },
#    { type: :tennis_ball, weight: 58, colors: [:yellow, :white] },
#    { type: :golf_ball, weight: 45, colors: [:white] }
#]

cart = [
    { type: :soccer_ball, qty: 2 },
    { type: :tennis_ball, qty: 3 }
]

inventory = {
    soccer_ball: { available: 2, price_per_item: 100 },
    tennis_ball: { available: 1, price_per_item: 30 },
    golf_ball: { available: 5, price_per_item: 5 }
}

total_price = 0
price_items = 0

#cart.each_index do |ind|
#    inventory.each_key do |key|
#    (price_items = (cart[ind][:qty] * inventory[key][:price_per_item])) if cart[ind][:type] == key
#    total_price = total_price + price_items
#    end
#end  

cart.each do |ind|
    inventory.each_key do |key|
    if ind[:type] == key
        price_items = cart[ind][:qty] * inventory[key][:price_per_item]
        total_price = total_price + price_items
        puts "#{key.capitalize}s are enough in stock" if inventory[key][:available] >= ind[:qty]
        puts "#{key.capitalize}s aren't enough in stock. There are #{inventory[key][:available]} items" if inventory[key][:available] < ind[:qty]
    end
    end
end  

puts "Total cost of items in cart: #{total_price}"