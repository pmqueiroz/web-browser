@echo off
echo Converting file .ui in python file
pyuic5 -x simpleFrontPage.ui -o index.py
echo File converted successfully
