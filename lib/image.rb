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

  def fill(x,y,color)
    cache = []
    region = []

    pixel = get_pixel_at(Pixel::Coordinate.new(x,y))
    set_color(pixel.coordinate,color)
    cache << pixel.coordinate
    region << pixel

    loop do

      context = cache.pop

      if context

        # if get_pixel_at(context.top.coordinate).color == color
        #    cache << context.top unless cache.find{|p|p.coordinate.to_s == context.top.coordinate.to_s}
        #    region << context.top unless region.find{|p|p.coordinate.to_s == context.top.coordinate.to_s}
        # end
        #
        # if get_pixel_at(context.left.coordinate).color == color
        #   cache << context.left unless cache.find{|p|p.coordinate.to_s == context.left.coordinate.to_s}
        #   region << context.left unless region.find{|p|p.coordinate.to_s == context.left.coordinate.to_s}
        # end
        #
        # if get_pixel_at(context.right.coordinate).color == color
        #   cache << context.right unless cache.find{|p|p.coordinate.to_s == context.top.coordinate.to_s}
        #   region << context.right unless region.find{|p|p.coordinate.to_s == context.top.coordinate.to_s}
        # end

        bottom = get_pixel_at(context)
        if bottom.color == color
          cache << context.bottom unless cache.find{|c|c.to_s == context.bottom.to_s}
          region << bottom unless region.find{|p|p.coordinate.to_s == bottom.coordinate.to_s}
        end

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
      @color="O"
    end
    def to_s
      puts "#{x}:#{y}"
      "#{x}:#{y}"
    end
    def ==(coordinate)
      self.x == coordinate.x && self.y == coordinate.y
    end
  end
  def initialize(image,x,y)
    @image = image
    @coordinate =Pixel::Coordinate.new(x,y)
  end

end
