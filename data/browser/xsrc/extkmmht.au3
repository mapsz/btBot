; AutoIt Version: 3.0
; Language: Gibberish
; Platform: Win9x/NT
; Author: yanni

#NoTrayIcon
#Include <String.au3>
#Include <File.au3>



If FileExists(@ScriptDir & "\extkmmht.ini") Then
$kmpath = IniRead(@ScriptDir & "\extkmmht.ini", "kmeleon", "1", "default")
Else
$kmpath = FileOpenDialog("Please Find K-meleon.exe", @WorkingDir, "K-meleon Exectuable (k-meleon.exe)", 2 )

$check=StringRegExp($kmpath, "(?i)k-meleon.exe")
if $check=0 Then
MsgBox(4096, "error", "Cannot continue because k-meleon.exe was not found", 8)
exit
Else
    IniWrite(@ScriptDir & "\extkmmht.ini", "kmeleon", 1, $kmpath)
    EndIf
EndIf


if $CmdLine[0] = 0 Then
$mhtpath = FileOpenDialog("Select Web Archive file", @WorkingDir & "", "Microsoft Web Archives (*.mht)", 1 + 4 )
ElseIf $CmdLine[0] = 1 Then
$mhtpath = _PathFull($CmdLine[1])
EndIf

If $mhtpath="" Then
Exit
Else
$ietab = ("chrome://ietab/content/reloaded.html?url=")
$mhtfucker = ($ietab & $mhtpath)
sleep(400)
shellexecute($kmpath, $mhtfucker)
Exit
EndIf

exit