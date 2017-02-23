# Write a program that outputs the lyrics for "Ninety-nine Bottles of Beer on the Wall"
# Your program should print the number of bottles in English, not as a number. For example:
#
# Ninety-nine bottles of beer on the wall,
# Ninety-nine bottles of beer,
# Take one down, pass it around,
# Ninety-eight bottles of beer on the wall.
# ...
# One bottle of beer on the wall,
# One bottle of beer,
# Take one down, pass it around,
# Zero bottles of beer on the wall.
#
# Your program should not use ninety-nine output statements!
# Design your program with a class named BeerSong whose initialize method
# receives a parameter indicating the number of bottles of beer initially on the wall.
# If the parameter is less than zero, set the number of bottles to zero. Similarly,
# if the parameter is greater than 99, set the number of beer bottles to 99
# Then make a public method called print_song that outputs all stanzas from the number of bottles of beer down to zero.
# Add any additional methods you find helpful.

class BeerSong
  attr_accessor :beers
  def initialize(beers)
    beers = 0  if beers < 0
    beers = 99 if beers > 99
    @beers = beers
  end

  def print_song
    beers.downto 1 do |i|
      song i
    end
  end

  def song(n)
    if n.zero?
      String.new
    else
      puts "#{number_to_english n} #{bottle_or_s n} of beer on the wall,"        ,
           "#{number_to_english n} #{bottle_or_s n} of beer,"                    ,
           "Take one down, pass it around,"                         ,
           "#{number_to_english n - 1} #{bottle_or_s n-1} of beer on the wall."
    end
  end

  def number_to_english(n)
  numbers_to_twenty = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
  multiples_of_ten = ["zero", "ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
    if  n >= 0 && n < 20
      return numbers_to_twenty[n].capitalize
    elsif n % 10 == 0
      return multiples_of_ten[n/10].capitalize
    else
      return_this = "#{number_to_english n/10*10}-#{number_to_english n%10}".capitalize
    end
  end

  def bottle_or_s(n)
    n == 1 ? "bottle" : "bottles"
  end

end
