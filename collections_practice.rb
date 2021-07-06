require "pry"

def begins_with_r(array)
  array.all? { |word| word[0] == "r" }
end

def contain_a(array)
  a_array = []
  array.each do |word|
    if word.include?('a')
      a_array << word
    end
  end
  a_array
end

def first_wa(array)
  array.find do |word|
    word.to_s.start_with?("wa")
  end
end

def remove_non_strings(array)
  string_array = []
  
  array.each do |elem|
    if elem.class == String
      string_array << elem
    end
  end
  string_array
end


def count_elements(array)
  array.each do |person|
    person[:count] = array.count(person)
  end
  array.uniq! do |person|
    person[:name]
  end
  array
end



def merge_data(keys, data)
  final_array = []
  
  keys.each do |key, val|
  
  data.each do |array|
    array.each do |name, hash|
        if key[:first_name] == name
        hash[:first_name] = name
        final_array << hash
    end
end
end
end
final_array
end



def find_cool(hash)
  hash.each do |array|
    array.each do |key, val|
        #binding.pry

        if key == :temperature
          if val == "cool"
            
            return [array]
    end
  end
end
end
end

def organize_schools(hash)
  #binding.pry
  city_hash = {}
  nyc_array = []
  chicago_array = []
  sf_array = []
  
  hash.each do |schools, city|
    city.each do |key, val|
      
      if val == "Chicago"
        chicago_array << schools
      elsif val == "NYC"
        nyc_array << schools
      else 
        sf_array << schools
    end
  end
  end
city_hash["NYC"] = nyc_array
city_hash["SF"] = sf_array
city_hash["Chicago"] = chicago_array
city_hash
end

  