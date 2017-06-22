If WinExist("Snipping Tool")
{
	WinActivate
	WinWaitActive
	Send ^n
}
else
{
	Run, %windir%\System32\SnippingTool.exe
	WinWait, ahk_class ahk_class Microsoft-Windows-SnipperToolbar
	WinActivate, ahk_class ahk_class Microsoft-Windows-SnipperToolbar
	WinWaitActive, ahk_class ahk_class Microsoft-Windows-SnipperToolbar
	Send ^n
}
return