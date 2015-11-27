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

    raise InvalidWidthError.new("A width of #{@width} is greater than the maximum width of #{MAXIMUM_WIDTH}") if self.width > MAXIMUM_WIDTH
    raise InvalidHeightError.new("A height of #{@height} is greater than the maximum height of #{MAXIMUM_HEIGHT}") if self.height > MAXIMUM_HEIGHT
    raise InvalidWidthError.new("A width of #{@width} is less than the minimum width of #{MINIMUM_WIDTH}") if self.width < MINIMUM_WIDTH
    raise InvalidHeightError.new("A height of #{@height} is less than the minimum height of #{MINIMUM_HEIGHT}") if self.height < MINIMUM_HEIGHT

    for x in  MINIMUM_WIDTH..width do
      for y in MINIMUM_HEIGHT..height do
        @pixels << Pixel.new(self,x,y)
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

step 'initialize valid images <table>' do |table|
  table.rows.each do |row|
    image = Image.new(row[0].to_i,row[1].to_i)
    assert{image.pixels.count == row[2].to_i}
  end
end

step 'initialize invalid images <table>' do |table|
  table.rows.each do |row|
    assert{rescuing{Image.new(row[0].to_i,row[1].to_i)}.message == row[2]}
  end
end
