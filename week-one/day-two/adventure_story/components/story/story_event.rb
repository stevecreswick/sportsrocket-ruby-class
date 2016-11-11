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

  def display_choices
    self.choices.each_with_index do | choice, i |
      puts "#{ i }: #{ choice.message }"
    end
  end
end
