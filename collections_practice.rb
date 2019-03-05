def begins_with_r(array)
  array.all? {|i| i[0] == "r"}
end

def contain_a(array)
  array.select {|i| i.include?("a")}
end

def first_wa(array)
  array.find {|i| i[0..1] == "wa"}
end

def remove_non_strings(array)
  array.delete_if {|obj| !(obj.is_a? String)}
end

def count_elements(array)
  names_array = array.uniq.collect {|person| {:name => person[:name], :count => array.count(person)}}
end

def merge_data (keys, data)
  result = []
  keys.each_with_index do |x, i|
  result << keys[i].merge(data[0][keys[i].values[0]])
end
result
end

def find_cool(array)
  result = []
  array.each { |x| result << x if x[:temperature] == 'cool' }
  result
end

def organize_schools(schools)
  locations = {}
  schools.collect {|k,v| locations [v[:location]] = []}
  locations.each {|k,v| schools.each {|k1,v1| if k == v1[:location] then v << k1 end }}
end