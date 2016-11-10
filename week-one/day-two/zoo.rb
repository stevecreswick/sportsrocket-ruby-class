class Zoo
  attr_accessor :exhibits

  @animal = [ ]
end

class Animal
  def eat
    puts "NOM NOM NOM NOM"
  end

  def drink
    puts "GULP GULP THIRRRSTEEE GOnE"
  end
end

class Giraffe < Animal
end

class Koala < Animal
end

class Giraffe < Animal
end

class Giraffe < Animal
end

zoo = Zoo.new

giraffe = Giraffe.new
koala = Koala.new

zoo.exhibits.push( giraffe, koala )
