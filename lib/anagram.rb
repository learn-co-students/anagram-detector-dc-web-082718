# Your code goes here!
class Anagram
  attr_accessor :base_word
  def initialize(word)
    @base_word = word
  end

  def match(array_of_words)
    @anagrams = []
    array_of_words.each do |word|
      if @base_word.split("").sort == word.split("").sort
        @anagrams << word
      end
    end
    @anagrams
  end
end
