@echo off

set FTPSERVER=simonstreuli.bplaced.net
set USERNAME=simonstreuli_1
set PASSWORD=uXwdXqreJy2tNJEqlNjy
set REMOTEDIR=www
set LOCALDIR=..\D1

echo Connecting to %FTPSERVER%...
echo user %USERNAME%> ftpcmd.dat
echo %PASSWORD%>> ftpcmd.dat
echo cd %REMOTEDIR%>> ftpcmd.dat
echo mdelete *.html>> ftpcmd.dat
echo mdelete *.css>> ftpcmd.dat
echo lcd %LOCALDIR%>> ftpcmd.dat
echo ascii>> ftpcmd.dat
echo prompt>> ftpcmd.dat
echo mput .>> ftpcmd.dat
echo disconnect>> ftpcmd.dat
echo bye>> ftpcmd.dat

ftp -n -s:ftpcmd.dat %FTPSERVER%

del ftpcmd.dat

pause