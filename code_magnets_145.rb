

class Boat

  def initialize(name)
    @name = name
  end

end


class PowerBoat < Boat

  def initialize(name, motortype)
    super(name)
    @motortype = motortype
  end

  def info
    puts "Name: #{@name}"
    puts "Motor Type: #{@motortype}"
  end

end



boat = PowerBoat.new("Guppy", "outboard")
boat.info
