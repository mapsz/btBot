Func nextpage()

	$page__ += 1

	call("winex")
	Call("pixwait", 10)

	If $album_ = "0" Then
		Send("{ctrldown}l{ctrlup}view-source:http://friends.boomtime.lv/dating//" & $page__ & "{Enter}")
	Else
		Send("{ctrldown}l{ctrlup}view-source:" & $album_ & "/" & $page__ & "{Enter}")
	EndIf

	Call("pixwait", 10)
	call("clipwait")

	If StringInStr($clip_, "l nav fotogr") <> 0 or StringInStr($clip_, "žēl, pēc Jūsu kritērijam neviens netika atras") <> Then

		MsgBox(1,"error","Фото закончились")
		exit 0

	EndIf

	$fotosort = $clip_


	If $album_ = "0" Then
		$fotosort = StringTrimLeft ( $fotosort, StringInStr($fotosort, "Paplašināta meklēšana"))
		$fotosort = StringMid ( $fotosort,1 ,StringInStr($fotosort, "main-td3"))
		$fotosort = StringReplace ( $fotosort, "\", "")

	Else
		$fotosort = StringTrimLeft ( $fotosort, StringInStr($fotosort, "Fotogrāfiju skaits kopā:"))
	EndIf

EndFunc
