def begins_with_r (array) 
  array.all? do |word|
    word.start_with?('r') == true
  end
end

def contain_a (array)
  element = []
  array.collect do |word|
    if word.include? ('a')
   element << word
  end
end
 element
end

def first_wa (array)
  element = []
  array.each do |word|
    if word.to_s.start_with?('wa')
     element << word
    end
  end
  element[0]
end

def remove_non_strings (array)
     array.delete_if{|element|element.class != String}
      array
  end
  
 def count_elements(array)
  names = []
  arr = []
  array.each do |hash|
    name = hash[:name]
    count = array.count(hash)
    if names.include?(name)
    else
      names<<(name)
      arr<<({name: name, count: count})
    end
  end
  arr
end

def merge_data (keys, data)
    keys.each do |fname|
      fname.merge!(data[0][fname[:first_name]])
    end
end

def find_cool (data)
  name = []
    data.each do |info|
        info.each_pair do |k,v|
          if v=="cool"
            name << info 
          end
      end
  end
  name
end



def organize_schools (schools)
  new_hash = Hash.new
   schools.each_pair do |name, data|

     if new_hash[data[:location]] # need to isolate city for first key and add to hash
       new_hash[data[:location]]<< name #add school name to location
     else
       new_hash[data[:location]] = [name] #array
     end

   end
  new_hash
end

