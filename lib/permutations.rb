def string_intersection(string1, string2)
  intersect = []
  string1.each_char do |letter|
    string2.each_char do |letter2|
      if letter == letter2
        intersect << letter
        # account for double zz in pizza
        string2.delete!(letter2)
      end
    end
  end
  return intersect
end

def permutations?(string1, string2)
  if string1 == string2
    return true
  end
  if string1.length != string2.length
    return false
  end
  if string_intersection(string1, string2).length == string1.length
    return true
  end
  return false
end