# your code goes here
def begins_with_r(r_array)
  r_array.all? do |sub_array|
    sub_array[0] == "r"
  end
end

def contain_a(a_array)
  new_array = []
  a_array.each do |sub_array|
    if sub_array.include?("a")
      new_array << sub_array
    end
  end
  new_array
end

def first_wa(wa_array)
  wa_array.each do |sub_array|
    if sub_array[0] + sub_array[1] == "wa"
      return sub_array
    end
  end
end

def remove_non_strings(array)
  new_array = []
  array.each do |sub_array|
    if sub_array.is_a?(String) 
      new_array << sub_array
    end
  end
  new_array
end

def count_elements(collection)
  collection.group_by(&:itself).map do |key, value|
    key.merge({:count => value.length})
  end
end

def merge_data(keys_array,data_array)
  data_array.flat_map do |person|
    person.collect do |name, data|
      keys_array.each do |first_name|
        if first_name[:first_name] == name
          person[name][:first_name] = name
        end
      end
      person[name]
    end
  end
end

def find_cool(cool)
  new_array = []
  cool.each do |hash|
    hash.each do |attribute_key, attribute_value|
      if attribute_value == "cool"
        new_array << hash
      end
    end
  end
  new_array
end

def organize_schools(schools)
  school_hash = {}
  locations = schools.values.uniq!
  locations.each do |location_hash|
    location_hash.each do |key, value|
      school_hash[value] = []
    end
  end

  schools.each do |school, school_location_hash|
    school_location_hash.each do |location_key, location_value|
      school_hash.each do |location, array|
        if location_value == location
          school_hash[location] << school
        end
      end
    end
  end
  school_hash
end