# Your code goes here!

require 'pry'

class Anagram

  attr_accessor :word

  def initialize(word)
    @word = word
  end

  def match(match_words)
    match_words.collect do |match_word|
      if sorter(match_word) == sorter(@word)
        match_word
      end
    end.compact
  end

  # Accepts a word and returns a sorted array of letters
  def sorter(sortable_word)
    sortable_word.split("").sort
  end
end
