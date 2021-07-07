def begins_with_r(array)
  array.each do |element|
    if element[0] != "r"
      return false
    end
  end
  return true
end

def contain_a(array)
  array.select do |element|
    element.include? "a"
  end
end

def first_wa(array)
  array.find do |element|
    element.to_s.start_with? "wa"
  end
end

def remove_non_strings(array)
  array.delete_if do |element|
    !(element.is_a? String)
  end
end

def count_elements(array)
  counts_array = []
  array.each do |item|
    count_hash = counts_array.find do |count_item|
      item[:name] == count_item[:name]
    end
    if count_hash == nil
      counts_array.push({:name => item[:name], :count => 1})
    else
      count_hash[:count] += 1
    end
  end
  return counts_array
end

def merge_data(keys, data)
  new_hash_array = []
  keys.each do |key_hash|
    name_key = key_hash[:first_name]
    merged_hash = key_hash.merge(data[0][name_key])
    new_hash_array.push(merged_hash)
  end
  return new_hash_array
end

def find_cool(array)
  array.select do |hash|
    hash.has_value?("cool")
  end
end

def organize_schools(hash)
  organized_hash = {}
  hash.each do |school_name_key, school_info_value|
    city = school_info_value[:location]
    if organized_hash.has_key?(city)
      school_list = organized_hash[city]
      school_list.push(school_name_key)
    else
      organized_hash[city] = [school_name_key]
    end
  end
  return organized_hash
end
