Fill Specification
===================

F X Y C - Fill the region R with the colour C. R is defined as: Pixel (X,Y) belongs to R.

* create a "3" by "3" image

## Fill center
* fill x "2" y "2" to "A"
* render image
* check region
  |x  |y  |color   |
  |---|---|--------|
  |2  |2  |A       |

## Fill center with top in region
* set x "2" y "1" to "A"
* fill x "2" y "2" to "A"
* render image
* check region
  |x  |y  |color   |
  |---|---|--------|
  |2  |2  |A       |
  |2  |1  |A       |
