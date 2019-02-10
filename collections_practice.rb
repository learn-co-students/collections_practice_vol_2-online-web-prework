def begins_with_r(tools)
  tools.all? {|tool| tool[0]== "r"}
end
  
def contain_a(elements)
  a=0  
  contain_a =[]
  elements.each do |element|
    b=0
    while b < element.length 
      if element[b] == "a"
        contain_a << elements[a]
      end
      b+=1 
    end
    a+=1 
  end
  contain_a 
end

def first_wa(elements)
  a=0 
  while a < elements.length
    elements.each do |element| 
      if element[0..1] == "wa"
        return elements[a]
      end
    a+=1
    end
  end
end

def remove_non_strings(inputs)
  inputs.delete_if {|input| input.class != String}
  return inputs
end 

def count_elements(inputs)
  temp1=[]
  temp2=[]
  ans=[]
  a=0 
  temp1=inputs.uniq 
  while a<temp1.length
    c=0 
    inputs.each do |input|
      if input == temp1[a]
        c+=1 
      end
    end
    temp2[a]=temp1[a].merge({count: c})
    ans << temp2[a]
    a+=1 
  end
  ans
end 

def merge_data(keys, data)
  temp1=[]
  temp2=[]
  temp3=[]
  arr1 = {}
  arr2 = {}
  arr_temp={}
  stemp = ""
  stemp2 = ""
  a_ct=0  
   
  while a_ct < keys.length
    stemp = keys[a_ct][:first_name]
    stemp2 = data[0].keys[a_ct]
    arr1=keys[a_ct]
    arr2=data[0][stemp]
    if stemp == stemp2
      arr2.merge!(arr1)
      temp3 << arr2
    end
    a_ct += 1
  end
  return temp3
end    
  
def find_cool(temp)
  a_ct = 0
  ans = []
  while a_ct < temp.length
    if temp[a_ct][:temperature] == "cool"
      ans << temp[a_ct]
    end
  a_ct += 1 
  end
  ans 
end

def organize_schools(schools)
  arr1 = []
  arr2 = []
  hsh1 = {}
  hsh2 = {}
  a_ct=0
  
  p hsh1 = schools.group_by{|k, v| v}
  p hsh1.keys
  p hsh1.values 
  


end