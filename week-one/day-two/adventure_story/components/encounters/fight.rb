class Fight < Encounter
  def initialize( options )
    super( options )

    self.announce_encounter(
      "#{ hero.name } runs into a fight against #{ character.name }"
    )
  end
end
