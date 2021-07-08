=begin

def begins_with_r(array)
  r_ray = []
  not_r_ray = []
  array.each do |string|
    if string.start_with?("r")
      r_ray << string
    else
      not_r_ray << string
    end
  end
  if not_r_ray.length > 0
    return false
  else
    return true
  end
end

=end

def begins_with_r(array)
  array.all? { |string| string.start_with?("r") }
end

def contain_a(array)
  contain_a = []
  not_contain_a = []
 array.each do |string|
   if string.include?("a")
     contain_a << string
   else
     not_contain_a << string
   end
 end
 contain_a
end

def first_wa(array)
  array.detect { |word| word.to_s.start_with?("wa") }
end

def remove_non_strings(array)
  array.delete_if { |element| element.class != String }
end

def count_elements(array)
  counts = Hash.new(0)
  array.each_with_index { |item, index| counts[item] += 1 }
  return_array = []
  counts.each do |element, num|
    element.each { |key, val| return_array << {key => val, :count => num }}
  end
  return_array
end


def merge_data(keys,data)
  merged_hashes = []
  data.each do |hash|
    hash.each do |name, info|
      keys.each do |key_val|
        merged_hashes << key_val.merge(info) if key_val.values[0] == name
      end
    end
  end
  merged_hashes
end

def find_cool(array)
  cool_hashes = []
  array.each do |hash|
    hash.each { |k,v| cool_hashes << hash if k == :temperature && v == "cool"}
  end
  cool_hashes
end

def organize_schools(hash)
  locations = {}
  hash.values.each { |location| locations[location.values[0]] = [] }
  hash.each { |school, location| locations[location.values[0]] << school }
  locations
end
