# Pseudo code
# 1. Create a method called substrings that takes a word as the first argument and a dictionary as the second argument.
# 2. The method should return a hash listing each substring that was found in the original string and how many times it was found.
# 3. The method should be case insensitive.
def substrings(word, dictionary)
  word = word.downcase
  dictionary = dictionary.map(&:downcase)
  substrings = {}

  dictionary.each do |d|
    substrings[d] = word.scan(d).length if word.include?(d)
  end

  substrings
end

# TESTS CASES
dictionary = %w[below down go going horn how howdy it i low own part partner sit]
puts substrings('below', dictionary)

# Expected output
# {"below"=>1, "down"=>1, "go"=>1, "going"=>1, "how"=>1, "howdy"=>1, "it"=>1, "i"=>1, "low"=>1, "own"=>1, "part"=>1, "partner"=>1, "sit"=>1}

the_office = %w[ michael scott dwight jim pam ryan andy kevin angela oscar meredith michael ]
puts substrings('michael scott dwight jim pam ryan andy kevin angela oscar meredith michael jim pam pam pam', the_office)

# Expected output
# {"michael"=>2, "scott"=>1, "dwight"=>1, "jim"=>2, "pam"=>4, "ryan"=>1, "andy"=>1, "kevin"=>1, "angela"=>1, "oscar"=>1, "meredith"=>1}

cool_movies = %w[ interestellar dark_knight lalaland the_social_network oppenheimer whiplash lalaland lalaland charade charade ]
puts substrings('interestellar dark_knight lalaland the_social_network oppenheimer whiplash lalaland lalaland charade charade', cool_movies)

# Expected output
# {"interestellar"=>1, "dark_knight"=>1, "lalaland"=>3, "the_social_network"=>1, "oppenheimer"=>1, "whiplash"=>1, "charade"=>2}
