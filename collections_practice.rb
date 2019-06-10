def begins_with_r (tools)
  true_or_false = false
  tools.each do |tool|
    if tool.start_with? 'r'
      true_or_false = true
    else
      true_or_false = false
    end
  end
  true_or_false
end

def contain_a (elements)
  a_words = []
  elements.each do |word|
    if word.include? 'a'
      a_words << word
    end
  end
  return a_words
end

def first_wa (words)
  words.each do |word|
    if word.to_s.start_with? "wa"
      return word
    end
  end
end

def remove_non_strings (arry)
  strings = []
  arry.each do |value|
    if value.is_a? String
      strings << value
    end
  end
  strings
end

def count_elements (arry)
  counts = Hash.new(0)
  arry.map do |element|
    counts[element]+=1
  end
  counts.map do |hash, number|
    hash[:count] = number
  end
  counts.keys
end

def merge_data(data_1, data_2)
  data_1.each do |name_hash|
    data_2.each do |hash|
      name_hash.merge!(hash[name_hash[:first_name]])
    end
  end
end

def find_cool (cool_array)
  cool_array.select do |entry|
    if entry.has_value?("cool")
      entry
    end
  end
end

def organize_schools(schools)
  place = {}
    schools.each do |school, location_hash|
      location_hash.each do |symbol, location|
        if place[location] == nil
          place[location] = [school]
        else
          place[location] << school
        end
      end
    end
    place
end
