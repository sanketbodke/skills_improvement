class CartItems
    @@total_items = 0

    def initialize
        @items = []
        @@total_items += 1
    end
    
    def add_item(item)
        @items << item
    end

    def remove_item(item)
        @items.delete(item)
    end

    def self.total_items
        @@total_items
    end
end

cart1 = CartItems.new
cart1.add_item("Apple")
cart1.add_item("Banana")
cart1.remove_item("Apple")
puts cart1.inspect  