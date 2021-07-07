# your code goes here
def begins_with_r(array)
  array.all? do |element|
    element.start_with?("r")
  end
end

def contain_a(array)
  array.select do |element|
    element.include?("a")
  end
end

def first_wa(array)
  array.find do |element|
    element[0] == "w" && element[1] == "a"
  end
end

def remove_non_strings(array)
  array.reject! do |element|
    !element.is_a?(String)
  end
end

def count_elements(array)
  new_hash = {}
  new_array = []
  array.each do |element|
    if !new_hash.has_key?(element)
      new_hash[element]=1
    else
      new_hash[element] += 1
    end
  end
  new_hash.each do |key, value|
    key.each do |key2, value2|
      new_array.push({key2 => value2, count: value})
    end
  end
  new_array
end

def merge_data(keys, data)
  keys.each do |object|
    matching = object[:first_name]
    otherObject = data[0][matching]
    otherObject.each do |key, value|
      object[key]=value
    end
  end
end

def find_cool(array)
  ret_array=[]
  array.each do |object|
    if object.has_value?("cool")
      ret_array.push(object)
    end
  end
  ret_array
end

def organize_schools(schools)
  organized_schools={}
  schools.each do |name, data|
    if !organized_schools.has_key?(data[:location])
      organized_schools[data[:location]] = [name]
    else
      organized_schools[data[:location]].push(name)
    end
  end
  organized_schools
end
