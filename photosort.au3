Func photosort()

	$fotosort = StringTrimLeft ( $fotosort, StringInStr($fotosort, ".jpg?") - 40)
	$photo_ = StringLeft ( $fotosort, StringInStr($fotosort, ".jpg?") -1)
	$photo_ = StringTrimLeft ( $photo_, StringInStr($photo_, "/",0,-1,20))
	$fotosort = StringTrimLeft ( $fotosort, StringInStr($fotosort, ".jpg?") + 3)

	$next = 1;

	if StringInStr($album_, "boomtime") = 0 Then

	$curr = StringSplit($photo_, "/")

		if $prev[1] = $curr[1] Then
			$next = 0
		EndIf
		$prev = StringSplit($photo_, "/")

	EndIf



EndFunc
