def begins_with_r(array)
	array.each do |item|
		if !item.start_with?('r')
			return false
		end
	end
	true
end

def contain_a(array)
	array.select { |item| item.include?('a')}
end

def first_wa(array)
	array.find {|item| item.to_s.start_with?('wa')}
end

def remove_non_strings(array)
	array.select {|item| item.is_a? String}
end

def count_elements(array)
	result = []
	array.each do |hash|
		count = 0
		count = array.count(hash)
		result << hash.merge({count: count})
	end
	result.uniq
end

def merge_data(keys, data)
	# data is 1 element array of hash with 2 keys, blake and ashley
	# keys is 2 element array, hashes of :first_name and values blake and ashley
	# keys[0][:first_name] 
	# keys[0] hash merges with data[0].values hash
	# return merged_data, a 2 element array of hashes
	merged_data = []
	keys.each do |key_hash|
		data.each do |data_hash|
			merged_data << key_hash.merge(data_hash[key_hash[:first_name]])
		end
	end
	merged_data
end

def find_cool(hash)
	hash.select do |item|
		item[:temperature] == "cool"
	end
end

def organize_schools(hash)
	new_hash = {}
	hash.each do |school, loc_hash|
		
#		new_hash[loc_hash[:location]] = [] unless new_hash[loc_hash[:location]]
		if !new_hash[loc_hash[:location]]
			new_hash[loc_hash[:location]] = []
		end
		new_hash[loc_hash[:location]] << school
	end
	new_hash
end
