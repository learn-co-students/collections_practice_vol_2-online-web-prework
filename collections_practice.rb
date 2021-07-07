# your code goes here
def begins_with_r(array)
  array.all? do |word|
    word.start_with?("r")
  end
end

def contain_a(array)
  array.select do |word|
    word.include?("a")
  end
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
  merged = []
  keys. each {|i| data.first.map {|k, v|if i.values[0] == k then merged << i.merge(v) end}}
    merged
end

def find_cool(array)
  array.select do |item|
    item.any? {|k,v| v == "cool"}
  end
end

def organize_schools(array)
  location_h = {}
  array.collect {|key, value| location_h[value[:location]] = []}
  location_h.each do |key, value|
    array.each{|key1, value1| if key == value1[:location]then value << key1 end}
  end

  end
