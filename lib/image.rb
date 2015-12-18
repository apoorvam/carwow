require 'matrix'

class InvalidWidthError < StandardError;end
class InvalidHeightError < StandardError;end
class OutOfImageBoundsError < StandardError;end

class Display
  def self.render(image)


      output = ""

        columns = 1

        (Image::MINIMUM_HEIGHT..image.height).each do |y|
        (Image::MINIMUM_WIDTH..image.width).each do |x|
          color = image.get_pixel_at(Pixel::Coordinate.new(x,y)).color
          output << "#{color}"
          if columns == image.width
            output << "\n"
            columns = 1
          else
            columns+=1
          end
        end
      end

      output
  end
end
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

    Matrix.build(width, height) do |x,y|
        @pixels << Pixel.new(self,x+1,y+1)
    end

  end


  def get_pixel_at(coordinate)
    raise OutOfImageBoundsError.new("#{coordinate.x} is outside the width of the image") unless (1..self.width).include? coordinate.x
    raise OutOfImageBoundsError.new("#{coordinate.y} is outside the height of the image") unless (1..self.height).include? coordinate.y
    pixels.find{|pixel| pixel.coordinate.x == coordinate.x && pixel.coordinate.y == coordinate.y}
  end

  def set_color(coordinate,color)

    raise OutOfImageBoundsError.new("#{coordinate.x} is outside the width of the image") unless (1..self.width).include? coordinate.x
    raise OutOfImageBoundsError.new("#{coordinate.y} is outside the height of the image") unless (1..self.height).include? coordinate.y

    pixel = get_pixel_at(coordinate)
    pixel.color = color
    pixel
  end
  def set_column_color(x,from,to,color)
    for y in (from..to) do
      set_color(Pixel::Coordinate.new(x,y),color)
    end
  end

  def set_row_color(y,from,to,color)

    for x in (from..to) do

      set_color(Pixel::Coordinate.new(x,y),color)
    end
  end

  def fill(coordinate,color)
    cache = []
    region = []

    pixel = get_pixel_at(coordinate)
    set_color(pixel.coordinate,color)

    region << pixel

    cache << pixel

    loop do

      context = cache.pop

      if context


      end

      break if cache.empty?

    end

    region

  end



  def clear
    @pixels.each do |pixel|
      set_color(pixel.coordinate,"O")
    end
  end

end

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
    self.coordinate.to_s == pixel.coordinate.to_s
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
  end
  def initialize(image,x,y)
    @image = image
    @color="O"
    @coordinate =Pixel::Coordinate.new(x,y)
  end

end
