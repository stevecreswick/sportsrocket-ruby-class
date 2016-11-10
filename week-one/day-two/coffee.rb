class Coffee
  def initialize(roast, origin, size)
    @roast = roast
    @origin = origin
    @size = size
  end

  def drink
    puts "This #{ @roast } roast is delicious.  They really know what they are doing in #{ @origin }.  I should have gotten larger than a #{ @size }."
  end
end

starbs = Coffee.new( "Italian", "Italia", "Big Gulp")

starbs.drink
