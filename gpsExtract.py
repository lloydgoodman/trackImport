#!/usr/bin/env python
 
import sys
import untangle

if len(sys.argv) < 2:
	print('Usage: gpsExtract.py <xmlfile.xml>')
	sys.exit()

xmlInput = sys.argv[1]

obj = untangle.parse(xmlInput)
for note in obj.note:
    body = note.body.cdata

print(body)
