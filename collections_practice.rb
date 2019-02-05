def begins_with_r(array)
  array.all? do |words|
  words.start_with?("r")
end
end

def contain_a(array)
  array.select do |words|
  words.include?("a")
end
end

def first_wa(array)
  array.find do |word|
 word[0..1] == "wa"
  end
end

  def remove_non_strings(array)
    array.grep(String)
  end

  def count_elements(array)
  array.group_by(&:itself)
  .map do |k, v|
    k.merge(count: v.length)
      end
  end

  def merge_data(keys, data)
    data[0].values.map.with_index do |r, i|
      keys[i].merge(r)
    end
  end

  def find_cool(cool)
    cool.select do |hash|
      hash[:temperature] == "cool"
    end
  end

  def organize_schools(schools)
    schools_by_location = {}
    schools.each do |key, value|
      if (schools_by_location[value[:location]] == nil)
        schools_by_location[value[:location]] = [key]
      else
        schools_by_location[value[:location]] << key
      end
    end
    schools_by_location
  end
