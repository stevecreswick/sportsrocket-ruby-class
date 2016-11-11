class Villain < Character
  attr_accessor :sayings

  def initialize( character )
    super

    @name = character[ :name ] || "The Invisible Man"
    @sayings = character[ :sayings ] || []
  end
end
