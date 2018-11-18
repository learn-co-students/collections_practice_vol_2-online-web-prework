def begins_with_r(tools_array)
  new_array = []
  tools_array.each do |tool|
    new_array << tool.start_with?("r")
  end
  if new_array.count(true) == tools_array.length
    return true
  else
    return false
  end
end

def contain_a(array)
  new_array = []
  array.each do |word|
    if word.include?("a")
      new_array << word
    end
  end
  return new_array
end

def first_wa(array)
  array.detect do |word|
    word[0,2] == "wa"
  end
end

def remove_non_strings(array)
  new_array = []
  array.each do |obj|
    if obj.is_a?(String)
      new_array << obj
    end
  end
return new_array
end

def count_elements(array)
  array.uniq.each do |phrase1|
    count = 0
    array.each do |phrase2|
      if phrase2 == phrase1
        count += 1
      end
    end
    phrase1[:count] = count
  end
end

def merge_data(keys, data)
  merged = []
  keys.each {|i| data.first.map {|k,v| if i.values[0] == k then merged << i.merge(v) end}}
  merged
end

def find_cool(array)
  cool.select do |word|
    word.any? do |key, value|
      value == "cool"
    end
  end
end

def organize_schools(schools)
  locations = {}
  schools.collect {|key, value| locations[value[:location]] = []}
  locations.each {|key,value| schools.each {|key1,value1| if key == value1[:location] then value << key1
  end }}
end
