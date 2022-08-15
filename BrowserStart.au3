func browserstart()

	ProcessClose("k-meleon.exe")
	DirCopy("data\profiles", "data\browser\Profiles", 1)
	Run("data\browser\k-meleon.exe")
	WinWait("[CLASS:KMeleon Browser Window]", "", 30)
	call("winex")
	Sleep(500)
	call("winex")

EndFunc