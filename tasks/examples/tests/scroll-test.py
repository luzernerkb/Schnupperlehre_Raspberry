#!/usr/bin/env python
#displays a dot which bounce off the edges of the scroll phat

import time

import scrollphathd

scrollphathd.pixel(0,0,0.5)

try:
    while True:
        scrollphathd.scroll(1,1)
        scrollphathd.show()
        time.sleep(0.1)
except KeyboardInterrupt:
    scrollphathd.fill(0)
    scrollphathd.show()
