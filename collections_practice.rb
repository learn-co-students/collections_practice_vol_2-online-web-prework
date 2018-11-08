# your code goes here
require 'pry'
def begins_with_r(tools)
  tools.all? do |i| 
    if i[0] == "r"
      true 
    else
      false
    end
  end
end

def contain_a(array)
  out = []
  array.each do |i|
    a = 0
    while a < i.length
      if i[a] == "a"
      out.push(i)
      end
    a += 1
    end
  end
  out
end

def first_wa(array) 
    array.find do |i| 
    if i[0] + i[1] == "wa"
      i
    end
  end
end

def remove_non_strings(array)
  array.delete_if{ |e|
    e.class != String
  }
end


def count_elements(array)
  a = Hash.new(0)
  array.each { |i|
  a[i] += 1
  }
  
  b = []
  a.each do |k,v|
    b << k
    b[b.length-1][:count] = v
  end
  b
end

def merge_data(keys, data)
  out = []
  data.each do |hash|
    hash.each do |name, attr|
      keys.each do |key_value|
        out << key_value.merge(attr) if key_value.values[0] == name
      end
    end
  end
   out
end

def find_cool(hash)
  out = []
  hash.each do |k|
    if k[:temperature] == "cool"
      out << k
      return out
    end
  end
end

def organize_schools(data)
    cities = Hash.new
    data.each do |key, value|
      if !cities.include?(value[:location])
        cities[value[:location]] = []
      end
      if cities.has_key?(data[key][:location])
        cities[data[key][:location]] << key
      end
    end
    cities
end
