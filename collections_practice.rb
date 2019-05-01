require "pry"

def begins_with_r(array)
  array.all?{|i| i.downcase.start_with?("r")}
end

def contain_a(array)
  array.select{|i| i.downcase.include?("a")}.map{|i| i}
end

def first_wa(data)
  data.find{|i| i.to_s.start_with?("wa")}
end

def remove_non_strings(array)
  array.select{|i| i.class==String}
end

def count_elements(data)
  array=data.map{|i| i.values}.flatten
  ans=[]
  array.each do |i|
    ans.push({count:array.count(i),name:i})
  end
  ans.uniq
end

def merge_data(keys,data)
  ans=[]
  for a in 0..(keys.size-1)
    ans.push(keys[a].merge(data[0].values[a]))
  end
  ans
end

def find_cool(cool)
  ans=[]
  cool.each do |i|
    if i[:temperature]=="cool"
      ans.push({name:i[:name],temperature:i[:temperature]})
    end
  end
  ans
end

def organize_schools(schools)
  locations={}
  schools.map{|k,v| locations[v[:location]]=[]}
  #creating a hash where the keys are locations and values are empty arrays
  locations.each{|k,v| schools.each{|k1,v1| if k==v1[:location] then v.push(k1) end}}
  locations
end
