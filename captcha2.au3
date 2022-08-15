Func captcha()

	Call("winex")
	Sleep(500)

	MouseClick("left", 15, 125, 3, 0)
	Local $ccoord_ = PixelSearch(0, 0, 600, 600, 0xE7B1F2)
	_ScreenCapture_Capture(@TempDir & "\captcha.jpg", $ccoord_[0], $ccoord_[1], $ccoord_[0] + 115, $ccoord_[1] + 35)


	While StringInStr($clip_, "OK|") = 0

		Call("winex")
		Send("^t")
		Call("pixwait", 10)
		Send("resource:///captcha.htm{enter}")
		Call("pixwait", 10)
		MouseClick("left", 15, 125, 3, 0)
		Send("{tab}" & @TempDir & "\captcha.jpg" & "{tab 2}{enter}")
		Sleep(100)
		Call("pixwait", 10)
		Call("clipwait")
		Send("^w")

		If StringInStr($clip_, "ERROR_NO_SLOT_AVAILABLE") <> 0 Then
			Sleep(2000)
		EndIf
		If StringInStr($clip_, "ERROR_ZERO_BALANCE") <> 0 Then
			MsgBox(1,"error","коды закончились!")
			Exit
		EndIf
	WEnd


	Local $captid = StringSplit($clip_, "|")
	Call ("post",$captid[2])

	Call("winex")
	MouseClick("left", $ccoord_[0] + 120, $ccoord_[1], 3, 0)
	Send ("{tab}" & $captcha_ & "{enter}")
	Call("pixwait", 10)
	Send("^l" & "{enter}")
	Call("pixwait", 10)
	Call("clipwait")
	If StringInStr($clip_, "Ievadiet kodu no bildes:") <> 0 Then
;~ 			FileCopy(@TempDir & "\captcha.jpg", "data\badcaptcha\" & $captid[2] & ";" & $captcha_ & ".jpg", 8)
			InetRead("http://antigate.com/res.php?key=2a81f0e01eab94fad81f1276b689abf6&action=reportbad&id=" & $captid[2], 1)
	EndIf




EndFunc