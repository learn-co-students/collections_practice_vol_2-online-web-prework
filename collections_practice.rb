require "pry"
# your code goes here
def begins_with_r(array)
  array.all? do |word|
    word[0] == "r"
  end 
end 

def contain_a(array)
  array.select do |word|
    word.include?("a")
  end
end

def first_wa(array)
  array.find do |word|
    word[0,2] == "wa"
  end 
end

def remove_non_strings(array)
  array.delete_if do |word|
    word.is_a?(String) == false
  end 
end

def count_elements(array)
  #array = [{:name => "blake"}, {:name => "blake"}, {:name => "ashley"}]
  #method expects to be returned [{:name => "blake", :count => 2}, {:name => "ashley", :count => 1}]
  array.uniq.collect do |element|
    element[:count] = array.count(element)
    element 
  end 
end

def merge_data(keys, data)
  keys.collect do |hash|
    attributes = data.find {|h| h[hash[:first_name]]}[hash[:first_name]]
    attributes.each {|key, value| hash[key] = value }
    hash
  end 
  
end

def find_cool(hash)
  hash.select do |i|
    i.any? {|k,v| v == "cool"}
  end
end

# let(:schools) {
#     {
#       "flatiron school bk" => {
#         :location => "NYC"
#       },
#       "flatiron school" => {
#         :location => "NYC"
#       },
#       "dev boot camp" => {
#         :location => "SF"
#       },
#       "dev boot camp chicago" => {
#         :location => "Chicago"
#       },
#       "general assembly" => {
#         :location => "NYC"
#       },
#       "Hack Reactor" => {
#         :location => "SF"
#       }
#     }
#   }
#   let(:organized_schools) {
#     {"NYC"=>["flatiron school bk", "flatiron school", "general assembly"],
#     "SF"=>["dev boot camp", "Hack Reactor"],
#     "Chicago"=>["dev boot camp chicago"]}
#   }

def organize_schools(hash)
  location = {}
  hash.each do |school, location_hash|
    key = location_hash[:location]
    # if location[key] == nil 
    #   location[key] = []
    # end 
    location[key] ||= []
    location[key] << school 
  end 
    
  location

end