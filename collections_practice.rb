def begins_with_r(array)
    array.all? do |e|
      e.start_with?("r")
  end
end

def contain_a(array)
  array.select do |item|
    item.include?("a")
end
end

def first_wa(array)
  array.find do |elem|
  if (elem.is_a? String) && (elem.start_with?("wa"))
    return elem
    end
  end
end

def remove_non_strings(array)
  array.delete_if do |elem|
    (elem.is_a? String) == false
  end
end


def count_elements(array)
  array.uniq.each {|i| count = 0
         array.each {|i2| if i2 == i then count += 1 end}
         i[:count] = count}
 end


 def merge_data(keys, data)
   merged = []
   keys.each {|i| data.first.map {|k,v| if i.values[0] == k then merged << i.merge(v) end}}
   merged
 end

  def find_cool(cool)
     cool.select {|i| i.any? {|k,v| v == "cool"}}
 end


  def organize_schools(array)
    locations = {}
    array.collect {|k,v| locations[v[:location]] = []}
    locations.each {|k,v| array.each {|k1,v1| if k == v1[:location] then v << k1  end}}
end

=begins
1) collections practice vol 2. #organize_schools organizes the schools by location
     
       expected: {"Chicago"=>["dev boot camp chicago"], "NYC"=>["flatiron school bk", "flatiron school", "general assembly"], "SF"=>["dev boot camp", "Hack Reactor"]}
            got: [["Hack Reactor", {:location=>"SF"}], ["dev boot camp", {:location=>"SF"}], ["dev boot camp chicago",...tion=>"NYC"}], ["flatiron school bk", {:location=
>"NYC"}], ["general assembly", {:location=>"NYC"}]]
       (compared using ==)
       Diff:
       @@ -1,4 +1,7 @@
       -"Chicago" => ["dev boot camp chicago"],
       -"NYC" => ["flatiron school bk", "flatiron school", "general assembly"],
=end
