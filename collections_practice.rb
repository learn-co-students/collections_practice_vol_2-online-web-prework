def begins_with_r (tools)
tools.all?{ |str| str.start_with?("r") }
end

def contain_a (array)
  array.select {|word| word.include? ("a")}
end

def first_wa (array)
 array.delete_if { |obj| !(obj.is_a? String) }
 words= array.select { |element| element.start_with?("wa")}
 words.first.to_s
 end
 
 def remove_non_strings (array)
   array.delete_if { |obj| !(obj.is_a? String) }
 end

def count_elements (array)
array.uniq.each {|i| count = 0
        array.each {|i2| if i2 == i then count += 1 end}
        i[:count] = count}
end

def merge_data(keys, data)
  merged = []
  keys.each {|i| data.first.map {|k,v| if i.values[0] == k then merged << i.merge(v) end}}
  merged
end

def find_cool(cool)
    cool.select {|i| i.any? {|k,v| v == "cool"}} 
end

def organize_schools(schools)
    locations_hash = {}
    schools.collect {|k,v| locations_hash[v[:location]] = []}
    locations_hash.each {|k,v| schools.each {|k1,v1| if k == v1[:location] then v << k1  end}}
end