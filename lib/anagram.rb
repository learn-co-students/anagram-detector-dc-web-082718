# Your code goes here!
require 'pry'
class Anagram

 attr_accessor :sample

 def initialize(sample)
   @sample = sample
 end

 def match(array)
   array.select do |word|
     word.split("").sort == @sample.split("").sort
   end
 end




end
