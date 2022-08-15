func ready()

	Call("winex")
	Send("^l"&"www.boomtime.lv{enter}")
	Call("pixwait", 30)
	call("clipwait")
	If $reset = 1 Then
		Return
	EndIf


	if StringInStr($clip_,"Aizmirsu paroli") <> 0 Then
		MouseClick("left", 15,125,1,0)
		Send("{TAB}" & $login_ & "{TAB}" & $passw_ & "{enter}")
		Sleep(100)
		Call("pixwait", 30)
		call("clipwait")
	EndIf



	If StringInStr($clip_,"Autorizācijas kļūda") <> 0 Then
		Call ("wrongpass")
		Call("ready")
		Return
	EndIf

	If StringInStr($clip_,"Jums ir jaunas idejas vai komentāri sakarā ar portālu?") = 0 Then

			Call("ready")
			Return
	EndIf

EndFunc