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
count = 0
arr = []
array.each do |item|
  #  puts "#{item}"
  count +=1
  item[:count] = count
  puts "#{item[:name]}"
  arr << item
end
arr
end
