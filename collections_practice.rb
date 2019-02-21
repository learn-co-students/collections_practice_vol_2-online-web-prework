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

def merge_data
end

def find_cool
end

def organize_schools
end