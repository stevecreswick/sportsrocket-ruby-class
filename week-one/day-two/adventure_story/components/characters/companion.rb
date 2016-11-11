class Companion < Character
  def initialize( character )
    super

    @name = character[ :name ] || "Obi Wan's Voice"
    @sayings = character[ :sayings ] || []
  end
end
