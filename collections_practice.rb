require "pry"

def begins_with_r(stringArray)
  
  test = []
  stringArray.each {|string|
    test << string.start_with?('r')
  }
  if test.include?(false)
    return false
  else
    return true
  end
end

def contain_a(stringArray)
  stringArray.map{|string|
    string if string.include?("a")
  }.compact
end

def first_wa(array)
  array.each {|item|
    if item.to_s.start_with?("wa")
      return item
    end
  }
end  

def remove_non_strings(array)
    array.keep_if{|item|
      item.is_a?(String)
    }
end

def count_elements(array)

  array.uniq.map {|item|
    countsObj = {}
    countsObj[:count] = array.count(item)
    countsObj[:name] = item[:name]
    countsObj
  }

end

def merge_data(keys, data)
  dataIndex = 0
  data[dataIndex].values.map.with_index {|v, i| keys[i].merge(v)}
end

def find_cool(cool)

  cool.select{ |key, hash| key[:temperature] == "cool" }

end

def organize_schools(schools)
# schools = 
# {"flatiron school bk"=>{:location=>"NYC"},
# "flatiron school"=>{:location=>"NYC"},
# "dev boot camp"=>{:location=>"SF"},
# "dev boot camp chicago"=>{:location=>"Chicago"},
# "general assembly"=>{:location=>"NYC"},
# "Hack Reactor"=>{:location=>"SF"}}
  
# expects 
  
# {"Chicago"=>["dev boot camp chicago"], "NYC"=>["flatiron school bk", "flatiron school", "general assembly"], "SF"=>["dev boot camp", "Hack Reactor"]}
  
  byLocations = {}
  location_array = []
  
  location_array = schools.collect {|name, location| 
    schools[name][:location]
  }.uniq.sort
  
  
  location_array.each { |item|
    byLocations[item]  = schools.collect {|name, location|
      if schools[name][:location] == item
        name
      end
    }.compact
    
  }
  
  byLocations
end