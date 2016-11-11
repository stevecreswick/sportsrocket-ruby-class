class Character
  attr_accessor :stats
  attr_accessor :sayings

  def initialize
    @stats = {
      strength: rand(1..10),
      speed: rand(1..10),
      durability: rand(1..10),
      smarts: rand(1..10),
      sanity: rand(1..10),
      charm: rand(1..10)
    }

    @sayings = []
  end

  def speak
    puts sayings[ 0..sayings.length ]
  end
end
