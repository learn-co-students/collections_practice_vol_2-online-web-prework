def begins_with_r(array)
  # returns true if every element of the tools array starts with an 'r'
  # and false otherwise
  array.all? { |tool| tool[0] == 'r' }
end

def contain_a(array)
  # returns all elements containing 'a'
  array.select do |element|
    element.chars.any? { |letter| letter == 'a' }
  end
end

def first_wa(array)
  # returns the first element that begins with the letters 'wa'
  array.find { |element| element[0..1] == 'wa' }
end

def remove_non_strings(array)
  # removes anything that's not a string from the array
  array.select! { |item| item.class == String }
end

def count_elements(array)
  # count how many times something appears in an array
  unique_elements = array.uniq 
  unique_elements.each do |uniq_element|
    uniq_element[:count] = array.count do 
      |start_element| start_element == uniq_element 
    end
  end    
end

def merge_data(keys, data)
  merge = []
  keys.map do |name_hash|
    data.map do |att_hash|
      att_hash.map do |name, atts|
        if name_hash[:first_name] == name
          merge.push(name_hash.merge(atts))
          
        end
      end
    end
  end
  merge
end


def find_cool(array)
  cool_hashes = []
  array.each do |hash|
    if hash[:temperature] == 'cool'
      cool_hashes.push(hash)
    end
  end
  cool_hashes
end

def organize_schools(array)
  # organizes schools by location
  organized_schools = {}
  array.each do |school, school_hash|
    organized_schools[school_hash[:location]] ||= []
    organized_schools[school_hash[:location]] << school
  end
  organized_schools
end