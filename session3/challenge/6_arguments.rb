# Write a method, match_maker, which will receive an unknown number of
# elements, and return an array where every two elements are represented by true or false.
#
# The very first parameter will not be part of this set. Instead, it will tell
# you how to determine what their value should be.
# If it is true, then they will be true when they are oppositely truthy.
# If it is false, then they will be true when they are similarly truthy.
#
# Examples:
# match_maker false, true,  true                # => [true]
# match_maker true,  true,  true                # => [false]
# match_maker true,  false, false               # => [false]
# match_maker true,  false, true                # => [true]
# match_maker true,  true,  false               # => [true]
# match_maker true,  true,  true, false, true   # => [false, true]
# match_maker true,  true,  true, false, nil    # => [false, false]
# match_maker true,  true,  true, true, nil     # => [false, true]
# match_maker true,  true,  true, 0, nil        # => [false, true]

def match_maker(*args)
  truth_value = args[0]
  paired_array = []
  return_array = []
  args.shift
  args.each_slice(2) { |a, b| paired_array << [a, b] }

  paired_array.each do |a, b|
    if (truth_value == true) && (!!a != !!b) then return_array << true
    elsif (truth_value == true) && (!!a == !!b) then return_array << false
    elsif (truth_value == false) && (!!a != !!b) then return_array << false
    elsif (truth_value == false) && (!!a == !!b) then return_array << true
    end
  end
  return_array
end
