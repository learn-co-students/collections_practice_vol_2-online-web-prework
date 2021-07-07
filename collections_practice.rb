def begins_with_r(array)
if array.all? { |x| x.start_with?('r') }
   true
else
  false
end
end

def contain_a(array)
  array.select { |x| x.include?("a")}
end

def first_wa(array)
  array.find do
    |x| x.to_s.start_with?("wa")
  end
end

def remove_non_strings(array)
  array.delete_if { |x| x.class != String }
end

def count_elements(array)
  array.uniq.collect do |item|
    item[:count] = array.count(item)
    item
  end
end

def merge_data(keys, data)
  keys.each do |name_hash|
      data.each do |hash|
        name_hash.merge!(hash[name_hash[:first_name]])
      end
    end
end

def find_cool(array)
array.select { |x| x.has_value?("cool")}
end

def organize_schools(hash)
  locations = {}
    hash.values.each { |location| locations[location.values[0]] = [] }
    hash.each { |school, location| locations[location.values[0]] << school }
    locations
end
