require 'pry'
def begins_with_r(array)
array.all?{|word|   word.include?('r')}

end
def contain_a(array)
array.keep_if {|v|  v.include?('a')}
end

def first_wa(arr)
  arr.detect{ |a|    a.match(/wa/) }
end
def remove_non_strings(arr)
arr.keep_if { |obj| (obj.is_a? String) }
end

def count_elements(arr)
arr.group_by(&:itself)
 .map{|k, v| k.merge(count: v.length) }

end
def merge_data(keys,data)
keys.map do |name|    name.values[0]

data.map do |info|  info.keys[0]
info.values[0]
if name.values[0]== info.keys[0]
binding.pry
name.merge(info.values[0])
end
end
end
end
