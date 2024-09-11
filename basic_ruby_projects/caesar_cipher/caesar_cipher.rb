# Psuedo code:
# 1. Create a method that takes in a string and a shift factor
# 2. Create an array of the alphabet
# 3. Create a variable that will hold the shift factor
# 4. Create a variable that will hold the new string
# 5. Iterate through the string
# 6. Check if the character is a letter
# 7. If it is a letter, find the index of the letter in the alphabet
# 8. Add the shift factor to the index
# 9. If the index is greater than 25, subtract 26 from the index
# 10. Add the new letter to the new string
# 11. If the character is not a letter, add the character to the new string
# 12. Return the new string

def caesar_cipher(string, shift)
  alphabet = ('a'..'z').to_a
  shift_factor = shift % 26
  encrypted_string = ""

  string.each_char do |char|
    if char.match?(/[a-zA-Z]/)
      is_upper = char == char.upcase
      char = char.downcase
      i = alphabet.index(char)
      letter = (i + shift_factor) % 26
      encryption = alphabet[letter]
      encryption.upcase! if is_upper
      encrypted_string << encryption
    else
      encrypted_string << char
    end
  end

  encrypted_string
end

# TESTS
puts caesar_cipher("Hello, World!", 5)  # Should print "Mjqqt, Btwqi!"
puts caesar_cipher("def", -3)  # Print "abc"
