Func acccheck()


	Do
		local $acccheck_ = BinaryToString(InetRead("http://cp53465.chost.lv/btbotaccs/" & $login_ & ".htm", 1))

		local $acconcloud_ = StringInStr($acccheck_, "ACCOUNT_OK|",1)

		If $acconcloud_ = 0 Then
			local $msg = MsgBox(1,"ACC error","Этот профиль недоступен"&@CR&"или ошибка на сервере подождите...",5)
			If $msg = 2 Then exit(0)
		Else
			$acconcloud_ = 1
		EndIf

	Until $acconcloud_ = 1


	Local $accid_ = StringSplit($acccheck_,"|")
	$accid_ = $accid_[2]
	Send("{ctrldown}t{ctrlup}")
	call("winex")
	Call("pixwait", 10)
	Send("{ctrldown}l{ctrlup}view-source:" & "http://friends.boomtime.lv/profile.html" & "{Enter}")
	Call("pixwait", 10)
	call("clipwait")
	Send("{ctrldown}w{ctrlup}")
	call("winex")
	Call("pixwait", 10)
	$acccheck_ = StringRight ( StringLeft($clip_, StringInStr( $clip_,"var phs_image" )), 50 )
	if  StringInStr ($acccheck_ , $accid_) > 0 Then
		Return 0
	Else
		Call("reset")
	EndIf

EndFunc