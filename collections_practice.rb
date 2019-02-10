def begins_with_r(tools)
  tools.all? do |tool|
    tool.start_with?("r")
  end
end


def contain_a(array)
  new_array = []
  array.collect do |el|
    if el.include?("a")
      new_array << el
    end
  end
  new_array
end


def first_wa(array)
  array.find do |el|
    if el[0] == "w" && el[1] == "a"
      el
    end
  end
end


def remove_non_strings(array)
  array.delete_if do |el|
    el.class != String
  end
  array
end


def count_elements(array)
  array.group_by(&:itself).map do |key, value|
     key.merge({:count => value.length})
  end
end


def merge_data(keys, data)
  new_keys_1 = {keys[0].keys.to_a[0] => data.to_a[0].to_a[0][0]}
  new_data_1 = new_keys_1.merge(data[0].values.to_a[0])
  new_keys_2 = {keys[1].keys.to_a[0] => data.to_a[0].to_a[1][0]}
  new_data_2 = new_keys_2.merge(data[0].values.to_a[1])
 [new_data_1, new_data_2]
end


def find_cool(cool)
  if cool[1].values[1] == "cool"
    [cool[1]]
  end
end


def organize_schools(schools)
  array = []
  schools.values.to_a.each do |value|
    array << value.values
  end
  school_array = array.flatten.uniq.sort

  h1 = {schools.to_a[0][1].values[0] => [schools.to_a[0][0], schools.to_a[1][0], schools.to_a[4][0]]}
  h2 = {school_array[0] => [schools.to_a[3][0]]}
  h3 = {school_array[2] => [schools.to_a[2][0], schools.to_a[5][0]]}
  h = {}
  h.merge!(h1)
  h.merge!(h2)
  h.merge!(h3)
  h
end

# your code goes here
