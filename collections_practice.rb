require 'pry'

def begins_with_r(array)
  array.all? {|word| word[0] == "r"}
end

def contain_a(array)
  a_array = []
    array.collect do |word|
      a_array << word if word.include? "a"
    end
  a_array
end

def first_wa(array)
  array.each do |word|
    return word if word[0..1] == "wa"
  end 
end

def remove_non_strings(array)
    new_array= []
      array.each do |item|
        new_array << item if item.is_a? String
      end
    new_array
end



def count_elements(array)
  hash_count = Hash.new
      array.each do |name_hash|
          if hash_count.has_key? name_hash[:name]
              hash_count[name_hash[:name]] += 1 
          else
              hash_count[name_hash[:name]] = 1
                
            end 
         end
      hash_count.to_a.map{|count| {:count => count[1], :name => count[0]}}
      
end

def merge_data(set1, set2)
  combo_set = set1.merge.(set2) {|key, oldval, newval| oldval - newval}
  combo_set
end

def find_cool(main_set)
  
      main_set.collect do |key, value|
        if value == "cool"
          puts "#{key}, #{value}"
     end
  end
end
  