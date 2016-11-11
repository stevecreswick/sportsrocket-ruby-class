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
    puts "Character Event"
    puts character.story_event
    # Add encounter prompts and choices
      # is a prompt specific to a villain
      # Does a villain have an entrance

    # Create a story event
      # Takes a prompt
      # Takes choices

        # Creates a choice for each choice
          # Each choice creates a stat check

    # Events
    # attr_accessor :event_prompt
    # attr_accessor :event_options

    # Use this to create an event

  end
end
