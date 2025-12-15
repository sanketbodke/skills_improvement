# @param {Integer} x
# @return {Integer}
def reverse(x)
  sign = x < 0 ? -1 : 1

  reversed = x.abs.to_s.reverse.to_i
  
  result = sign * reversed
  
  return 0 if result < -2**31 || result > 2**31 - 1
  
  result
end

puts reverse(123) 
puts reverse(-123)   
puts reverse(120)   
puts reverse(0)      
puts reverse(-1234)  
puts reverse(1534236469)  