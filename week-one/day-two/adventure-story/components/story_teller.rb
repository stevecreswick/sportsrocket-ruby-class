class StoryTeller
  def initialize( story )
    @story = story
    @round = 0
    @rounds = rand( 6..12 )

    get_hero
    puts 'got hero'
    tell_story
  end

  def get_hero
    @hero = Hero.new
  end

  def story_block
    puts 'inside story block'

    if rand( 0..1 ) % 2 == 0
      puts @story.paragraphs[ rand( 0..@story.paragraphs.length - 1 ) ].message
    else
      puts @story.story_events[ rand( 0..@story.story_events.length - 1 ) ].event
    end

    continue
  end

  def encounter
    puts "This is an encounter."

    continue
  end

  def tell_story
    unless @round == @rounds
      puts @round

      @round % 2 == 0 ?
        encounter :
        story_block
    end
  end

  def increase_round
    @round += 1
  end

  def continue
    UserInput.new( 'Click enter to continue:' )

    increase_round
    tell_story
  end
end
