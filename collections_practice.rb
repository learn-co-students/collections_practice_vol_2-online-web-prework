# your code goes here

def begins_with_r(array)
  is_r = true 
  
  array.each do |element|
    is_r = false if element[0] != "r"
  end 
  is_r
end 

def contain_a(array)
  has_a = []
  array.each do |element|
    has_a << element if element.include?("a")
      end 
      
      has_a
end 

def first_wa(array)
  array.find do |wa|
    wa[0..1] == "wa"
  end 
end 

def remove_non_strings(array)
  array.delete_if do |n_string|
    n_string.class != String 
  end 
end 

def count_elements(array)
  array.group_by(&:itself)
  .map{|i, j| i.merge(count: j.length)}
end 

def merge_data(keys, data)
  merged_data = []
  
  keys.each do |name|
    name = name[:first_name]
    data.each do |data|
      if data[name]
        merged_person = data[name]
        merged_person[:first_name] = name 
        merged_data << merged_person
      end 
    end 
  end 
  merged_data
  
end 

def find_cool (cool)
  cool.select {|i| i.any? {|key, value| value == "cool"}}
end 

def organize_schools (schools)
  oraganized_schools = {}
  
  schools.collect {|key, value| oraganized_schools[value[:location]] = []}
  
  
  oraganized_schools.each {|key, value| schools.each {|key1, value1| if key == value1[:location] 
  
  then value << key1 end}}
  
end 


