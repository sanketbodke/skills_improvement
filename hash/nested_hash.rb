PRICES = {
    "milk" => {unit: 3.97, sale_qty: 2, sale_price: 5.00},
    "bread" => {unit: 2.17, sale_qty: 3, sale_price: 6.00},
    "banana" => {unit: 0.99, sale_qty: 0, sale_price: 0.00},
    "apple" => {unit: 0.89, sale_qty: 0, sale_price: 0.00}
}

milk = PRICES["milk"]

if milk
  puts "Milk price: $#{milk[:unit]}"
else
  puts "Milk not found"
end

puts PRICES["milk"][:unit]
puts PRICES["bread"][:unit]
puts PRICES["banana"][:unit]
puts PRICES["apple"][:unit]