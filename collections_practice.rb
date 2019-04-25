require 'pry'

def begins_with_r(group)
  words = [ ]
  group.map do |word|
   if word.start_with?("r") == true
     words << word
     if words == group
       return true
   else
     return false
      end
    end
  end
end  

def contain_a(group)
  words = [ ]
  group.map do |word|
    if word.include?("a") == true
      words << word
    end  
  end    
  return words
end 

def first_wa
  
end  

def remove_non_strings(group)
  group.map do |item|
    if item.instance_of?(String) == false
      word.delete!
    end
  end
  return group
end  

def count_elements
  
end  

def merge_data
  
end  

def find_cool
  
end  

def organize_schools
  
end  
