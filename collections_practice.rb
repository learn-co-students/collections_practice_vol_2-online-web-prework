def begins_with_r(array)
  array.each { |word| return false if word.start_with?("r") == false }
  true 
end

def contain_a(element)
  element.select { |word| word.include?("a") }
end

def first_wa(element)
  element.each { |word| return word if word.to_s.include?("wa") }
end

def remove_non_strings(array)
  array.delete_if { |element| element.class != String }
end

def count_elements(array)
  counts = Hash.new(0)
  array.each { |name| counts[name] += 1}
  final_count = Array.new
  counts.each do |name, count|
    name.each { |key, value| final_count << {key => value, :count => count} }
end
final_count
end

def merge_data(keys, data)
  merged_hashes = []
  data.each do |hashes|
    hashes.each do |key, value|
      keys.each do |kv_pair|
        merged_hashes << kv_pair.merge(value) if kv_pair.values[0] == key
end
end
end
  merged_hashes
end

def find_cool(hash)
  hash.select { |k| k[:temperature] == "cool"}
end

def organize_schools(schools)
  schools.each_with_object({}) do |(key, value), org|
    (org[value[:location]] ||= []) << key
end
end
