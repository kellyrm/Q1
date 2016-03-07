option explicit
Dim fso2, fThisFile2, obj, bRet, WshShell
const SLEEP_EXE = "c:\system.sav\util\sleep.exe"
const SR_DELAY = "c:\system.sav\util\sleep.exe 15"
const SR_TOOL = "c:\system.sav\util\srtool.exe"
const SR_TOOL_OFF = "c:\system.sav\util\srtool.exe /off"
const SR_TOOL_ON = "c:\system.sav\util\srtool.exe /on"

'Turn Off system restore
Set WshShell = Wscript.CreateObject("Wscript.Shell")
bRet = WshShell.Run( SR_TOOL_OFF, 2, TRUE)

bRet = WshShell.Run( SR_DELAY, 2, TRUE)

'Turn on System Restore.
bRet = WshShell.Run( SR_TOOL_ON, 2, TRUE)

'Delete sleep.exe from the end user machine
Set fso2 = CreateObject("Scripting.FileSystemObject")
Set fThisFile2 = fso2.GetFile(SLEEP_EXE)
fThisFile2.Delete

'Delete SR Tool
Set fThisFile2 = fso2.GetFile(SR_TOOL)
fThisFile2.Delete

'Delete this file
Set fThisFile2 = fso2.GetFile("c:\system.sav\util\sr_on.vbs")
fThisFile2.Delete



