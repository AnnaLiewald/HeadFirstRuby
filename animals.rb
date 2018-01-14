class Animal

  attr_reader :name, :age

  def name=(value)
    if @name == ""
      raise "Name can't be blank."
    end
    @name = value
  end

  def age=(value)
   if value < 0
     raise "An age of #{value} isn't valid!"
   end
   @age = value
  end

  def talk
    puts "#{@name} says 'Meow'!"
  end

  def move(destination)
    puts "#{@name} runs to the #{destination}."
  end

  def report_age
    if @age > 1
      puts "#{@name} is #{@age} years old."
    else
      puts  "#{@name} is #{@age} year old."
    end
  end
end

class Cat < Animal

  def to_s
    puts "#{name} the cat, age #{age}"
  end
end

class Bird < Animal
  def talk
    puts "#{@name} says 'Chirp, chirp'!"
  end
end

class Dog < Animal
  def talk
    puts "#{@name} says 'Bark!'!"
  end
end

class Armadillo < Animal
def move(destination)
 puts "#{@name} unrolls!"
 super
end
end

dillon = Armadillo.new
dillon.name = "Dillon"
dillon.move ('house')


cat = Cat.new
cat.name = "Fluffy"
cat.age = 1
puts cat
cat.report_age
cat.talk
cat.move ('litter box')


dog = Dog.new
dog.name = "Rex"
dog.age = 3
dog.report_age
dog.talk
dog.move('fence')
puts dog 

bird = Bird.new
bird.name = "Tweety"
bird.age = 2
bird.report_age
bird.talk
bird.move('tree')
