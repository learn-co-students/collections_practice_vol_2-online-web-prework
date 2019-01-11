def begins_with_r(array)
  array.each do |element|
    if element.start_with?("r") == false
      return false
    end
  end
  return true
end

def contain_a(array)
  a_array = []
  array.each do |word|
    if word.include?("a")
      a_array << word
    end
  end
  a_array
end

def first_wa(array)
  array.find { |word| word.to_s.start_with?("wa") }
end

def remove_non_strings(array)
  array.delete_if {|item| item.class != String }
end

def count_elements(array)
  array.each do |element|
    element[:count] = array.count(element)
  end
  array.uniq { |e| e[:name] }
end

def merge_data(item1, item2)
  item2[0].values.map.with_index {|v, i| item1[i].merge(v)}
end

def find_cool(array)
  all_cool = []
  array.each do |item|
    if item[:temperature] == "cool"
      all_cool << item
    end
  end
  return all_cool
end

def organize_schools(schools)
  organized = {"NYC" => [], "SF" => [], "Chicago" => [] }
  schools.each do |campus, data|
    if data[:location] == "NYC"
      organized["NYC"] << campus
    elsif data[:location] == "SF"
      organized["SF"] << campus
    elsif data[:location] == "Chicago"
      organized["Chicago"] << campus
    end
  end
  return organized
end