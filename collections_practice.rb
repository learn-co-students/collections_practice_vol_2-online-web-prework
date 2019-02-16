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
