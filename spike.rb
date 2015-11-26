bitmap = BitMap.new

# show contents
image = ImageBuilder.new(5,6) do
  l(2,3,A)
  s
end

image = ImageBuilder.new
  .i(5,6)
  .l(2,3,A)
  .s()

#clear the image
bitmap
  .i(5,6)
  .c()

#paint the pixel
bitmap
  .i(5,6)
  .l(2,3,A)
  .s()

#paint vertically
bitmap
  .i(5,6)
  .v(4,1,6,W)
  .s()

#paint horizontally
bitmap
  .i(5,6)
  .h(4,1,6,W)
  .s()

#things to remember

* all pixels must be within the bounds of the image which is determined by the size of the image
defined by the i call

* would be better reuse the l method in the vertical and horizontal

* we will neeed to create a parser for the input data that calls the right methods.
the parser must read line by line.

* the first method that gets called is the I and if not called we should raise an error
* an image is passed from function to function. an image is a collection of 1 more pixels

* a pixel is x,y,color,image and , x and y must be between 1 - 250
* a pixel must be with in the bounds of the image x and y values.
* the horizontal and vertical methods create the collection of cordinates and then pass them to
the l method.
* the method first checks that the cordinate is in the bounds of the image and then updates the colour
value , else it throws an out of bound error.
