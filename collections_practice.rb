require 'pry'

def begins_with_r(word_list)
  word_list.all? {|word| word.start_with?("r")}
end

#def contain_a(word_list)
#  word_a_list = []
#  word_list.each do |word|
#    if word.include?("a")
#      word_a_list << word 
#    end 
#  end
#  word_a_list
#end  

 def contain_a(word_list)
   word_list.select {|word| word.include?("a")}
end

def first_wa(word_list)
  string_array = []
  word_list.each {|word| string_array << word.to_s}
  string_array.detect {|word| word.start_with?("wa")} 
end 

def remove_non_strings(word_list)
  word_list.keep_if {|word| word.class == String}
 end
 
#def count_elements(array)
#  new_array = []
#  array.each do |item| 
#    if new_array.any? {|element| item[:name] == element[:name]}
#      new_array.each {|i| i[:count] += 1 if i[:name] == item[:name]}
#    else 
#      item[:count] = 1
#      new_array << item
#    end
#  end 
#  new_array 
#end

def count_elements(array)
  new_array = []
  array.each do |item|
    item[:count] = 1 
    if new_array.include?(item) == false 
      new_array << item 
    elsif new_array.include?(item)
      new_array.collect {|i| i[:count] += 1}
    #binding.pry  
    end
  end
  new_array 
end 
      
  
 


      
  
 