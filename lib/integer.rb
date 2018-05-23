class Integer

  def to_words
    previous_index = ''
    previous_char = ''
    array_of_number_words = []
    ones = { "1" => "one", "2" => "two", "3" => "three", "4" => "four", "5" => "five", "6" => "six", "7" => "seven", "8" => "eight", "9" => "nine" }
    teens = { "10" => "ten", "11" => "eleven", "12" => "twelve", "13" => "thirteen", "14" => "fourteen", "15" => "fifteen", "16" => "sixteen", "17" => "seventeen", "18" => "nineteen" }
    tens = { "2" => "twenty", "3" => "thirty", "4" => "fourty", "5" => "fifty", "6" => "sixty", "7" => "seventy", "8" => "eighty", "9" => "ninety" }
    input_number_string = self.to_s.reverse
    input_number_string.each_char.with_index do |character, index|
      next if character == '0'
      if index % 3 == 2
        array_of_number_words << "hundred"
      elsif index == 3
        array_of_number_words << "thousand"
      elsif index == 6
        array_of_number_words << "million"
      elsif index == 9
        array_of_number_words << "billion"
      elsif index == 12
        array_of_number_words << "trillion"
      end
      if index % 3 == 1
        if character == '1'
          trash = array_of_number_words.pop[previous_index]
          array_of_number_words.push(teens.fetch(character.concat(previous_char)))
        else
          array_of_number_words.push(tens.fetch(character))
        end
      else
        array_of_number_words.push(ones.fetch(character))
      end
      previous_index = index
      previous_char = character
    end
    array_of_number_words.reverse.join(' ')
  end

end
