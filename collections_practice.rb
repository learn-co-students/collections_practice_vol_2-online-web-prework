require 'pry'
def begins_with_r(array)
array.include?('r')

end
def contain_a(array)
array.keep_if {|v|  v.include?('a')}
end

def first_wa(arr)
  arr.select {|a| a.find(/^wa/)}
end
