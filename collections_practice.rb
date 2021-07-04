def begins_with_r(array)
  array.all? { |element| element.start_with? 'r'}
end

def contain_a(array)
  new_array = []
  array.each do |element|
    if element.include? 'a'
      new_array.push(element)
    end
  end
  new_array
end

def first_wa(array)
  array.detect { |x|
    if x.is_a?(String)
      x.start_with?('wa') end
    }
end

def remove_non_strings(array)
  new_array = []
  array.each { |x|
    if x.is_a?(String)
      new_array.push(x)
    end
    }
    new_array
end

def count_elements(array) #This one stumped me hard!
  counts = Hash.new 0
  array.each do |k|
    counts[k[:name]] += 1
  end
  return_array = []
  counts.each do |k, v|
    formatted_counts = Hash.new 0
    formatted_counts[:count] = v
    formatted_counts[:name] = k
    return_array.push(formatted_counts)
  end
  return_array
end

def merge_data(keys, data)

  new_hash = Hash.new
  new_array = Array.new

  data.each do |data_element|
    keys.each do |key_element|
      data_element[key_element[:first_name]][:first_name] = key_element[:first_name]
      new_array.push(data_element[key_element[:first_name]])
    end
  end

    new_array

end


def find_cool(data)
  is_cool = []
  data.each do |x|
    if x[:temperature] == 'cool'
      is_cool.push(x)
    end
  end
  is_cool

end

def organize_schools(data)

  new_hash = Hash.new

  data.each {|key, value| new_hash[value[:location]] = []}
  data.each {|key, value| new_hash[value[:location]] << key}

  new_hash

end
