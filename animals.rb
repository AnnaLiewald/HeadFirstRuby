class Bird
  def make_up_name
    @name = "Tweety"
  end
  def talk
    puts "#{@name} says 'Chirp! Chirp!''"
  end
  def move(destination)
    puts "#{@name} flies to the #{destination}."
  end
end



class Cat
# Write a new value to @name

attr_accessor :name, :age

#  def name=(new_value)
#    @name = new_value
#  end
# Read the value from @name
#  def name
#    @name
#  end
#  def age= (new_value)
#    @age = new_value
#  end
  #def age
  #  @age
  #end

  def report_age
    puts "#{@name} is #{@age} years old."
  end

  def talk
    puts "#{@name} says 'Meow'!"
  end
  def move(destination)
    puts "#{@name} sneaks to the #{destination}."
  end
end


class Dog
  def make_up_name
    @name = "Rex"
  end
  def talk
    puts "#{@name} says 'Bark'!"
  end
  def move(destination)
    puts "#{@name} runs to the #{destination}."
  end
  def make_up_age
    @age = 5
  end
  def report_age
    puts "#{@name} is #{@age} years old."
  end
end


dog = Dog.new
dog.make_up_name
dog.make_up_age
dog.report_age
dog.talk
dog.move('fence')

cat = Cat.new
cat.name = "Fluffy"
cat.age = 2
cat.talk
cat.move ('litter box')

bird = Bird.new
bird.make_up_name
bird.talk
bird.move('tree')
