def begins_with_r(array)
  array.all? do |word|
    word.downcase.chr == "r"
  end
end

def contain_a(array)
  array.select {|word| word.include?("a")}
end

def first_wa(array)
  array.find {|word| word.to_s.start_with?("wa")}
end

def remove_non_strings(array)
  array.reject {|word| word.class != String}
end

def count_elements(array)
  counts = Hash.new(0)
  array.collect {|element| counts[element] += 1}
  counts.collect do |hash, number|
  hash[:count] = number
end
counts.keys
end

def merge_data(keys, data)
  keys.each do |name_hash|
    data.each do |hash|
      name_hash.merge! (hash[name_hash[:first_name]])
    end
  end
end

def find_cool(array)
  array.select {|element| element if element.has_value?("cool")}
end

def organize_schools(array)
  by_location = {}
  schools.each do |schools, location_hash|
    location_hash.each do |symbol, location|
      if by_location[location] == nil
        by_location[location] = [schools]
      else
        by_location[location] << schools
        end
      end
    end
    by_location
  end
