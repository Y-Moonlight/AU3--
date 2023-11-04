#NoTrayIcon 
#include <ButtonConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>
#Region ### START Koda GUI section ### Form=D:\Users\Desktop\Run.kxf
$Form2 = GUICreate("执行进度", 343, 66, -1, -1,$WS_CAPTION,$WS_EX_TOPMOST + $WS_EX_TOOLWINDOW)
GUISetBkColor(0xA6CAF0)
$Radio2 = GUICtrlCreateRadio("", 13, 44, 17, 17)
$Radio1 = GUICtrlCreateRadio("", 34, 44, 17, 17)
$Radio3 = GUICtrlCreateRadio("", 54, 44, 17, 17)
$Radio4 = GUICtrlCreateRadio("", 74, 44, 17, 17)
$Radio5 = GUICtrlCreateRadio("", 94, 44, 17, 17)
$Radio6 = GUICtrlCreateRadio("", 114, 44, 17, 17)
$Radio7 = GUICtrlCreateRadio("", 134, 44, 17, 17)
$Radio8 = GUICtrlCreateRadio("", 154, 44, 17, 17)
$Radio9 = GUICtrlCreateRadio("", 174, 44, 17, 17)
$Radio10 = GUICtrlCreateRadio("", 194, 44, 17, 17)
$Radio11 = GUICtrlCreateRadio("", 214, 44, 17, 17)
$Radio12 = GUICtrlCreateRadio("", 234, 44, 17, 17)
$Radio13 = GUICtrlCreateRadio("", 254, 44, 17, 17)
$Radio14 = GUICtrlCreateRadio("", 274, 44, 17, 17)
$Radio15 = GUICtrlCreateRadio("", 294, 44, 17, 17)
$Radio16 = GUICtrlCreateRadio("", 314, 44, 17, 17)
$Label1 = GUICtrlCreateLabel("脚本正在执行，请稍候…", 84, 14, 179, 26)
GUICtrlSetFont(-1, 12, 800, 0, "微软雅黑")
GUICtrlSetColor(-1, 0x000000)
GUISetState(@SW_SHOW)

While 2

GUICtrlSetState($Radio2,$GUI_CHECKED)
Sleep(75)
GUICtrlSetState($Radio1,$GUI_CHECKED)
Sleep(75)
GUICtrlSetState($Radio3,$GUI_CHECKED)
Sleep(75)
GUICtrlSetState($Radio4,$GUI_CHECKED)
Sleep(75)
GUICtrlSetState($Radio5,$GUI_CHECKED)
Sleep(75)
GUICtrlSetState($Radio6,$GUI_CHECKED)
Sleep(75)
GUICtrlSetState($Radio7,$GUI_CHECKED)
Sleep(75)
GUICtrlSetState($Radio8,$GUI_CHECKED)
Sleep(75)
GUICtrlSetState($Radio9,$GUI_CHECKED)
Sleep(75)
GUICtrlSetState($Radio10,$GUI_CHECKED)
Sleep(75)
GUICtrlSetState($Radio11,$GUI_CHECKED)
Sleep(75)
GUICtrlSetState($Radio12,$GUI_CHECKED)
Sleep(75)
GUICtrlSetState($Radio13,$GUI_CHECKED)
Sleep(75)
GUICtrlSetState($Radio14,$GUI_CHECKED)
Sleep(75)
GUICtrlSetState($Radio15,$GUI_CHECKED)
Sleep(75)
GUICtrlSetState($Radio16,$GUI_CHECKED)
Sleep(75)
WEnd

#EndRegion ### END Koda GUI section ###

While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit

	EndSwitch
WEnd








