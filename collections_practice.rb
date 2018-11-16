# your code goes here
require 'pry'

def begins_with_r(array)
  array.all? do |arr|
   arr.start_with?("r")  
 end
end

def contain_a(array)
  array.select do |arr|
    arr.include? "a"
  end
end

def first_wa(array)
  array.find do |arr| 
    arr[0] == "w" && arr[1] == "a"
  end
end

def remove_non_strings(array)
  array.reject do |arr|
    arr.class != String  
  end
end


def count_elements(array)
  array.uniq.each do|arr|
    count = 0
    array.each do|arr2| 
      if arr2 == arr 
       count += 1 
      end   
    end
    arr[:count] = count
  end
end

def merge_data
  merged = []
  keys.each do |key|
  data.each do |h|
    h.each do |name, item|
      if name == keys[0].values.join(" ")  
        merged << keys[0].merge(item)
      elsif name == keys[1].values.join(" ")  
        merged << keys[1].merge(item)
       end   
    end
  end
  end
  merged.uniq
end

#if you iterate "hash within array", you can break array to hash
def merge_data(keys, data)
  array = []
  data.each do |h|  # First-iteratetion: change data to Hash
    if h.class == Hash  #just checking if data is now hash
    h.each do |name,items|
      keys.each do |key|  #change keys from array to Hash
        key.each do |k, v|
          if name == v
            array << key.merge(items)
          end
        end
      end
    end
    end
  end
  array
end


def find_cool(cool)
  array = []
  cool.each do |hash|
    hash.each do |key, value|
      if value == "cool"
       array << hash
      end
    end
  end
   array  
end


def organize_schools(schools)
  ny_array=[]
  sf_array=[]
  ch_array =[]
  
  schools.each do |key1,value1|
    value1.each do |key2, value2|
      if value2 == "NYC"
        ny_array << key1
      elsif value2 == "SF"
        sf_array << key1
      else ch_array << key1
        end 
     end
 end
 {"NYC"=> ny_array, "SF"=> sf_array, "Chicago"=> ch_array}
end

    

  

