require "wrong"
require "pry"


include Wrong

class InvalidWidthError < StandardError;end
class InvalidHeightError < StandardError;end

class Image
  MAXIMUM_HEIGHT=250
  MAXIMUM_WIDTH=250
  MINIMUM_HEIGHT=1
  MINIMUM_WIDTH=1
  attr_reader :width,:height,:pixels
  def initialize(width,height)
    @width = width
    @height = height
    @pixels = []

    raise InvalidWidthError.new("#{@width} is greater than the maximum width of #{MAXIMUM_WIDTH}") if self.x > MAXIMUM_WIDTH
    raise InvalidHeightError.new("#{@height} is greater than the maximum height of #{MAXIMUM_HEIGHT}") if self.y > MAXIMUM_HEIGHT
    raise InvalidWidthError.new("#{@width} is less than the minimum width of #{MINIMUM_WIDTH}") if self.x < MINIMUM_WIDTH
    raise InvalidHeightError.new("#{@height} is greater than the minimum height of #{MINIMUM_HEIGHT}") if self.y < MINIMUM_HEIGHT

    for i in  1..x do
      for j in 1..y do
        @pixels << Pixel.new(self,i,j)
      end
    end


  end

end

class Pixel
  attr_reader :coordinate,:image,:color
  class Coordinate
    attr_reader :x,:y,:pixel
    def initialize(pixel,x,y)
      @pixel = pixel
      @x = x
      @y = y
    end
  end
  def initialize(image,x,y)
    @image = image
    @coordinate =Pixel::Coordinate.new(self,x,y)
  end

end

step 'Create images <table>' do |table|
  table.rows.each do |row|
    image = Image.new(row[0].to_i,row[1].to_i)
    assert{image.pixels.count == row[2].to_i}
  end
end
