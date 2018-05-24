require_relative 'scrabble_module'

class Word
  include Scrabble

  def initialize(word)
    @word = word
  end

  def to_s
    @word
  end
end
