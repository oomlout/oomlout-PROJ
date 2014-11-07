@echo off
set TPGEdirectory=C:\GH\oomlout-TPGE\
set WIKBdirectory=C:\GH\oomlout-WIKB\
set proj=WHSN

set directory=C:\GH\oomlout-%proj%\

echo on

%directory%

REM
REM Generate Project Page
REM

	REM      Generate Page
python %TPGEdirectory%TPGEmain.py -id %proj% -bd %directory% -ex C:\GH\oomlout-TPGE\tags\ -xa .oomp -tm template/PROJ-template.tmpl.html -of %directory%\%PROJ%-wiki.html

	REM Upload Page
python %WIKBdirectory%WIKBmain.py -si oomlout -bd %directory%%proj%-wiki.html -wb projects/%proj%
