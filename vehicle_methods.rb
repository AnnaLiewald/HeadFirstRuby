def accelerate
  puts 'Stepping on the gas'
  puts 'Speeding up'
end

def sound_horn
  puts 'Pressing the horn button'
  puts 'Beeeeeeeep!'
end

def use_headlights (brightness = 'low-beam')
  puts "Turning on #{brightness} headlights"
  puts 'Watch out for deer!'
end

accelerate
sound_horn
use_headlights ('high-beam')
