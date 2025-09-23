class Product
  attr_accessor :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end

  def display
    puts "#{name} #{price}"
  end
end

class Cart
  def initialize
    @products = []
  end

  def add_product(product)
    @products << product
  end

  def total_price
    @products.sum(&:price)
  end

  def display_cart
    if @products.empty?
      puts "Cart is empty"
    else
      @products.map(&:display).join + "\nTotal: $#{total_price}"
    end
  end
end

product1 = Product.new("Laptop", 1200)
product2 = Product.new("Headphones", 150)
product3 = Product.new("Mouse", 50)

cart = Cart.new
cart.add_product(product1)
cart.add_product(product2)
cart.add_product(product3)

puts cart.display_cart