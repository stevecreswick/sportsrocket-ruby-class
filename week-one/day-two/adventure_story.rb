# Create Choose Your Own Adventure Story

class Story
  attr_accessor paragraphs
  attr_accessor story_events

  def initialize( options )
    @paragraphs = []
    @story_events = []

    build_paragraphs( options[ :paragraphs ] )
    build_challenges( options[ :story_events ] )
  end

  def build_paragraphs( text_blocks )
    text_blocks.each | paragraph |
      @paragraph.push( StoryParagraph.new( paragraph ) )
    end
  end

  def build_challenges( text_blocks )
    text_blocks.each | story_event |
      @story_events.push( StoryEvent.new( story_event ) )
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
end

class StoryEvent
  attr_accessor :choices

  def initialize( options )
    @choices = []

    if options.is_a? Array
      options.each do | choice |
        @choices.push( ChoiceOption.new( choice ) )
      end
    end
  end

  def print_choices
    choices.each do | option |
      puts option.message
    end
  end
end

class ChoiceOption
  attr_accessor :message
  attr_accessor :stat_check

  def initialize( options )
    @message = options[ :message ]
    @stat_check = StatCheck.new(
      options[ :skill ],
      options[ :value ]
    )
  end
end

class StatCheck
  attr_accessor :skill
  attr_accessor :value

  def initialize( skill, value )
    @skill = skill
    @value = value
  end
end

class StoryParagraph
  attr_accessor :message

  def initialize( message )
    @message = message
  end
end

story_paragraphs = [
  'You walk alone in a dark wood.',
  'You come upon a house in the woods made of Candy, yet someone inside eats children for sustenance.',
  'The big bad wolf actually blue the house down...too much complaining, so the house collapsed.'
];

#
# class ForkBuilder
#
#   def build_message
#   end
#
#   def build_skill_check
#   end
#
#   def build_value
#   end
# end

story_fork_one = [
  {
    message: 'This is a story option 1.',
    skill:  'strength',
    value:  4
  },
  {
    message: 'This is a story option 2.',
    skill:  'speed',
    value:  3
  },
  {
    message: 'This is a story option 3.',
    skill:  'durability',
    value:  7
  }
];

story_fork_two = [
  {
    message: 'This is a story option 1423423.',
    skill:  'strength',
    value:  4
  },
  {
    message: 'This is a story option 21431234.',
    skill:  'speed',
    value:  3
  },
  {
    message: 'This is a story option 234123423142134.',
    skill:  'durability',
    value:  7
  }
];

# Story Forks, an array of option hashes

story_event_one = StoryEvent.new( @story_fork_one )
story_event_two = StoryEvent.new( @story_fork_two )

story_options = {
  paragraphs: story_paragraphs,
  story_events: [ story_event_one, story_event_two ]
}
 puts story_options
@story = Story.new( story_options )
