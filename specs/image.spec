Image Specification
===================

An image can be a maximum of 250 pixels in width
An image can be a maximum  of 250 pixels in height
An image can not have width less than 1 pixels
An image can not have Hieght less than 1 pixels


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
