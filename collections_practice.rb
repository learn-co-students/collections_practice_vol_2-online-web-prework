def begins_with_r(array)
  array.all? do |i|
   if i[0] != "r"
     false
   else
     true
  end
end
end

def contain_a(array)
  newarray = []
  array.each do |i| 
  if  i.include?("a")
    newarray << i
  end
end
newarray
end