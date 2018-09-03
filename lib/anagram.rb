class Anagram

attr_accessor :word_to_analyze, :array

def initialize (word_to_analyze)
@word_to_analyze = word_to_analyze


end

def match (array)
array.find_all do |word|
if word.split("").sort == self.word_to_analyze.split("").sort
       word

     end
   end



end









end
