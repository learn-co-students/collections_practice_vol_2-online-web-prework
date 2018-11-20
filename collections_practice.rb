def begins_with_r(collection)
  collection.all? { |el| el.start_with?('r') }
end

def contain_a(collection)
  collection.select { |el| el.include?('a') }
end

def first_wa(collection)
  collection.find { |el| el.to_s.start_with?('wa') }
end

def remove_non_strings(collection)
  collection.select { |el| el.is_a?(String) }
end

def count_elements(collection)
  collection.uniq.each do |el|
    el[:count] = collection.count(el)
  end
end

def merge_data(keys, data)
  keys.each do |name|
    data.each do |entry|
      name.merge!(entry[name[:first_name]])
    end
  end
end

def find_cool(collection)
  set = []
  collection.each do |el|
    el.each do |key, val|
      if val == 'cool'
        set << el
      end
    end
  end
  set
end

def organize_schools(collection)
  set = {}
  collection.each do |key, val|
    val.each do |loc, city|
      set[city] ||= []
      set[city] << key
    end
  end
  set
end
