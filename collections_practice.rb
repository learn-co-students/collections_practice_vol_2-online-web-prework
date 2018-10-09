def begins_with_r(array)
  array.each do |name|
    if name[0].include?("r") == true
    else
      return false
    end
  end
  return true
end

def contain_a(array)
  my_return_array = []
  array.each do |name|
    if name.include?('a') == true
      my_return_array << name
    end
  end
  my_return_array
end

def first_wa(array)
  array.each do |name|
    if name.to_s.include?('wa') == true
      return name
    end
  end
end

def remove_non_strings(array)
  array.delete_if do |element|
    !element.is_a? String
  end
end
###########
def count_elements(hash)
  hash.each do |original_hash|
    original_hash[:count] = 0
    name = original_hash[:name]
    hash.each do |hash|
      if hash[:name] == name
        original_hash[:count] += 1
      end
    end
  end.uniq
end

def merge_data(keys, values)
  container = []
  keys.each do |person_name|
    name = person_name[:first_name]
    values.each do |person_data|
      if person_data[name]
        merged_person = person_data[name]
        merged_person[:first_name] = name
        container << merged_person
      end
    end
  end
  container
end

def find_cool(hash)
  container = []
  hash.each do |element|
    container << element if element[:temperature] == "cool" 
  end
  container
end

def organize_schools(hash)
  organized_schools = {}
  schools.each do |name, location_hash|
    location = location_hash[:location]
    if organized_schools[location]
      organized_schools[location] << name
    else
      organized_schools[location] = []
      organized_schools[location] << name
    end
  end
  organized_schools
end
