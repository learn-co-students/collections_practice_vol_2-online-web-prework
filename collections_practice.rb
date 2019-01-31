def begins_with_r (tools)
  tools.each do |tool|
    if tool.first!='r'
      return true
    end
  end
  return true
end
