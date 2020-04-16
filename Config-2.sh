#! /usr/bin/env python
# -*- coding: utf-8 -*-
import scrollphathd as sphd
import math
import time
import socket
 
sphd.rotate(180)
sphd.clear()
#time.sleep(30)
 
                                                                        # Data for Loading symbol
x_list = [8,8,9,9,10,9,10,9,10,9,10,9,10,9,9,8,8,8,7,7,6,7,6,7,6,7,6,7,6,7,7,8]
y_list = [1,2,1,2,1,2,2,3,3,3,4,4,5,4,5,4,5,4,5,4,5,4,4,3,3,3,2,2,1,2,1,2]
 
success = False
while success == False:
        try:
                s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
                s.connect(("8.8.8.8", 80))
                ip_address = s.getsockname()[0]                         # Get IP-Adress
                s.close()
                success = True
        except:
                counter = 0
                for y in range(1*16):                                   # If IP-Adress could not be fetched, display loading symbol for 1 cycle and retry
                        sphd.clear()
                        sphd.set_pixel(8,3,0.25)
                        sphd.set_pixel(x_list[counter],y_list[counter],0.25)
                        sphd.set_pixel(x_list[counter+1],y_list[counter+1],0.25)
                        sphd.show()
                        counter += 2
                        time.sleep(0.01)
                        success = False
 
 
sphd.write_string(ip_address + " ",1,0)                                 # Display IP-Adress
 
time.sleep(2)
 
counter = 0
while counter < 600:                                                 # Scroll through the IP-Adress for ~60 seconds (usually displays up to 2 minutes)
        sphd.scroll()
        sphd.show()
        time.sleep(0.1)
        counter += 1
 
sphd.clear()
