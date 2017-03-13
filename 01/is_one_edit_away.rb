# Given two functions, implement an algorithm to check if they are one edit (or zero edits) away. Three types of edits that can be performed on strings: replacement, insertion, removal

=begin
# Solution 1, followed the steps in the book
def is_one_edit_away?(string1, string2)
  # use length to check which of the three types are done
  if string1.length == string2.length
    is_oneEditReplace?(string1, string2)
  elsif (string1.length + 1) == string2.length
    # puts "first one"
    is_oneEditInsert?(string1, string2)
  elsif (string1.length - 1) == string2.length
    # puts "second one"
    is_oneEditInsert?(string2, string1)
  else
    return false
  end
end

def is_oneEditReplace?(string1, string2)
  # puts "one edit replace"
  found_difference = false
  string1.length.times do |i|
    if string1[i] != string2[i]
      if found_difference
        return false
      end
      found_difference = true
    end
  end
  return true
end

# string1 is shortest string
def is_oneEditInsert?(string1, string2)
  # puts "one edit insert"
  # puts string1, string2
  index1 = 0
  index2 = 0

  while (index1 < string1.length && index2 < string2.length)
    # puts "#{string1[index1]} vs #{string2[index2]}"
    if string1[index1] != string2[index2]
      # puts "not equal"
      if index1 != index2
        return false
      end
      index2 += 1
    else
      # puts "equal"
      index1 += 1
      index2 += 1
    end
  end
  return true
end
=end

# Solution 2, followed the steps in the book but added a check if the both strings are the same to begin with
def is_one_edit_away?(string1, string2)
  # check length
  if(((string1.length - string2.length).abs) > 1 || string1 == string2)
    return false
  end

  index1 = 0
  index2 = 0

  found_difference = false

  # first string should be shorter
  s1 = string1.length < string2.length ? string1 : string2
  s2 = string1.length < string2.length ? string2 : string1

  while(index1 < s1.length && index2 < s2.length)
    if(s1[index1] != s2[index2])
      if (found_difference)
        return false
      end
      found_difference = true
      # if not matching but same lengths, move pointer for shorter string
      if(s1.length == s2.length)
        index1 += 1
      end 
    else
      # if matching, move pointer for shorter string
      index1 += 1
    end
    # always move pointer for the longer string
    index2 += 1
  end
  return true
end

puts is_one_edit_away?("ale", "pale")   # true
puts is_one_edit_away?("pale", "pale")  # false
puts is_one_edit_away?("pale", "pie")   # false
puts is_one_edit_away?("pales", "pale") # true
puts is_one_edit_away?("pale", "bale")  # true
puts is_one_edit_away?("pale", "bae")   # false
puts is_one_edit_away?("pale", "bales") # false
puts is_one_edit_away?("pale", "bate") # false
