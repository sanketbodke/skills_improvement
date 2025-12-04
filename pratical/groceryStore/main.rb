# class GroceryStore
#   @items = {
#     "milk" => { unit_price: 3.97, sale_quantity: 2, sale_price: 5.00 },
#     "bread" => { unit_price: 2.17, sale_quantity: 3, sale_quantity: 6.00 },
#     "banana" => { unit_price: 0.99, sale_quantity: 0, sale_price: 0 },
#     "apple" => { unit_price: 0.89, sale_quantity: 0, sale_price: 0 },
#   }

#   puts @items.inspect
# end

@items = {
  "milk" => { unit_price: 3.97, sale_quantity: 2, sale_price: 5.00 },
  "bread" => { unit_price: 2.17, sale_quantity: 3, sale_price: 6.00 }, # Fix: removed duplicate key
  "banana" => { unit_price: 0.99, sale_quantity: 0, sale_price: 0 },
  "apple" => { unit_price: 0.89, sale_quantity: 0, sale_price: 0 },
}

user_cart = []

puts "Enter your cart details separated by commas: "
input = gets.chomp

user_cart = input.split(',').map(&:strip).map(&:downcase)

puts "First cart items: #{user_cart[0]}"
puts "Your cart items: #{user_cart.inspect}"
puts "Number of items: #{user_cart.length}"

# strip removes whitespace (spaces, tabs, newlines) from the beginning and end of a string.
# &: is a shorthand for converting symbols to blocks/procs. It's a very common Ruby idiom.