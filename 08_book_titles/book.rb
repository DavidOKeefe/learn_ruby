class Book
  EXCEPTIONS = %w(a an and in of the)
  attr_reader :title

  def title=(title)
    @title = titleize(title)
  end

  private
  def titleize(title)
    titleized_sentence = []
    title.split.map do |word|
      if EXCEPTIONS.include?(word)
        titleized_sentence << word.downcase
      else
        titleized_sentence << word.capitalize
      end
    end
    titleized_sentence[0].capitalize!
    titleized_sentence.join(' ')
  end
end
