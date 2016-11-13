require 'pry'

Dir[ "#{ File.dirname( __FILE__ ) }/components/**/*.rb" ].each { | f | load( f ) }
Dir[ "#{ File.dirname( __FILE__ ) }/story_elements/*.rb" ].each { | f | load( f ) }

story_options = {
  paragraphs: @paragraph_library,
  story_events: @story_event_library,
  companions: @companion_library,
  enemies: @enemy_library
}

UserInput.new(
  {
    prompt: "Put in an answer",
    required_type: 'string',
    input_options: ['yes', 'no']
  }
)

# @story_teller = StoryTeller.new( Story.new( story_options ) )
