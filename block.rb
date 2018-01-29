
def my_method(&my_block)
  puts "This is the method"
  yield("Cat", "Dog")
  puts "Back in the method"
  # my_block.call is the same as yield. Yield is used mostly.
  my_block.call("Cat", "Dog", "Bird")
end


# There are two block formats in ruby

# Block format 1, used for longer, multiple line blocks

my_method do |param1, param2|
  puts "This is the block. Parameters: #{param1} and #{param2}"
end


# Block format 2, used for short, single line blocks

my_method { |param1, param2| puts "This is the block format 2. It hast two parameters: #{param1} and #{param2}" }

# each method loops over the elements in an array and passes them to a block for processing
["a", "b", "c"].each {|letter| puts letter}

hash = {"a" => "first", "b" => "second"}
 puts hash

hash.each {|hashparam| puts hashparam}
