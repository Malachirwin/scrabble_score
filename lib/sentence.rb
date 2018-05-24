require_relative 'scrabble_module'

class Sentence
  include Scrabble

  def initialize(sentence)
    @sentence = sentence
  end

  def to_s
    @sentence
  end
end
