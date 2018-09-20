require "pry"

def begins_with_r(array)
  my_bool = true 
  array.each do |element|
    my_bool = false if "r" != element[0]
  end 
  my_bool
end 

def contain_a(array)
  array.select do |element|
    element.include?("a")
  end 
end 

def first_wa(array)
  array.find do |element|
    "wa" == element[0] + element[1]
  end 
end 

def remove_non_strings(array)
  array.delete_if do |element|
    !element.is_a?(String)
  end 
end 

def count_elements(array)
  my_array = []
  array.each do |element|
    #binding.pry
    #[{:count=>2, :name=>"blake"}, {:count=>1, :name=>"ashley"}]
    if hash_array = my_array.find {|hash| hash[:name] == element.values[0]} 
      hash_array[:count] +=  1
      #binding.pry
    else 
      new_hash = {}
      new_hash[:count] = 1 
      new_hash[:name] = element.values[0]
      my_array << new_hash
    end
    
  end 
  my_array
end 

def merge_data(keys, data)
  data.each do |hashes|
    #binding.pry
    hashes.each do |name, attributes|
      keys.each do |name_hash|
        name_hash.each do |name_key, name2|
          
          attributes[name_key] = name2 if name == name2
        end
      end 
    end 
  end 
  final_array = []
  data.each do |hash|
    hash.each do |name, attributes|
      final_array << attributes
    end 
  end 
  final_array
end 

def find_cool(cool)
  cool.delete_if do |hash|
    !hash.values.include?("cool")
  end 
end 

def organize_schools(schools)
  organized = {}
  schools.each do |school, hash|
   
    if organized[hash[:location]] == nil 
      organized[hash[:location]] = [school]
    else 
      organized[hash[:location]] << school
    end 
  end 
  organized
end 