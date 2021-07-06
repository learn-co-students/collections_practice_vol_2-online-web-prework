require 'pry'

def begins_with_r(array)
  array.all? do |word|
    word.downcase.start_with?("r")
  end
end

def contain_a(array)
  array.select do |item|
    item.downcase.include?"a"
  end
end

def first_wa(array)
  array.find do |item|
    item.downcase.to_s.start_with?("wa")
  end
end

def remove_non_strings(array)
  array.select do |item|
    item.is_a? String
  end
end

def count_elements(hash_array)
  new_array = []
  hash_array.each do |pair|
    new_hash = {}
    pair_count = hash_array.count(pair)
    pair.each do |key, value|
      new_hash[key] = value
    end
    new_hash[:count] = pair_count
    new_array << new_hash
  end
  new_array.uniq
end

def merge_data(keys, data)
  new_array = []
  data.each do |data_hash|
    data_hash.each do |data_key, data_value|
      new_hash = {}
      keys.each do |keys_hash|
        keys_hash.each do |keys_key, keys_value|
          if data_key == keys_value
            #binding.pry
            new_hash[keys_key] = keys_value
            data_value.each do |key, value|
              new_hash[key] = value
            end
          end
        end
      end
      new_array << new_hash
    end
  end
  new_array
end

def find_cool(hash_array)
  cool_array = []
  hash_array.each do |hash|
    hash.each do |key, value|
      if value == "cool"
        cool_array << hash
      end
    end
  end
  cool_array
end

def organize_schools(schools)
  new_hash = {}
  schools.each do |school, hash|
    hash.each do |location, city|
      new_hash[city] = []
    end
  end
  schools.each do |school, hash|
    hash.each do |location, city|
      new_hash.each do |city2, blank_array|
        if city == city2
          new_hash[city] << school
        end
      end
    end
  end
  new_hash
end