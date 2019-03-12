require 'pry'

def begins_with_r(array)
  array.all? do |word|
    word.downcase.start_with?("r")
  end
end

def contain_a(array)
  array.select do |item|
    item.downcase.include?"a"
  end
end

def first_wa(array)
  array.find do |item|
    item.downcase.to_s.start_with?("wa")
  end
end

def remove_non_strings(array)
  array.select do |item|
    item.is_a? String
  end
end

def count_elements(hash_array)
  hash_array.each do |pair|
    pair_count = hash_array.count(pair)
    pair[:count] = pair_count
  end
  hash_array.uniq do |pair|
    pair.keys.first
  end
end

def merge_data(keys, data)
  