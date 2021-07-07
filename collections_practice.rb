require "pry"

#Return true if every element of the tools array starts with an "r" and false otherwise.
    #should return false if there's an element that does not begin with r
def begins_with_r(array)
  newArray = []
  array.each do |element|
    if element.start_with? ("r" || "R")
    newArray << element
    end
  end
  
  if newArray.length == array.length
    return TRUE
  else
    return FALSE
  end
end


#return all elements that contain the letter 'a'
def contain_a(array)
  newArray = []
    array.each do |element|
      if element.include? ("a")
        newArray << element
      end
    end
  newArray
  end
  
  
#Return the first element that begins with the letters 'wa'
def first_wa(array)
  strings = []
  array.each do |element|
    if element.is_a? String
      strings << element
    end
  end
  strings.find { |string| string.start_with? ("wa") }
end
  
def remove_non_strings(array)
  array.delete_if { |n| !(n.is_a? String) }
end


 
def count_elements(list)
  array = []
  list.each do |element|
    counter = element[:count] = 1
  
    if array.include?(element) == false
        array<< element
    
    else
      array.map do |info_hash|
        info_hash[:count]+=1
      end
    end
  end
  array
end




def merge_data(keys, data)
  i = 0
  while i < keys.length
    data.each do |element|
      element.each do |key, value|
        if keys[i].has_value?(key)
          keys[i].merge!(value)
        end
      end
    end
    i += 1
  end
  keys
end
    
    
    
def find_cool(cool)
  array = []
  cool.each do |hash|
    if hash.has_value?("cool")
      array<< hash
    end
  end
  array
end

# school format sample: 
# "dev boot camp chicago" => {
#         :location => "Chicago"
#       },
#       "general assembly" => {
#         :location => "NYC"
#      

# desired output
# let(:organized_schools) {
#     {"NYC"=>["flatiron school bk", "flatiron school", "general assembly"],
#     "SF"=>["dev boot camp", "Hack Reactor"],
#     "Chicago"=>["dev boot camp chicago"]}
#   }

def organize_schools(schools)
  organized_schools = {}
  schools.each do |school_name, loc_info|
    loc_info.each do |label, city|
      if organized_schools.has_key?(city)
        organized_schools[city] << school_name
      else
        organized_schools[city] = [school_name]
      end
    end
  end
  organized_schools
end


      

    