require 'pry'
def begins_with_r(array)
array.all?{|word|   word.include?('r')}

end
def contain_a(array)
array.keep_if {|v|  v.include?('a')}
end

def first_wa(arr)
  arr.detect{ |a|    a.match(/wa/) }
end
def remove_non_strings(arr)
arr.keep_if { |obj| (obj.is_a? String) }
end

def count_elements(arr)
arr.group_by(&:itself)
 .map{|k, v| k.merge(count: v.length) }

end
def merge_data(keys,data)

  keys.map do |name|
      a={}
      first_name=name[:first_name]
    data[0].map do  |k,v|
      if   first_name==k
          a=v
      a[:first_name]= first_name

    end
      end
  a
  end
end

def find_cool(cool)
a=[]
 a<<cool[1]
end
def organize_schools(schools)
  h = {}
    schools.map do |k,v|
      location=v[:location]
      school_name =k
      if location =="NYC"
        binding.pry
        h[location] << school_name

        elsif   location =="SF"
            h[location] << school_name
            else   location =="Chicago"
                h[location] << school_name
              end
            end
            h
end
