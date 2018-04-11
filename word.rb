# write your solution here

test_string1 = "egg"
test_string2 = "inbox"
test_string3 = "eight"
test_string4 = "happy"
test_string5 = "duck"
test_string6 = "glove"
test_string7 = "yellow"
test_string8 = "rhythm"
test_string9 = "queen"
test_string10 = "squeal"

def pig_latin_translate(str)
  # generate array for all alphabets
  alpha = ('a'..'z').to_a
  # shortcut for converting to vowels into array cos lazy
  vowels = %w[a e i o u]
  consonants = alpha - vowels

  if vowels.include?(str[0])
    str + 'ay'
  elsif consonants.include?(str[0]) && consonants.include?(str[1]) && vowels.include?(str[2])
    str[3..-1] + str[0..2] + 'ay'
  elsif consonants.include?(str[0]) && consonants.include?(str[1])
    str[2..-1] + str[0..1] + 'ay'
  elsif consonants.include?(str[0]) && vowels.include?(str[1])
    str[2..-1] + str[0..1] + 'ay'
  elsif consonants.include?(str[0])
    str[1..-1] + str[0] + 'ay'
  # elsif consonants.include?(str[0]) && consonants.include?(str[1]) && vowels.include?(str[2])
  #   str[3..-1] + str[0..2] + 'ay'
  else
    str # return unchanged
  end
end

puts pig_latin_translate(test_string1)
puts pig_latin_translate(test_string2)
puts pig_latin_translate(test_string3)
puts pig_latin_translate(test_string4)
puts pig_latin_translate(test_string5)
puts pig_latin_translate(test_string6)
puts pig_latin_translate(test_string7)
puts pig_latin_translate(test_string8)
puts pig_latin_translate(test_string9)
puts pig_latin_translate(test_string10)