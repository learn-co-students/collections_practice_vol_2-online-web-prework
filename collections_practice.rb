

def begins_with_r(array)
  array.all? {|word| word.start_with?("r")}
end

def contain_a(array)
  array.find_all {|word| word.include?("a")}
end

def first_wa(array)
  array.find do |word| 
    if word[0] == "w" && word[1] == "a"
      word
    end
  end
end

def remove_non_strings(array)
  array.delete_if do |element|
    element.class != String
  end
end

def count_elements(array)
  array.group_by(&:itself).map do |key, value|
    key.merge({:count => value.length})
  end
end

def merge_data(keys, data) 
merge_array = []
 
  data[0].each do |key, value|
    puts "key: #{key}"
    puts "value: #{value}"
    value[:first_name] = key
    merge_array << value
  end
  merge_array
end

def find_cool(cool)
  if cool[1].values[1] == "cool"
    [cool[1]]
  end
end

def organize_schools(schools)
  organized_schools = {}
  schools.each do |name, hash|
  location = hash[:location]
  organized_schools[location] ||= []
    name
  organized_schools[location] << name
end
  organized_schools
end