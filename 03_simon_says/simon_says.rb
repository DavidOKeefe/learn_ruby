def echo(word)
  word
end

def shout(x)
  x.upcase
end

def repeat(word, repeat_this_many=2)
  repeated_phrase = []
  repeat_this_many.times { repeated_phrase << word }
  repeated_phrase.join(" ")
end

def start_of_word(x,y)
  result = x.split(//)
  result.take(y).join("")
end

def first_word(x)
  result = x.split
  result.take(1).join("")
end

def titleize(x)
  words = x.split
  mostly_capitalized_words = words.each do |word|
    if lower_case_word?(word)
      word.downcase!
    else
     word.capitalize!
    end
  end

  mostly_capitalized_words.first.capitalize!
  words.join(" ")
end

def lower_case_word?(word)
  (word == "and") || (word == "the") || (word == "over")
end