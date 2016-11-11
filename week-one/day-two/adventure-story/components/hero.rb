# Create Choose Your Own Adventure Story
class Hero
  def initialize()
    @stats = {
      strength: rand(1..10),
      speed: rand(1..10),
      durability: rand(1..10),
      smarts: rand(1..10),
      sanity: rand(1..10),
      charm: rand(1..10)
    }

    puts "Enter your name:"
    @name = gets
  end
end
