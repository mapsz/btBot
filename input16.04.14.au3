#include <ButtonConstants.au3>
#include <ComboConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>

Local $settings = "data/settings.ini"

FileOpen($settings)
#Region ### START Koda GUI section ### Form=C:\bot\autoit\btbot\input2.kxf
local $Form1 = GUICreate("BtBot v1.2", 486, 346, 192, 124)
local $Pic1 = GUICtrlCreatePic("data\bt.jpg", 0, 0, 484, 100)
local $Pic2 = GUICtrlCreatePic("data\cat.jpg", 160, 192, 148, 140)

local $Label1 = GUICtrlCreateLabel("�����:", 8, 112, 38, 17)
local $Label2 = GUICtrlCreateLabel("������:", 240, 112, 45, 17)
local $Label3 = GUICtrlCreateLabel("������:", 8, 192, 45, 17)
local $Label4 = GUICtrlCreateLabel("��������:", 8, 232, 55, 17)
local $Label5 = GUICtrlCreateLabel("�����������:", 8, 272, 72, 17)
local $Label6 = GUICtrlCreateLabel("�������:", 8, 312, 49, 17)


local $Button1 = GUICtrlCreateButton("������", 328, 200, 139, 24)
local $Button2 = GUICtrlCreateButton("���������", 328, 233, 139, 24)
local $Button4 = GUICtrlCreateButton("��������", 328, 266, 139, 24)
local $Button3 = GUICtrlCreateButton("�����", 328, 300, 139, 24)

local $Input1 = GUICtrlCreateInput(FileReadLine($settings,1), 56, 112, 169, 21)
local $Input2 = GUICtrlCreateInput(FileReadLine($settings,2), 296, 112, 177, 21, $ES_PASSWORD)
local $Input3 = GUICtrlCreateInput(FileReadLine($settings,3), 64, 192, 57, 21)
local $input4 = GUICtrlCreateInput(FileReadLine($settings,4), 168, 152, 305, 21)
local $Input5 = GUICtrlCreateInput(FileReadLine($settings,5), 64, 232, 57, 21)

local $Combo1 = GUICtrlCreateCombo(FileReadLine($settings,6), 80, 272, 41, 25, BitOR($CBS_DROPDOWN,$CBS_AUTOHSCROLL))
GUICtrlSetData(-1, "���")
GUICtrlSetData(-1, "��")
local $Combo2 = GUICtrlCreateCombo(FileReadLine($settings,7), 80, 312, 41, 25, BitOR($CBS_DROPDOWN,$CBS_AUTOHSCROLL))
GUICtrlSetData(-1, "��")
GUICtrlSetData(-1, "���")
local $Combo3 = GUICtrlCreateCombo(FileReadLine($settings,8), 8, 152, 145, 25, BitOR($CBS_DROPDOWN,$CBS_AUTOHSCROLL))
GUICtrlSetData(-1, "����������")
GUICtrlSetData(-1, "������")

GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###
FileClose($settings)

While 1
	Local $nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit
		Case $Button3
			Exit
		Case $Button4
			Run("update.exe")
			Exit
		Case $Button2
			FileClose(FileOpen($settings, 2))
			FileOpen($settings)
			FileWriteLine($settings, GUICtrlRead($Input1))
			FileWriteLine($settings, GUICtrlRead($Input2))
			FileWriteLine($settings, GUICtrlRead($Input3))
			FileWriteLine($settings, GUICtrlRead($Input4))
			FileWriteLine($settings, GUICtrlRead($Input5))
			FileWriteLine($settings, GUICtrlRead($Combo1))
			FileWriteLine($settings, GUICtrlRead($Combo2))
			FileWriteLine($settings, GUICtrlRead($Combo3))
			FileClose($settings)
			local $Label7= GUICtrlCreateLabel("���������", 328, 175, 139, 24)
			GUICtrlSetColor(-1, 0xFF0000)
			GUISetState(@SW_SHOW)
		case $Button1
			Global $login_ = GUICtrlRead($Input1)
			Global $passw_ = GUICtrlRead($Input2)
			Global $score_ = GUICtrlRead($Input3)
			Global $album_ = GUICtrlRead($Input4)
			Global $page__ = GUICtrlRead($Input5)
			Global $buysc_ = GUICtrlRead($Combo1)
			Global $autsc_ = GUICtrlRead($Combo2)
			If GUICtrlRead($Combo3) = "����������" Then
				$album_ = 0
			Else
				$album_ = StringReplace($album_,".html","")
				$album_ = StringReplace($album_,"friends.boomtime.lv/friend/","")
				$album_ = StringReplace($album_,"http://","")
				$album_ = StringSplit($album_,"/")
				$album_ = "http://friends.boomtime.lv/friend/" & $album_[1] & "/gallery/" & $album_[3]
			EndIf
			GUIDelete($Form1)
			ExitLoop
	EndSwitch
WEnd

	$page__ = $page__ - 2

if $buysc_ = "��" Then
	$buysc_ = 1
Else
	$buysc_ = 0
EndIf

if $autsc_ = "��" Then
	$autsc_ = 1
Else
	$autsc_ = 0
EndIf
