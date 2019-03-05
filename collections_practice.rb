def begins_with_r (arr)
  is_r = true
  arr.each do |item|
    if item[0] != 'r'
      is_r = false
    end
  end
  is_r
end

def contain_a (arr)
  newArr = []
  arr.each do |item|
    if item.include? "a"
      newArr << item
    end
  end
  newArr
end

def first_wa(arr) 
  str = ""
  is_found = false
  i = 0
  while i < arr.length && !is_found  do
    temp = arr[i]
    if temp[0,2] == 'wa'
      str = arr[i]
      is_found = true
    end
    i += 1
  end
  str
end

def remove_non_strings (arr)
  newArr = []
  arr.each do |item|
    if item.kind_of?(String)
      newArr << item
    end
  end
  newArr
end

def count_elements (arr)
  new_arr = []
  arr.each do |item|
    if new_arr.length == 0
      new_hash = {item.keys[0] => item.values[0], :count => 1}
      new_arr << new_hash
    else
      is_found = false
      i = 0
      while i < new_arr.length && !is_found do
        if new_arr[i].values[0] == item.values[0]
          new_arr[i][:count] += 1
          is_found = true
        end
        i += 1
      end
      if !is_found
        new_hash = {item.keys[0] => item.values[0], :count => 1}
        new_arr << new_hash
      end
    end
  end
  new_arr
end

def merge_data (keys, data)
  merged_arr = []
  data.each do |items|
    items.each do |name, values|
      keys.each do |key|
        if key.values[0] == name
          obj = {}
          obj = values
          obj[key.keys[0]] = key.values[0]
          merged_arr << obj
        end
      end
    end
  end
  merged_arr
end

def find_cool (cool)
  arr = []
  cool.each do |item|
    if item.has_value?("cool")
      arr << item
    end
  end
  arr
end

def organize_schools (schools)
  organized_schools = {}
  schools.each do |item|
    if organized_schools.length == 0
      organized_schools[item[1].values[0]] = [item[0]]
    else
      if organized_schools.has_key?(item[1].values[0])
        organized_schools[item[1].values[0]] << item[0]
      else
        organized_schools[item[1].values[0]] = [item[0]]
      end
    end
  end
  organized_schools
end