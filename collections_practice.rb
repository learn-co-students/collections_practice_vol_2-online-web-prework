# your code goes here

def begins_with_r(array)
  array.all? do |words|
    words[0] == 'r'
  end
end

def contain_a(array)
  array.select do |word|
  word.include?("a")
  end
end

def first_wa(array)
  array.find do |word|
    word[0..1] == "wa"
  end
end

def remove_non_strings(array)
  array.delete_if do |word|
    word.instance_of?(String) == false
  end
end

def count_elements(array)
  counts = Hash.new(0)
  array.collect {|element| counts[element] +=1}
  counts.collect do |hash, number|
    hash[:count] = number
  end
  counts.keys
end

def merge_data(keys, values)
  newArray = []
  keys.each do |person_name|
    name  = person_name[:first_name]
    values.each do |person_data|
      if person_data[name]
        merged_person = person_data[name]
        merged_person[:first_name] = name
        newArray << merged_person
      end
    end
  end
  newArray
end

def find_cool(array)
  newArray = []
  array.each do |element|
    newArray << element if element[:temperature] == "cool"
  end
  newArray
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






