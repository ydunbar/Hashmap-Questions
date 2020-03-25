def intersection(list1, list2)
  intersect = []
  list1.each do |num|
    list2.each do |num2|
      if num == num2
        intersect << num
      end
    end
  end
  return intersect
end