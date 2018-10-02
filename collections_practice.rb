
def begins_with_r(array)
    array.each do |i|
      if i[0] == "r"
      else 
        return false 
      end 
  end
  true
end

def contain_a(array)
    array.select {|i| i.include? ?a}
end 

def first_wa(array)
  array.detect {|i| i[0] == "w" && i[1] == "a"}
end 

def remove_non_strings(array)
  array.delete_if {|i| i.class != String} 
end 
  
def count_elements(array)
  array.group_by(&:itself)
  .map {|k,v|k.merge(count: v.length)}
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
  
  