
# Code Magnets Excercise page 89


class Camera
  def load
    puts "Winding film."
  end

  def take_picture
    puts "Triggering shutter."
  end

end

class DigitalCamera < Camera

  def load
    puts "Inserting memory card."
  end

end

camera = Camera.new
camera.load
camera.take_picture

camera2 = DigitalCamera.new
camera2.load
camera2.take_picture
