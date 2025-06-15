#!/bin/bash

fontmake -m sources/TouchandTell.designspace -o variable
# rm sources/ttx/TouchandTell-VF.ttx 
cd sources/ttx 
cp ../../variable_ttf/TouchandTell-VF.ttf .
ttx -m TouchandTell-VF.ttf TouchandTell-COLR.ttx
fonttools ttLib.woff2 compress -o TouchandTell.woff2  TouchandTell-COLR.ttf
cd ../..
rm -rf fonts 
mkdir -p fonts/webfonts
mv sources/ttx/TouchandTell-COLR.ttf fonts
mv sources/ttx/TouchandTell.woff2 fonts/webfonts
