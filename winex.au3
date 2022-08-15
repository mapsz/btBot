Func winex()

If WinActive("[CLASS:KMeleon Browser Window]") = 0 Then
	If WinActivate("[CLASS:KMeleon Browser Window]", "") = 0 Then
		$reset = 1
		Return
	EndIf
EndIf

Sleep(100)
EndFunc   ;==>winex