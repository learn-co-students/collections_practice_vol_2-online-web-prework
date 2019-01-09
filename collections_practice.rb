def begins_with_r(array)
  array.all? {|word| word.start_with?("r")}
end

def contain_a(array)
  array.select {|word| word.include?("a")}
end

def first_wa(array)
  array.find do |word|
    if word[0] == "w" && word[1] == "a"
      word
    end
  end
end

def remove_non_strings(array)
	array.delete_if {|string| string.class != String}
end

def count_elements(array)
  array.group_by(&:itself).map do |key, value|
     key.merge({:count => value.length})
  end
end

def merge_data(keys, data)
  i = 0
  while i < keys.length
    data.each do |element|
      element.each do |ka, va|
        if keys[i].has_value?(ka)
          keys[i].merge!(va)
        end
      end
    end
  i+=1
  end
  return keys
end

def find_cool(cool)
  i = 0
  output = [];
  while i < cool.length do
    cool[i].collect do | key, values |
      if values == "cool"
        output << cool[i]
      return output
      end
    end
    i+=1
  end
end

def organize_schools(schools)
  output = {}
  schools.each do |key, location_hash|
    location_hash.each do |k, location|
      if !output.has_key?(location)
        output[location] = [key]
      elsif output.has_key?(location)
        output[location] << key
      end
    end
  end
  output
end