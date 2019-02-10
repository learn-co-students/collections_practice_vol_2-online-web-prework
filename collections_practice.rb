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
  stemp = ""
  a_ct=0 
  b_ct=0 
  c_ct=0 
  p "keys length: #{keys.length}"
  p "data length: #{data.length}" 
  
  p data[a_ct].keys[0]
  p data[a_ct]["blake"]
  p keys[a_ct][:first_name]
   
  #while a_ct < keys.length
    
    #if keys[a_ct][:first_name] = 
        #temp1=
    
  

  
  
  #p keys.merge(data)
   
end    
  




