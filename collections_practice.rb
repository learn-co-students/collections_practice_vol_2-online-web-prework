# your code goes here
require "pry"

def begins_with_r(array)
  count = 0
  array.each do |value|
    if value[0].downcase == "r"
      count += 1
    end
  end
  count == array.size
end

def contain_a(array)
  ans = []
  array.each do |value|
    if value.include?("a")
      ans << value
    end
  end
  ans
end

def first_wa(array)
  x = 0 
  array.each do |value|
    if value[0..1] == "wa"
      x = value
      break
    end
  end
  x 
end

def remove_non_strings(array)
  ans = []
  array.each do |value|
    if value.class == String
      ans << value
    end
  end
  ans
end

def  count_elements(array)
  array.uniq.map do |hash|
    hash[:count] = array.count(hash)
    hash
  end
end

def merge_data(keys, data)
  ans = []
  data.each do |hash|
    hash.each do |name, info|
      keys.each do |key|
        if key.values[0] == name
          ans << key.merge(info)
        end
      end
    end
  end
  ans
end

def find_cool(array)
 array.select { |hash| hash[:temperature] == "cool"}
end

def organize_schools(hash)
  ans = {}
  hash.each do |campus, geo|
    geo.each do |loc, city|
      if ans[city]
        ans[city] << campus
      else
        ans[city] = [campus]
      end
    end
  end
  ans
end