class UserInput
  attr_accessor :value
  attr_accessor :prompt
  attr_accessor :required_type
  attr_accessor :input_options

  def initialize( options )
    @prompt = options[ :prompt ]
    # @required_type = options[ :required_type ]
    # @input_options = options[ :input_options ]

    puts prompt
    value = gets.chomp.downcase
  end

  # def get_input
  #   text = gets.chomp.downcase
  #   puts text
  #   @value = text
  # end
  #
  # def request_input
  #   puts "Enter:"
  #   user_input = gets.chomp.downcase
  #
  #   puts required_type
  #   puts input_options
  #
  #   if required_type
  #     puts "Type here."
  #   end
  #
  #   if input_options.length > 0
  #     puts "Options Here."
  #   end
  #
  #   if required_type && input_options.length > 0
  #     puts "Type and Options"
  #     puts "#{ self.input_options }"
  #     puts "#{ user_input }"
  #
  #     unless ( self.input_options.include? user_input && user_input.class == @required_type )
  #       puts "In Unless"
  #       @user_input = user_input
  #       return
  #     end
  #     puts "#{ user_input } is an invalid input.  Please enter one of these options: #{ required_type } and #{ input_options }"
  #   elsif required_type
  #     puts "Required Type Only"
  #     unless user_input.class == @required_type
  #       @user_input = user_input
  #       return
  #     end
  #     puts "#{ user_input } is an invalid input.  Please enter one of these options: #{ required_type }"
  #   elsif input_options.length > 0
  #     puts "Options Only."
  #     unless ( self.input_options.include? user_input && user_input.class == @required_type )
  #       @user_input = user_input
  #       return
  #     end
  #     puts "#{ user_input } is an invalid input.  Please enter one of these options: #{ input_options }"
  #   else
  #     puts "Any Input Accepted"
  #     @user_input = user_input
  #   end
  # end
end
