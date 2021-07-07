def begins_with_r(array)
  i= 0
  if array.all? {|i| i.start_with?("r")}
    i+=1
    return true 
  else
  return false 
end 
end 
   
 def contain_a(array)
  array.select { |i| i.include?("a")}
  end    

def first_wa(array)
  array.find { |i| i.start_with?("wa")}
end 


  def remove_non_strings(array)
    array.keep_if { |i| (i.is_a? String ) }
  end 
  
 
def count_elements(array)

      array.uniq.each {|i| count = 0
          array.each {|i2| if i2 == i then count += 1 end}
          i[:count] = count}
  end
  
  def find_cool(cool)
      cool.select {|i| i.any? {|k,v| v == "cool"}} 
  end
  
  def organize_schools(schools)
      locations_hash = {}
      schools.collect {|k,v| locations_hash[v[:location]] = []}
      locations_hash.each {|k,v| schools.each {|k1,v1| if k == v1[:location] then v << k1  end}}
  end

