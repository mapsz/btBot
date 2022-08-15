Func nextpage()

	$page__ += 1


		;------------- знакомства
	If $album_ = "0" Then

		Send("{ctrldown}l{ctrlup}view-source:http://friends.boomtime.lv/dating//" & $page__ & "{Enter}")

		Call("pixwait", 10)
		Call("clipwait")

		If StringInStr($clip_, "žēl, pēc Jūsu kritērijam neviens netika atras") <> 0 Then
			MsgBox(1,"error","люди закончились")
			exit 0
		EndIf

		$fotosort = $clip_
		$fotosort = StringTrimLeft ( $fotosort, StringInStr($fotosort, "Paplašināta meklēšana"))
		$fotosort = StringMid ( $fotosort,1 ,StringInStr($fotosort, "main-td3"))
		$fotosort = StringReplace ( $fotosort, "\", "")

	ElseIf $album_ = "2" Then
	; ------------онлайн

		Send("{ctrldown}l{ctrlup}view-source:http://friends.boomtime.lv/search/result/" & $setup_ & $page__ & "{Enter}")

		Call("pixwait", 10)
		Call("clipwait")

		If StringInStr($clip_, ">Neviena nav</td>") <> 0 Then

			$page__ = 0
			$reset = 1
		EndIf

		$fotosort = $clip_
		$fotosort = StringTrimLeft ( $fotosort, StringInStr($fotosort, ">Pilsēta</th>"))
		$fotosort = StringMid ( $fotosort,1 ,StringInStr($fotosort, "<b>Segvārds:</b>"))
		$fotosort = StringReplace ( $fotosort, "\", "")


	Else

	;-------альбом

		Send("{ctrldown}l{ctrlup}view-source:" & $album_ & "/" & $page__ & "{Enter}")

		Call("pixwait", 10)
		Call("clipwait")

		If StringInStr($clip_, "l nav fotogr") <> 0 Then
			MsgBox(1,"error","фото закончились")
			exit 0
		EndIf

		$fotosort = $clip_
		$fotosort = StringTrimLeft ( $fotosort, StringInStr($fotosort, "Fotogrāfiju skaits kopā:"))

	EndIf

EndFunc
