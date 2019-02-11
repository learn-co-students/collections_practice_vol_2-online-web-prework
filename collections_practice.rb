# your code goes here
def begins_with_r(array)
  array.all? {|word| word.start_with?("r")}
end

def contain_a(array)
  array.find_all {|word| word.include?("a")}
end

def first_wa(array)
  array.find {|word| word[0,2] == "wa"}
end

def remove_non_strings(array)
  array.delete_if {|hash| hash.class != String}
end

def count_elements(array)
     array.uniq.each {|hash| count = 0
        array.each {|hash2| if hash2 == hash then count += 1 end}
        hash[:count] = count}
end

def merge_data(keys, data)
  merged = []
  keys.each do |new_key|
    data.first.map do |k,v| 
      if new_key.values[0] == k  
      merged << new_key.merge(v) 
      end
    end
  end
  return merged
  end
end

def find_cool(array)
  array.select {|hash| hash.any? {|k,v| v == "cool"}}
end

def organize_schools(array)
    locations_hash = {}
    array.collect {|k,v| locations_hash[v[:location]] = []}
    locations_hash.each {|k,v| schools.each {|k1,v1| if k == v1[:location] then v << k1  end}}
end
  