Func acccheck()

		local $acccheck_ = BinaryToString(InetRead("http://btbot.comxa.com/accs/" & $login_, 1))

	If StringInStr($acccheck_, "ACCOUNT_OK|",1) = 0 Then
			local $acccheck_ = BinaryToString(InetRead("http://btbot.bl.ee/accs/" & $login_, 1))
	EndIf

	If StringInStr($acccheck_, "ACCOUNT_OK|",1) = 0 Then
		MsgBox(1,"ACC error","Этот профиль недоступен")
		exit (0)
	EndIf


	Local $accid_ = StringSplit($acccheck_,"|")
	$accid_ = $accid_[2]

	call("winex")
		Send("{ctrldown}l{ctrlup}view-source:" & "http://friends.boomtime.lv/profile.html" & "{Enter}")
	Call("pixwait", 10)
	call("clipwait")
	$acccheck_ = StringRight ( StringLeft($clip_, StringInStr( $clip_,"var phs_image" )), 45 )
	if  StringInStr ($acccheck_ , $accid_) > 0 Then

		Return
	Else

		Call("reset")
	EndIf

EndFunc