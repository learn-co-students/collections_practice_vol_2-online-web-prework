require 'pry'

def begins_with_r(array)
  array.each do |word|
    if word.chars.first != "r"
      return false
    end
  end
  return true
end

def contain_a(array)
  return_array = []
  array.each do |word|
    if word.chars.include?("a")
      return_array.push(word)
    end
  end
  return_array
end

def first_wa(array)
  array.each do |word|
    if word.is_a?(String)
      if (word.chars.first == "w") && (word.chars[1] == "a")
        return word
      end
    end
  end
end

def remove_non_strings(array)
  return_String = []
  array.each do |word|
    if word.is_a?(String)
      return_String.push(word)
    end
  end
  array = return_String
end

def count_elements(array)
  return_array = array.uniq
  #initialize return_array value :count to 0 for each item
  for i in 0..(return_array.length-1)
    return_array[i][:count] = array.count(return_array[i])
  end
  return_array
end

def merge_data(keys, data)
  return_array = []
  keys.each do |first_name|
    first_name.each do |key, value|
      data.each do |data_item|
        temp_hash = {}
        data_item.each do |data_name, data_info|
          if value == data_name
            temp_hash[key] = value
            data_info.each do |k, v|
              temp_hash[k] = v
            end
          end
        end
        return_array.push(temp_hash)
      end
    end
  end
  return_array
end

def find_cool(input)
  return_array = []
  input.each do |hash|
    if hash[:temperature] == "cool"
      return_array.push(hash)
    end
  end
  return_array
end

def organize_schools(schools)
  return_hash = {}
  schools.each do |key, value|
    if !return_hash.include?(value[:location])
      return_hash[value[:location]] = []
    end
    return_hash[value[:location]].push(key)
  end
  return_hash
end
