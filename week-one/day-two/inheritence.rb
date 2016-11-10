# class Animal
#   attr_accessor :legs
# end
#
# class Dog < Animal
#   def woof
#     puts "WOOOOOOOOF  WOOOOF"
#   end
# end

class Dessert
  attr_accessor :ingredients

end

class Cookie < Dessert
  attr_accessor :type

  def initialize()
  end

end
