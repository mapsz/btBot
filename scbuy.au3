Func scbuy()

;~ sdelatj vl check
	Call("pixwait", 10)

	MouseClick("left", 15,125,3,0)
	Send("{tab}{space}")

	Local $coord_ = PixelSearch(0, 0, 600, 600, 0xA0EBCF)  ;~ optmizirovatj
	MouseClick("left", $coord_[0],$coord_[1],1,0)

	Call("pixwait", 10)
	call("clipwait")

	If StringInStr($clip_, "su naudas mak") <> 0 Then

		MsgBox(1,"Error","Недостаточно ВЛ")
		Exit 0

	EndIf
$timerphoto = $timerphoto + 1

EndFunc