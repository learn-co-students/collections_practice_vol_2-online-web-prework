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
  array.select do |word|
    word.first("wa")
  end
  
  
  
end