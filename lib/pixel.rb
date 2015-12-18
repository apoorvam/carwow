class Pixel
  attr_reader :coordinate,:image
  attr_accessor :color
  def top
    Pixel::Coordinate.new(self.coordinate.x,self.coordinate.y-1)
  end
  def bottom
    Pixel::Coordinate.new(self.coordinate.x,self.coordinate.y+1)
  end
  def left
    Pixel::Coordinate.new(self.coordinate.x-1,self.coordinate.y)
  end
  def right
    Pixel::Coordinate.new(self.coordinate.x+1,self.coordinate.y)
  end

  def ==(pixel)
    return false if pixel.nil?
    self.coordinate == pixel.coordinate
  end
  class Coordinate
    attr_reader :x,:y
    def initialize(x,y)
      @x = x.to_i
      @y = y.to_i
    end

    def ==(coordinate)
      self.x == coordinate.x && self.y == coordinate.y
    end

    def inside? image
      return false if self.x < Image::MINIMUM_WIDTH
      return false if self.x > image.width
      return false if self.y < Image::MINIMUM_HEIGHT
      return false if self.y > image.height
      true
    end

  end

  def initialize(image,x,y)
    @image = image
    @color="O"
    @coordinate =Pixel::Coordinate.new(x,y)
  end

end
