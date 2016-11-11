class FriendlyEncounter < Encounter
  def initialize( options )
    super( options )

    self.announce_encounter(
      "#{ hero.name } meets a friendly companion, #{ character.name }"
    )
  end
end
