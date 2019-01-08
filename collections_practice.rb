# your code goes here
require 'pry'
def begins_with_r(array)
  array.all?{|element| element[0] == 'r'}
end

def contain_a(array)
  array.find_all{|element| element.include? "a"}
end

def first_wa(array)
  array.find{|element| element[0..1] == 'wa'}
end

def remove_non_strings(array)
  array.delete_if{|element| element.class != String}
end

def count_elements(array)
  output = []
  array.each do |element|
    new_element = element
    new_element[:count] = array.count(element)
    array.delete(element)
    output.push(new_element)
  end
  output
end

def merge_data(keys, data)
  output = []
  i = 0
  while i <= keys.size - 1 do
    output.push(keys[i].merge(data[0].values[i]))
    i += 1
  end
  output
end

def find_cool(data)
  data.select do |data_elmnt|
    data_elmnt.has_value?("cool")
  end
end

def organize_schools(schools)
  output = {}
  schools.each do |school, data|
    location = data.fetch(:location)
    if output.has_key?(location)
      output[location].push(school)
    else
      output[location] = []
      output[location].push(school)
    end
  end
  output
end
