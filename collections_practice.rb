require "pry"

def begins_with_r(array)
    array.each do |element|
        if element[0] != "r"
            return false
        end
    end
    return true
end

def contain_a(array)
    return_array = []
    array.each do |element|
        if element.include?("a")
            return_array.push(element)
        end
    end
    return return_array
end

def first_wa(array)
    array.each do |element|
        if element.to_s.include?("wa")
            return element
        end
    end
end

def remove_non_strings(array)
    return array.select {|x| x.is_a?(String)}
end

def count_elements(array)
    array.uniq.map do |word| #once iteration is complete, .uniq will return an array which removes duplicates
        word[:count] = array.count(word) #this line adds :count to the hash
        word #this line ensures the actual entire hash gets returned at the end
    end
end    

def merge_data(keys, data)
    return_array = []
    data.each do |hash|
        hash.each do |name, value|
            keys.each do |key|
                if key.values[0] == name
                    return_array.push(key.merge(value))
                end
            end
        end
    end
    return_array
end

def find_cool(cool)
    cool_hash = []
    cool.each do |element|
        element.each do |attribute, value|
            if value == "cool"
                return cool_hash.push(element)
            end
        end
    end
end

def organize_schools(schools)
    organized_schools = {}
    schools.each do |school_name, data|
        data.each do |location_symbol, location|
            #binding.pry
            if organized_schools[location] == nil
                organized_schools[location] = []
                organized_schools[location].push(school_name)
            else
                organized_schools[location].push(school_name)
            end
        end
    end
    organized_schools
end