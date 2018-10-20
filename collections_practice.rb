# your code goes here

def begins_with_r(tools)
  tools.all? do |i| 
    if i[0] == "r"
      true 
    else
      false
    end
  end
end

def contain_a(array)
  out = []
  array.each do |i|
    a = 0
    while a < i.length
      if i[a] == "a"
      out.push(i)
      end
    a += 1
    end
  end
  out
end

def first_wa(array) 
    array.find do |i| 
    if i[0] + i[1] == "wa"
      i
    end
  end
end

def remove_non_strings(array)
  array.delete_if{ |e|
    e.class != String
  }
end
//dsa adas
# def count_elements
# end

# def merge_data
# end

# def find_cool
# end

# def organize_schools
# end
