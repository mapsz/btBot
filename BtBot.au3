#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Icon=C:\Users\admin\Downloads\blue_robot_sh.ico
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
Global $fotosort,$callphotosort,$photo_,$timerphoto,$timerphoto1,$Paused,$timer_,$cscored, $captchaleft, $captcha_,$gtimer_,$time,$reset,$timer1_,$acccheck_,$next,$curr
Opt("sendKeyDelay", 0)
Opt("sendKeydownDelay", 0)
Opt("MouseClickDelay" , 0)
Opt("MustDeclareVars", 1)

Global $ver = "1.4.6"
global $prev[2]
global $acc = 0
global $setup_ = "Y3J5PTEmb25sPTE=/"

#include "input.au3"
#include "all.au3"


Call("reset")

ToolTip($album_)
ClipPut(0)
$callphotosort = 1
$gtimer_ = TimerInit()
$timer_ = TimerInit()
$fotosort = ""
While 1=1

	If  $reset >= 1 Then
		Call ("reset")
	EndIf

	Call ("scoreloop")

	If  $reset >= 1 Then
		Call ("reset")
	EndIf

WEnd

MsgBox(1, "", "ok")