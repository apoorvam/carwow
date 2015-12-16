# Display Specification

Set colors and check the rendered image
to make sure it is correct.

## set color to top,left,right and bottom left corners
* create a "5" by "5" image
* set x "1" y "1" to "L"
* set x "5" y "1" to "L"
* set x "1" y "5" to "L"
* set x "5" y "5" to "L"
* set x "5" y "5" to "L"
* render image
  LOOOL
  OOOOO
  OOCOO
  OOOOO
  LOOOL
* check color
  |x  |y  |color   |
  |---|---|--------|
  |1  |1  |L       |
  |5  |1  |L       |
  |1  |5  |L       |
  |5  |5  |L       |

  ## set the center
  * create a "5" by "5" image
  * set x "3" y "3" to "C"
  * render image
    OOOOO
    OOOOO
    OOCOO
    OOOOO
    OOOOO
  * check color
    |x  |y  |color   |
    |---|---|--------|
    |3  |3  |L       |
