def palindrome_permutation?(string)
  return true if string == ""
  letters_count = Hash.new(0)
  letters = string.split("")
  letters.each do |letter|
    letters_count[letter] += 1
  end
  not_pairs = 0
  letters_count.each do |key, value|
    if value % 2 > 0
      not_pairs += 1
    end
  end
  return not_pairs < 2
end