# write your solution here

test_string = "rhythm"

def pig_latin_translate(str)
  # generate array for all alphabets
  alpha = ('a'..'z').to_a
  # shortcut for converting to vowels into array cos lazy
  vowels = %w[a e i o u]
  consonants = alpha - vowels

  if vowels.include?(str[0])
    str + 'ay'
  elsif consonants.include?(str[0]) && consonants.include?(str[1])
    str[2..-1] + str[0..1] + 'ay'
  elsif consonants.include?(str[0])
    str[1..-1] + str[0] + 'ay'
  else
    str # return unchanged
  end
end

puts pig_latin_translate(test_string)