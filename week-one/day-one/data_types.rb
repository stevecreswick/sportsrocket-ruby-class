# # Strings
# new_string = "hey"
#
# # Array
# dogs = [
#   'pit bull',
#   'morkie',
#   'pug'
# ]
#
# # Hash
#
# # Boolean
#
# # Symbol
#
# for i in 0..100
#   if i % 2 == 0
#       puts "The number #{ i } is Even."
#   end
# end
#
# def method_to_my_madness( n )
#   puts n
# end
#
# method_to_my_madness( 18 )

# adds five to the argument given
def add_five( num )
  puts num + 5
end

add_five( 224932 )
# multiplies argument by 15
def fifteen_times( num )
  puts num * 15
end

fifteen_times( 4 )

# Performs a mathematical operation using 4 integer or float arguments
def math_operation( num_one, num_two, num_three, num_four )
  puts num_one + num_two + num_three + num_four
end

# Prints the argument given four times
def print_four_times( to_print )
  4.times do
    puts to_print
  end
end

print_four_times( 'steve' )

# Prints an uppercase version of the arg given
def uppercase_this( word )
  if word.is_a? String
    puts word.upcase
  else
    puts 'Enter a string'
  end
end

uppercase_this( 'uppercase' )
uppercase_this( 10 )


#
