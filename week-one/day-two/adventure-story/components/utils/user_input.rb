class UserInput
  attr_accessor :value

  def initialize( prompt )
    puts prompt

    @value = gets
  end
end
