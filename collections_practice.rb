require 'pry'

def begins_with_r(arr)
  arr.all? {|word| word[0] == "r"}
end

def contain_a(arr)
  arr.map {|word| word if word.include?("a")}.compact
end

def first_wa(arr)
  arr.find {|word| word[0, 2] == "wa"}
end

def remove_non_strings(arr)
  arr.map {|item| item if item.class == String}.compact
end

def count_elements(arr)
  ref_arr = []
  arr.each {|hsh| ref_arr << hsh if ref_arr.include?(hsh) == false}
  ref_arr.each {
    |item| counter = arr.count(item)
    item[:count] = counter
  }
end

def merge_data(set1, set2)
  merged_arr = [] 
  set2.each { |hsh2|
    hsh2.each { |key, info|
      set1.each { |hsh1|
        hsh1.each { |k, v|
          if v == key
            info[k] = v
            merged_arr << info
          end
        }
      }
    }
  }
  merged_arr
end

def find_cool(arr)
  cool = []
  arr.each { |hsh|
    hsh.each { |k, v|
      if k == :temperature && v == "cool"
        cool << hsh
      end
    }
  }
  cool
end

def organize_schools(school_list)
  answer = {}
  school_list.each { |school, loc|
    loc.each { |k, v|
      answer[v] ||= []
      answer[v] << school
    }
  }
  answer
end

 #   
  #    "flatiron school bk" => {
   #     :location => "NYC"
#      },
#      "flatiron school" => {
 #       :location => "NYC"
  #    },
   #   "dev boot camp" => {
    #    :location => "SF"
     # "dev boot camp chicago" => {
      #  :location => "Chicago"
#      },
 #     "general assembly" => {
  #      :location => "NYC"
   #   },
    #  "Hack Reactor" => {
     #   :location => "SF"
      #}
#    }