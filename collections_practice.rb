# your code goes here

def begins_with_r(tools)
    tools.each do |word|
        if word.split('')[0] != 'r'
            return false
        end
    end
    return true
end


def contain_a(arr)
    containsA = []
    arr.each do |word|
        if word.count('a') > 0
            containsA << word
        end
    end
    containsA
end


def first_wa(arr)
    arr.each do |word|
        if word.match('^wa')
            return word
            break
        end
    end
end


def remove_non_strings(arr)
    arr.delete_if do |word|
        word.class != String
    end
end




def count_elements(arr)
    arr.each do |h|
        h[:count] = 0
        name = h[:name]
        arr.each do |hash|
            if hash[:name] == name
                h[:count] += 1
            end
        end
    end.uniq
end


def merge_data(h1,h2)
    merged = []
    h1.each_index do |i|
        h2[0].keys.each do |name|
            merged << h1[i].merge(h2[0][name]) if name == h1[i][:first_name]
        end
    end
    merged
end


def find_cool(cool)
    newcool = cool.select do |thing|
        thing[:temperature] == "cool"
    end
    return newcool
end


def organize_schools(schools)
    orgSchools = {}
    schools.each do |school,loc|
        loc.each do |symb,location|
            if orgSchools[location] == nil
                orgSchools[location] = [school]
            else orgSchools[location] << school
            end
        end
    end
    orgSchools
end


















