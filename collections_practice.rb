def begins_with_r(array)
  if array.each { |item| item.start_with?("r")}
    true
  else
    false
  end
end
