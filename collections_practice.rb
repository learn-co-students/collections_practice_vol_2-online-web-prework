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
      
# Notes to remember: 

# re-assigning placeholder values is the key to this method.

# Created a new hash called organized_schools (line 99) for schools to be
# reorganized according to city. Lines 100-101 iterate down to the level
# of necessary data. Conditional (line 102) - if the new hash organized_schools 
# has a key in it with the value of city_values (which on the first iteration is "NYC")
# is false, (which it is because line 103 has not run yet and the new hash is empty)
# then (line 103) creates a new key value pair in new hash (organized_schools)
# with the key being the value of city_value ("NYC") re-assigned as a new key instead
# of it being the value of a key value pair and a new value being an array with 
# the value of school_key being re-assigned as an element in the new value array 
# (which on the first iteration is "flatiron school bk") in that array.
#  On the second iteration through, line 102 is falsey (that is if the next 
# iteration does not have a new value for city_value ("SF") like the third time through 
# will) because now there 
# is a key value pair in the new hash ("NYC" => ["flatiron school bk"]), so line 
# 105 elsif runs in which line 106 returns true and line 107 shovels another
# school-key that has the same value of city_value into the array 
# ("NYC => ["flatiron school bk", "flatiron school"])
 


      
  
 