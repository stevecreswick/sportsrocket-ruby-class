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

    character.story_event.display_choices

    available_commands = [ "0", "1", "2" ]

    UserInput.new( "#{ hero.name.capitalize }, whatever shall you do?" ).require_values( available_commands )
  end
end
