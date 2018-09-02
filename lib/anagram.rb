# Your code goes here!
require 'pry'

class Anagram
 attr_accessor :word

 def initialize(word)
   @word = word
 end

 def match(array_of_words)
   empty_array = []
   array_of_words.find_all do |x|
     if x.split("").sort == self.word.split("").sort
      x
     end
   end
 end

end
