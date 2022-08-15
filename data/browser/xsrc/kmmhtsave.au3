; AutoIt Version: 3.0
; Language:       Gibberish
; Platform:       Win9x/NT
; Author:         yanni
;

#NoTrayIcon



$mhtname = FileSaveDialog("Select MHT Path/name", @ScriptDir, "Microsoft Web Archive (*.mht)", 2, $CmdLine[2])
If @error Then
Exit
else
$mhtextra = ($mhtname & ".mht")
endif
_INetGetMHT($CmdLine[3], $mhtextra )
sleep(800)
Func _INetGetMHT( $url, $file )
    Local $msg = ObjCreate("CDO.Message")
    If @error Then Return False
    Local $ado = ObjCreate("ADODB.Stream")
    If @error Then Return False

    With $ado
        .Type = 2
        .Charset = "US-ASCII"
        .Open
    EndWith
    $msg.CreateMHTMLBody($url, 0)
    $msg.DataSource.SaveToObject($ado, "_Stream")
    FileDelete($file)
    $ado.SaveToFile($file, 1)
    $msg = ""
    $ado = ""
    Return True
EndFunc

exit

