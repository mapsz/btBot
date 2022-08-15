; AutoIt Version: 3.0
; Language:       Gibberish
; Platform:       Win9x/NT
; Author:         yanni
;

#NoTrayIcon
#Include <File.au3>

$mhtpath = FileOpenDialog("Select MHT Path/name", @WorkingDir, "Microsoft Web Archive (*.mht)", 2)
$mhtparm = _PathFull($mhtpath)

$check=StringRegExp($mhtparm, "(?i)mht")

if $check=0 Then
exit
Else
$ietab = ("chrome://ietab/content/reloaded.html?url=")
$mhtfucker = ($ietab & $mhtparm)
sleep(400)
shellexecute($CmdLine[1], $mhtfucker)
exit
EndIf
Exit
