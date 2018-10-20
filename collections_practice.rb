# your code goes here
def begins_with_r(arr)
  arr.all? do |ele|
    ele[0] == "r"
  end 
end 

def contain_a(arr)
  arr.select do |ele|
    ele.include?("a")
  end 
end 

def first_wa(arr)
  arr.each do |ele|
    if ele[0..1] == "wa"
      return ele
    end 
  end
end 

def remove_non_strings(arr)
  arr.delete_if do |ele|
    !ele.is_a? (String)
  end 
end 

# Hashes go below here

def count_elements(arr)
  myArr = []
  nameWasIn = false
  
  arr.each do |newName|
    myHash = Hash.new(0)
    myArr.each do |storedNames|
      if storedNames.has_value?(newName[:name])
        storedNames[:count] += 1
        nameWasIn = true
      end 
    end 
    if nameWasIn
      
    else 
      myHash[:name] = newName[:name]
      myHash[:count] = 1
      myArr.push(myHash)
    end 
    nameWasIn = false;
  end 
  return myArr
end 

def merge_data(hash1, hash2)
  arr = []
  hash1.each do |hashes1|
    hash = hashes1
    hash2.each do |hashes2|
      if hashes2.has_key?(hash[:first_name])
        hash.merge!(hashes2[hash[:first_name]])
        arr.push(hash)
      end 
    end 
  end 
  return arr
end 

def find_cool(str)
  arr = []
  str.each do |hashes|
    if hashes.has_value?("cool")
      arr.push(hashes)
    end 
  end 
  return arr
end 

def organize_schools(arr)
  hash = Hash.new(0)
  arr.each do |name, location|
    if hash.has_key?(location[:location])
      hash[location[:location]].push(name)
    else
      hash[location[:location]] = [name]
    end 
  end 
  return hash
end 
