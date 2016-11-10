# Create a function that takes a string and adds the phrase only in america
require 'httparty'

def amurica( word )
  if word.is_a? String
    puts  "#{ word }. Only in America!!!"
  else
    puts "In America, words are not numbers."
  end
end


# Create a function to find the maximum value in an array of numbers
def max_number( number_array )
  highest_number = 0

  number_array.each do | number |
    if number > highest_number
      highest_number = number
    end
  end

  puts highest_number
end


# Fizz Buzz
def fizz_buzz
  100.times do | i |
    if ( i % 3 == 0 && i % 5 == 0 )
      puts "Fizz Buzz"
    elsif i % 3 == 0
      puts 'Buzz'
    elsif i % 5 == 0
      puts 'Fizz'
    else
      puts i
    end
  end
end

def combine_arrays( key_array, value_array )
  final_object = {}

  key_array.each_with_index do | key, i |
    final_object[ key_array[ i ] ] = value_array[ i ]
  end

  puts final_object
end
#
# puts 'america'
# amurica( 'Peace' )
# amurica( 1776 )
#
# puts 'max number'
# max_number( [100, 57, 12, -100, -466] )
#
# puts 'fizz buzz'
# fizz_buzz
#
# puts 'combine arrays'
# combine_arrays( [ :toyota, :tesla ], [ "Prius", "Model S" ]  )


# Accepts a large block of text
# Sort the text into a hash
  # Each word is a key with
  # value = number of times the word is found

file = File.open( 'shakespeare.txt', "rb")
contents = file.read
file.close

def word_frequency( text_block )
  word_counts = {}
  # response = HTTParty.get('http://openlibrary.org/api/search?q={"query":"Felix Klein"}&prettyprint=true')
  # puts response  string
  text_block.downcase.gsub(/[^a-z0-9\s]/i, '').split(' ').each do | word |
    if word_counts[ word ]
      word_counts[ word ] += 1
    else
      word_counts[ word ] = 1
    end
  end

  most_used = {
    :word => '',
    :times_used => 0
  }
  @max_value

  @max_value = word_counts.max_by { | k, v | v }
  #  word_counts.max_by{ | k,v |
  #    puts k
  #   # if v > most_used[ 'times_used' ]
  #   #   most_used[ 'word' ] = k
  #   #   most_used[ 'times_used' ] = v
  #   # end
  # }

  puts @max_value

  # puts word_counts.select{|key, hash| hash["client_id"] == word_counts.values.max }
end

# word_frequency( contents )

class Wizard
  attr_accessor :spells

  def initialize
    @pointy_hat = true
    @beard_length = 6
    @spells = [ 'dizzy' ]
  end

  # def spells
  #   @spells
  # end
end

steve = Wizard.new

puts steve.spells

steve.spells.push( 'yolo' )

puts steve.spells


class Robot
  def initialize
    @color = 'bronze'
  end

  def beep_boop_beep_boop
    puts 'beep boop beep boop beep boop beep boop beep boop beep boop beep boop beep boop beep boop beep boop beep boop beep boop beep boop beep boop'
  end

  def destroy_humanity
    beep_boop_beep_boop
    puts 'booom'
  end
end

# bender = Robot.new

# bender.destroy_humanity
