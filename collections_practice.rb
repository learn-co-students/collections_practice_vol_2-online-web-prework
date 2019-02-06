require 'pry'

def begins_with_r(array)
  word_with_r = true
  array.each do |word|
    if word.start_with?("r")
       word_with_r = true
     else
       word_with_r = false
      end
    end
    word_with_r
end
 


def contain_a(array)
  element_starting_with_a = []
  array.each do |word|

    if  word.is_a?(String) && word.include?("a")
      element_starting_with_a << word
    end
  end
  element_starting_with_a
end


def first_wa(array)
  first_element_with_wa = []
  array.each do |word|
    if word.is_a?(String) && word.start_with?("wa")
      first_element_with_wa << word
    end
  end
  first_element_with_wa[0]
end

def remove_non_strings(array)
  array.each do |word|
    array.delete_if{ |word| word.is_a?(Symbol) || word.is_a?(Integer)}
  end
end


def count_elements(array)
  names_with_count = []
  array.uniq.each do |element|
    names_with_count << element
  end
  names_with_count.each do |element|
    element[:count] = array.count(element)
  end
  names_with_count
end

    
 
def merge_data(keys, data)
  
  merged_datasets = []
  data.each do |dataset|
    
    dataset.each do |key, value|
       
      keys.each.with_index do |names, index|
        
        names.each do |first_name, name|
          if name == key
           value[:first_name] = name
           merged_datasets << value
          end
        end
      end
    end
  end
  merged_datasets

end
     

def find_cool(hash)
  cool_hash = []
  hash.each do |key, value|
    key.each do |specs, data|
      if data.is_a?(String) && data == "cool"
      cool_hash << key
      end
    end 
  end
cool_hash
end
      
def organize_schools(schools)
  schools_in_order = {}
  schools.each do |school_name, location|
   
    location.each do |key, city|
      schools_in_order[city] = []
    end
    
  end
  schools_in_order.each do |cities, school|
    schools.each do |school_name, location|
      location.each do |key, city|
        if cities.include?(city)
          schools_in_order[city] << school_name
        end
      end
    end
  end
schools_in_order
end


  
  