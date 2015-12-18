require 'matrix'
require_relative "pixel.rb"
require_relative "display.rb"

class ImageError < StandardError;end
class InvalidWidthError < ImageError;end
class InvalidHeightError < ImageError;end
class OutOfImageBoundsError < ImageError;end

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
    todo = []
    region = []
    done = []

    pixel = get_pixel_at(coordinate)
    set_color(pixel.coordinate,color)

    region << pixel
    todo << pixel


    loop do

      context = todo.pop

      if context

        if context.top.inside? self
          top = get_pixel_at(context.top)
          if top.color == color
            region << top
            todo << top unless done.include? top
          end
        end

        if context.bottom.inside? self
          bottom = get_pixel_at(context.bottom)
          if bottom.color == color
            region << bottom
            todo << bottom unless done.include? bottom
          end
        end

        if context.left.inside? self
          left = get_pixel_at(context.left)
          if left.color == color
            region << left
            todo << left unless done.include? left
          end
        end

        if context.right.inside? self
          right = get_pixel_at(context.right)
          if right.color == color
            region << right
            todo << right unless done.include? right
          end
        end

        done << context

      end


      break if todo.empty?

    end

    region

  end

  def clear
    @pixels.each do |pixel|
      set_color(pixel.coordinate,"O")
    end
  end

end
