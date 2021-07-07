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

def merge_data(keys,data)
  sarray = []
  shash = {}
  keys.each do |hvalue|
    hvalue.each do |key,name|
      sarray << {key => name}
      #binding.pry
       end
    end
  data.each do  |firsth|
  firsth.each do |sech|
   sarray.each do |fname|
     if sech[0] == fname[:first_name]
        sech[1].each do |key, value|
          fname[key] = value
        end
  end
  
end
end
#binding.pry
return sarray
  end
  
end

def find_cool(array)
 cool = []
  array.each do |hash|
    hash.each do |key, value|
    # binding.pry
      if value == "cool"
      cool << hash
       end
     end
    end
return cool
end

def organize_schools(array)
 shash = {}
  array.each do |school,location|
   # binding.pry
    if shash[location[:location]] == nil
    shash[location[:location]] = []
    shash[location[:location]] << school
    #binding.pry
  else 
    shash[location[:location]] << school
 
  #binding.pry
end

end
return shash

end