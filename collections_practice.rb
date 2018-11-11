def begins_with_r(array)
  flag = true
  array.each do |element|
    flag = false if element[0] != "r"
  end
  flag
end

def contain_a(array)
  array_with_a = []
  array.each do |element|
    array_with_a << element if element.include?("a")
  end
  array_with_a
end

def first_wa(array)
  string_array = []
  array.each do |element|
    string_array << element.to_s
   end
  first_wa = nil
  string_array.each do |element|
    if element.include?("wa")
      first_wa = element
      break
    end
  end
  first_wa
end

def remove_non_strings(array)
  string_array = []
  array.each do |element|
    string_array << element if element.is_a?(String)
  end
  string_array
end

def count_elements(array)
  array.each do |original_hash|
    original_hash[:count] = 0
    name = original_hash[:name]
    array.each do |hash|
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

def find_cool(array)
  container = []
  array.each do |element|
    container << element if element[:temperature] == "cool"
  end
  container
end

def organize_schools(schools)
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
