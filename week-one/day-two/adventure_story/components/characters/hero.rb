class Hero < Character
  def initialize( character )
    super( character )

    name_character
  end

  def name_character
    name_message = "Enter the name of your hero:"
    @name = UserInput.new( name_message ).value
  end

  # TODO
  # def random_questions
  #   # map through a random number of an array of questions
  #   # associate a stat boost with each answer
  # end

  # def ask_question( question )
  #   # Ask question
  #   # Apply stat boost
  # end
end
