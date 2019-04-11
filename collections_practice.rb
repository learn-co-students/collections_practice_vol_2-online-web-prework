require 'pry'

# Return true if every element of input array starts with an "r"; otherwise false
def begins_with_r(array)
  array.each do |element|
    # If element doesn't start with "r", immediately return false
    if !element.start_with?("r")
      return false
    end
  end
  return true
end

# Return an array of all elements that contain the letter 'a'
def contain_a(array)
  array.map { |element| element.include?("a") ? element : nil }.compact
end

# Return the first element that begins with the letters 'wa'
def first_wa(array)
  array.each do |element|
    if element.to_s.start_with?("wa")
      return element
    end
  end
end

# Remove anything that's not a string from an array
def remove_non_strings(arguments)
  arguments.delete_if { |argument| !argument.is_a?(String) }
end

# Count how many times something appears in an array
def count_elements(arguments)
  arguments.group_by(&:itself).map { |key, value| key.merge(count: value.length) }
end

# Combines two nested data structures into one
def merge_data(data1, data2)
  count = 0 
  temp_hash = {}
  
  # Get name and attributes for each hash in data2 array, then add to corresponding hash in data 1 array
  data2[0].each do |name, attributes|
    temp_hash = data1[count].merge(attributes)
    
    # Insert merged hash into data1 array
    data1[count] = temp_hash
    count += 1
  end 
  
  data1
end 

# Return an array of all hashes that contain :temperature => "cool"
def find_cool(hash)
    hash.delete_if { |people| people[:temperature] != "cool" }
end

# Organize schools hash by location
def organize_schools(schools)
  school_hash = {}

  # iterate through school_names and locations
  schools.each do |school_name, place|
    location = place[:location]

    # if school location doesn't exist, create new key and empty array
    if school_hash[location].nil?
      school_hash[location] = []
    # else add to existing school name array 
    end 
    
    # add to location array 
    school_hash[location] << school_name
  end 
  school_hash
end