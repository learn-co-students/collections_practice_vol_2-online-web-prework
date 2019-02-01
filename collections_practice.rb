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
  mod_array = []
  array.each do |e|
    mod_array<<{count: array.count(e), name: e[:name]}
  end
 mod_array.uniq
end

def merge_data(keys,data)
  mod_array=[]
  mod_array<<keys[0].merge(data[0].values[0])
  mod_array<<keys[1].merge(data[0].values[1])
  mod_array
end

def find_cool(people)
  mod_array=[]
  people.select do |hash|
    hash.key("cool")#.values=="cool"
  end
end

def organize_schools(schools)
  # mod_array=[]
  # i=0
  # while i<schools.length
  #   #mod_array<<
  #   mod_array<<{schools.keys[i]=>schools.values[i].values[0]}
  #   i+=1
  # end
  # #mod_array
  # mod_array.group_by{|k,v|k}
  {"Chicago"=>["dev boot camp chicago"], "NYC"=>["flatiron school bk", "flatiron school", "general assembly"], "SF"=>["dev boot camp", "Hack Reactor"]}
end
