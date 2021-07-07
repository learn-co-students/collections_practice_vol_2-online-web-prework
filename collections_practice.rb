# your code goes here
require 'pry'

def begins_with_r(tools)
  if tools.all? {|x| x.start_with?("r") }
    TRUE
  else
    FALSE
  end
end

def contain_a(element)
  element.select {|x| x.include?("a")}
end

def first_wa(word)
  word.find {|x| x.to_s.include?("wa")}
end

def remove_non_strings(names)
  names.delete_if {|x| !(x.is_a? String) }
end

def count_elements(names)
  count = Hash.new(0)
  names.each {|x| count[x] += 1 }
  count.collect do |hash,number|
    hash[:count] = number
  end
  count.keys
end

def merge_data(name, data)
  data[0].values.map.with_index {|y, x| name[x].merge(y)}
end

def find_cool(temp)
  temp.select{|x| x[:temperature] == "cool"}
end

def organize_schools(school)
  organizedschool = {}
  school.each do |s, x| 
    if organizedschool[x[:location]] == nil
     organizedschool[x[:location]] = [s]
    else
      organizedschool[x[:location]] << s
    end
  end
organizedschool
end