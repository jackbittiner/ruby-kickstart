# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

def got_three?(array)
  array_of_trios = []
  array.each_cons(3) {|a, b, c| array_of_trios << [a, b, c] }
  return_array = []
  array_of_trios.map do |d, e, f|
    d == e && d == f ? return_array << [d, e, f] : nil
  end
  return_array.any?
end
