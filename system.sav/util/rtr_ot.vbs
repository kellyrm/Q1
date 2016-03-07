option explicit
Dim fso2, fThisFile2, obj, bRet, WshShell
const NIC_EXE = "c:\system.sav\util\nictool.exe"
const SOURCEPATH = "c:\windows\regedit.exe -s c:\i386\srcpath.reg"
const SOURCEPATH_REG = "c:\i386\srcpath.reg"

'Run NIC Tool
Set WshShell = Wscript.CreateObject("Wscript.Shell")
bRet = WshShell.Run( NIC_EXE, 2, TRUE)

'Delete Nic Tool from the end user machine
Set fso2 = CreateObject("Scripting.FileSystemObject")
Set fThisFile2 = fso2.GetFile(NIC_EXE)
fThisFile2.Delete

'Set Sourcepath
Set WshShell = Wscript.CreateObject("Wscript.Shell")
bRet = WshShell.Run( SOURCEPATH, 2, TRUE)

'Delete this file from the end user machine
Set fso2 = CreateObject("Scripting.FileSystemObject")
Set fThisFile2 = fso2.GetFile(SOURCEPATH_REG)
fThisFile2.Delete

Set fThisFile2 = fso2.GetFile("c:\system.sav\util\rtr_ot.vbs")
fThisFile2.Delete



