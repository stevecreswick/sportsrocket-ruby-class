class Hero < Character
  attr_accessor :name

  def initialize
    super

    get_name
    random_questions
  end

  def get_name
    name_message = "Enter the name of your hero:"
    name = UserInput.new( name_message )

    @name = name.value

    add_spacing
    puts "Good Luck on Your Journey #{ @name }"
    add_spacing
  end

  def random_questions
  end

  def ask_question( question )
  end
end
