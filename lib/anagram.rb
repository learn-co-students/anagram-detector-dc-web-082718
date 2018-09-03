require 'pry'
# check lengths;
# then check @word's letters against inclusion in the array words, and also the letters' respective counts


class Anagram
attr_accessor :word

  def initialize (word)
    @word = word
  end

  def match array
    array.select { |word|
      match_eval = false

      # evaluate and set 'match_eval'
      if !(word.length == @word.length) then false
      else
        @word.each_char { |letter|

        if word.include?(letter) == true &&
          word.count(letter) == @word.count(letter)
          then match_eval = true else match_eval = false end
        # if word == binding.pry
        match_eval == false ? break : nil
        }
      end

      match_eval
    }
  end

end
