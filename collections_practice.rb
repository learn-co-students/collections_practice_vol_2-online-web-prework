require 'pry'

def begins_with_r(array)
  thing = true
  array.each do |i| 
    if  i[0] != "r"
    thing = false
    end
  end
  thing
end

def contain_a(array)
  array.select do |i| 
     i.include?("a")
  end
end

def first_wa(array)
  array.detect do |i|
    i[0,2] == "wa"
  end
end

def remove_non_strings(array)
  array.delete_if do |i|
    i.is_a?(String) == false
  end
end

def count_elements(array)
    
    array.uniq.each {|i| count = 0
        array.each {|i2| if i2 == i then count += 1 end}
        i[:count] = count}
end

def merge_data(keys, data)
  new_hash = []
  
  data.each do |hash|
    hash.each do |name, info|
      keys.each do |key_value|
        new_hash << key_value.merge(info) if key_value.values[0] == name
      end
    end
  end
   new_hash
end

def find_cool(cool)
  array = []
  cool.each do |hash|
    hash.each do |key, value|
     array << hash if key == :temperature && value == "cool"
    end
  end
  array
end

def organize_schools(schools)
  new_hash = {}
  array_1 = []
  array_2 = []
  array_3 = []
  
  schools.each do |key, value|
    value.each do |location, city|
      if city == "NYC"
        array_1 << key
        new_hash["NYC"] = array_1
      elsif city == "SF"
        array_2 << key
        new_hash["SF"] = array_2
      elsif city == "Chicago"
        array_3 << key
        new_hash["Chicago"] = array_3
      end
    end
  end
  new_hash
end
