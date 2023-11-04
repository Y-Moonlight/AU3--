#NoTrayIcon 
#RequireAdmin

FileInstall("")    ;释放RunWait.exe

Run("")            ;运行RunWait.exe
Sleep(3000)

$PID=WinGetProcess ("执行进度")   ;获取进程pid

RunWait("")        ;暂停脚本执行，运行调用的程序

Sleep(1000)
ProcessClose ($PID)  ;根据pid结束掉RunWait.exe
Sleep(500)
FileDelete("")    ;删除RunWait.exe
Sleep(500)
Exit