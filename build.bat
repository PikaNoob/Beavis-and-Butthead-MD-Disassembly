@echo off

asm68k /k /p /o ae- beavis.asm, beavisbuilt.bin >errors.txt, , beavis.lst
fixheadr.exe beavisbuilt.bin