require "wrong"
require "byebug"

include Wrong

class Image
  attr_reader :x,:y,:pixels
  def initialize(x,y)
    @x = x
    @y = y
    @pixels = []
  end
end

class Pixel
  attr_reader :x,:y
  attr_reader :image
  def initialize(image,x,y)

    @image = image
    @x = x
    @y = y
  end
  def valid?
    return false if self.x > 250
    return false if self.y > 250
    return false if self.x < 1
    return false if self.y < 1
    return false if self.x > @image.x
    return false if self.y > @image.y
    return true
  end
end

step 'create and validate pixels <table>' do |table|
  table.rows.each do |row|
    if row.last == "true"
      assert {Pixel.new(@image,row[0].to_i,row[1].to_i).valid? }
    else
      deny {Pixel.new(@image,row[0].to_i,row[1].to_i).valid? }
    end
  end
end

step 'create a <x> by <y> image' do |x,y|
  @image = Image.new(x.to_i,y.to_i)
end
