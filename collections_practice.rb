# your code goes here

def begins_with_r(array)
  word = true
  array.each do |element|
    word = false if element[0] != "r"
  end
  word
end

def contain_a(array)
  new_array = []
  array.each do |element|
    new_array << element if element.include?("a")
  end
  new_array
end

def first_wa(array)
  first_wa = nil
  array.each do |element|
    if element.match(/wa/)
      first_wa = element
      break
    end
  end
  first_wa
end

def remove_non_strings(array)
  new_array = []
  array.each do |element|
    new_array << element if element.is_a?(String)
  end
  new_array
end

def count_elements(array)
  array.group_by(&:itself).map {|k, v|
  k.merge(count: v.length)}
end

def merge_data(keys, values)
  new_data = []
  keys.each do |person_name|
    name = person_name[:first_name]
    values.each do |person_data|
      if person_data[name]
        merged_person = person_data[name]
        merged_person[:first_name] = name
        new_data << merged_person
      end
    end
  end
  new_data
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
