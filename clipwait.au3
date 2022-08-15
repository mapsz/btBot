Func clipwait()

local $error

Do
	$error += 0.1
Until ClipPut("") = 1 or $error >= 1
$error = 0
If ClipGet() <> "" Then
	$reset = 1
EndIf



Call("winex")
Call("pixwait", 10)

MouseClick("left", 15,125,1,0)
Send("{CTRLDOWN}acc{CTRLUP}")
Local $ctimer_ = TimerInit()


while ClipGet() = ""

		If $error >= 3 Then
			ClipPut("")
			$reset = 1
		EndIf

		If TimerDiff($ctimer_) > 2000 Then
			Call("winex")
			Send("^l"&"{enter}")
			Call("pixwait", 10)
			MouseClick("left", 15,125,1,0)
			Send("{CTRLDOWN}acc{CTRLUP}")
			$error = $error + 1
			$ctimer_ = TimerInit()
		EndIf

WEnd

Global $clip_ = ClipGet ()


if StringLen($clip_) <= 80 And StringInStr($clip_, "boomtime.lv/") <> 0 Then
	$callphotosort = 1
EndIf


EndFunc

