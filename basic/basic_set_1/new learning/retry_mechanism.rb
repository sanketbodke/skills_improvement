# attempts = 0

# begin
#   attempts += 1
#   puts "Trying attempt ##{attempts}"

#   raise "Something went wrong" if attempts < 3

#   puts "Success on attempt ##{attempts}"

# rescue => e
#   puts "Error: #{e.message}"
#   retry if attempts < 5  
# end

# max_retries = 3
# attempts = 0

# while attempts < max_retries
#   begin
#     attempts += 1
#     puts "Attempt #{attempts}"

#     raise "Fail" if rand > 0.5

#     puts "Success"
#     break
#   rescue => e
#     puts "Error: #{e.message}"
#     sleep 1 
#   end
# end

def with_retries(max_attempts: 3, delay: 1)
    attempts = 0
    begin
      attempts += 1
      yield
    rescue => e
      puts "Error: #{e.message}, retrying (#{attempts}/#{max_attempts})..."
      sleep delay
      retry if attempts < max_attempts
      raise 
    end
  end
  
  with_retries(max_attempts: 5, delay: 2) do
    puts "Trying risky work"
    raise "Failing randomly" if rand > 0.7
    puts "Work succeeded"
  end