#!/bin/bash
#This script will fetch all the url from your saved html page
grep -Eoi '<a [^>]+>' source.html |
grep -Eo 'href="[^\"]+"' |
grep -Eo '(http|https)://[^/"]+' > faktatuch.txt
