require 'pry'

def begins_with_r(tools)
  is_true = true
  tools.each do
    |tool|
    if tool[0] != 'r' then is_true = false end
  end
  is_true
end

def contain_a(elements)
  elements.select do
    |el|
    el.index('a') != nil
  end
end

def first_wa(items)
  items.each do
    |item|
    if item[0,2] == 'wa' then return item end
  end
end

def remove_non_strings(stuffs)
  stuffs.select do
    |stuff|
    stuff.class == String
  end
end

def count_elements(things)
  acc = []
  things.each do
    |thing|
    acc.push(thing)
    acc[-1][:count] = things.count(thing)
    things.delete(thing)
  end
  acc
end

def merge_data(key, data)
  merged_hsh = {}
  key.collect do 
    |hsh|
    name = hsh.values[0]
    hsh.merge(data[0][name])
  end
  # binding.pry
end

def find_cool(cool)
  cool_peeps = []
  cool.each do
    |peep|
    if peep[:temperature] == "cool" then cool_peeps.push(peep) end
  end
  cool_peeps
end

def organize_schools(schools)
  by_location = {}
  schools.each do
    |school|
    location = school[1][:location]
    if !by_location.key?(location) then by_location[location] = [] end
    if !by_location[location].include?(school[0]) then by_location[location].push(school[0]) end
  end
  by_location
end




