require "pry"

def begins_with_r(array)
  array.all? do |words|
    words[0] == "r"
  end
end
    
def contain_a(array)
  array.select do |word|
    word.include?("a")
  end
end

def first_wa(array)
  array.find do |word|
    word[0..1] == "wa"
  end
end

def remove_non_strings(array)
  array.delete_if do |word|
    word.instance_of?(String) == false
  end
end

def count_elements(array)
  array.uniq.each {|word|
    counter = 0
    array.each {|word2|
      if word2 == word then counter += 1 
      end}
        word[:count] = counter}
      end
    
def merge_data(keys, data)
  new_array = []
  keys.each {|i| data.first.map {|k, v| if i.values[0] == k then new_array << i.merge(v) end }}
  new_array
end

def find_cool(array)
 array.select do |word|
   word.any? do |k, v|
     v == "cool"
 end
 end
end

 
 def organize_schools(schools)
     locations_hash = {}
     schools.collect {|k,v| locations_hash[v[:location]] = []}
     locations_hash.each {|k,v| schools.each {|k1,v1| if k == v1[:location] then v << k1  end}}
 end
 

