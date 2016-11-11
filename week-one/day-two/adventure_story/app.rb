require 'pry'

Dir[ "#{ File.dirname( __FILE__ ) }/components/**/*.rb" ].each { | f | load( f ) }
Dir[ "#{ File.dirname( __FILE__ ) }/story_elements/*.rb" ].each { | f | load( f ) }

story_options = {
  paragraphs: @paragraph_library,
  story_events: @story_event_library,
  companions: @companion_library,
  enemies: @enemy_library
}

@story_teller = StoryTeller.new( Story.new( story_options ) )
