def begins_with_r(array)
  array.all?{|item| item.start_with?("r")}
end

def contain_a(array)
  array.find_all{|item| item.include?("a")}
end

def first_wa(array)
  array.keep_if{|item| item.is_a? String}
  array.find{|item| item.start_with?("wa")}
end

def remove_non_strings(array)
  array.keep_if{|item| item.is_a? String}
end

def count_elements(array)
  array.uniq.collect do |item|
    item[:count] = array.count(item)
    item
  end
end

def merge_data(keys, data)
  keys.map do |key|
    key.merge(data[0][key[:first_name]].to_h)
  end
end

def find_cool(array)
  array.select { |item| item[:temperature] == "cool" }
end

def organize_schools(schools)
  answer = Hash.new
  schools.each do |school, data|
    data.each do |key, value|
      if key == :location
        !answer.keys.include?(value) ? answer[value] = [school] : answer[value] << school
      end
    end
  end
  answer
end