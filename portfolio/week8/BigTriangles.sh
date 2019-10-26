#!/bin/bash
exec ../week7/ShortTriangles.sh | grep -o '[^:]\+$' | grep '\<[0-9]\{2,6\}\>'