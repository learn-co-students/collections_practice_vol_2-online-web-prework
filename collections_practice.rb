# your code goes here
def begins_with_r(array)
  array.all?{|element| element[0] == 'r'}
end

def contain_a(array)
  array.find_all{|element| element.include? "a"}
end

def first_wa(array)
  array.find{|element| element[0..1] == 'wa'}
end

def remove_non_strings(array)
  array.delete_if{|element| element.class != String}
end
