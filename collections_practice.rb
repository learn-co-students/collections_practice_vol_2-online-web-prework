require 'pry'

def begins_with_r(array)
  status = true
    array.each do |word|
      if word[0] == "r"
        status = true
      else
        status = false
      end
    end
  status
end

def contain_a(array)
  new_array = []
  array.select do |word|
    if word.include?("a")
      new_array << word
    end
  end
  new_array
end

def first_wa(array)
    array.find {|word| word[0] == "w" && word[1] == "a"}
  end

  def remove_non_strings(array)
    new_array = []

     array.each do |variable|
       if variable.is_a? String
         new_array << variable
      end
    end
    new_array
   end

def count_elements(array)
 output_array = []
   array.each do |element|
     count_element = element
     count_element[:count] = array.count(element)
      array.delete(element)
       output_array << count_element
  end
 output_array
end

def merge_data(keys, data)
  output_array = []
  counter = 0
  while counter <= keys.size - 1 do
    merged_data = (keys[counter].merge(data[0].values[counter]))
    output_array << merged_data
    counter += 1
  end
  output_array
end

def find_cool(data)
  data.select {|element| element.has_value?("cool")}
end

def organize_schools(schools)
  output_hash= {}
  schools.each do |school, values|
    location = values[:location]
    if output_hash.has_key?(location)
      output_hash[location] << school
    else
      output_hash[location] = []
      output_hash[location] << school
    end
  end
  output_hash
end
