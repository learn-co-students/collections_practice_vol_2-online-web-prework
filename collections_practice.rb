require 'pry'

def begins_with_r(group)
  words = [ ]
  group.each do |word|
   if word.start_with?("r") == true
     words << word
    end
  end
  if group == words
    return true
  else  
    return false
  end
end  


def contain_a(group)
  words = [ ]
  group.each do |word|
    if word.include?("a") == true
      words << word
    end  
  end    
  return words
end 

def first_wa(group)
  words = [ ]
  group.each do |word|
    if word.instance_of?(String) == true
     if word.start_with?("wa") == true
     words << word
      end
    end
  end
  return words[0]
end  

def remove_non_strings(group)
  strings = [ ]
  group.map do |item|
    if item.instance_of?(String) == true
      strings << item
    end
  end
  return strings
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

def merge_data(a, b)
  container = [ ]
  a.each do |person_name|
    name = person_name[:first_name]
    
    b.each do |person_data|
      if person_data[name]
        merged_person = person_data[name]
          merged_person[:first_name] = name
            container << merged_person
       end
    end   
  end 
  container
end  

def find_cool(group)
  new = [ ]
  group.each do |set|
    if set.value?("cool") == true
      new << set
    end
  end
  return new
end  

def organize_schools(schools)

  org_schools = { }
  
  schools.each do |name, location_hash|
    location = location_hash[:location]
    
    org_schools[location] ||= []
    org_schools[location] << name
  end
  org_schools
end  
