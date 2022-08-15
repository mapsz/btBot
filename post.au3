Func post($captchaid,$id)

	While StringInStr($captcha_, "OK|") == 0


		$captcha_ = BinaryToString(InetRead("http://antigate.com/res.php?key="&$id&"&action=get&id=" & $captchaid, 1))


		If StringInStr($captcha_, "OK|") == 0 Then

			Sleep(1000)

		EndIf
	WEnd

	$captcha_ = StringSplit($captcha_, "|")
	$captcha_ = $captcha_[2]
	StringLeft($captcha_,6)


EndFunc   ;==>post