Func clipwait($clipwhat)
Do
	if ClipPut("") = 0 Then
		ClipPut(1)
	EndIf
Until ClipGet() = ""

Call("winex")
Call("pixwait", 10)
MouseClick("left", 15,125,1,0)
Send("{CTRLDOWN}acc{CTRLUP}")
MouseClick("left", 15,125,1,0)
Send("{CTRLDOWN}acc{CTRLUP}")
Local $error = 1
Local $ctimer_ = TimerInit()

	while StringLen (ClipGet()) <= 2

		If $error >= 3 Then

			ClipPut("")
			$reset = 1
			Return

		EndIf

		If TimerDiff($ctimer_) > 2000 Then

			Call("winex")
			Send("^l"&"{enter}")
			Call("pixwait", 10)
			MouseClick("left", 15,125,1,0)
			Send("{CTRLDOWN}acc{CTRLUP}")
			$error = $error + 1


		EndIf

	WEnd

Global $clip_ = ClipGet ()

Do
	if ClipPut("") = 0 Then
		ClipPut(1)
	EndIf
Until ClipGet() = ""


		if StringLen($clip_) <= 80 And StringInStr($clip_, "boomtime.lv/") <> 0 Then

			$callphotosort = 1

		EndIf


		If StringInStr($clip_, "Šobrīd portālā veicam īsla") <> 0 Then
			Sleep(30000)
		EndIf

EndFunc

