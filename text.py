#!/usr/bin/env python
# -*- coding: utf-8 -*-
import scrollphathd as light
import math
import time
import sleep

print('Press Ctrl-C to interrupt...')
## Write your code here
light.write_string("187");
while True:
    light.show();
    light.rotate(180);
    light.scroll(1);
    light.sleep(0.5);
    
    

