def echo(word)
  word
end

def shout(word)
  word.upcase
end

def repeat(word, repeat_this_many=2)
  repeated_phrase = []
  repeat_this_many.times { repeated_phrase << word }
  repeated_phrase.join(" ")
end

def start_of_word(word,length)
  result = word.split(//)
  result.take(length).join("")
end

def first_word(words)
  result = words.split
  result.take(1).join("")
end

def titleize(words)
  words_arr = words.split
  mostly_capitalized_words = words_arr.each do |word|
    if lower_case_word?(word)
      word.downcase!
    else
     word.capitalize!
    end
  end

  mostly_capitalized_words.first.capitalize!
  words_arr.join(" ")
end

def lower_case_word?(word)
  (word == "and") || (word == "the") || (word == "over")
end