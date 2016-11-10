class Elevator
  def initialize( top_floor )
    @top_floor = top_floor
    @current_floor = 1

    @floors = [ *1..top_floor ]
    @floors_to_stop_at = []
    @stops = 0
    @elevator_anger = 0
  end

  # def starting_floor
  #   @floors.at( @target_floor )
  # end

  def floors
    @floors
  end

  def ride( target_floor )
    puts "**** STARTING RIDE *****"
    @target_floor = target_floor

    puts "Going to #{ @target_floor } from #{ @current_floor }"

    if @current_floor < target_floor
      @direction = 'up'
    elsif @current_floor > target_floor
      @direction = 'down'
    else
      puts "You are on this floor already, silly."
    end

    unless @current_floor == @target_floor
      move( @direction )
      greet
    end
  end

  def move( direction )
    if direction == 'up'
      ( @current_floor ).upto( @target_floor ) do | floor |
        random_press
        check_to_stop( floor )
      end
    elsif direction == 'down'
      ( @current_floor ).downto( 1 ) do | floor |
        random_press
        check_to_stop( floor )
      end
    end
  end

  def check_to_stop( floor )
    @current_floor = floor

    if @floors_to_stop_at.include? floor
      stop( floor )
    else
      puts "Going past #{ floor }."
    end
  end

  def anger
    if @floors_to_stop_at.length > 2
      @elevator_anger += 1
    end
  end

  def stop( floor )
    @stops += 1
    anger
    greet
  end

  def greet
    puts "Welcome to the LOLelevator.  You are on #{ @current_floor }. The anger level is #{ @elevator_anger }.  There have been #{ @stops } stops."
  end

  def random_press
    next_stop = rand( 1..100 )
    if next_stop <= @top_floor
      if !@floors_to_stop_at.include? next_stop
        if @direction == 'up' &&
          next_stop > @current_floor &&
          next_stop < @target_floor

          @floors_to_stop_at.push( next_stop )
          puts "The elevator is going to stop at #{ next_stop }"

        elsif @direction == 'down' &&
              next_stop < @current_floor
              next_stop > @target_floor

          @floors_to_stop_at.push( next_stop )
          puts "The elevator is going to stop at #{ next_stop }"
        end
      end
    end
  end
end
