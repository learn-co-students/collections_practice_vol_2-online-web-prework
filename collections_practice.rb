require 'pry'

def begins_with_r(array)
  array.all? { |item| item.split("")[0] == "r" }
end

def contain_a(array)
  array.select do |item|
    item.split("").any? { |letter| letter == "a" }
  end
end

def remove_non_strings(array)
  string_array = Array.new
  array.each do |item|
    string_array << item if item.is_a?(String)
  end
  string_array
end

def first_wa(array)
  array = remove_non_strings(array)
  array.find do |item|
    item.split("")[0] == "w" && item.split("")[1] == "a"
  end
end

## This lab is apparently in the wrong place in the curriculum
## The learn.co staff (Tyler Taylor) suggested skipping for now
## Anyway, the method below is broken right now
def count_elements(array)
  new_array = Array.new
  new_hash = Hash.new
  array.sort do |a, b|
    if a == b
      new_hash << a
      new_array <<
  new_array << new_hash
  
