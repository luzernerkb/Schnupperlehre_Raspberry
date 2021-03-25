#!/usr/bin/env python
#Displays a animation which fills the Scroll Phat from the right to the left
import scrollphathd

try:
    while True:
        for x in range(18):
            scrollphathd.fill(0.1,0,0,x,7)
            scrollphathd.show()
        for x in range(18):
            scrollphathd.fill(0,0,0,x,7)
            scrollphathd.show()
except KeyboardInterrupt:
    scrollphathd.fill(0)
    scrollphathd.show()
