def begins_with_r (tools)
  result = true
  tools.each do |tool|
    result =false if tool[0]!='r'
  end
  result
end

def contain_a (array)
  array.select { |e| e.include?('a') }
end

def first_wa (array)
  array.find{|e| e.to_s.include?('wa')}
end

def remove_non_strings(array)
  array.delete_if {|e| e.class!=String}
end

def count_elements(array)
  hashao=Hash.new
  mod_array = []
  array.each do |e|
    mod_array<<{count: array.count(e), name: e[:name]}
  end
 mod_array.uniq
end
