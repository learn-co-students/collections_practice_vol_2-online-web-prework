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
  word_list.delete_if do |word|
     word != word.class
  #binding.pry

end  
end  
def count_elements(array)
  a_counter = 0 
  b_counter = 0 
  array.each do |item|
    if array[:name] == "ashley"
      a_counter += 1 
    elsif 
      array[:name] == "blake"
      b_counter += 1 
      
      
    end 
  end 
  
end

      
  
 