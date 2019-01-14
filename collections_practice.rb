def begins_with_r(array)
    array.all? { |elem| elem.start_with?('r') }
  end

def contain_a(array)
  array.select { |elem| elem.include?('a') }
end

def first_wa(array)
array.find { |elem| elem.to_s.start_with?('wa') }
end

def remove_non_strings(array)
  array.delete_if { |element| !element.is_a?(String) }
end

def count_elements(array)
  h = Hash.new(0)
  array.each { |name| h[name] += 1 }
  h.keys.map { |k| k[:count] = h[k]; k}
end

def find_cool(array)
  array.map { |p| p if p[:temperature] == "cool" }.compact
end

def merge_data(keys, data)
  keys.each do |name_hash|
    data.each do |hash|
      name_hash.merge!(hash[name_hash[:first_name]])
    end
  end
end

def organize_schools(school_hash)
  h = Hash.new { |hash, value| hash[value] = [] }
  school_hash.map { |k, v| h[v[:location]] << k }; h
end
