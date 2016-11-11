class Story
  attr_accessor :paragraphs
  attr_accessor :story_events
  attr_accessor :companions
  attr_accessor :enemies

  def initialize( options )
    @paragraphs = []
    @story_events = []
    @companions = []
    @enemies = []

    build_paragraphs( options[ :paragraphs ] )
    build_challenges( options[ :story_events ] )
    build_enemies( options[ :enemies ] )
    build_companions( options[ :companions ] )
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

  def build_enemies( enemy_array )
    enemy_array.each do | enemy |
      @enemies.push( Villain.new( enemy ) )
    end
  end

  def build_companions( companion_array )
    companion_array.each do | companion |
      @companions.push( Companion.new( companion ) )
    end
  end

  # TODO
  # Make building components more dynamic
  # def build_story( options )
  #   options.each do | key, value |
  #     build_component( value, key.to_sym )
  #   end
  # end
  #
  # def build_component( component_array, symbol )
  #   component_array.each do | story_component |
  #     self[ symbol ].push( StoryEvent.new( story_component ) )
  #   end
  # end

end
