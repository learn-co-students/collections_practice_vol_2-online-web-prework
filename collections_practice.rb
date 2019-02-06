def begins_with_r(argument)
  argument.all? do |name|
  if name.start_with?("r")
     true
  else
     false
  end
  end
end

def contain_a(argument)
  argument.select do |x|
    x.include?("a")
  end
end

def first_wa(argument)
argument.select do |name|
  if name.match(/wa/)
  return name
  end
  end
end

def remove_non_strings(argument)
argument.delete_if { |obj| !(obj.is_a? String) }
end

def count_elements(argument)
argument.each_with_object(Hash.new(0)) { |g,h| h[g[:name]] += 1 }.
    map { |name, count| { :name=>name, :count=>count } }
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