local $pstop = IniRead("data\control.ini", "cc", "stop", "{F1}")
local $ppause = IniRead("data\control.ini", "cc", "pause", "{F2}")
HotKeySet($ppause, "TogglePause")
HotKeySet($pstop, "Terminate")
Func Terminate()
	MsgBox(0,"STOP","Бот остановлен. Страница - " & $page__ + 1)
    Exit 0
EndFunc
Func TogglePause()
    $Paused = Not $Paused
    While $Paused
        Sleep(100)
        ToolTip('Пауза нажмите '&$ppause&' для продолжения', 0, 0)
    WEnd
    ToolTip("")
	call("winex")
EndFunc