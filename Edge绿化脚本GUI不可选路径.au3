#NoTrayIcon 
#RequireAdmin
#include <ButtonConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>
#Region ### START Koda GUI section ### Form=D:\Users\Desktop\软件通用安装界面.kxf

DirCreate("C:\Windows\Temp\EdgeInstallTemp")   ;创建文件夹
FileInstall("D:\Users\Desktop\Edge绿化\ico.ico","C:\Windows\Temp\EdgeInstallTemp\")   ;释放ico文件


$Form1 = GUICreate("Microsoft Edge封装专用直装绿化版快速安装程序", 561, 368, -1, -1,$WS_CAPTION )
GUISetBkColor(0xA6CAF0)
$Edit1 = GUICtrlCreateEdit("", 96, 14, 441, 249,$WS_VSCROLL+$ES_READONLY)
GUICtrlSetData(-1, StringFormat("——————————直装绿化版软件特点———————————\r\n@飘白整合的任何直装绿化版软件都是在官方原版软件的基础上进行自\r\n动设置和绿化处理。所有设置都能在官方软件设置界面里找到对应的设\r\n置选项，只不过是采用脚本方式来自动化完成官方允许的各种设置。设\r\n置内容包括关闭更新，关闭广告弹窗，关闭消息提醒，关闭不必要的功\r\n能，关闭残留进程等等。为什么用直装方式？因为这样可以尽量保证官\r\n方软件原汁原味的安装过程，在官方允许范围内进行自动优化和设置，\r\n这样一般不会有什么异常BUG，也减少不必要的问题和错误。\r\n——————————版权纠纷和免责声明———————————\r\n原软件所有版权和解释权归原软件总公司所有。\r\n并由@飘白在官方软件允许的设置范围内进行整合绿化。软件仅限于个\r\n人研究学习使用，禁止用于任何商业目的或者非法用途。使用者造成的\r\n任何非法盈利或者侵权纠纷由使用者自行承担一切法律后果，与@飘白\r\n无关。安装此软件即表示已明确接受此声明。\r\n—————————————————————————————\r\n整合不易，转载请注明出处→作者:@飘白  QQ;3570150233"))
GUICtrlSetFont(-1, 10, 400, 0, "微软雅黑")
GUICtrlSetColor(-1, 0x000000)
GUICtrlSetBkColor(-1, 0xF0F0F0)
$Input1 = GUICtrlCreateInput("C:\Program Files (x86)\Microsoft\Edge （暂不支持更改）", 19, 288, 457, 27)
GUICtrlSetFont(-1, 10, 800, 0, "微软雅黑")
GUICtrlSetColor(-1, 0x000000)
GUICtrlSetState(-1, $GUI_DISABLE)
$Button1 = GUICtrlCreateButton("更改目录", 488, 287, 57, 28)
GUICtrlSetFont(-1, 9, 800, 0, "微软雅黑")
GUICtrlSetColor(-1, 0x000000)
GUICtrlSetState(-1, $GUI_DISABLE)
$Button2 = GUICtrlCreateButton("开始安装", 364, 328, 73, 25)
GUICtrlSetFont(-1, 9, 800, 0, "微软雅黑")
GUICtrlSetColor(-1, 0x000000)
$Button3 = GUICtrlCreateButton("退出安装", 458, 328, 73, 25)
GUICtrlSetFont(-1, 9, 800, 0, "微软雅黑")
GUICtrlSetColor(-1, 0x000000)
$Label2 = GUICtrlCreateLabel("作者:@飘白    QQ:3570150233", 21, 328, 195, 23)
GUICtrlSetFont(-1, 10, 800, 0, "微软雅黑")
GUICtrlSetColor(-1, 0x000000)
$Label3 = GUICtrlCreateLabel("安装目录↓", 20, 258, 63, 23)
GUICtrlSetFont(-1, 10, 800, 0, "微软雅黑")
GUICtrlSetColor(-1, 0x000000)
$Label4 = GUICtrlCreateLabel("安装说明→", 16, 80, 69, 23)
GUICtrlSetFont(-1, 10, 800, 0, "微软雅黑")
GUICtrlSetColor(-1, 0x000000)
$Icon1 = GUICtrlCreateIcon("C:\Windows\Temp\EdgeInstallTemp\ico.ico", -1, 24, 19, 48, 48)
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###

While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit
		Case $Button3     ;如果按下$button3
			DirRemove("C:\Windows\Temp\EdgeInstallTemp",1)  ;删除文件夹并退出
			Exit
		Case $Button2
			GUISetState(@SW_HIDE)
			FileInstall("D:\Users\Desktop\Edge绿化\RunWait.exe","C:\Windows\Temp\EdgeInstallTemp\")  ;释放runwait.exe
			Sleep(500)
			Run("C:\Windows\Temp\EdgeInstallTemp\RunWait.exe")  ;调用runwait.exe
			Sleep(500)
			$PID=WinGetProcess ("执行进度")
			Sleep(500)
			FileInstall("D:\Users\Desktop\Edge绿化\Edge.exe","C:\Windows\Temp\EdgeInstallTemp\") ;释放edge文件
			Sleep(500)
			RunWait("C:\Windows\Temp\EdgeInstallTemp\Edge.exe","",@SW_HIDE)   ;调用绿化程序
			Sleep(500)
			RunWait("C:\Program Files (x86)\Microsoft\Edge\开始.bat")  ;调用绿化bat
			Sleep(500)
			FileInstall("D:\Users\Desktop\Edge绿化\Microsoft Edge.lnk","C:\Users\Public\Desktop\")
			Sleep(500)
			ProcessClose ($PID)  ;结束RunWait.exe
			Sleep(500)
			MsgBox(0+64+65536,"提示","Microsoft Edge安装完毕，敬请使用吧！") ;提示
			DirRemove("C:\Windows\Temp\EdgeInstallTemp",1)  ;删除文件夹并退出
			Exit
	EndSwitch
WEnd
