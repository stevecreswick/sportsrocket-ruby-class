class Encounter
  attr_accessor :hero
  attr_accessor :character

  def initialize( options )
    # super( options )

    @hero = options[ :hero ]
    @character = options[ :character ]
  end

  def announce_encounter( string )
    puts string

    single_line
    character.speak
    single_line

    story_event
  end

  def story_event
    puts character.story_event.event

    single_line

    character.story_event.choices.each do | choice |
      puts choice.message
    end
  end
end
