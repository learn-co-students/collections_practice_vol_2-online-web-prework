require 'pry'

def begins_with_r(args)
  r_count = 0
  args.each {|arg|
    if arg[0] == "r"
      r_count += 1
    end
    #binding.pry
  }
  if r_count == args.length
    true
  else
    false
  end
end

#####
#####

def contain_a(args)
  words_with_a = []
  args.each {|arg|
    if arg.downcase.include?("a")
      words_with_a << arg
    end
  }
  words_with_a
end

#####
#####

def first_wa(args)
  #loop through the array, find the first word that starts with "wa" and return it
  word = []
  word = args.find {|arg|
    arg[0..1].downcase == "wa"
  }
  word.to_s
end

#####
#####

def remove_non_strings(args)
  args.select {|arg|
    arg.is_a?(String) == true
  }
end

#####
#####

def count_elements(args)
  element_count = 0
  new_array = args.uniq
  new_array.each {|u_arg|
    args.each {|arg|
      if arg == u_arg
        element_count += 1
      end
    }
    u_arg[:count] = element_count
    element_count = 0
  }
  new_array
end

#####
#####


ashley_data =

          {
                 :name => "ashley",
          :temperature => "sort of cool"
      }

blake_data =
          {
                 :name => "blake",
          :temperature => "cool"
      }

data_set = [ashley_data, blake_data]

###
###

def merge_data(keys, data)
  new_hash = {}
  name_data_array = []

  keys.each {|key_name|
  # name = name key hash
    key_name.each {|first_name_key, first_name|
      # key = :first_name
      data.each {|person|
      # person = person data hash within array
        person.each {|stat_hash_key, stats|
        # individual person hash
        if stat_hash_key == first_name
          new_hash = stats
          new_hash[first_name_key] = first_name
          name_data_array << new_hash
        end
        }
      }
    }
  }

  name_data_array
end

#####
#####

def find_cool(cool)
  new_array = []
  cool.each {|element|
    if element[:temperature] == "cool"
        new_array = [element]
    end
  }
  new_array
end

#####
#####


def organize_schools(schools)
  location_array = []
  school_array = []
  new_hash = {}

  #take all possible locations and turn them into an array
  schools.each {|school, location|
    location_array << location[:location]
  }

  #remove duplicates to get a list of unique values
  location_array.uniq!

  # for each unique value, assemble an array of the keys within the hash that contain that value
  location_array.each {|location|
    schools.each {|school, locale|
      if location == locale[:location]
        school_array << school
      end
    }
    new_hash[location] = school_array
    school_array = []
  }

  new_hash
end
