# your code goes here
require 'pry'
def begins_with_r(tools)
    tools.all? do |tool|
      tool[0] == "r"
    end
end

def contain_a(elements)
  elements.select do |word|
    word.include?("a")
  end
end

def first_wa(words)
    words.find do |word|
      word[0..1] == "wa"
    end
end

def remove_non_strings(words)
  words.delete_if do |word|
    word.class != String
  end
end

def count_elements(array)
  array.each do |info|
    info[:count] = 0
  array.each do |data|
    if info[:name] == data[:name]
      info[:count] += 1
      end
    end
  end.uniq
end

def merge_data(keys, data)
    #name.values = individual name
  data[0].map do |hash, values|
    new_hash = {}
    #hash.keys = array of names
  keys.each do |names|
    if names[:first_name] == hash
      new_hash = values.merge(names)
    end
  end
  new_hash
end
end

def find_cool(array)
  new_array = []
  array.each do |hash|
    if hash[:temperature] == "cool"
      new_array << hash
    end
  end
  new_array
end

def organize_schools(schools)
  new_hash = {}
  schools.each do |program, location|
  locations = location[:location]
    if new_hash[locations]
      new_hash[locations] << program
    else new_hash[locations] = []
      new_hash[locations] << program
  end
 end
 new_hash
end
