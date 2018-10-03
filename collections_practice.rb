require 'pry'

def begins_with_r (tools)
  tools.each do |tool|
    if tool < "r" || tool > "s"
      return false
    end
  end
  return true
end

def contain_a(array)
  array_of_a =  []
  array.each do |word|
    if word.include?("a")
      array_of_a.push(word)
    end
  end
  return array_of_a
end

def first_wa (array)
  array.each do |word|
    if word.is_a? String
      if word > "wa" && word < "wb"
        return word
      end
    end
  end
end

def remove_non_strings (array)
  strings_only = []
  array.each do |element|
    if element.is_a? String
      strings_only.push(element)
    end
  end
  strings_only
end

def count_elements (array)
  count_array = []
  array.each do |element|
    count = 0
    array.each do |data|
      if data == element
        count += 1
      end
    end
    counted_item = {:count => count, :name => element[:name]}
    count_array.push(counted_item)
  end
  count_array.uniq
end

def merge_data ( keys, data)
  merged_data = []
  i = 0
  while i < keys[0].length
    data.each do |array|
      array.each do |name, data|
        if name == keys[i][:first_name]
          merged_data[i] = keys[i].merge(data)
          i += 1
        end
      end
    end
  end
  merged_data
end

def find_cool(cool)
  cool_array = []
  cool.each do |data|
    data.each do |nested|
      if nested.include?("cool")
        cool_array.push(data)
        return cool_array
      end
    end
  end
  cool_array.uniq
end

def organize_schools(schools)
  new_hash = {}
  schools.each do |name, location|
    new_hash[location[:location]] = []
  end
  schools.each do |name, location|
    location.each do |a, city|
      new_hash[city].push(name)
    end
  end
  new_hash
end
