#! /usr/bin/env python

import sys, select, time
import pycurl
from io import StringIO

filename = "100_pages.pdf"
url = "localhost:8000/?file=" + filename

c1 = pycurl.Curl()
c2 = pycurl.Curl()
c3 = pycurl.Curl()
c1.setopt(c1.URL, "http://www.python.org")
c2.setopt(c2.URL, "http://curl.haxx.se")
c3.setopt(c3.URL, "http://slashdot.org")
s1 = StringIO()
s2 = StringIO()
s3 = StringIO()
c1.setopt(c1.WRITEFUNCTION, s1.write)
c2.setopt(c2.WRITEFUNCTION, s2.write)
c3.setopt(c3.WRITEFUNCTION, s3.write)

m = pycurl.CurlMulti()
m.add_handle(c1)
m.add_handle(c2)
m.add_handle(c3)

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

# Cleanup
m.remove_handle(c3)
m.remove_handle(c2)
m.remove_handle(c1)
m.close()
c1.close()
c2.close()
c3.close()
print ("http://www.python.org is ", s1.getvalue())
print ("http://curl.haxx.se is ", s2.getvalue())
print ("http://slashdot.org is ", s3.getvalue())
