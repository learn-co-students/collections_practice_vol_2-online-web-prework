# your code goes here

require "pry"

def begins_with_r(array)
  array.all? {|item| item.start_with?("r")}
end

def contain_a(array)
  array.select {|item| item.include?("a")}
end

def first_wa(array)
  array.find {|item| item[0, 2] == "wa"}
end

def remove_non_strings(array)
  array.delete_if {|item| item.is_a?(String) == false}
end

def count_elements(array)
  array.each do |original_hash|
    original_hash[:count] = 0
    name = original_hash[:name]
    array.each do |hash|
      if hash[:name] == name
        original_hash[:count] += 1
      end
    end
  end.uniq
end

def merge_data(keys, values)
  container = []
  keys.each do |person_name|
    name = person_name[:first_name]
    values.each do |person_data|
      if person_data[name]
        merged_person = person_data[name]
        merged_person[:first_name] = name
        container << merged_person
      end
    end
  end
  container
end

def find_cool(array)
  array.collect {|hash|hash.values.include?("cool") ? hash : nil}.compact
end

def organize_schools(array)
  array.each_with_object({}) do |(key, h), result|
    h.each do |school, location|
        result ||= {}
        result[location] ||= []
        result[location] << key.to_s
    end
  end

end
