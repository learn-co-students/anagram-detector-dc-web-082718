# Your code goes here!
class Anagram

    attr_accessor :word, :sorted

    def initialize(word)
        @word = word
        @sorted = word.chars.sort.join
        # @counts = {}
        # word.each_char { |chr|
        #     if @count.has_key?(chr)
        #         @counts[chr] += 1
        #     else
        #         @counts[chr] = 1
        #     end
        #
        #  }
    end

    def match(words)
        words.select {
            |word|
            word.chars.sort.join == self.sorted
        }

    end

end
