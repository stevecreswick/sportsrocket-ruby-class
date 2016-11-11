class Hero < Character
  attr_accessor :name

  def initialize
    super

    get_name
    random_questions
  end

  def get_name
    name_message = "Enter the name of your hero:"
    @name = UserInput.new( name_message ).value
  end

  def random_questions
    # map through a random number of an array of questions
    # associate a stat boost with each answer
  end

  def ask_question( question )
    # Ask question
    # Apply stat boost
  end
end
