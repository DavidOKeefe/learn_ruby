COMMON_VOWELS = ['a','e','i','o','u']
PIG_LATIN_IFY = 'ay'

def is_vowel?(letter)
  COMMON_VOWELS.include?(letter)
end

def start_word_with_vowel (split_word)
  split_word.insert(-1,split_word.delete_at(0))
end

def translate (words)
  unique_words = words.split(" ")
  updated_words = unique_words.map do |word|
    split_word = word.split("")
    until is_vowel?(split_word[0]) == true
      if split_word[0..1].join("") == 'qu'
        2.times {start_word_with_vowel(split_word)}
      else
        start_word_with_vowel(split_word)
      end
    end
    split_word.join("") << PIG_LATIN_IFY
  end
  updated_words.join(" ")
end