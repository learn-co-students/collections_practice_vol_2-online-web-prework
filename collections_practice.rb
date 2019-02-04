def begins_with_r(array)
  word_with_r = true
  array.each do |word|
    if word.start_with?("r")
       word_with_r = true
     else
       word_with_r = false
      end
    end
    word_with_r
end


def contain_a(array)
  element_starting_with_a = []
  array.each do |word|
    if word.include?("a") || word.is_a?(String)
      array.push(word)
    end
  end
  element_starting_with_a
end
