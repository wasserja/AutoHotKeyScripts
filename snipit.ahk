If WinExist("Snipping Tool")
{
	WinActivate
	WinWaitActive
	Send !n
	Send r
}
else
{
	Run, %windir%\System32\SnippingTool.exe
	WinWait, ahk_class Microsoft-Windows-Tablet-SnipperToolbar
	WinActivate, ahk_class Microsoft-Windows-Tablet-SnipperToolbar
	WinWaitActive, ahk_class Microsoft-Windows-Tablet-SnipperToolbar
	Send !n
	Send r
}
return