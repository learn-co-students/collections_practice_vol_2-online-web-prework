require "pry"

def begins_with_r(array)
  flag = true
  
  array.select do |element|
    if !element.start_with?("r")
      flag = false
    end
  end
  
  flag
end

def contain_a(array)
  array.select do |element|
    element.include? "a"
  end
end

def first_wa(array)
  array.find do |element|
      element.to_s.start_with?("wa")
  end
end

def remove_non_strings(array)
  new_array = Array.new
  array.each do |element|
    if element.class == String
      new_array << element
    end
  end
  new_array
end

def count_elements(array)
  just_names = array.uniq
  name_with_count = []
  
  just_names.each do |name|
    count = 0
    array.each do |element|
      if name == element
        count += 1
      end
    end
    
    new_hash = {
      count: count,
      name: name.values.join("")
    }
    
    name_with_count << new_hash

  end
  
  name_with_count
end

def merge_data(name_array, data_array)
  result = Array.new
  
  name_array.each do |name_hash|   
    name_hash.each do |key, name|
      # binding.pry
      data_array.each do |attributes|
        merged_person = attributes[name]
        merged_person[:first_name] = name
        result << merged_person
      end
    end
  end
  result
  
  # result = []


  # keys.each do |key_hash|
  #   key_hash.each do |k, v|
  #     name = v
  #     data.each do |set_hash|
  #       set_hash.each do |k, v|
  #         # binding.pry
  #         result << key_hash.merge(set_hash[k]) if name == k
  #       end
  #     end
  #   end
  # end
  # result

end

def find_cool(array_of_hash)
  
    array_of_hash.map do |hash| 
      if hash[:temperature] == "cool"
        hash
      end
    end.compact
end

def organize_schools(schools_hash)
  uniq_locations_array = []  
  workable_locations_hash = schools_hash.values

  workable_locations_hash.each do |location_hash|
    uniq_locations_array << location_hash.values.join("")
  end
  
  uniq_locations_array = uniq_locations_array.uniq
  
  result = {}
  
  uniq_locations_array.each do |location|
    schools_array = []
    
    schools_hash.each do |school, location_hash|
      # binding.pry
      if location_hash.values.join("") == location
        schools_array << school
      end
      # binding.pry
    end
    
    result[location] = schools_array

  end
  result
end