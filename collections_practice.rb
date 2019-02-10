def begins_with_r(array)
  x = 0
  array.each do |arr|
    if arr.start_with?("r")
      x = true
    else
      x = false
      break
    end
  end
  x
end

def contain_a(array)
  array.collect {|arr| arr if arr.include?("a")}.compact
end

def first_wa(array)
  array.each do |arr|
    if arr.is_a?(String) != true
      next
    elsif arr.start_with?("wa")
      return arr
      break
    end
  end
end

def remove_non_strings(array)
  array.delete_if{|arr| arr.is_a?(String) != true}
end

def count_elements(array)
  array.each do |hash1|
    hash1[:count] = 0
    array.each {|hash2| hash1[:count] += 1 if hash2[:name] == hash1[:name]}
  end.uniq
end

def merge_data(k, v)
  merge_arr = []
  k.each do |person_name|
    name = person_name[:first_name]
    v.each do |person_data|
      if person_data[name]
        merged_person = person_data[name]
        merged_person[:first_name] = name
        merge_arr << merged_person
      end
    end
  end
  merge_arr
end

def find_cool(array)
  array.collect do |data|
    data if data.has_value?("cool")
  end.compact
end

def organize_schools(schools)
  school_hash = {}
  schools.each do |school, place|
    locale = place[:location]
    if school_hash[locale]
      school_hash[locale] << school
    else
      school_hash[locale] = []
      school_hash[locale] << school
    end
  end
  school_hash
end
