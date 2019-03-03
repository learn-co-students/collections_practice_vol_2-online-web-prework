def begins_with_r(array)
  array.each do |element|
    if !(element.start_with?("r"))
      return false
    end
  end
  return true
end

def contain_a(array)
  new_array = []
  array.each do |element|
    if element.include?('a')
      new_array << element
    end
  end
  return new_array
end

def first_wa(array)
  array.each do |element|
    if (element.to_s.start_with?("wa"))
      return element
    end
  end
end

def remove_non_strings(array)
  new_array = []
  array.collect do |element|
    if (element.is_a?(String))
      new_array << element
    end
  end
  return new_array
end

def count_elements(array)
  count_hash = {}
  array.each do |element|
    name = element[:name]
    if count_hash.has_key?(name)
      count_hash[name] += 1
    else
      count_hash[name] = 1
    end
  end
  answer = []
  puts count_hash
  count_hash.each do |element|
    answer << {:count => element[1], :name => element[0]}
  end
  return answer
end
#wtf is index messing up the function?
def merge_data(keys,data)
  merged_array = []
  merged = {}
  for index in 0...(keys.length) do
    name = keys[index][:first_name]
    hash1 = keys[index]
    hash2 = data[0][name]
    merged = hash1.merge(hash2)
    merged_array << merged
  end
 return merged_array
end

def find_cool(array)
  cool_hashes = []
  array.each do |element|
    if element[:temperature] == "cool"
      cool_hashes << element
    end
  end
  return cool_hashes
end

def organize_schools(schools)
  locations = {}
  schools.each_pair do |key,value|
    location = value[:location]
    school = key
    if locations[location] == nil
      locations[location] = [school]
    else
      locations[location] += [school]
    end
  end
  return locations
end
