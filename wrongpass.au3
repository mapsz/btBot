Func wrongpass()
	#Region ### START Koda GUI section ### Form=C:\btbot\wrongpass.kxf
	Local $Form2 = GUICreate("WrongPass", 179, 166)
	Local $Label1 = GUICtrlCreateLabel("Неправильный", 32, 16, 118, 24)
	GUICtrlSetFont(-1, 12, 400, 0, "MS Sans Serif")
	GUICtrlSetColor(-1, 0xFF0000)
	Local $Label2 = GUICtrlCreateLabel("Логин или пароль", 32, 40, 120, 20)
	GUICtrlSetFont(-1, 10, 400, 0, "MS Sans Serif")
	GUICtrlSetColor(-1, 0xFF0000)
	Local $Label3 = GUICtrlCreateLabel("Login:", 16, 72, 33, 17)
	Local $Input1 = GUICtrlCreateInput("", 72, 72, 97, 21)
	Local $Label4 = GUICtrlCreateLabel("Password:", 16, 96, 53, 17)
	Local $Input2 = GUICtrlCreateInput("", 72, 96, 97, 21, 0x0020)
	Local $Button1 = GUICtrlCreateButton("ОК", 16, 128, 75, 25)
	Local $Button2 = GUICtrlCreateButton("Cancel", 96, 128, 75, 25)
	GUISetState(@SW_SHOW)
	#EndRegion ### END Koda GUI section ###

	While 1
		Local $nMsg = GUIGetMsg()
		Switch $nMsg
			Case $Button2
				Exit
			case $Button1
				$login_ = GUICtrlRead($Input1)
				$passw_ = GUICtrlRead($Input2)
				GUIDelete($Form2)
				ExitLoop
		EndSwitch
	WEnd

EndFunc