require 'pry'

def begins_with_r(array)
array.each do |x|
   if x[0] != "r"
     return false 
   end
end
return true
end

def contain_a(array)
 char = []
 
  array.each_with_index do |x,index|
    (x.include?("a")) ? char << (array[index]) : nil
end
return char
end

def first_wa(array)
  array.each do |x|
   if x[0..1] == "wa"
     return x
   end
end
end

def remove_non_strings(array)
  
  array.delete_if do |x| 
    !x.is_a? String
  end
end

def count_elements(array)
  barray = [] 
  count = Hash.new(0)
  final = []
  array.each do |value|
    barray << value[:name]
  end

barray.each do |v|
  count[v] += 1
end

count.each do |name, value|
final << {:count => value, :name => name}
end

return final

end




names = ["ruby", "rspec", "sails",4,8]
#binding.pry