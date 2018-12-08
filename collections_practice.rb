# your code goes here
require 'pry'

def begins_with_r(arr)
  arr.all? do |value|
    value[0].downcase == "r"
  end
end

def contain_a(arr)
  arr.find_all do |value|
    value.include?("a")
  end
end

def first_wa(arr)
  arr.find do |value|
    value.start_with?("wa") if value.instance_of? String
  end
end

def remove_non_strings(arr)
  arr.select do |value|
    value.instance_of? String
  end
end

def count_elements(arr)

  # counted_arr = []
  #
  # arr.each_with_index do |value, index|
  #   if arr.find_index { |val| val[:name] == value[:name]} == index
  #     counted_arr << value
  #     counted_arr.last[:count] = 1
  #   else
  #     counted_arr[counted_arr.find_index { |val| val[:name] == value[:name]}][:count] += 1
  #   end
  # end
  # counted_arr

  arr.select.with_index do |value, index|
    first_index = arr.find_index {|val| val[:name] == value[:name]}
    if index == first_index
      value[:count] = 1
      true
    else
      arr[first_index][:count] += 1
      false
    end
  end
end

def merge_data(keys, data)
  merged = []
  keys.each do |value|
    merged << value
  end

  data[0].each do |name, person_data|
    keys_index = merged.find_index {|val| val[:first_name] == name}
    merged[keys_index].merge!(person_data)
  end
  merged
end

def find_cool(data)
  data.find_all do |values|
    values[:temperature] == "cool"
  end
end

def organize_schools(school_hash)
  organized = {}
  school_hash.each do |school_name, location_hash|
    if organized.has_key?(location_hash[:location])
      organized[location_hash[:location]] << school_name
    else
      organized[location_hash[:location]] = [school_name]
    end
  end
  organized
end
