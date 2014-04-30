require 'pry'

class Anagram

  attr_reader :word1, :word2, :hash1, :hash2

  def initialize(word1, word2)
    @word1 = word1.gsub(/[^0-9A-Za-z]/, '')
    @word2 = word2.gsub(/[^0-9A-Za-z]/, '')
    @hash1 = {}
    @hash2 = {}
    map_words
    check_hash
  end

  def map_words
    word1.each_char do |let|
      hash1.has_key?(let) ? hash1[let] += 1 : hash1[let] = 1
    end

    word2.each_char do |let|
      hash2.has_key?(let) ? hash2[let] += 1 : hash2[let] = 1
    end

    p hash1
    p hash2
  end

  def check_hash
    p hash1 == hash2
  end

end

anagram = Anagram.new("hello ", "hello")