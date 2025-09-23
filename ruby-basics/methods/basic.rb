def greet(name)
  puts "Hello, #{name.capitalize}!"
end

greet("sanket")

begin
  result = 10 / 0
rescue ZeroDivisionError
  puts "Cannot divide by zero!"
ensure
  puts "Execution completed."
end