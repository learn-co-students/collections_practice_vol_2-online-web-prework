# your code goes here
# Question 1
def begins_with_r(array) 
  array.all? { |x| x[0]=='r' || x[0]=='R'}
end 

# Question 2
def contain_a(array)
  array.select { |str| str.include?('a') }
end 

# Question 3 
def first_wa(array) 
  array.find { |x| x[0]=='w' && x[1]=='a' }
end 

# Question 4
def remove_non_strings(array) 
  array.select { |x| x.class==String }
end 

# Question 5
#expect(count_elements([{:name => "blake"}, {:name => "blake"}, {:name => "ashley"}])).to eq([{:name => "blake",  :count => 2}, {:name => "ashley", :count => 1}])

def count_elements(array_objs)
  
  if array_objs.length == 0 
    return {}
  else
    count_obj = {}
    #use each to iterate through the array array_objs
    array_objs.each do |x|
      if count_obj[x[:name]] == nil
        count_obj[x[:name]] = 1 
      else 
        count_obj[x[:name]] += 1 
      end 
    end  
  end  
  #count_obj = {"blake"=>2, "ashley"=>1}
  output_arr = []
  output = count_obj.each do |key, val| 
    obj = {}
    obj[:name] = key
    obj[:count] = val
    output_arr.push(obj)
  end
  output_arr
end 

# Question 6
#keys = [ {:first_name => "blake"}, {:first_name => "ashley"} ]

#data = [ {
 #         "blake" => {:awesomeness => 10, :height => "74", :last_name => "johnson" },
 #         "ashley" => {:awesomeness => 9, :height => 60, :last_name => "dubs"}
#        } ]

#merge_data = [ 
#               {:first_name => "blake",:awesomeness => 10,:height => "74",:last_name => "johnson"},
#               {:first_name => "ashley",:awesomeness => 9,:height => 60,:last_name => "dubs"}
#             ]

def merge_data(keys, data)
  output = keys.map do |k|
    data[0].map do |data_key, data_value|
      if k[:first_name] == data_key
        k.merge(data_value)
      end   
    end 
  end
  output.each {|x| x.delete(nil)}.flatten
end 

# Question 7
#expect(find_cool(cool)).to eq([{:name => "blake",:temperature => "cool"}])
# cool = [
#            {
#                   :name => "ashley",
#            :temperature => "sort of cool"
#        },
#            {
#                   :name => "blake",
#            :temperature => "cool"
#        }
#    ]

def find_cool(cool)
  output = cool.select do |x| 
    x[:temperature] == "cool"
  end
  output 
end 

# Question 8
schools = {
      "flatiron school bk" => {
        :location => "NYC"
      },
      "flatiron school" => {
        :location => "NYC"
      },
      "dev boot camp" => {
        :location => "SF"
      },
      "dev boot camp chicago" => {
        :location => "Chicago"
      },
      "general assembly" => {
        :location => "NYC"
      },
      "Hack Reactor" => {
        :location => "SF"
      }
  }
  
#organize_schools = {"NYC"=>["flatiron school bk", "flatiron school", "general assembly"],
#                    "SF"=>["dev boot camp", "Hack Reactor"],
#                    "Chicago"=>["dev boot camp chicago"]
#                   }

def organize_schools(schools)
  nyc_arr = []
  sf_arr = []
  chicago_arr = []
  schools.each do |school_key, school_value| 
    school_value.each do |location_key, location_value| 
      if location_value=="NYC" 
        nyc_arr.push(school_key) 
      elsif location_value=="SF" 
        sf_arr.push(school_key)
      elsif location_value=="Chicago" 
        chicago_arr.push(school_key)
      end
    end 
  end
  return {"NYC"=>nyc_arr, "SF"=>sf_arr, "Chicago"=>chicago_arr}
end 
