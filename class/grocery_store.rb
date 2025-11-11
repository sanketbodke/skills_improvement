class GroceryStore
    PRICES = {
        "milk" => {unit: 3.97, sale_qty: 2, sale_price: 5.00},
        "bread" => {unit: 2.17, sale_qty: 3, sale_price: 6.00},
        "banana" => {unit: 0.99, sale_qty: 0, sale_price: 0.00},
        "apple" => {unit: 0.89, sale_qty: 0, sale_price: 0.00}
    }

    def initialize
        @items = []
        @item_counts = Hash.new(0)
    end

    # input = "Milk, Bread, Apple"
    # Step 1: split(',')
    # items = input.split(',') ( converts to array)
    # Step 2: map(&:strip)
    # items = items.map(&:strip) ( removes leading/trailing spaces)
    # Step 3: map(&:downcase)
    # items = items.map(&:downcase) ( converts to lowercase)

    def get_items
        puts "Enter the items purchased (comma-separated, e.g., Milk,Bread,Apple):"
        input = gets.chomp
        @items = input.split(',').map(&:strip).map(&:downcase)
    end   
    
    def count_items
        @items.each do |item|
            if PRICES.key?(item)
                @item_counts[item] += 1
            else
                puts "Warning: '#{item}' is not available in the store and will be ignored."
            end
        end    
    end
    
  def total_cost
  total = 0.0

  @item_counts.each do |item, count|
    price_info = PRICES[item]

    if price_info[:sale_qty] > 0 && count >= price_info[:sale_qty]
      sale_units = count / price_info[:sale_qty]
      remainder  = count % price_info[:sale_qty]

      total += sale_units * price_info[:sale_price]
      total += remainder * price_info[:unit]
    else
      total += count * price_info[:unit]
    end
  end

  total
end

  def print_total
    puts "Total cost: $#{'%.2f' % total_cost}"
  end

  person = GroceryStore.new
  person.get_items
  person.count_items
  person.print_total
end