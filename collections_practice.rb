def begins_with_r(element)
  element.all? do |word|
    word.start_with?("r")
  end
end

def contain_a(element)
 element.select {|i| i.include?("a")} 
end

def first_wa(element)
  element.find {|word| word.to_s.start_with?("wa")}
end

def remove_non_strings(element)
  element.delete_if { |obj| !(obj.is_a? String) }
end

def count_elements(array)
  counts = Hash.new(0)
  array.collect {|element| counts[element]+=1 }
    counts.collect do |hash, number|
      hash[:count] = number
    end
  counts.keys
end

def merge_data(keys, data)
  keys.each do |name_hash|
  data.each do |hash|
  name_hash.merge!(hash[name_hash[:first_name]])
    end
  end
end

def find_cool(array)
  array.select {|entry| entry if entry.has_value?("cool")}
end

def organize_schools(schools)
  by_location = {}
    schools.each do |school, location_hash|
      location_hash.each do |symbol, location|
        if by_location[location] == nil
          by_location[location] = [school]
        else
          by_location[location] << school
        end
      end
    end
    by_location
end
