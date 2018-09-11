def begins_with_r arr
  arr.all? {|x| x.start_with? "r"}
end

def contain_a arr
  arr.select {|x| x.include? 'a'}
end

def first_wa arr
  arr.find {|x| x.to_s.start_with? "wa"}
end

def remove_non_strings arr
  arr.select {|x| x.is_a? String}
end

def count_elements arr
  arr.map{|x| x.merge({count: arr.count(x)}) if not x.key?(:count)}.uniq
end

def merge_data keys, data
  keys.map {|x| x.merge(data[0][x[:first_name]])}
end

def find_cool arr
  arr.select {|x| x[:temperature] == "cool"}
end

def organize_schools arr
  ret = {}
  arr.each do |name, loc_hash|
    location = loc_hash[:location]
    ret[location] ||= []
    ret[location] << name
  end
  ret
end
