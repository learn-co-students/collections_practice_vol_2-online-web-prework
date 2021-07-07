require "pry"

def begins_with_r(array)
  i = 0
  all_words_begin_with_r = true

  array.each do |word|
    while i < array.length
      if array[i][0] == "r" || array[i][0] == "R"
      i += 1
    else
      all_words_begin_with_r = false
      break
    end
    end
  end

  all_words_begin_with_r
end

def contain_a(array)
  elements_containing_a = []

  array.each do |word|
    if word.downcase.include?("a")
      elements_containing_a << word
    end
  end

  elements_containing_a
end


def first_wa(array)
  array.each do |word|
    if word.to_s.include?("wa")
      return word
    end
  end
end


def remove_non_strings(array)
  array.delete_if do |element|
    element.class != String 
  end 
end


def count_elements(array)
  i = 1
  return_arr = []
  
  while i < array.length
    new_obj = {:count => 1}
    count = 1
    if array[i] == array[i-1]
      new_obj[:count] += 1
    end
    new_obj.merge!(array[i])
    return_arr << new_obj
    i += 1
  end
  
  return_arr
end


def merge_data(keys, data)
  keys.each do |object|
    first_name_prop = object[:first_name]
    object_2 = data[0][first_name_prop]
    
    object_2.each do |property,value|
      object[property] = value
    end
  end
end


def find_cool(cool)
  cool_people = []
  
  cool.each do |person|
    if person[:temperature] == "cool"
      cool_people << person
    end
  end
  
  cool_people
end

=begin
(:schools) {
    {
      "flatiron school bk" => {
        :location => "NYC"
      },
      "flatiron school" => {
        :location => "NYC"
      },
      "dev boot camp" => {
        :location => "SF"
      },
      "dev boot camp chicago" => {
        :location => "Chicago"
      },
      "general assembly" => {
        :location => "NYC"
      },
      "Hack Reactor" => {
        :location => "SF"
      }
    }
  }
  let(:organized_schools) {
    {"NYC"=>["flatiron school bk", "flatiron school", "general assembly"],
     "SF"=>["dev boot camp", "Hack Reactor"],
     "Chicago"=>["dev boot camp chicago"]}
  }
=end

#method organize_schools reorganizes the school data as shown above
def organize_schools(schools)
  organized_schools_hash = {}
  
  schools.collect do |key, value|
    organized_schools_hash[value[:location]] = []
  end
  
  organized_schools_hash.each do |key, value|
    schools.each do |key_2, value_2|
      if value_2[:location] == key
        value << key_2
      end
    end
  end
  
end