# Create Choose Your Own Adventure Story

class Story
  def initialize()
    puts random_roll( 20 )
  end

  def random_roll( num )
    rand( 1..num )
  end

  def choice()

    if random_roll( stat ) > hero.difficuly_check
      # Successful next paragraph
    else
      # Failure in the story
    end

  end
end

class Hero
  def initialize()
    @stats = {
      strength: rand(1..10),
      speed: rand(1..10),
      durability: rand(1..10),
      smarts: rand(1..10),
      sanity: rand(1..10),
      charm: rand(1..10)
    }

    puts "Enter your name:"
    @name = gets
  end

  def choice_success( stat_check, value )
    if @stats[ stat_check ] >= value
      true
    else
      false
    end
  end
end

class Choice
  def initialize( message, stat_check, value )
    @
  end

  def choice_statement
  end

  def display_options
  end
end



aladdin = Story.new
