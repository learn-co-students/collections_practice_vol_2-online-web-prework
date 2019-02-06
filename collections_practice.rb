require 'pry'
def begins_with_r(words)
  words.all? {|word| word.start_with?("r")}
#end
 #end
end 

def contain_a(array)
  array.select { |word| word.include?("a") }
#review array(name?) return all elements that contain the letter "a".
end

def first_wa(array)
 #string = ""
 #string << array.to_s
 # binding.pry
 array.detect do |word| 
  word.to_s.start_with?("wa")
 end
end
#word
#end
  #if words.first == "r" 
  #if words.start_with?("r")
  #   puts true
  #else false
  #end
 
#words.detect{|i| i.start_with?("wa")}
####words.all? {|word| word.start_with?("wa")}

def remove_non_strings(array)
#if .class !== string delete
array.delete_if { |obj| !(obj.is_a? String) }
#array.grep(String)
end

def count_elements(arr)
arr.each_with_object(Hash.new(0)) { |g,h| h[g[:name]] += 1 }.
    map do |name, count| 
   { :name=>name, :count=>count } 
end
end

def merge_data(keys,data)
# data[0].values.map.with_index {|v, i| keys[i].merge(v)}
  data[0].values.map.with_index do |v, i| 
    keys[i].merge(v)
  end
#combines two nested data structures into one (FAILED - 1)
end

def find_cool(cool)
 coolington = cool.detect do |n|
  n[:temperature] == "cool"
#binding.pry
 end   
 [coolington]
end
#each << shovel matching values into an array and return new array
 # cool[1]
#     if status == "cool"
#  .map do |label,status|
#   [:temparature] == "cool"

   #end

=begin
keys
=> [{:first_name=>"blake"}, {:first_name=>"ashley"}]
data
=> [{"blake"=>{:awesomeness=>10, :height=>"74", :last_name=>"johnson"},
  "ashley"=>{:awesomeness=>9, :height=>60, :last_name=>"dubs"}}]
=end

def organize_schools(schools)
 hash = {}
 schools.each do |name,info|
  locations = info[:location]
    if hash[locations]
#binding.pry
    hash[locations]<< name
else
  hash[locations] = []
  hash[locations]<< name
  end
 end
 hash
end
#       expected: {"Chicago"=>["dev boot camp chicago"], "NYC"=>["flatiron school bk", "flatiron school", "general assembly"], "SF"=>["dev boot camp", "Hack Reactor"]}
 #           got: {"Hack Reactor"=>{:location=>"SF"}, "dev boot camp"=>{:location=>"SF"}, "dev boot camp chicago"=>{:lo...:location=>"NYC"}, "flatiron school bk"=>{:location=>"NYC"}, "general assembly"=>{:location=>"NYC"}}
  
     #if hashes have the same value==> merge their keys? OR ==>shovel their value into an hash
     ###if info{=> == "NYC"} shovel into a hash
     
      
#organize_schools organizes the schools by location

