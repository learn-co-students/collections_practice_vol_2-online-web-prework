require "pry"

def begins_with_r(collection)
  collection.all? {|element| element[0]=="r"}
end

def contain_a(collection)
  collection.select {|element| element.include?("a")}
end

def first_wa(collection)
  collection.find{|element| element[0..1] == "wa"}
end

def remove_non_strings(collection)
  collection.delete_if {|element| element.class != String}
end

def merge_data(keys, data)

  values_from_keys = keys.map {|keys_hash| keys_hash.values}.flatten
  keys_from_data = data[0].keys
  merged_data = []
  values_from_keys.each_with_index {|value, index|
    merged_data << keys_from_data.map {|key|
      data[0][key].merge(keys[index]) if key == value
    }
  }

  merged_data.flatten.delete_if {|element| element == nil}

end



def find_cool(cool_array)
  cool_array.map {|cool_hash| cool_hash if cool_hash.map{|k,v| "cool" if v == "cool"}.include?("cool")}.delete_if {|output| output == nil}
end

def organize_schools(schools)
  locations_array = schools.map {|school, location_hash| location_hash[:location]}
  locations_array.uniq!
  org_schools = {}
  locations_array.each {|location| org_schools[location] = []
    schools.each {|school, location_hash| org_schools[location] << school if location_hash[:location] == location

    }
  }
  #binding.pry
  org_schools

end

def count_elements(collection)
  collection.group_by(&:itself).map do |k, v|
    {:count => v.length}.merge(k)
  end
end
