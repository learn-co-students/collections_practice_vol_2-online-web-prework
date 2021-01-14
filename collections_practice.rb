#begins_with_r methods:

#def begins_with_r(array)
  #array.all? do |word|
   # word[0] == "r"
  #end
#end

def begins_with_r(array)
  array.all? do |word|
    word[0].start_with?("r")
  end
end

  

#contain_a methods:

def contain_a(array)
  array.select do |word|
    word.include?("a")
  end
end

#first_wa methods:

#def first_wa(array)
  #array.detect do |word|
    #word[0,2] == "wa"
  #end
#end

def first_wa(array)
  first_word_wa = []
  array.detect do |word|
    word[0,2].start_with?("wa")
  end
end

  
#def remove_non_strings(array)
  #array.delete_if do |word|
  #  word.is_a?(String) == false  
 # end
#end

def remove_non_strings(array)
  array.keep_if do |word|
    word.is_a?(String) == true 
  end
end

def count_elements(array)
  array.uniq.each {|i| count = 0
    array.each {|i2| if i2 == i then count += 1 end}
    i[:count] = count}
  end
  
def merge_data(keys, data)
  merged = []
  keys.each {|i| data.first.map {|k,v| if i.values[0] == k then merged << i.merge(v) end}}
  merged
end

def find_cool(array)
  array.select {|i| i.any? {|k,v| v == "cool"}}
end

def organize_schools(array)
  location_hash = {}
  array.collect {|k,v| location_hash[v[:location]] = []}
  location_hash.each {|k,v| array.each {|k1,v1| if k == v1[:location] then v << k1 end}}
end


  
  






    


    


