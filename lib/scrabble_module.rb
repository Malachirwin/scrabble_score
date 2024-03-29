module Scrabble

  def scrabble_score
    score = 0
    to_s.each_char do |letter_from_word|
      if 'aeioulnrst'.include?(letter_from_word)
        score += 1
      elsif 'dg'.include?(letter_from_word)
        score += 2
      elsif 'bcmp'.include?(letter_from_word)
        score += 3
      elsif 'fhvwy'.include?(letter_from_word)
        score += 4
      elsif 'k'.include?(letter_from_word)
        score += 5
      elsif 'jx'.include?(letter_from_word)
        score += 8
      elsif 'qz'.include?(letter_from_word)
        score += 10
      end
    end
    score
  end
end
