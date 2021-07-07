def begins_with_r(array)
  array.all? do |word|
  word[0] == "r"
  end
end

def contain_a(array)
  array.select { |x| x.include?('a') }
end

def first_wa(array)
  array.find do |word|
  word[0..1] == "wa"
end
end

def remove_non_strings(array)
  array.grep(String)
end

def count_elements(array)
  output_arr = [];
  array.each do | element |
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

def merge_data(array1,array2)
  merged =[]
	array1.each_index do |i|
		array2[0].keys.each do |name|
			merged << array1[i].merge(array2[0][name]) if name == array1[i][:first_name]
		end
	end
	merged
end

def find_cool(array)
  i = 0
 output = [];
 while i < array.length do
   array[i].collect do | key, values |
     if values == "cool"
       output << array[i]
     return output
     end
   end
   i+=1
 end
end

def organize_schools(array)
  output = {}
  array.each do |key, location_hash|
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
