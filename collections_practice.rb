def begins_with_r(array)
  array.all? do |letter|
    letter[0] == "r"
  end
end 

def contain_a(array)
  array.select do |letter|
    letter.include?("a")
 end
end


def first_wa(array)
  array.find do |letter|
  letter[(0..1)] == "wa"
  end
end 


def remove_non_strings(array)
  array.delete_if do |letter|
    !letter.is_a? String
  end
end 


def count_elements(array)
    array.uniq.collect do |element|
    element[:count] = array.count(element)
    element 
  end
end


def merge_data(keys, data)
  keys.each do |name_hash|
    data.each do |hash|
      name_hash.merge!(hash[name_hash[:first_name]])
    end
  end
end


def find_cool(array)
  array.select do |entry| 
    entry if entry.has_value?("cool")
 end
end


def organize_schools(array)
    ret = {}
   array.each do |name, loc_hash|  
   location = loc_hash[:location]
    ret[location] ||= []
    ret[location] << name
  end
   ret
end
