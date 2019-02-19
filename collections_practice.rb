# your code goes here
def begins_with_r(tools)
  tools.all? { |word| word.downcase.chr == "r"}
end
