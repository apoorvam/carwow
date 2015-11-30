class InvalidWidthError < StandardError;end
class InvalidHeightError < StandardError;end
class OutOfImageBoundsError < StandardError;end

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


  def get_pixel_at(x,y)
    pixels.find{|pixel| pixel.coordinate.x == x.to_i && pixel.coordinate.y == y.to_i}
  end

  def set_color(x,y,color)

    raise OutOfImageBoundsError.new("#{x} is outside the width of the image") unless (1..self.width).include? x.to_i
    raise OutOfImageBoundsError.new("#{y} is outside the height of the image") unless (1..self.height).include? y.to_i

    pixel = get_pixel_at(x,y)
    pixel.color = color
    pixel
  end
  def set_column_color(x,from,to,color)
    for y in (from..to) do
      set_color(x,y,color)
    end
  end

  def set_row_color(y,from,to,color)
    for x in (from..to) do
      set_color(x,y,color)
    end
  end

  def fill(x,y,color)

    region = []

    puts "width: #{self.width}"
    puts "height: #{self.height}"
    puts "x: #{x}"
    puts "Y: #{y}"

    top = lambda{ |x,y|
      return x,(y-1)
    }

    bottom = lambda{ |x,y|
      return x,(y+1)
    }

    left = lambda{ |x,y|
      return (x-1),y
    }

    right = lambda{ |x,y|
      return (x+1),y
    }

    puts "top: #{top.call(x,y)}"
    puts "right: #{right.call(x,y)}"
    puts "bottom: #{bottom.call(x,y)}"
    puts "left: #{left.call(x,y)}"

    region
    
  end


  def clear
    @pixels.each do |pixel|
      set_color(pixel.coordinate.x,pixel.coordinate.y,"O")
    end
  end

end

class Pixel
  attr_reader :coordinate,:image
  attr_accessor :color
  class Coordinate
    attr_reader :x,:y,:pixel
    def initialize(pixel,x,y)
      @pixel = pixel
      @x = x
      @y = y
      @color="O"
    end
  end
  def initialize(image,x,y)
    @image = image
    @coordinate =Pixel::Coordinate.new(self,x,y)
  end

end
