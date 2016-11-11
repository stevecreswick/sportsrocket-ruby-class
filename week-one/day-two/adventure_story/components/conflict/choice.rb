class Choice
  attr_accessor :message
  attr_accessor :stat_check

  def initialize( message )
    @message = message

    stats = [
      "strength",
      "speed",
      "durability",
      "smarts",
      "sanity",
      "charm"
    ]

    @stat_check = StatCheck.new(
      stats[ rand(0..( stats.length - 1 ) ) ],
      rand( 0..6 )
    )
  end
end
