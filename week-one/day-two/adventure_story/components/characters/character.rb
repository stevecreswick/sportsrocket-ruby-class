class Character
  attr_accessor :stats
  attr_accessor :name
  attr_accessor :sayings

  attr_accessor :story_event

  attr_accessor :event
  attr_accessor :choices

  def initialize( character )
    @stats = {
      strength: rand(1..10),
      speed: rand(1..10),
      durability: rand(1..10),
      smarts: rand(1..10),
      sanity: rand(1..10),
      charm: rand(1..10)
    }

    @sayings = []
    @event = character[ :event ]
    @choices = character[ :choices ]

    self.build_story_events
  end

  def speak
    sayings.length > 0 ?
      ( puts sayings[ rand( 0..( sayings.length - 1 ) ) ] ) :
      ( puts "Grumbles because his creator gave him nothing to say." )
  end

  def say_challenge
    if self.event
      puts self.event
    end
  end

  def build_story_events
    if self.event && self.choices.length > 0
      event_options = []

      self.choices.each do | choice |
        event_options.push( choice )
      end

      character_event = {
        event: self.event,
        choices: event_options
      }

      @story_event = StoryEvent.new( character_event )
    end
  end

  def list_choices
    if self.choices.length > 0
      puts self.choices
    end
  end
end
