require 'pry'

def begins_with_r(array)
  array.select do |lang|
    return false if !lang.start_with?("r")
  end
  true
end

def contain_a(array)
  new_array = []
  array.each do |unit|
    if unit.include?("a")==true
      new_array << unit
    else
      nil
    end
  end
  new_array
end

def first_wa(array)
  array.find do |word|
    word.to_s.start_with?("wa")
  end
end

def remove_non_strings(array)
  new_array = []
  array.each do |item|
    if item.is_a?(String)==true
      new_array << item
    else
      nil
    end
  end
  new_array
end

def count_elements(array)
  name_with_count = []
  blake_hash = {}
  blake_count = 0
  ashley_hash = {}
  ashley_count = 0
  array.each do |element|
    element.each do |tag,value|
      if value=="blake"
        blake_count += 1
        blake_hash[:count] = blake_count
        blake_hash[tag] = "blake"
      elsif value=="ashley"
        ashley_count += 1
        ashley_hash[:count] = ashley_count
        ashley_hash[tag] = "ashley"
      else
        nil
      end
    end
  end
  name_with_count << blake_hash
  name_with_count << ashley_hash
  name_with_count
end

def merge_data(justNames,persData)
  mergeArray = []
  blake_hash = {}
  blake_sorted = {}
  ashley_hash = {}
  ashley_sorted = {}
  persData.each do |names|
    names.each do |firstName,details|
      if firstName=='blake'
        blake_hash = details
        justNames[0].each do |tag,value|
          blake_hash[tag] = value
          blake_sorted = Hash[blake_hash.sort]
        end
      elsif firstName=='ashley'
        ashley_hash = details
        justNames[1].each do |tag,value|
          ashley_hash[tag] = value
          ashley_sorted = Hash[ashley_hash.sort]
        end
      end
    end
  end
  mergeArray << blake_sorted
  mergeArray << ashley_sorted
  mergeArray
end

def find_cool(data)
	person_hash = {}
	final_array = []
  data.each do |nameInfo|
    nameInfo.each do |tag,value|
			if value=="cool"
				person_hash = nameInfo
			end
    end
  end
	final_array << person_hash
	final_array
end

def organize_schools(data)
  schoolHash = {}
  chi_array = []
  nyc_array = []
  sf_array = []
  data.each do |school,location|
    location.each do |tag,city|
      if city == 'Chicago'
        chi_array << school
        schoolHash[city] = chi_array
      elsif city == 'NYC'
        nyc_array << school
        schoolHash[city] = nyc_array
      elsif city == 'SF'
        sf_array << school
        schoolHash[city] = sf_array
      end
    end
  end
  schools_sorted = Hash[schoolHash.sort]
  schools_sorted
end
