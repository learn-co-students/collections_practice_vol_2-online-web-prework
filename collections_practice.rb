# your code goes here
def begins_with_r(array)
  array.all?{|tool| tool.start_with?("r")}
end

def contain_a(array)
  array.find_all{|element| element.include?('a')}
end

def first_wa(array)
  array.find{|element| element.to_s.start_with?('wa')}
end

def remove_non_strings(array)
  array.delete_if{|element| element.class != String}
end

def count_elements(array)
  unique_names = array.uniq
  unique_names.each do |uniq_name| 
    count = 0 
    array.each do |name| 
      if uniq_name == name 
        count += 1 
      end
    end
    uniq_name[:count] = count
  end
end

def merge_data(keys, data)
  merged_data = []
  keys.each {|key| data.first.collect{|k,v| if key.values[0] == k then merged_data << key.merge(v) end}}
  merged_data
end

def find_cool(cool)
  cool.select {|e| e if e.has_value?("cool")}
end

def organize_schools(schools)
  organized_schools = {}
  schools.each do |school, location_collection|
    location_collection.each do |city_symbol, place|
      if organized_schools[place] == nil 
         organized_schools[place] = [school] 
      else
         organized_schools[place] << school 
      end 
    end
  end 
  organized_schools 
end