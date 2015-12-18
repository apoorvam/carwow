# * I M N - Create a new M x N image with all pixels coloured white (O).
# * C - Clears the table, setting all pixels to white (O).
# * L X Y C - Colours the pixel (X,Y) with colour C.
# * V X Y1 Y2 C - Draw a vertical segment of colour C in column X between rows Y1 and Y2 (inclusive).
# * H X1 X2 Y C - Draw a horizontal segment of colour C in row Y between columns X1 and X2 (inclusive).
# * F X Y C - Fill the region R with the colour C. R is defined as: Pixel (X,Y) belongs to R.
#  Any other pixel which is the same colour as (X,Y) and shares a common side with any pixel in R also belongs to this region.
#
# * S -
# * X -

# class Command;end
#
# class I < Command
#   def execute(image)
#
#   end
# end
#
# class C < Command
#   def execute(image)
#
#   end
# end
#
# class L < Command
#   def execute(image)
#
#   end
# end
#
# class V < Command
#   def execute(image)
#
#   end
# end
#
# class H < Command
#   def execute(image)
#
#   end
# end
#
# class F < Command
#   def execute(image)
#
#   end
# end
#
# class F < Command
#   def execute(image)
#
#   end
# end
#
#
#


# commands={I:I.new}
# commands={C:C.new}
# commands={L:L.new}
# commands={H:H.new}
# commands={F:F.new}


# require_relative  "lib/image.rb"
#
# require 'matrix'
#
# class Matrix
#   def []=(row, column, value)
#     @rows[row][column] = value
#   end
# end
#
# m = Matrix.build(5)
# put m(1,1)

# queue = []
#
# queue << 1
# queue << 2
# queue << 3
#
# loop do
#   context = queue.pop
#
#   if context > 1
#     queue << 4
#   end
#
#   puts context
#
#   break unless context
# end

# ## bottom
#
# OOOOO
# OOOOO
# OOJOO
# OOJOO
# OOOOO
#
# *set x "3" y "4" to "J"
# * define region x "3" y "3" color "J" size "2"
#
# ## top
#
# OOOOO
# OOJOO
# OOJOO
# OOOOO
# OOOOO
#
# *set x "3" y "2" to "J"
# * define region x "3" y "3" color "J" size "2"
#
#
# ## left
#
# OOOOO
# OOOOO
# OJJOO
# OOOOO
# OOOOO
#
# *set x "2" y "3" to "J"
# * define region x "3" y "3" color "J" size "2"
#
# ## right
#
# OOOOO
# OOOOO
# OOJJO
# OOOOO
# OOOOO
#
# *set x "4" y "3" to "J"
# * define region x "3" y "3" color "J" size "2"
#
# ## T shape
#
# OOOOO
# OOOJO
# OOJJO
# OOOJO
# OOOOO
#
# *set x "4" y "3" to "J"
# *set x "4" y "2" to "J"
# *set x "4" y "4" to "J"
# * define region x "3" y "3" color "J" size "4"
#
# class Image
#   attr_accessor :width,:height
#   def initialize(width,height)
#     @width = width
#     @height = height
#   end
# end
#
# region = []
# cache = []
#
# set_color(Pixel::Coordinate.new(x,y),color)
# pixel get_pixel_at(Pixel::Coordinate.new(x,y))
# cache << pixel
#
# top = lambda{ |x,y|
#   return Pixel::Coordinate.new(x,(y-1))
# }
#
# bottom = lambda{ |x,y|
#   return Pixel::Coordinate.new(x,(y+1))
# }
#
# left = lambda{ |x,y|
#   return Pixel::Coordinate.new((x-1),y)
# }
#
# right = lambda{ |x,y|
#   return Pixel::Coordinate.new((x+1),y)
# }
#
# loop do
#
#   begin
#     top_pixel = self.get_pixel_at(top.call(x,y))
#     if bottom_pixel.color == color
#       region << bottom_pixel unless region.include? bottom_pixel
#     end
#   rescue InvalidHeightError
#
#   end
#
# end
#
# region
#
# def fill(image,region,x,y,color)
#
#   puts "width: #{image.width}"
#   puts "height: #{image.height}"
#   puts "x: #{x}"
#   puts "Y: #{y}"
#
#   top = lambda{ |x,y,image|
#     return x,(y-1)
#   }
#
#   bottom = lambda{ |x,y,image|
#     return x,(y+1)
#   }
#
#   left = lambda{ |x,y,image|
#     return (x-1),y
#   }
#
#   right = lambda{ |x,y,image|
#     return (x+1),y
#   }
#
#   puts "top: #{top.call(x,y,image)}"
#   puts "right: #{right.call(x,y,image)}"
#   puts "bottom: #{bottom.call(x,y,image)}"
#   puts "left: #{left.call(x,y,image)}"
#
#   region.each do |p|
#     fill(image,region,p[0],p[1],"A")
#   end
#
#
# end
#
# region = []
# fill(Image.new(3,3),region,2,2,"A")
#
# # bitmap = BitMap.new
# #
# # # show contents
# # image = ImageBuilder.new(5,6) do
# #   l(2,3,A)
# #   s
# # end
# #
# # image = ImageBuilder.new
# #   .i(5,6)
# #   .l(2,3,A)
# #   .s()
# #
# # #clear the image
# # bitmap
# #   .i(5,6)
# #   .c()
# #
# # #paint the pixel
# # bitmap
# #   .i(5,6)
# #   .l(2,3,A)
# #   .s()
# #
# # #paint vertically
# # bitmap
# #   .i(5,6)
# #   .v(4,1,6,W)
# #   .s()
# #
# # #paint horizontally
# # bitmap
# #   .i(5,6)
# #   .h(4,1,6,W)
# #   .s()
# #
# # #things to remember
# #
# # * all pixels must be within the bounds of the image which is determined by the size of the image
# # defined by the i call
# #
# # * would be better reuse the l method in the vertical and horizontal
# #
# # * we will neeed to create a parser for the input data that calls the right methods.
# # the parser must read line by line.
# #
# # * the first method that gets called is the I and if not called we should raise an error
# # * an image is passed from function to function. an image is a collection of 1 more pixels
# #
# # * a pixel is x,y,color,image and , x and y must be between 1 - 250
# # * a pixel must be with in the bounds of the image x and y values.
# # * the horizontal and vertical methods create the collection of cordinates and then pass them to
# # the l method.
# # * the method first checks that the cordinate is in the bounds of the image and then updates the colour
# # value , else it throws an out of bound error.
# #
# # * add exception handling for out of bounds
