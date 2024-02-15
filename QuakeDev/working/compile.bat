@echo off

cd\
cd C:\QuakeDev\working


echo Copying Files...
copy C:\QuakeDev\id1\maps\testmap.map C:\QuakeDev\working


echo Converting map...


echo --------------QBSP--------------
C:\QuakeDev\tools\ericw-tools\bin\qbsp.exe testmap

echo --------------VIS---------------
C:\QuakeDev\tools\ericw-tools\bin\vis.exe testmap

echo -------------LIGHT--------------
C:\QuakeDev\tools\ericw-tools\bin\light.exe testmap

copy testmap.bsp C:\QuakeDev\id1\maps
copy testmap.pts C:\QuakeDev\id1\maps
copy testmap.lit C:\QuakeDev\id1\maps
pause
cd\
cd C:\QuakeDev
quakespasm-spiked-win64  +map testmap
