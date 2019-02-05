def begins_with_r(array)
  word_with_r = true
  array.each do |word|
    if word.start_with?("r")
       word_with_r = true
     else
       word_with_r = false
      end
    end
    word_with_r
end


def contain_a(array)
  element_starting_with_a = []
  array.each do |word|

    if  word.is_a?(String) && word.include?("a")
      element_starting_with_a << word
    end
  end
  element_starting_with_a
end


def first_wa(array)
  first_element_with_wa = []
  array.each do |word|
    if word.is_a?(String) && word.start_with?("wa")
      first_element_with_wa << word
    end
  end
  first_element_with_wa[0]
end

def remove_non_strings(array)
  array.each do |word|
    array.delete_if{ |word| word.is_a?(Symbol) || word.is_a?(Integer)}
  end
end


def count_elements(array)
  names_with_count = []
  array.uniq.each do |element|
    names_with_count << element
  end
  names_with_count.each do |element|
    element[:count] = array.count(element)
  end
  names_with_count
end

def merge_data(keys, data)
  first_name = []
  keys.each do |description, name|
    first_name << name
  end
  new_data_array = []
  data.each do |name, value|

    first_name.each do |name|
      value.each do |attribute, info| 
        new_data_array.push({attribute => info})
        new_data_array.push({:first_name => name})
      end
    end
  end
  new_data_array
end
      


    
 
  
  