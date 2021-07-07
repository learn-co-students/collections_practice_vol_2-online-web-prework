
def begins_with_r(array)
  array.all? do |word|
    word.start_with?("r")
    end
end

def contain_a(array)
  new_array = []
  array.each do |word|
    if word.include?("a")
      new_array << word 
    end 
  end
  new_array
end 

def first_wa(array)
  array.find do |word|
    word.to_s.start_with?("wa")
  end 
end 

def remove_non_strings(array)
  new_array = []
  array.each do |element|
    if element.is_a?(String)
      new_array << element
    end 
  end
  new_array
end 

def count_elements(array)
  names_array = array.uniq.collect do |person_hash| 
    {:name => person_hash[:name], :count => array.count(person_hash)}
  end 
end

def merge_data(keys, data)
  merged_data = []
  keys.each do |key_hash|
    data.each do |data_hash|
      data_hash.each do |data_hash_key, data_hash_value|
        if key_hash[:first_name] == data_hash_key
          merged_data << key_hash.merge(data_hash_value)
        end
      end
    end
  end 
  merged_data
end

def find_cool(array)
  array.select do |hash| 
    hash[:temperature] == "cool"
  end 
end 

def organize_schools(schools_hash)
  schools_by_location = {}
  schools_hash.each do |school_name, school_data|
    if schools_by_location[school_data[:location]]
      schools_by_location[school_data[:location]] << school_name
    else                                                            
      schools_by_location[school_data[:location]] = [school_name]
    end
  end
  schools_by_location
end 

  
  


  
  