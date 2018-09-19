def begins_with_r(arr)
  arr.all? do |word|
    word[0] =="r"
 end
end

def contain_a(arr)
  arr.select do |word|
    word.include?("a")
  end
end

def first_wa(arr)	
arr.find do |word|
  word[0..1] == "wa"
  end
end

def remove_non_strings(arr)
  arr.delete_if { |obj| !(obj.is_a? String) }
end

def count_elements(arr)
 output_arr = [];
  arr.each do | element |
    counter = element[:count] = 1
    if output_arr.include?(element) == false
      output_arr << element
  elsif output_arr.include?(element)
      output_arr.map do |el|
        el[:count] += 1
      end
    end
  end
  output_arr
end
  

def merge_data(keys, data)
  merged = []
  keys.each {|i| data.first.map {|k,v| if i.values[0] == k  then merged << i.merge(v) end}}
  merged
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
