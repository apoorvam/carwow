Image Specification
===================

An image can be a maximum of 250 pixels in width
An image can be a maximum  of 250 pixels in height
An image can not have width less than 1 pixels
An image can not have Height less than 1 pixels


Create Images
-------------

* initialize valid images
  |w  |h  |pixel count  |Exception         |
  |---|---|-------------|------------------|
  |3  |3  |9            |none              |
  |250|250|62500        |none              |

* initialize invalid images
  |w  |h  |Exception message                                          |
  |---|---|-----------------------------------------------------------|
  |251|250|A width of 251 is greater than the maximum width of 250    |
  |250|251|A height of 251 is greater than the maximum height of 250  |
  |0  |250|A width of 0 is less than the minimum width of 1           |
  |250|0  |A height of 0 is less than the minimum height of 1         |

check image bounds
------------------

* create a "3" by "3" image
* set invalid pixel colors
  |x  |y  |Exception message                   |
  |---|---|------------------------------------|
  |4  |3  |4 is outside the width of the image |
  |3  |4  |4 is outside the height of the image|
  |0  |3  |0 is outside the width of the image |
  |3  |0  |0 is outside the height of the image|


Set Color of Pixel
------------------

the x value must be greater than 1 and less than the Image width.
the y value must be greater than 1 and less than the Image Height.

* create a "3" by "3" image
* set pixel colors
  |x  |y  |color   |
  |---|---|--------|
  |3  |3  |A       |
  |2  |2  |A       |
  |1  |1  |A       |


## set pixel color and check in output
* create a "5" by "5" image
* set x "1" y "1" to "A"
* set x "2" y "1" to "B"
* set x "3" y "1" to "C"
* set x "3" y "2" to "D"
* set x "3" y "3" to "E"
* render image
* check color
  |x  |y  |color   |
  |---|---|--------|
  |1  |1  |A       |
  |2  |1  |B       |
  |3  |1  |C       |
  |3  |2  |D       |
  |3  |3  |E       |

Set column color
------------------
* create a "5" by "5" image
* set pixel vertical colors
  |x  |from|to      |color   |
  |---|----|--------|--------|
  |2  |1   |5       |W       |
* render image
* check color
  |x  |y  |color   |
  |---|---|--------|
  |2  |1  |W       |
  |2  |2  |W       |
  |2  |3  |W       |
  |2  |4  |W       |
  |2  |5  |W       |



Set row color
------------------
tags: wip
* create a "5" by "5" image
* set pixel horizontal colors
  |y    |from  |to      |color   |
  |-----|------|--------|--------|
  |2    |1     |5       |W       |
* render image
* check color
  |x  |y  |color   |
  |---|---|--------|
  |1  |2  |W       |
  |2  |2  |W       |
  |3  |2  |W       |
  |4  |2  |W       |
  |5  |2  |W       |


Clear image
------------------
* create a "5" by "5" image
* set pixel vertical colors
  |x  |from|to      |color   |
  |---|----|--------|--------|
  |2  |1   |5       |W       |
* set pixel horizontal colors
  |y    |from  |to      |color   |
  |-----|------|--------|--------|
  |2    |1     |5       |W       |
* clear image
* render image
* check color
  |x  |y  |color   |
  |---|---|--------|
  |1  |1  |O       |
  |2  |2  |O       |
  |3  |2  |O       |
  |4  |2  |O       |
  |5  |2  |O       |

  F X Y C - Fill the region R with the colour C. R is defined as: Pixel (X,Y) belongs to R.

  * create a "5" by "5" image

## Fill and get region
* set x "1" y "2" to "A"
* set x "2" y "1" to "A"
* set x "2" y "3" to "A"
* set x "3" y "2" to "A"
* set x "1" y "1" to "A"
* set x "3" y "3" to "A"
* set x "1" y "3" to "A"
* set x "5" y "5" to "A"
* set x "4" y "3" to "B"
* fill x "2" y "2" to "A"
* render image
* check in region
  |x  |y  |color   |
  |---|---|--------|
  |2  |2  |A       |
  |2  |1  |A       |
  |2  |3  |A       |
  |1  |2  |A       |
  |3  |2  |A       |
  |1  |1  |A       |
  |3  |3  |A       |
  |1  |3  |A       |
* check out of region
  |x  |y  |color   |
  |---|---|--------|
  |5  |5  |A       |
  |4  |3  |A       |
