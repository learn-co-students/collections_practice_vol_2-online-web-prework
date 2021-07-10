require 'pry'

def begins_with_r(array)
  array.all? { |item| item.split("")[0] == "r" }
end

def contain_a(array)
  array.select do |item|
    item.split("").any? { |letter| letter == "a" }
  end
end

def remove_non_strings(array)
  string_array = Array.new
  array.each do |item|
    string_array << item if item.is_a?(String)
  end
  string_array
end

def first_wa(array)
  array = remove_non_strings(array)
  array.find do |item|
    item.split("")[0] == "w" && item.split("")[1] == "a"
  end
end

## Already skipped this lab once. Here we go again.
def count_elements(array)
  array.each do |hash_one|
    hash_one[:count] = 0
    name = hash_one[:name]
    array.each do |hash_two|
      if name == hash_two[:name]
        hash_one[:count] += 1
      end
    end
  end
  array.uniq
end

def merge_data(keys, data)
  #keys is a HASH of an ARRAY of TWO hashes
  #data is a HASH of an ARRAY of ONE hash with TWO keys, each of whose values are hashes
  #binding.pry
  mid_array = Array.new
  new_hash = Hash.new
  keys.each do |k, v|
    data.each do |array|
      mid_array << array.each do |name, info_set|
        #binding.pry
        if k[:first_name] == name
          #binding.pry
          new_hash = info_set
          new_hash[:first_name] = k.values[0]
        end
      end
    end
  end
  #binding.pry
  mid_array.uniq[0].values
end

def find_cool(array)
  #binding.pry
  new_array = Array.new
  array.each do |hash|
    #binding.pry
    hash.each do |key, value|
      if value == "cool"
        new_array << hash
      end
    end
  end
  new_array
end

def organize_schools(schools)
  #it wants a hash where each key is a unique location
  #and each value is an array of strings of the school names at that location
  #binding.pry
  new_hash = Hash.new
  #there will be an `if` statement to check if location is Already
  #a key in new_hash
  schools.each do |key, value|
    #binding.pry
    if new_hash[value[:location]] == nil
      #binding.pry
      new_hash[value[:location]] = [key]
    elsif !(new_hash[value[:location]].include?(key))
      #binding.pry
      new_hash[value[:location]] << key
    end
  end
  new_hash
end
