require 'pry'
# your code goes here
def begins_with_r(array)
  array.sort 
  if array.first.start_with?('r') && array.last.start_with?('r')
    TRUE
  else
    FALSE
  end
end

def contain_a(array)
  array.select { | val | val.include?('a') }
end

def first_wa(array)
  found = array.select { | val | val.to_s.start_with?("wa") }
  found.first
end

def remove_non_strings(array)
  array.select { | val | val.is_a? String }
end

def count_elements(array)
  output = []
  counts = Hash.new(0)
  array.each { |name| counts[name] += 1 }
  counts.each do |key, value|
    key[:count] = value 
    output << key 
  end
  output 
end

def merge_data(one, two)
  output = []
  one.map do |firstname|
    two.map do |array|
      array.map do |name, attribute|
        if firstname.values[0] == name 
          attribute[firstname.keys[0]] = firstname.values[0]
          output << attribute
        end
      end 
    end
  end
  output 
end

def find_cool(array)
  output = []
  array.each do |value|
    if value[:temperature] == "cool"
      output << value 
    end
  end
  output
end

def organize_schools(schools)
  output = Hash.new([])
  schools.each do |key, val|
    if output.has_key?(val.values[0])
      output[val.values[0]] << key
    else 
      output[val.values[0]] = [key]
    end
  end
  output
end