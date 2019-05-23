# your code goes here
require 'pry'

def begins_with_r(array)
  array.select{|item| item[0]=='r'} == array ? true : false
end

def contain_a(array)
  array.select{|item| item.include?'a'}
end

def first_wa(array)
  array.find{|item| item.match(/wa\w*/)}
end

def remove_non_strings(array)
  array.keep_if{|item| item.is_a?(String)}
end

def count_elements(array)
  counts = array.each_with_object(Hash.new(0)) { |h1, h2| h2[h1] += 1 }
  output = []
  counts.each do |key, value|
    key[:count] = value
    output << key
  end
  output
end

def merge_data(keys, data)
  merged_data = []
  i = 0
  data[0].each do |key, value|
    if key == keys[i].values[0]
      merged_data << keys[i].merge(value)
    end
    i+=1
  end
  merged_data
end

def find_cool(cool)
  output = []
  cool.each do |kid|
    if kid.value?("cool")
      output << kid
    end
  end
  output
end

def organize_schools(schools)
  output = {}
  schools.each do |k, v|
    if output[v[:location]] == nil
      output[v[:location]] = []
    end
    output[v[:location]] << k
  end
  output
end
