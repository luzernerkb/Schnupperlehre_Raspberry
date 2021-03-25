#!/usr/bin/env python

import time
import sphd as sphd

sphd.write_string("text", brightness=0.5)

while True:
    sphd.show()
    sphd.scroll()
    time.sleep(0.1)