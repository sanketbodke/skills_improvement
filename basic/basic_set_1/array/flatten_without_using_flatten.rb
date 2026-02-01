def custom_flatten(arr, result = [])
  arr.each do |el|
    el.is_a?(Array) ? custom_flatten(el, result) : result << el
  end
  result
end

custom_flatten([1, [2, [3, 4]]])