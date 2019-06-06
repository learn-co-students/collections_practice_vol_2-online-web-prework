require 'pry'
def begins_with_r(tools)
  #answer var will be the boolean answer that is returned at the end of the method.
  answer = nil
  matchfound = []
  tools.each do |tool|
    if tool[0] == "r" || tool[0] == "R"
      matchfound << true
    else
      matchfound << false
    end
  end
  #Logic looks a little funny, but its asking does the matchfound array include a "false" -- if that is true, then the answer is false, else the answer for #begins_with_r should be true.
  if matchfound.include?(false) == true
    answer = false
  else
    answer = true
  end
end

def contain_a(array)
  matchfoundArr = []
  array.each do |element|
    if element.include?("a") == true || element.include?("A") == true
      matchfoundArr << element
    end
  end
  #Logic looks a little funny, but its asking does the matchfound array include a "false" -- if that is true, then the answer is false, else the answer for #begins_with_r should be true.
  matchfoundArr
end

def first_wa(array)
  firstWaOut = ""

  array.each do |element|
    if element.class == String && element.include?("wa") == true
      return firstWaOut = element
    end
  end
  firstWaOut
end

def remove_non_strings(array)
  outputArr = array.select do |num|
    num.class == String
  end
end

def count_elements(arrayOfHashes)
  outputArrOfHash = []

  arrayOfHashes.each.with_index do |hash, index|
    hash.each do |key, value|
      if outputArrOfHash == []
        outputArrOfHash[0] = {key => value, :count => 1}
      else
        outputArrOfHash.each.with_index do |outhash, outindex|
          if outhash.has_value?(value) == false
            outputArrOfHash << {key => value, :count => 1}
            #I don't need to continue looping if I have found a new value
            break
          else
            outputArrOfHash[outindex][:count] += 1
          end
        end
      end
    end
  end
  outputArrOfHash
end

def merge_data(keys, data)
  outHash = keys

  data.each do |datHash|
    datHash.each do |datKey, datValue|
      datValue.each do |key, value|
        outHash.each do |hash|
          if hash.has_value?(datKey) == true
            hash[key] = value
          end
        end
      end
    end
  end
  outHash
end

def find_cool(hashArr)
  isCool = []
  hashArr.each do |hash|
    hash.each do |key, value|
      if key == :temperature && value == "cool"
        isCool << hash
      end
    end
  end
  isCool
end

def organize_schools(nestedHash)
  outputHash = {}
  nestedHash.each do |school, nesth1|
    nesth1.each do |key, value|
      schoolArr = []
      if outputHash.has_key?(value) == false
        schoolArr << school
        outputHash[value] = schoolArr
      else
        if value == "NYC"
          outputHash["NYC"] << school
        elsif value == "SF"
          outputHash["SF"] << school
        elsif value == "Chicago"
          outputHash["Chicago"] << school
        end
      end
    end
  end
  outputHash
end
