require 'pry'

def begins_with_r(array)
  # returns TRUE if every element in an array begins with "r", and FALSE otherwise.
  array.all? { |string| string.start_with?("r") }
end

def contain_a(array)
  # returns an array of all elements from the given array that contain "a".
  array.select { |string| string.include?("a") }
end

def first_wa(array)
  # returns the first element in array that begins with "wa".
  array.find { |symbol| symbol.to_s.start_with?("wa") }
end

def remove_non_strings(array)
  # returns the given array with any non-string element removed.
  array.delete_if { |element| element.class.name != "String" }
end

def count_elements(array)
  array_with_count = array.uniq
  array_with_count.each { |element| element[:count] = array.count(element) }
end

def merge_data(people, info_on_people)
  merged_data = []
  
  people.each do |person|
    info_on_people[0].each do |person_name, info_on_person|
      merged_data << person.merge(info_on_person) if person[:first_name] == person_name
    end
  end
  
  merged_data
end

def find_cool(array)
  array.select { |element| element[:temperature] == "cool" }
end

def organize_schools(schools_hash)
  # re-organizes a hash that contains schools and their locations into a hash that contains locations and the schools that are in them. 
  schools_by_city = {}
  
  schools_hash.each do |school, city| 
    schools_by_city[city[:location]] = [] if schools_by_city[city[:location]] == nil
    schools_by_city[city[:location]] << school
  end
  schools_by_city
end


