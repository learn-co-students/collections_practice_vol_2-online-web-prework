def begins_with_r(array)
  array.all? {|element| element.start_with?("r")}
end

def contain_a(array)
  array.select {|element| element.include?('a')}
end

def first_wa(array)
array.find {|element| element.to_s.start_with?("wa")}
end

def remove_non_strings(array)
array.grep(String)
end

def count_elements(array)
array.uniq.collect do |element|
  element[:count] = array.count(element)
  element
   end
end

def merge_data(keys, data)
 keys.each do |key_hash|
   data.each do |data_hash|
     key_hash.merge!(data_hash[key_hash[:first_name]])
   end
 end
end

def find_cool(array)
 array.select {|entry| entry if entry.has_value?("cool")}
 end

def organize_schools(array)
org_school_by_location = {}
array.each do |key, value|
  if org_school_by_location[value[:location]] == nil
    org_school_by_location[value[:location]] = [key]
  else
    org_school_by_location[value[:location]] << key
  end
end
org_school_by_location
end


