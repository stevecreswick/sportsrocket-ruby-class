class OtherWorldlyBeing
  attr_accessor :powers

  def initialize
    @powers = [ 'Flight', 'Immortality' ]
  end

  def use_random_power
    powers[ rand( 0..( powers.length - 1 ) ) ]
  end

  def add_powers( power_array )
    power_array.map{ | power |
      add_power( power )
    }
  end

  def add_power( power )
    if !@powers.include? power
      powers.push( power );
    end
  end
end

class GreekGod < OtherWorldlyBeing
  def initialize
    super
    new_powers = [ 'Lightning Bolt', 'Mess with Mortals' ]
    add_powers( new_powers )
  end
end

class ToxicMutant < OtherWorldlyBeing
  def initialize
    super
    new_powers = [ 'Toxic Sludge', 'Gas Cloud' ]
    add_powers( new_powers )
  end
end

class Alien < OtherWorldlyBeing
  def initialize
    super
    new_powers = [ 'Zap', 'Abduct' ]
    add_powers( new_powers )
  end
end

class Hero < Alien
end
