require "pry"
def begins_with_r(array)
  new_array = array.select { |e| e.start_with?('r')}
  new_array.length == array.length
end
  
def contain_a(array) 
  new_array = []
  new_array = array.select { |e| e.include?('a')}
  new_array
end

def first_wa(array)
  new_array = []
  new_array = array.select {|e| e.class == String}
  last_array = new_array.select {|e| e.start_with?('wa')}
  last_array[0]
end

def remove_non_strings(array)
 new_array =  array.select {|e| e.class == String}
 new_array
end

def count_elements(array)
  array.each do |hash|
    hash[:count] = 0
    name = hash[:name]
    array.each do |original|
      if name == original[:name]
      hash[:count] += 1
      end
    end

  end
  
  array.uniq
  
end

def merge_data(keys, data)
  new_array= []
  new_array  = keys.map do |item|
    data.each do |element|
      person = item[:first_name] 
      value = element[person]
      item = item.merge(value)
    end
    item
  end
  new_array
end

def find_cool(array)
  cool_array = array.select do |item|
    item[:temperature] == "cool"
  end
  cool_array
end

def organize_schools(hash)
  new_hash = Hash.new([])
  hash.each do |key, value|
    location = value[:location]
    if (!new_hash.key?(location))
      new_hash[location] = []
    end
    new_hash[location].push(key)
  end
  new_hash
end

