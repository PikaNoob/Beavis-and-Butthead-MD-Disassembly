@ECHO OFF

REM // build the ROM
call build %1

REM  // run fc
echo -------------------------------------------------------------
IF EXIST beavisbuilt.bin ( fc /b beavisbuilt.bin butthead.bin
) ELSE echo beavisbuilt.bin does not exist, probably due to an assembly error

REM // clean up after us
IF EXIST beavis.lst del beavis.lst
IF EXIST beavisbuilt.bin del beavisbuilt.bin
IF EXIST errors.txt del errors.txt

REM // if someone ran this from Windows Explorer, prevent the window from disappearing immediately
pause
