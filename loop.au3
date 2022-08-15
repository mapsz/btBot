func scoreloop()



		If StringInStr($fotosort, ".jpg?") = 0 Then
			Call("nextpage")
		EndIf

		If $callphotosort = 1 Then
			Call("photosort")
		EndIf

		If $next = 1 Then
			Call("score")
		EndIf
EndFunc