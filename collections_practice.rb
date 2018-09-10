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
  
end

def remove_non_strings(arg)
  
end

def count_elements(arg)
  
end

def merge_data(arg)
  
end

def find_cool(arg)
  
end

def organize_schools(arg)
  
end
