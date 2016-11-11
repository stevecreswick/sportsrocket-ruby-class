class StoryTeller
  def initialize( story )
    @story = story
    @round = 0
    @rounds = rand( 10..20 )

    get_hero
    tell_story
  end

  def get_hero
    options = {}
    @hero = Hero.new( options )

    add_spacing
    puts "Good Luck on Your Journey #{ @hero.name }"
    add_spacing
  end

  def tell_story
    unless @round == @rounds
      @round % 2 == 0 ?
        encounter :
        story_block
    end
  end

  def story_block
    if rand( 0..1 ) % 2 == 0
      random_event = @story.paragraphs[ rand( 0..@story.paragraphs.length - 1 ) ]
      puts random_event.message
    else
      random_event = @story.story_events[ rand( 0..@story.story_events.length - 1 ) ]

      puts random_event.event
      random_event.display_choices
    end

    continue
  end

  def encounter
    rand( 0..1 ) % 2 == 0 ?
      fight_villain :
      companion_joins

    continue
  end

  def fight_villain
    random_number = rand( 0..( @story.enemies.length - 1 ) )

    villain = @story.enemies[ random_number ]

    Fight.new(
      {
        hero: @hero,
        character: villain
      }
    )
  end

  def companion_joins
    random_number = rand( 0..( @story.companions.length - 1 ) )
    companion = @story.companions[ random_number ]

    FriendlyEncounter.new(
      {
        hero: @hero,
        character: companion
      }
    )
  end

  def increase_round
    @round += 1
  end

  def continue
    UserInput.new( 'Click enter to continue.' )

    increase_round
    tell_story
  end
end
