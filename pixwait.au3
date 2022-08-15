
Func pixwait($pixtime)

	Call("winex")
	$pixtime = $pixtime * 1000
	Local $error = 1
	Local $ptimer_ = TimerInit()
	Sleep(100)

	Do
		If $error >= 3 Then
			$reset = 1
		EndIf

		If TimerDiff($ptimer_) > $pixtime Then
			Call("winex")
			Send("^l" & "{enter}")
			$error = $error + 1

		EndIf


	Until StatusbarGetText ("[CLASS:KMeleon Browser Window]") == "Готово" or $reset == 1

EndFunc   ;==>pixwait
