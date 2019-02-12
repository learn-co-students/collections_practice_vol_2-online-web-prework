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
 
def count_elements(array)
  
  array.each do |item|
    
      
      
    end 
  end 
  
end

      
  
 