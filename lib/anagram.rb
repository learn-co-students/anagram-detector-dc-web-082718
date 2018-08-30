require 'pry'

class Anagram

  attr_accessor :word

  def initialize(word)
    @word = word
  end

  def sort_letters(word)
    word.split(//).sort
  end

  def match (anagram_array)

    sorted_self = sort_letters(self.word)
    match_array = []

    anagram_array.each do |mixed_word|
      sorted_mixed_word = sort_letters(mixed_word)
      if sorted_self == sorted_mixed_word
        match_array << mixed_word
      end
    end

    return match_array

  end

end
