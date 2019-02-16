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

# The above #count_elements(array) method was developed with an AAQ coach
# at the end of the night. The coach had not done this lab before and 
# we started by trying to fix my broken #count_elements(array) below.
# We ended up with an almost completely changed method, but stated
# that we kept the logic of my original method attempt. It was a fast
# session and I did not completely follow, having a hard time keeping up.
# I worked after the session to verbalize each line of code above to
# follow and understand why the above code passes. But in the end, I went
# back to and problem solved my original method attempt. I got it to pass,
# and I honestly think it is easier to follow. My original method below.

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
 
 
def merge_data(keys, data)
  index = 0 
  while index < keys.length
    data.each do |item|
      item.each do |key, value|
        if keys[index].has_value?(key)
          keys[index].merge!(value)
        end 
      end 
    end
    index += 1 
  end 
  keys 
end


def find_cool(hash)
  new_array = []
  hash.each do |item|
    if item[:temperature] == "cool"
      new_array << item 
    end 
  end
#  binding.pry
  new_array
end


def organize_schools(schools)
  organized_schools = {}
  schools.each do |school_key, location_hash|
    location_hash.each do |location_key, city_value|
      if organized_schools.has_key?(city_value) == false 
        organized_schools[city_value] = [school_key]
#binding.pry        
      elsif
        organized_schools.has_key?(city_value)
        organized_schools[city_value] << school_key
      end   
    end 
  end
#binding.pry    
  organized_schools
end  
      
  
 


      
  
 