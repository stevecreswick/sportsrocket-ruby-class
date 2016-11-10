class Calculator
  def initialize
    @last_result = 0
    @current_result = 0
  end

  def perform_operation( operator )
    @last_result = @current_result
    @current_result = @value_one.send( operator, @value_two )
    puts "The answer is: #{ @current_result }"
  end

  def set_values( value_one, value_two )
    @value_one = value_one
    @value_two = value_two
  end

  def add( value_one, value_two )
    set_values(value_one, value_two)
    perform_operation( :+ )
  end

  def subtract( value_one, value_two )
    set_values(value_one, value_two)
    perform_operation( :- )
  end

  def multiply( value_one, value_two )
    set_values(value_one, value_two)
    perform_operation( :* )
  end

  def divide( value_one, value_two )
    set_values(value_one, value_two)
    perform_operation( :% )
  end
end

calculator = Calculator.new

calculator.add( 5, 4)
calculator.subtract( 5, 4)
calculator.multiply( 5, 4)
calculator.divide( 5, 4)
