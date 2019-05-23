# your code goes here
require 'pry'
def begins_with_r(tools)
    tools.all? do |tool|
      tool[0] == "r"
    end
end

def contain_a(elements)
  elements.select do |word|
    word.include?("a")
  end
end

def first_wa(words)
    words.find do |word|
      word[0..1] == "wa"
    end
end

def remove_non_strings(words)
  words.delete_if do |word|
    word.class != String
  end
end

def count_elements(array)
  new_hash = {}
  counter = 0
  array.each do |info|
    info[:count] =
  
    info.each do |k, v|
      if array.include?(v)
        counter +=1

    end
  end
end
