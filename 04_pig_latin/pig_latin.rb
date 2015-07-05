COMMON_VOWELS = ['a','e','i','o','u']
PIG_LATIN_IFY = 'ay'

def translate(sentence)
  words = sentence.split(" ")
  pigify_all_words(words).join(" ")
end

private

def pigify_all_words(words)
  words.map do |word|
    pigify_word(word)
  end
end

def pigify_word(word)
  letters = word.split("")
  until word_beings_with_vowel?(letters)
    move_consonant_to_end(letters)
  end
  letters.join("") << PIG_LATIN_IFY
end

def word_beings_with_vowel?(letters)
  first_letter = letters[0]
  COMMON_VOWELS.include?(first_letter)
end

def move_consonant_to_end(letters)
  if word_starts_with_qu?(letters)
    2.times { move_first_to_last_letter(letters) }
  else
    move_first_to_last_letter(letters)
  end
end

def word_starts_with_qu?(letters)
  letters[0..1].join("") == 'qu'
end

def move_first_to_last_letter(letters)
  letters << letters.shift
end