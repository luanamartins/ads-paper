#! /usr/bin/env python

import pycurl
from io import BytesIO


filepath = "C:/Users/Lhwannah/Dropbox/artigo ads/data/sequential/"
#url = "localhost:8000"
#url = "facebook.com"

numberPages = 1000

# nodejs or php
server = "nodejs"

# Node.js
url = "http://192.168.0.105:9000/?file=1000_pages.pdf"
# PHP
#url = "http://192.168.0.105:8080/JavaBridgeTemplate621/Main.php?file=1000_pages.pdf"

numberOfRequests = 500

buffer = BytesIO

partialFilepath = filepath + server + "_" + str(numberOfRequests) + "_requests" + "_" + str(numberPages) + "_pages"

fileTT = open(partialFilepath + "_TOTAL_TIME" + ".txt", "w+")
fileSD = open(partialFilepath + "_SPEED_DOWNLOAD" + ".txt", "w+")
fileCD = open(partialFilepath + "_CONNECT_TIME" + ".txt", "w+")

for i in range(0, numberOfRequests):
    curl = pycurl.Curl()
    curl.setopt(curl.URL, url)
    buffer = BytesIO()
    curl.setopt(curl.WRITEDATA, buffer)
    curl.perform()

    fileTT.write(str(curl.getinfo(curl.TOTAL_TIME)) + ("\n"))
    fileSD.write(str(curl.getinfo(curl.SPEED_DOWNLOAD)) + ("\n"))
    fileCD.write(str(curl.getinfo(curl.CONNECT_TIME)) + ("\n"))

    print("TOTAL_TIME: " + str(curl.getinfo(curl.TOTAL_TIME)))
    print("SPEED_DOWNLOAD: " + str(curl.getinfo(curl.SPEED_DOWNLOAD)))
    print("CONNECT_TIME: " + str(curl.getinfo(curl.CONNECT_TIME)))
    print("------------------------------------------------------")

    #print(curl.getinfo(pycurl.HTTP_CODE), curl.getinfo(pycurl.EFFECTIVE_URL))
    #print(body.decode('iso-8859-1'))

fileTT.close()
fileSD.close()
fileCD.close()
