class UserInput
  attr_accessor :value

  def initialize( prompt )
    printf prompt + " "

    get_input
  end

  def get_input
    text = gets.chomp.downcase
    puts text
    @value = text
  end

  def require_values( available_commands )
    get_input

    unless available_commands.include? @value
      puts "Please input a valid response."
      require_values( available_commands )
    end
    puts "You selected #{ value }"
  end
end
