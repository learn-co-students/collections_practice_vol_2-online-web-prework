def begins_with_r(array)
  x = 0
  array.each do |arr|
    if arr.start_with?("r")
      x = true
    else
      x = false
      break
    end
  end
  x
end

def contain_a(array)
  a_arr = []
  array.each do |arr|
    if arr.include?("a")
      a_arr << arr
    end
  end
  a_arr
end

def first_wa(array)
  array.each do |arr|
    if arr.is_a?(String) != true
      next
    elsif arr.start_with?("wa")
      return arr
      break
    end
  end
end

def remove_non_strings(array)
  array.delete_if{|arr| arr.is_a?(String) != true}
end
