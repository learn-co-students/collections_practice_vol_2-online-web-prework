def begins_with_r(arg)
  selected = []
  arg.each do |i|
  selected << i if i.start_with?("r", "R")
  end
  selected.length == arg.length ? true : false
end

def contain_a(arg)
  selected = []
  arg.each { |i| selected << i if i.include?("a") }
  selected
end

def first_wa(arg)
  arg.each { |i| return i if i.to_s.include?("wa") }
end

def remove_non_strings(arg)
  strs = []
  arg.each { |i| strs << i if i.class == String }
  strs
end

def count_elements(arg)
  inst = {}
  arg.collect do |key, value| 
    if !inst[key] 
      inst < key
    else
      inst[key] = inst[key] + 1
    end
  inst
end

def merge_data(arg)
  
end

def find_cool(arg)
  
end

def organize_schools(arg)
  
end
