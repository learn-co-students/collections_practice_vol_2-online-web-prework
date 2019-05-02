require "pry"

def begins_with_r(array)
  array.all? do |word|
    word[0].start_with?("r")
  end
end
#returns true if every element of the tools array starts with an "r" and false otherwise

def contain_a(array)
  letter_a = []
  array.collect do |word|
    if word.include?("a")
      letter_a << word
    end
  end
  letter_a
end

def first_wa(array)
  array.each do |word|
    if word[0..1].start_with?("wa")
       return word
    end
  end
end

def remove_non_strings(array)
  array.delete_if do |item|
    item.class != String
    end
  end

  def count_elements(array)
    people = {}
    array.each do |person|
      name = person[:name]
      people[name] ||= 0
      people[name] += 1
    end

    output = []
    people.each do |name, number|
      output << {:name => name, :count => number}
    end
    output
  end

  def merge_data(keys, data)
    merged = []
    data.each do |info_hash|
      info_hash.each do |name, data|
        keys.each do |v|
          merged << v.merge(data) if v.values[0] == name
        end
      end
    end
    merged
  end

  def find_cool(array)
    cool_hash = []
      array.each do |hash|
      if hash[:temperature] == "cool"
            cool_hash << hash
          end
        end
      cool_hash
    end

    def organize_schools(school_hash)
      new_hash = {}
      school_hash.each do |school, place|
        location = place[:location]
        if new_hash[location]
          new_hash[location] << school
        else
          new_hash[location] = []
          new_hash[location] << school
        end
      end
      new_hash
    end






    #find all the locations and make those the key, and the names of schools will be the values.
