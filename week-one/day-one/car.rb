class Spaceship
  def initialize( speed, planet_of_origin, crew_members)
    @speed = speed
    @planet_of_origin = planet_of_origin
    @crew_members = crew_members

    blast_off
  end

  def blast_off
    puts '5...4...3...2...1...'

    success_roll = rand(1..10)

    if success_roll > 4
      launch( 'success' )
    elsif success_roll <= 4
      launch( 'failure' )
    end
  end

  def launch( status )
    if status === 'success'
      puts "Blast Off!!! The people of #{ @planet_of_origin } REJOICE!!!  They are going #{ @speed } toward their own demise."
    elsif status === 'failure'
      puts "KA-BOOOOOOOM!!! All #{ @crew_members } people on board died."
    else
      puts 'We have lost communication with the flight deck.'
    end
  end
end

ship = Spaceship.new( 500, 'earth', 5)

puts ship
