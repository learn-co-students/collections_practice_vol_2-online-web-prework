require 'pry'

def begins_with_r(array)
  array.all? { |element| element.start_with?("r") }
end

def contain_a(array)
  array.select do |element| 
    if element.include?("a")
      element
    end
  end
end

def first_wa(array)
  array.each do |ele|
    if ele.to_s.start_with?("wa")
      return ele
    end
  end
end
  
def remove_non_strings(array)
  array.keep_if { |element| element.class == String }
end

def count_elements(array)
  array.uniq.map do |element|
    element[:count] = array.count(element)
    element
  end 
end

def merge_data(keys, data)
  new_array = []
  keys.each do |names|
    name = names[:first_name]
    data.each do |data_element|
      if data_element.has_key?(name) 
        personal_data = data_element[name]
        personal_data[:first_name] = name
        new_array << personal_data
      end
    end
  end
  new_array
end

def find_cool(array)
  array.select do |element|
    if element[:temperature] == "cool"
      element
    end
  end
end 
  
def organize_schools(hash)
  new_hash = {}
  hash.each do |school, location_data|
    location = location_data[:location]
    (new_hash[location] ||= []) << school
  end
  new_hash
end