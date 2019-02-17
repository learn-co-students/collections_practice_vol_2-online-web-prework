require "pry"
def begins_with_r(tools)
   tools.all? do |word|
    word.start_with?("r")
    end

end

def contain_a(element)
  #"earth", "fire", "wind", "water", "heart"
  element.select do |word|
    word.include?("a")
   end 
  
end

def first_wa(array)
  wa_word = nil
  
  array.each do |word|

   if  word.match(/wa/)
    wa_word = word
    break
   end
 
  end
 wa_word
 end

def remove_non_strings(notstring)
  nostring = nil
  remove_string = []

  notstring.each do |element|
    
    if element.delete(" ")
       nostring = element
       remove_string << nostring
       
       break
  end     
    end
    
  remove_string
end

def count_elements(names)
  x = ("names")
  counted_elements = []
   
  names.each do |element|
    element[:count] = 0 
    
    names.each do |name|
      
    if element[:name] == name[:name]
       element[:count] += 1 
    end  
      
    end
   
  end
    names.uniq
      
 end
 
def merge_data(keys, data)
  
   a = 0 
   
   while a < keys.length 
     data.each do |element|
       element.each do |ke, val|
         if keys[a].has_value?(ke)
            keys[a].merge!(val)
         end
       end
     end
     a+=1 
   end
   keys
end

def find_cool(cool)
  h = 0 
  found_cool = []
  while h < cool.length
   
  
    cool[h].collect do |ke, val|
     if val == "cool"
       found_cool << cool[h]
       
     end
    end
    h += 1
  end
  found_cool
end

def organize_schools(schools)
  organized_schools = {}
 #{"Chicago"=>["dev boot camp chicago"], "NYC"=>["flatiron school bk", "flatiron school", "general assembly"], "SF"=>["dev boot camp", "Hack Reactor"]}
  schools.each do |key, location|
    location.each do |ke, locate|
      
      if !organized_schools.has_key?(locate)
        organized_schools[locate] = [key]
        
        elsif organized_schools.has_key?(locate)
              organized_schools[locate] << key
        
      end
    end     
  end
             organized_schools
  
end

  
  
    
  

    
    


  

    
  

    
    
