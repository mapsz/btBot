#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_UseX64=n
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
Func score()
Opt("sendKeyDelay", 0)
Opt("sendKeydownDelay", 0)
$callphotosort = 0

	if $acccheck_ >= 20 Then
		Call("acccheck")
		$acccheck_ = 0
	endif

	Call("winex")
	Send("{ctrldown}l{ctrlup}" & "http://friends.boomtime.lv/window/friend/photo_view/" & $photo_ & "{enter}")
	Call("pixwait", 15)
	Call("clipwait")


If StringInStr($clip_, "Šobrīd portālā veicam īsla") <> 0 Then
	Sleep(30000)
EndIf
;~ 		captcha
		If StringInStr($clip_, "Ievadiet kodu no bildes:") <> 0 Then
			$captchaleft = 125
			If $autsc_ = 0 Then
				SoundPlay(@WindowsDir & "\media\Alarm01.wav", 0)
				MsgBox(262192, "Captcha", "Введите код и нажмите ок.")
				Call("winex")
				Send("{enter}")
				Call("pixwait", 10)
			ElseIf $autsc_ = 1 Then
				MouseClick("left", 15, 125, 1, 0)
				Call("captcha")
			EndIf
		EndIf
;~ 		antispam
		If $timerphoto1 >= 1 Then
			while TimerDiff($timer1_) <= 1500
				ToolTip("Оценено:" & $cscored & @CRLF & "Страница:" & $page__ + 1 & @CRLF & "До кода:" & $captchaleft & @CRLF & "Скорость:" & $time& @CRLF & "ANTISPAM",325,5,"",0,0)
				Sleep(50)
			WEnd
			ToolTip("Оценено:" & $cscored & @CRLF & "Страница:" & $page__ + 1 & @CRLF & "До кода:" & $captchaleft & @CRLF & "Скорость:" & $time,325,5,"",0,0)
			$timerphoto1 = 0
			$timer1_ = TimerInit()
		EndIf
		If $timerphoto >= 6 Then
			While TimerDiff($timer_) <= 17000

					if $acccheck_ >= 10 Then
						if  TimerDiff($timer_) <= 13500 Then
							Call("acccheck")
							$acccheck_ = 0
						endif
					endif

				ToolTip("Оценено:" & $cscored & @CRLF & "Страница:" & $page__ + 1 & @CRLF & "До кода:" & $captchaleft & @CRLF & "Скорость:" & $time& @CRLF & "ANTISPAM",325,5,"",0,0)
				Sleep(100)
			WEnd
			ToolTip("Оценено:" & $cscored & @CRLF & "Страница:" & $page__ + 1 & @CRLF & "До кода:" & $captchaleft & @CRLF & "Скорость:" & $time,325,5,"",0,0)
			$timerphoto = 0
			$timer_ = TimerInit()
		EndIf

	If StringInStr($clip_, "Komentārs fotogrāfijai") <> 0 Then



;~ 		score
			MouseClick("left", 15, 125, 3, 0)
			Send("{tab 3}" & "{right " & $score_ & "}" & "{left}")
			Local $coord_ = PixelSearch(0, 0, 600, 600, 0xA0EBCF)

			If IsArray ($coord_) = 0 Then
				Return
			EndIf

			MouseClick("left", $coord_[0], $coord_[1], 1, 0)
			Call("pixwait", 10)
			Call("clipwait")

;~ 		schetchiki
		If StringInStr($clip_, "Jūsu novērtējums:") <> 0 Then
			$acccheck_ += 1
			$timerphoto += 1
			$timerphoto1 += 1
			$callphotosort = 1
			$cscored = $cscored + 1
			$captchaleft = $captchaleft - 1
			$time = TimerDiff($gtimer_) / 1000
			$time = $time / $cscored
			$time = StringLeft($time, 4)
			$time = $time & "(" & StringReplace(StringLeft(300 / $time, 3),".","") & ")"
			ToolTip("Оценено:" & $cscored & @CRLF & "Страница:" & $page__ + 1 & @CRLF & "До кода:" & $captchaleft & @CRLF & "Скорость:" & $time,325,5,"",0,0)
;~ 		buy
		ElseIf StringInStr($clip_, " pasūtīt?") <> 0 Then
			If $buysc_ = 1 Then
				Call("scbuy")
				Sleep(3000)
			Else
				MsgBox(1, "Error", "Оценки закончились")
				Exit 0
			EndIf
;~ 		spam
		ElseIf StringInStr($clip_, "spama nosūtīšana") <> 0 Then
			Sleep(60000)
;~ 		update
		ElseIf StringInStr($clip_, "Šobrīd portālā veicam īsla") Then
			Sleep(30000)
		; blocked
		ElseIf StringInStr($clip_, "ūs nevarat novertēt fo") <> 0 Then
			$timerphoto += 1
			$timerphoto1 += 1
			$callphotosort = 1
		EndIf
;~ 	spam
	ElseIf StringInStr($clip_, "spama nosūtīšana") <> 0 Then
			Sleep(60000)
;~ 	scored
	ElseIf StringInStr($clip_, "Jūsu novērtējums:") <> 0 Then
		$timerphoto1 += 1
		$callphotosort = 1
	ElseIf StringInStr($clip_, "Ja ir ieslēgts režīms") <> 0 Then
		$timerphoto += 1
		$timerphoto1 += 1
		$callphotosort = 1
;~ 	smerch
	ElseIf StringInStr($clip_, "Jūs 30 minūtes nevarat vērtēt d") <> 0 Then
		If StringInStr($album_, "me.lv/friend") Then
			ToolTip("смерч!", 400, 500, "", 1, 1)
			Sleep(60000)
		Else
			$timerphoto += 1
			$timerphoto1 += 1
			$callphotosort = 1
		endIf
	EndIf

EndFunc   ;==>score