require 'pry'

def begins_with_r(array)
  array.all? {|item| item[0] == "r"}
end

def contain_a(array)
  array.select {|item| item.include? "a"}
end

def first_wa(array)
  array.find {|item| item.to_s.start_with? "wa"}
end

def remove_non_strings(array)
  array.delete_if {|item| item.class != String}
end

def count_elements(array)
  count_array = []
  array.each do |element|
    new_hash = element.dup
    new_hash[:count] = array.count(element)
    if count_array.include?(new_hash) == false
      count_array << new_hash
    end
  end
  count_array
end

def merge_data(keys, data)
  array = []
  keys.each do |person|
    data.each do |attributes|
      hash = attributes[person[:first_name]]
      hash[:first_name] = person[:first_name]
      array << hash
    end
  end
  array
end

def find_cool(data)
  cool_array = []
  data.map do |item|
    item.each do |attribute, data|
      if data == "cool"
        cool_array << item
      end
    end
  end
  cool_array
end

def organize_schools(schools)
  school_hash = {}
  schools.map do |school, attributes|
    if school_hash.has_key?(attributes[:location]) == false
      school_hash[attributes[:location]] = [school]
    else
      school_hash[attributes[:location]] << school
    end
  end
  school_hash
end
