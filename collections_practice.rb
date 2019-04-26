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

def count_elements(group)
  group.each do |set|
    #binding.pry
      set[:count] = nil
    set.each do
      count = set.keys.count
        set[:count] = count
    end 
  end
end  

def merge_data(a, b)
  
  
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
  
  schools.sort_by { |k, v| v }
  
  
end  
