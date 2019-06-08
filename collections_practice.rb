# your code goes here
require 'pry'

def begins_with_r(tools)
  tools.each_with_index do |item|
    return false if !item.start_with?('r')
  end
  true
end

def contain_a(tools)
  result = []
  tools.each do |item| 
    if item.include? 'a'
      result << item
    end
  end
  result
end


def first_wa(tools)
  tools.each_with_index do |item|
    return item if item.to_s.start_with?('wa')
  end
end

def remove_non_strings(tools)
  result = []
  tools.each do |item|
    if item.is_a? String
      result << item
    end
  end
  result
end
# [{:name => "blake", :count => 2}, {:name => "ashley", :count => 1}]
def count_elements(tools)
  result = []
  # unique tools array duplicate removed
  my_uniq = tools.uniq
  # Iterate over my unique array
  my_uniq.each do |item|
    item[:count] =  tools.count(item)
    result << item
  end
  result
end


# def merge_data(arg1, arg2)
#   result = []
#   # Iterate over arg1 array
#   arg1.each do |arg1_info|
#     # Iterate over the arg1_info hash
#     arg1_info.each do |arg1_key, arg1_value|
#       # Iterate over arg2 array  
#       arg2.each do |arg2_info|
#         # if arg1_info value == arg2_key
#           # insert merged hashes into result array
#           if arg1_info[arg1_key] == arg2_key
#             result << arg2_value.merge(arg1_info)
#             # binding.pry
#           end
#         end
#       end
#     end
#   end
#   result
# end


def merge_data(arg1, arg2)
  result = []
  arg1.each do |arg1_info|
    arg1_info.each do |arg1_key, arg1_value|
      arg2.each do |arg2_info|
        arg2_info.each do |arg2_key, arg2_value|
          if arg1_info[arg1_key] == arg2_key
            result << arg2_value.merge(arg1_info)
          end
        end
      end
    end
  end
  result
end

def find_cool(arg)
  result = []
  arg.each do |item|
    result << item if item.values.include?('cool')
  end
  result
end

def organize_schools(arg)
  result = {}
  # result with locations array
  arg.each do |school, loc|
    loc.each do |loc_key, name|
      result[name] = []
    end
  end
  
  # Operate on result hash
  # Insert organize by location
    # result with locations array
  arg.each do |school, loc|
    loc.each do |loc_key, name|
      result[name] << school
    end
  end
  result
end