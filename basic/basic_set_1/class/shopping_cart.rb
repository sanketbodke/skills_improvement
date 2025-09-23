class ShoppingCart
    @@total_items = 0

    def initialize(product_name, product_price, product_quantity)
        @product_name = product_name
        @product_price = product_price
        @product_quantity = product_quantity
        @@total_items += 1
    end
    
    def total_price
        @product_price * @product_quantity
    end

    def self.total_items
        @@total_items
    end
end

p1 = ShoppingCart.new("Laptop", 50000, 2)
p2 = ShoppingCart.new("Mobile", 20000, 3)
puts p1.total_price
puts p2.total_price