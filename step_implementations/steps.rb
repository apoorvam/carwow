require "wrong"
require "pry"


include Wrong

class Image
  attr_reader :x,:y,:pixels
  def initialize(x,y)s
    @x = x
    @y = y
    @pixels = []
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
    def valid?
      return false if self.x > 250
      return false if self.y > 250
      return false if self.x < 1
      return false if self.y < 1
      return false if self.x > @pixel.image.x
      return false if self.y > @pixel.image.y
      return true
    end
  end
  def initialize(image,x,y)
    @image = image
    @coordinate =Pixel::Coordinate.new(self,x,y)
  end

end

step 'create and validate pixels <table>' do |table|
  table.rows.each do |row|
    if row.last == "true"
      assert {Pixel.new(@image,row[0].to_i,row[1].to_i).coordinate.valid? }
    else
      deny {Pixel.new(@image,row[0].to_i,row[1].to_i).coordinate.valid? }
    end
  end
end

step 'create a <x> by <y> image' do |x,y|
  @image = Image.new(x.to_i,y.to_i)
end
