class Anagram
  attr_accessor :word

  def initialize(word)
    @word = word
  end

  def match(random)
    arr = []
    random.each do |element|
      if @word.split("").sort == element.split("").sort
        arr << element
      end
    end
    arr
  end

end
