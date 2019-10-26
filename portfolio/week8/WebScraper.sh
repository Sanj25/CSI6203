#!/bin/bash

curl -s http://example.com | awk -vRS="</title>" '/<title>/{gsub(/.*<title>|\n+/,"");print;exit}'
curl -s http://example.com | awk -vRS="</p>" '/<p>/{gsub(/.*<p>|\n+/,"");print;exit}'