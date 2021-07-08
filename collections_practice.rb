# your code goes here
def begins_with_r(array)
  counter = 0
  array.each do |i|
    if i[0] == "r"
      counter += 1
    end
  end
  if counter == array.size
    return true
  else
    return false
  end
end

def contain_a(array)
  ary = []
  counter = 0
  array.each do |x|
    counter += 1 if x.include?("a")
    ary << x if counter > 0
    counter = 0
  end
  ary
end

def first_wa(array)
  ary = ""
  array.each do |i|
    return i if i[0, 2] == "wa"
  end
end

def remove_non_strings(array)
  array.delete_if {|x| !(x.is_a? String)}
end

def count_elements(array)
  arr = array.group_by(&:itself)
  arr.map{|k, v| k.merge(count: v.length)}
end

def merge_data(v2, v1)
  v1[0].values.map.with_index {|v, i| v2[i].merge(v)}
end

def find_cool(hash)
  hash.select {|i| i[:temperature] == "cool"}
end

def organize_schools(schools)
  schools_by_location = {}
   schools.each do |key, value|
     if(schools_by_location[value[:location]] == nil)
       schools_by_location[value[:location]] = [key]
     else
       schools_by_location[value[:location]] << key
     end
   end
   schools_by_location
end