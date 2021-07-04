
def begins_with_r(tools)
  r_tools = 0

   tools.each do |tool|
    if tool.start_with?("r")
      r_tools += 1
    end
  end

   if r_tools == tools.length
    return true
  else
    return false
  end
end

def contain_a(elements)
  a_elements = []

   elements.each do |element|
    if element.include?("a")
      a_elements << element
    end
  end
   a_elements
end

def first_wa(elements)
  elements.find {|element| element.to_s.start_with?("wa")}
end

def remove_non_strings(collection)
  collection.map do |item|
    if item.is_a?(String)
      item
    end
  end.compact
end

def count_elements(elements)
  elements_with_count = []

   elements.each do |item|
    original = item
    item[:count] = elements.count(item)
    elements_with_count << item
    elements.delete(original)
  end
   elements_with_count
 end
 
 def merge_data(arr1, arr2)
  arr2[0].map do |name, details|
    new_details = {}
    arr1.each do |key|
      key.each do |k, v|
        if name == v
          new_details = key.merge(details)
        end
      end
    end
    new_details
  end
end

def find_cool(arr1)
  cool_person = []

   arr1.each do |hsh1|
    if hsh1[:temperature] == "cool"
        cool_person << hsh1
    end
  end
   cool_person
end

def organize_schools(schools)
  sorted_by_location = {}
  
  schools.each do |name, attributes|
    if sorted_by_location.include?(attributes[:location])
      sorted_by_location[attributes[:location]] << name
    else
      sorted_by_location[attributes[:location]] = [name]
    end
   end
   sorted_by_location
end