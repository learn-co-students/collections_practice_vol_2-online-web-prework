# Question 1 "#begins_with_r"
# it 'Return true if every element of the tools array starts with an "r" and false otherwise.' 
# it "should return false if there's an element that does not begin with r" do
  

def begins_with_r(tools)
 x = true 
 tools.each do |tool|
   if tool[0] != "r"
     x = false 
  end 
end
x 
end 

# Question 2 "#contain_a"
# it "return all elements that contain the letter 'a'" 

def contain_a(elements)
  elements.select do |element|
    element.include?("a")
  end 
end 

# Question 3 "#first_wa"
# it "Return the first element that begins with the letters 'wa'"

def first_wa(elements)
wa = []
  elements.each do |element|
  if element.match(/wa/)
  wa = element 
  break 
end 
end 
wa 
end 

# Question 4 "#remove_non_strings"
# it "remove anything that's not a string from an array"
def remove_non_strings(array)
  new_array = []
  array.each do |element|
    new_array << element if element.is_a?(String) 
  end
  new_array 
end 

# Question 5 "#count_elements"
# it 'count how many times something appears in an array'
def count_elements(array)
  array.each do |element|
    element[:count] = 0  
    name = element[:name]
    array.each do |new_element|
      if new_element[:name] == name
        element[:count] += 1 
      end 
  end
end.uniq 
end 

# Question 6 "#merge_data"
# it 'combines two nested data structures into one'
def merge_data(keys, data)
  one_structure = []
  keys.each do |key|
    name = key[:first_name]
    data.each do |datum|
      if datum[name]
        merged_person = datum[name]
        merged_person[:first_name] = name
        one_structure << merged_person
      end
    end
  end
  one_structure
end 

# Question 7 "#find_cool"
# it 'find all cool hashes'
def find_cool(array)
  cool_array = []
  array.each do |element|
    cool_array << element if element[:temperature] == "cool"
  end 
  cool_array
end 

# Question 8 "#organize_schools"
# it 'organize the schools by location'
def organize_schools(schools)
  school_order = {}
  schools.each do |a,b|
   location = b[:location]
   if school_order[location]
     school_order[location] << a 
   else 
     school_order[location] = []
     school_order[location] << a  
  end 
end 
school_order
end 


