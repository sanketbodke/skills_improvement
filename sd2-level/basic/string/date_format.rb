require 'date'
require 'time'

current_date = Date.today
current_time = Time.now

puts "Current date: #{current_date}"
puts "Current time: #{current_time}" 

puts "\n=== Date Formatting with strftime ==="
puts current_time.strftime("%Y-%m-%d")         # 2024-11-11
puts current_time.strftime("%d/%m/%Y")         # 11/11/2024
puts current_time.strftime("%B %d, %Y")       # November 11, 2024
puts current_time.strftime("%A, %B %d, %Y")   # Monday, November 11, 2024
puts current_time.strftime("%d-%b-%Y")        # 11-Nov-2024

# Time formatting
puts current_time.strftime("%H:%M:%S")         # 10:30:45 (24-hour)
puts current_time.strftime("%I:%M:%S %p")     # 10:30:45 AM (12-hour)
puts current_time.strftime("%H:%M")           # 10:30

# Combined date and time
puts current_time.strftime("%Y-%m-%d %H:%M:%S")    # 2024-11-11 10:30:45
puts current_time.strftime("%d/%m/%Y at %I:%M %p") # 11/11/2024 at 10:30 AM

# 3. PARSING DATES FROM STRINGS
date_string = "2024-11-11"
parsed_date = Date.parse(date_string)
puts "\nParsed date: #{parsed_date}"
