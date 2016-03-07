@echo off
echo This assumes that qbsp is in your path.
pause
for %%i in (*.ent) do qbsp -onlyents %%i

