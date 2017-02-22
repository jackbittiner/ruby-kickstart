# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
  last_letter_r = false
  array = []
  string.size.times { |x|
    string_letter = string[x]
    array << string_letter if last_letter_r
    last_letter_r = (string_letter == "r" || string_letter == "R") }
  array.join("")
end
