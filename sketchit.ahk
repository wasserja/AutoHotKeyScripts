If WinExist("Snip & Sketch")
{
	WinActivate
	WinWaitActive
	Send ^n
}
else
{
	Run, ms-screensketch:
	WinWait, ahk_class ahk_class ApplicationFrameWindow
	WinActivate, ahk_class ahk_class ApplicationFrameWindow
	WinWaitActive, ahk_class ahk_class ApplicationFrameWindow
	Send ^n
}
return