# your code goes here
require "pry"

def begins_with_r(arg)
  #binding.pry
  arg.all? do |word|
    word[0] == "r"
  end
end

def contain_a(word)
  #binding.pry
  word.select {|elements| elements.include?("a")}
end

def first_wa(word)
  word.find do |elements|
    #binding.pry
    elements.to_s.include?("wa")
  end
end

def remove_non_strings(element)
  element.delete_if { |things| !(things.is_a? String)}
end

def count_elements(element)
  element.group_by(&:itself).map { |key, value| key.merge(count: value.length)}
end

def merge_data(keys, data)
  #binding.pry
  merged = []
  keys.each do |person|
    data.each do |stats|
      attributes = stats[person[:first_name]]
      attributes[:first_name] = person[:first_name]
      merged.push(attributes)
    end
  end
  merged
  #binding.pry
end

def find_cool(data)
  cool = []
  data.each do |person|
    if person[:temperature] == "cool"
      return cool.push(person)
    end
  end
end

def organize_schools(schools)
  organized = {}
  schools.each do |school, location|
    location.each do |location1, city|
      #binding.pry
      if organized[city] == nil
        organized[city] = [school]
      else
        organized[city].push(school)
      end
    end
  end
  organized
  #binding.pry
#  schools.each_with_object({}) do |(name, data), res|
#    (res[data[:location]] ||= []) << name
#  end
end
