def numbers_to_words(number)

  numbers_name = {
    1000 => "thousand", 100 => "hundred",
    90 => "ninety",   80 => "eighty",   70 => "seventy",
    60 => "sixty",    50 => "fifty",    40 => "forty",
    30 => "thirty",   20 => "twenty",   19 => "nineteen",
    18 => "eighteen", 17 => "seventeen",16 => "sixteen",
    15 => "fifteen",  14 => "fourteen", 13 => "thirteen",
    12 => "twelve",   11 => "eleven",   10 => "ten",
    9  => "nine",     8  => "eight",    7  => "seven",
    6  => "six",      5  => "five",     4  => "four",
    3  => "three",    2  => "two",      1  => "one",
    0  => "zero"
  }

  if numbers_name.has_key?(number)
    numbers_name[number]
  elsif number < 0
    return "enter a positive number"
  elsif number.to_s.length == 2
    tens = numbers_name[number - (number % 10)]
    singles = numbers_name[number % 10]
    tens + " " + singles
  elsif number.to_s.length == 3
    hundred = numbers_name[number / 100] + " hundred"
    tens = numbers_name[number - ((number / 100) * 100) - (number % 10)]
    singles = numbers_name[number % 10]
    hundred + " " + tens + " " + singles
  end

end

puts numbers_to_words(7)
puts numbers_to_words(42)
puts numbers_to_words(598)
#puts numbers_to_words(2001)
#puts numbers_to_words(1999)
#puts numbers_to_words(17999)
