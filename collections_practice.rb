def begins_with_r(array)
  if array.all? {|word| word.start_with?("r")}
      return true 
    else 
      return false
    end
  end
  

def contain_a(array)
  empty_array = []
  array.collect do |words|
    if words.include? "a"
      empty_array << words
    end
  end
  empty_array
end


def first_wa(array)
  array.find{|word| word.to_s.start_with?("wa")}
end


def remove_non_strings(array)
  new_array = []
  array.collect do |words|
    if words.is_a? String
      new_array << words
    end
  end
  new_array
end


def count_elements(array)
  array.uniq.collect do |name|
    name[:count] = array.count(name)
    name
  end
end

      
def merge_data(keys, data)
  merged_data = []
  data.collect do |array|
    array.collect do |first_names, info_hash|
  keys.collect do |key_array|
    key_array.collect do |name_sym, actual_name|
      if first_names == actual_name
        merged_data << key_array.merge(info_hash)
      end
    end
  end
end
end
merged_data
end
  
  
  def find_cool(cool)
    cool.select do |info|
      if info.values.include?("cool")
        info
      end
    end
  end
  
  
  def organize_schools(schools)
    organized_schools = {}
    schools.each do |name, info|
      info.each do |location, city|
        if organized_schools[city]
          organized_schools[city] << name
        else 
          organized_schools[city] = [name]
        end
      end
    end
    organized_schools
  end
  
      