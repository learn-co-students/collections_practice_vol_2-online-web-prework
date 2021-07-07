require 'pry'
def begins_with_r(tools)
  tools.all? {|tool| tool.start_with?("r")}
end

def contain_a(array)
  containsA = []
  array.each do |word|
    if word.include?("a")
      containsA << word
    end
  end
  containsA
end

def first_wa(array)
  allStrings = []
  array.collect {|a|allStrings << a.to_s}
  allStrings.find {|i| i.start_with?("wa")}
end

def remove_non_strings(array)
array.keep_if {|obj| obj.is_a? String}
end

def count_elements(names)
  counts = Hash.new(0)
  names.each {|element| counts[element] += 1}
  countArray = []
  counts.each do |key,value|
    key.each {|k,v| countArray << {k => v, :count => value}}
  end
countArray
end

def merge_data(nest1,nest2)
  mergedData = []
  nest2.each do |hash|
    hash.each do |name,info|
      nest1.each do |participants|
        if participants.values[0] == name
        mergedData << participants.merge(info)
        end
      end
    end
  end
  mergedData
end

def find_cool(array)
  coolHashes = []
  array.each do |hash|
    hash.each do |name,temperature|
      if temperature == "cool"
      coolHashes << hash
      end
    end
  end
  coolHashes
end


def organize_schools(schools)
  organizedSchools = {}
  schools.values.each {|cities| organizedSchools[cities.values[0]] = []}
  schools.each do |school, locationHash|
    organizedSchools[locationHash.values[0]] << school
  end
  organizedSchools
end
