# your code goes here
def begins_with_r(array)
  array.all? {|word| word.start_with?('r')}
end

def contain_a(array)
  array.select {|word| word.include?('a')}
end

def first_wa(array)
  array.find {|word| word.to_s.start_with?('wa')}
end

def remove_non_strings(array)
    array.delete_if {|word| word.class != String}
end

def count_elements(array)
#using enumerable #group_by
  array.group_by(&:itself).map{|key, value| key.merge(count: value.length)}

#using a counting hash
  #array.each_with_object(Hash.new(0)) { |k,v| v[k[:name]] += 1 }.
  #  map { |name, count| { :name=>name, :count=>count } }
end

def merge_data(keys, data)
    data[0].values.map.with_index {|v, i| keys[i].merge(v)}
end

def find_cool(array)
    array.select {|temp| temp if temp.has_value?("cool") }
end

#let(:schools) {
#  {
#    "flatiron school bk" => {
#      :location => "NYC"
#    },
#    "flatiron school" => {
#      :location => "NYC"
#    },
#    "dev boot camp" => {
#      :location => "SF"
#    },
#    "dev boot camp chicago" => {
#      :location => "Chicago"
#    },
#    "general assembly" => {
#      :location => "NYC"
#    },
#    "Hack Reactor" => {
#      :location => "SF"
#    }
#  }
#}

def organize_schools(schools)
  schools_by_location = {}

    schools.collect {|key, value| schools_by_location[value[:location]] = []}
    schools_by_location.each {|key, value| schools.each {|k1,v1| if key == v1[:location] then value << k1  end}}
end
