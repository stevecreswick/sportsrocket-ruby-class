class Story
  attr_accessor :paragraphs
  attr_accessor :story_events

  def initialize( options )
    @paragraphs = []
    @story_events = []

    build_paragraphs( options[ :paragraphs ] )
    build_challenges( options[ :story_events ] )
  end

  def build_paragraphs( paragraph_array )
    paragraph_array.each do | paragraph |
      @paragraphs.push( StoryParagraph.new( paragraph ) )
    end
  end

  def build_challenges( challenge_array )
    challenge_array.each do | story_event |
      @story_events.push( StoryEvent.new( story_event ) )
    end
  end
end
