class StoryEvent
  attr_accessor :event
  attr_accessor :choices

  def initialize( options )
    @event = options[ :event ]
    @choices = []

    if options[ :choices ].is_a? Array
      options[ :choices ].each do | choice |
        @choices.push( Choice.new( choice ) )
      end
    end
  end
end
