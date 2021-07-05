require 'pry'
def begins_with_r(arg)
  norse = nil
  arg.each do |word|
    if word.start_with?("r")
      if norse != false
        norse = true
      end
    else norse = false
    end
  end
  norse
end 



def contain_a(arg)
  returning_array = []
  arg.each do |word|
    word_array = word.split("")
    word_array.each do |letter|
      if letter == "a"
        returning_array.push(word)
      end 
    end 
  end
  returning_array
end 



def first_wa(arg)
  first_ele = " "
  arg.each do |word|
    string_form = word.to_s
    word_array = string_form.split("")
    if word_array[0] == "w"
      if word_array[1] == "a"
        if first_ele == " "
          first_ele = word 
        end
      end
    end 
  end 
  first_ele
end



def remove_non_strings(arg)
  returning_array = []
  arg.each do |item|
    if item == item.to_s 
      returning_array.push(item)
    end
  end 
  returning_array
end 



def count_elements(arg)
  counter_array = []
  name_array = []
  namae_array = []
  parallel_count_array = []
  arg.each do |hashy|
    hashy.each do |datatype, data|
      name_array.push(data)
    end 
  end
  name_array.each do |name|
    unless namae_array.include?(name)
      namae_array.push(name)
    end
  end
  namae_array.each do |namae|
    parallel_count_array.push(0)
    index_number = namae_array.index(namae)
    name_array.each do |name|
      if namae_array[index_number] == name
        parallel_count_array[index_number] += 1
      end 
    end 
  end
  x = 0 
  while x < namae_array.length do 
    counter_array.push({:count => parallel_count_array[x], :name => namae_array[x]})
    x += 1
  end
  counter_array
end



def merge_data(key, data)
  new_hashy_array = []
  data.each do |indie|
    x = 0
    indie.each do |namae, data_hash|
      new_hashy_array.push(data_hash)
      gloob = key[x]
      gloob.each do |first_name, name|
        new_hashy_array[x][first_name] = name
      end 
      x += 1
    end 
  end
  new_hashy_array
end  



def find_cool(arg)
  index_final = nil
  arg.each do |koo_hash|
    index_counter = 0
    koo_hash.each do |data_type, data|
      if data_type == :temperature
        if data == "cool"
          index_final = index_counter
        end 
      end
      index_counter += 1
    end
  end
  arri = [arg[index_final]]
end




def organize_schools(arg)
  final_hash = {}
  location_array = []
  arg.each do |school, location_hash|
    location_hash.each do |loc, value|
      unless location_array.include?(value)
        location_array.push(value)
      end
    end
  end
  location_array.each do |city|
    final_hash[city] = []
  end
  arg.each do |school, location_hash|
    location_hash.each do |loc, value|
      final_hash[value].push(school)
    end
  end
   final_hash 
end