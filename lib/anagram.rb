require "pry"

class Anagram

  def initialize(word)
    @word = word
  end

  def match(possibles)
    possibles.select do |phrase|
      phrase.split("").sort == @word.split("").sort
    end
  end

end
