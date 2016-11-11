

# Story
class StoryTeller
  def initialize( story )
  end
end

class Story
  attr_accessor :paragraphs
  attr_accessor :story_events

  def initialize( options )
    @paragraphs = []
    @story_events = []

    build_paragraphs( options[ :paragraphs ] )
    build_challenges( options[ :story_events ] )
  end

  def build_paragraphs( text_blocks )
    text_blocks.each do | paragraph |
      @paragraphs.push( StoryParagraph.new( paragraph ) )
    end
  end

  def build_challenges( text_blocks )
    text_blocks.each do | story_event |
      @story_events.push( StoryEvent.new( story_event ) )
    end
  end
end

class StoryParagraph
  attr_accessor :message

  def initialize( message )
    @message = message
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
