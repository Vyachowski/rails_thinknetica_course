vowels = ['a', 'e', 'i', 'o', 'u']
vowels_with_position_in_alphabet = {}
alphabet_start_index = 'a'.ord - 1

vowels.each do |vowel|
  vowels_with_position_in_alphabet[vowel] = vowel.ord - alphabet_start_index
end

puts vowels_with_position_in_alphabet