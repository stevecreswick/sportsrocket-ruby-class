require 'pry'
load 'story-operations.rb'

Dir[ "#{ File.dirname( __FILE__ ) }/components/*.rb" ].each { | f | load( f ) }



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

story_event_one = [
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

story_event_two = [
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

story_options = {
  paragraphs: story_paragraphs,
  story_events: [ story_event_one, story_event_two ]
}

@story = Story.new( story_options )

binding.pry
