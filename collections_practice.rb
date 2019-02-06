require 'pry'
def begins_with_r(words)
  words.all? {|word| word.start_with?("r")}
#end
 #end
end 

def contain_a(array)
  array.select { |word| word.include?("a") }
#review array(name?) return all elements that contain the letter "a".
end

def first_wa(array)
 #string = ""
 #string << array.to_s
 # binding.pry
 array.detect do |word| 
  word.to_s.start_with?("wa")
 end
end
#word
#end
  #if words.first == "r" 
  #if words.start_with?("r")
  #   puts true
  #else false
  #end
 
#words.detect{|i| i.start_with?("wa")}
####words.all? {|word| word.start_with?("wa")}

def remove_non_strings(array)
#if .class !== string delete
#binding.pry
array.delete_if { |obj| !(obj.is_a? String) }
#array.grep(String)
end