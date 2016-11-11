# Choice Making
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
