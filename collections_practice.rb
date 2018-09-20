# your code goes here
def begins_with_r(collection)
  collection.each {|tool| 
    if tool[0] != 'r'
      return false
    end
  }
  return true
end

def contain_a(collection)
  newCollection = []
  collection.each { |tool|
    if tool.include?("a")
      newCollection << tool
    end
  }
  return newCollection
end

def first_wa(collection)
  collection.each { |tool|
    if tool[0..2].include?("wa")
      return tool
    end
  }
end

def remove_non_strings(collection)
  deleteIndexes = []
  collection.each_with_index { |tool, index|
    if !tool.is_a? String 
      deleteIndexes << index
    end
  }
  deleteIndexes.reverse.each { |index| collection.delete_at(index)}
  collection
end

def count_elements(collection)
    counts = Hash.new(0)
  collection.each { |element| counts[element] += 1 }
  returnArray = []
  counts.each { |element,num| 
    element.each { |key, val| returnArray << {key => val, :count => num} }
  }
  returnArray
end


def merge_data(collection, collection2)
   merged_hashes = []
  data.each do |hash|
    hash.each do |name, info|
      keys.each do |key_val|
        merged_hashes << key_val.merge(info) if key_val.values[0] == name
      end
    end
  end
  merged_hashes
end

def find_cool(collection)
  newName = ""
  collection.each { |data|
    data.each { |key, value|
    if key.to_s == "name"
      newName = value
    end
      if  value.to_s == "cool"
       return newHash = [{:name => newName, :temperature => value}]
      end
    }
  }
end

def organize_schools(collection)
   by_location = {}
    collection.each do |school, location_hash|
      puts location_hash
      location_hash.each do |symbol, location|
        puts location
        if by_location[location] == nil
          by_location[location] = [school]
        else
          by_location[location] << school
        end
      end
    end
    by_location
end

