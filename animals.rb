class Bird

attr_reader :name, :age

  def make_up_name
    @name = "Tweety"
  end

  def make_up_age
    @age = 5
  end

  def report_age
    puts "#{@name} is #{@age} years old."
  end

  def talk
    puts "#{@name} says 'Chirp, chirp'!"
  end

  def move(destination)
    puts "#{@name} runs to the #{destination}."
  end
end


# The class Cat even has validations!
class Cat

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

  def report_age
    if @age > 1
      puts "#{@name} is #{@age} years old."
    else
      puts  "#{@name} is #{@age} year old."
    end
  end

  def talk
    puts "#{@name} says 'Meow'!"
  end

  def move(destination)
    puts "#{@name} sneaks to the #{destination}."
  end

end


class Dog

  attr_accessor :age, :name

  def make_up_age
    @age = 5
  end

  def report_age
    puts "#{@name} is #{@age} years old."
  end

  def talk
    puts "#{@name} says 'Bark'!"
  end

  def move(destination)
    puts "#{@name} runs to the #{destination}."
  end

end


cat = Cat.new
cat.name = "Fluffy"
cat.age = 1
cat.report_age
cat.talk
cat.move ('litter box')

dog = Dog.new
dog.name = "Rex"
dog.make_up_age
dog.report_age
dog.talk
dog.move('fence')

bird = Bird.new
bird.make_up_name
bird.talk
bird.move('tree')
