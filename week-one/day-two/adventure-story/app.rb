require 'pry'
load 'story_operations.rb'

Dir[ "#{ File.dirname( __FILE__ ) }/components/**/*.rb" ].each { | f | load( f ) }
Dir[ "#{ File.dirname( __FILE__ ) }/story_elements/*.rb" ].each { | f | load( f ) }

# Set Story Options
story_options = {
  paragraphs: @paragraph_library,
  story_events: @story_event_library
}

# Create Story
@story = Story.new( story_options )

# Initiate Story
@story_teller = StoryTeller.new( @story )
