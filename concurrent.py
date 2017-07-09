#! /usr/bin/env python

import sys, select, time
import pycurl
from io import StringIO

filename = "100_pages.pdf"
numberPages = 100
#url = "localhost:8000/?file=" + filename
#url = "http://www.axmag.com/download/pdfurl-guide.pdf"
#url = "http://housedocs.house.gov/edlabor/AAHCA-BillText-071409.pdf" # > 1000 pages

# nodejs or php
server = "php"

# Node.js
#url = "http://192.168.0.105:9000/?file=1000_pages.pdf"
# PHP
url = "http://192.168.0.105:8080/JavaBridgeTemplate621/Main.php?file=100_pages.pdf"

numberOfRequests = 500
m = pycurl.CurlMulti()
curls = []

for i in range(0, numberOfRequests):
    c = pycurl.Curl()
    c.setopt(c.URL, url)
    curls.append(c)
    m.add_handle(c)

# Number of seconds to wait for a timeout to happen
SELECT_TIMEOUT = 1.0

# Stir the state machine into action
while 1:
    ret, num_handles = m.perform()
    if ret != pycurl.E_CALL_MULTI_PERFORM:
        break

# Keep going until all the connections have terminated
while num_handles:
    # The select method uses fdset internally to determine which file descriptors
    # to check.
    m.select(SELECT_TIMEOUT)
    while 1:
        ret, num_handles = m.perform()
        if ret != pycurl.E_CALL_MULTI_PERFORM:
            break

filepath = "C:/Users/Lhwannah/Dropbox/artigo ads/data/concurrent/"
#filepath = "data/concurrent/"

partialFilepath = filepath + server + "_" + str(numberOfRequests) + "_requests" + "_" + str(numberPages) + "_pages"


fileTT = open(partialFilepath + "_TOTAL_TIME" + ".txt", "w+")
fileSD = open(partialFilepath + "_SPEED_DOWNLOAD" + ".txt", "w+")
fileCD = open(partialFilepath + "_CONNECT_TIME" + ".txt", "w+")

# Store data
for curl in curls:

    fileTT.write(str(curl.getinfo(curl.TOTAL_TIME)) + "\n")
    fileSD.write(str(curl.getinfo(curl.SPEED_DOWNLOAD)) + "\n")
    fileCD.write(str(curl.getinfo(curl.CONNECT_TIME)) + "\n")
    
    print("TOTAL_TIME: " + str(curl.getinfo(curl.TOTAL_TIME)))
    print("SPEED_DOWNLOAD: " + str(curl.getinfo(curl.SPEED_DOWNLOAD)))
    print("CONNECT_TIME: " + str(curl.getinfo(curl.CONNECT_TIME)))
    print("------------------------------------------------------")

#Cleanup
for curl in curls:    
    m.remove_handle(curl)
    curl.close()

# Close files and curlmulti
m.close()
fileTT.close()
fileSD.close()
fileCD.close()


