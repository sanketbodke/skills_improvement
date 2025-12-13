codes = ["SAVE20","","PHARMA5","SAVE@20"]
businessLines = ["restaurant","grocery","pharmacy","restaurant"]
isActive = [true,true,true,true]

def validate_coupons(codes, business_lines, is_active)
  priority_map = {"electronics" => 0, "grocery" => 1, "pharmacy" => 2, "restaurant" => 3}
  
  valid_coupons = []

  codes.each_with_index do |code, index|
    is_valid_coupon =
      validate_coupon?(code) &&
      validate_business_line?(business_lines[index]) &&
      is_active[index]

    if is_valid_coupon
      priority = priority_map[business_lines[index].downcase]
      valid_coupons << {code: code, priority: priority}
    end
  end

  sorted_coupons = valid_coupons.sort_by { |item| [item[:priority], item[:code]] }
  
  result = sorted_coupons.map { |item| item[:code] }
  
  result.empty? ? [] : result
end

def validate_coupon?(coupon)
  return false if coupon.nil?
  coupon.match?(/\A[a-zA-Z0-9_]+\z/)
end

def validate_business_line?(business_line)
  business_lines = ["electronics", "grocery", "pharmacy", "restaurant"]
  business_lines.include?(business_line.to_s.downcase)
end

puts validate_coupons(codes, businessLines, isActive)