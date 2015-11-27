Pixel co-ordinates Specification
================================

Pixel co-ordinates are a pair of integers
the x value must be greater than 1 and less than the Image width.
the y value must be greater than 1 and less than the Image Height.

Create a an image with maximum size
-----------------------------------

* create a "250" by "250" image
* create and validate pixels
  |x  |y  |valid?  |
  |---|---|--------|
  |250|250|true    |
  |250|1  |true    |
  |1  |250|true    |
  |1  |251|false   |
  |251|1  |false   |
  |0  |1  |false   |
  |1  |0  |false   |

check pixels are valid with in image bounds
-------------------------------------------

* create a "200" by "100" image
* create and validate pixels
  |x  |y  |valid?  |
  |---|---|--------|
  |250|250|false   |
  |250|1  |false   |
  |1  |250|false   |
  |1  |251|false   |
  |251|1  |false   |
  |0  |1  |false   |
  |1  |0  |false   |
  |200|100|true    |
  |100|200|false   |
