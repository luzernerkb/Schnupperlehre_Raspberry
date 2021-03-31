# -*- coding: utf-8 -*-
#This script shows a straight line which moves vertically over the scroll phat
import scrollphathd as sphd
import math
import time

## Write your code here
while True:
    for x in range (17):
        sphd.clear()
        for y in range (7):
            sphd.set_pixel(x,y,0.25)
        sphd.show()
        time.sleep(0.3/1.0)
