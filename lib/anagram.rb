# Your code goes here!
class Anagram

  attr_accessor :word

  def initialize(word)
    @word = word
  end

  def match(some_words)
    sorted_words = []
    sorted_anagram_word = @word.chars.sort(&:casecmp).join
    some_words.each do |element|
      sorted_element = element.chars.sort(&:casecmp).join
      if sorted_element == sorted_anagram_word
        sorted_words << element
      end
    end
    sorted_words.uniq
  end
end
