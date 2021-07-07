require "pry"
def begins_with_r(array)
	result = []
	array.each do |name|
		if name[0].downcase == "r"
			result << true
		else
			result << false
		end
	end
	if result.include?(false)
		ans = false
	else
		ans = true
	end
end

def contain_a(array)
	a_arr = []
	array.each do |item|
		if item.include?("a")
			a_arr << item
		end
	end
	a_arr
end

def first_wa(array)
	wa_arr = []
	array.each do |item|
		if item[0..1] == ("wa")
			wa_arr << item
		end
	end
	wa_arr[0]
end

def remove_non_strings(array)
	arr =[]
	array.any? {|a| a.is_a? String}
	array.each do |a|
		# if a.is_a? String
		# 	arr << a
		# end
		arr << a if a.is_a? String
	end
	arr
end

def count_elements(array)
	arr = []
  hash = {}
	array.each do |item|
    if hash.has_key?(item[:name])
      hash[item[:name]] +=1
    else
      hash[item[:name]] = 1
    end
  end
  hash.each do |key, value|
    count = value
    name = key
    arr << {:name=>name,:count=>count}
  end
  arr
end


def merge_data(keys, data)
	arr = []
	name = ""
	keys.each do |item|
	  hash = {}
		hash[:first_name] = item[:first_name]
		hash[:motto]  = item[:motto]
		arr << hash
		data.each do |person|
			name = hash[:first_name]
			person[name].each do |key, val|
				hash[key] = val
			end
		end
	end
	arr
end

def find_cool(cool)
	hash = {}
	arr = []
	cool.each do |item|
		hash[:name] = item[:name]
		hash[:temperature] = item[:temperature]
	end
	arr << hash
end

def organize_schools(schools)
	hash = {}
	schools.each do |name,location_hash|
		# binding.pry
		location = location_hash[:location]
		# if hash[location]
		# 	hash[location] << name
		# else
		# 	hash[location] = []
		# 	hash[location] << name
		# end
		hash[location] ||= [] #set empty array if hash doesn't have a key, otherwise just take existing key:value
		hash[location] << name
	end
  hash
end
