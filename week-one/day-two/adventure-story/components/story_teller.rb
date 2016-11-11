class StoryTeller
  def initialize( story )
    @story = story
    @round = 0
    @rounds = 0

    get_hero
    # get_length
  end

  def get_length
    puts "Would you like the story to be 'short', 'medium', or 'long'?"

    length = gets
    length = length.downcase

    puts "Length #{ length }"

    if length == 'short'
      @rounds = 2
    elsif length == 'medium'
      @rounds = 4
    elsif length == 'long'
      @rounds = 6
    else
      @rounds = 8
    end

    puts @rounds
    unless @round <= @rounds
      @round % 2 == 0 ?
        encounter :
        story_block
    end
  end

  def get_hero
    @hero = Hero.new
  end

  def story_block
    if rand( 0..1 ) % 2 == 0
      puts @story.paragraphs[ rand( 0..@story.paragraphs.length - 1 ) ].message
    else
      puts @story.story_events[ rand( 0..@story.story_events.length - 1 ) ].message
    end
  end

  def encounter
    puts "This is an encounter."
  end

end
