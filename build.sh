#!/bin/bash

fontmake -m sources/TouchandTell.designspace -o variable
rm sources/ttx/TouchandTell-VF.ttx 
ttx -d  sources/ttx/ variable_ttf/TouchandTell-VF.ttf
echo "merge CPAL COLR and *-VF.ttx manually"
codium sources/ttx/*.ttx
ttx -d fonts/variable_ttf sources/ttx/TouchandTell-VF.ttx
ttx -d fonts/webfonts --flavor woff2 sources/ttx/TouchandTell-VF.ttx