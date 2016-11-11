class Villain < Character
  def initialize( character )
    super( character )

    @name = character[ :name ] || "The Invisible Man"
    @sayings = character[ :sayings ] || []
  end
end
