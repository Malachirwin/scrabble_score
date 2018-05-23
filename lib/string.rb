require('pry')
class String

  def word_to_number
    ones = { "1" => "one", "2" => "two", "3" => "three", "4" => "four", "5" => "five", "6" => "six", "7" => "seven", "8" => "eight", "9" => "nine" }
    teens = { "10" => "ten", "11" => "eleven", "12" => "twelve", "13" => "thirteen", "14" => "fourteen", "15" => "fifteen", "16" => "sixteen", "17" => "seventeen", "18" => "nineteen" }
    tens = { "2" => "twenty", "3" => "thirty", "4" => "fourty", "5" => "fifty", "6" => "sixty", "7" => "seventy", "8" => "eighty", "9" => "ninety" }
    array_result = []
    self.split(' ').each do |word_number|
      if teens.key(word_number)
        array_result.push(teens.key(word_number))
      elsif tens.key(word_number)
        array_result.push(tens.key(word_number))
      elsif ones.key(word_number)
        array_result.push(ones.key(word_number))
      else
        next
      end
    end
    array_result.join.to_i
  end

  def to_numbers
    if self.to_s.include?('trillion')
      trillion, billions = self.to_s.split('trillion')
    else
      billions = self.to_s
    end
    if billions.to_s.include?('billion')
      billion, millions = billions.split('billion')
    else
      millions = billions
    end
    if millions.to_s.include?('million')
      million, thousands = millions.split('million')
    else
      thousands = millions
    end
    if thousands.to_s.include?('thousand')
      thousand, hundreds = thousands.split('thousand')
    else
      hundreds = thousands
    end
    hundreds_column = 0
    trillion_column = 0
    billions_column = 0
    millions_column = 0
    thousands_column = 0
    if hundreds
      hundreds_column = hundreds.word_to_number
    end
    if thousand
      thousands_column = thousand.word_to_number * 1000
    end
    if million
      millions_column = million.word_to_number * 1000000
    end
    if billion
      billions_column = billion.word_to_number * 1000000000
    end
    if trillion
      trillion_column = trillion.word_to_number * 1000000000000
    end
    result = hundreds_column + thousands_column + millions_column + billions_column + trillion_column
    result
  end
end
