#!/bin/bash
curl -s https://www.ecu.edu.au/degrees/study-areas/science | awk '/study-areas\/science.*>*<\/a/ {print}' | awk -v RS='<[^>]+>' -v ORS= '1'