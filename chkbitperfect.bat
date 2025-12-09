@ECHO OFF

REM // build the ROM
call build %1

REM  // run fc
echo -------------------------------------------------------------
IF EXIST beavisbuilt.bin ( fc /b beavisbuilt.bin beavis.bin
) ELSE echo beavisbuilt.bin does not exist, probably due to an assembly error

REM // clean up after us

REM // if someone ran this from Windows Explorer, prevent the window from disappearing immediately
pause
