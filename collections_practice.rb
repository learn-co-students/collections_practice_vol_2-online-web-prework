require 'pry'
def begins_with_r(array)
  array.all? {|str| str.start_with?("r")}
end

def contain_a(array)
array.select {|str| str.include?("a") }
end

def first_wa(array)
  array.each do |key, value|
    if key.to_s.start_with?("wa")
      return key
    elsif value.to_s.start_with?("wa")
      return value
    end
  end
end

def remove_non_strings(array)
  array.delete_if { |obj| !(obj.is_a? String) }
end

def count_elements(array)
array.group_by(&:itself)                   # group all of the identical elements together
 .map{|key, value| key.merge(count: value.length)} # add the "count" element to the hash
end

def merge_data(keys, data)
  i = 0
  while i < keys.length
    data.each do |element|
      element.each do |k, v|
        if keys[i].has_value?(k)
          keys[i].merge!(v)
        end
      end
    end
    i += 1
  end
  return keys
end

def find_cool(array)
  i = 0
  new_array = []
  while i < array.length do
    array[i].collect do |key, values|
     if values == "cool"
       new_array << array[i]
       return new_array
     end
    end
    i += 1
  end
end

def organize_schools(schools)
  organized_schools = {}
  schools.each do |key, location_hash|
    city = location_hash[:location]
    if organized_schools[city]
       organized_schools[city] << key
    else
      organized_schools[city] = []
      organized_schools[city] << key
    end
  end
 organized_schools
end# your code goes here
