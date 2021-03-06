#region --- Au3Recorder generated code Start (v3.3.9.5 KeyboardLayout=00000409)  ---

#region --- Internal functions Au3Recorder Start ---
Func _Au3RecordSetup()
	Opt('WinWaitDelay',100)
	Opt('WinDetectHiddenText',1)
	Opt('MouseCoordMode',0)
	Local $aResult = DllCall('User32.dll', 'int', 'GetKeyboardLayoutNameW', 'wstr', '')
	If $aResult[1] <> '00000409' Then
		MsgBox(64, 'Warning', 'Recording has been done under a different Keyboard layout' & @CRLF & '(00000409->' & $aResult[1] & ')')
	EndIf
EndFunc

Func _WinWaitActivate($title,$text,$timeout=0)
	WinWait($title,$text,$timeout)
	If Not WinActive($title,$text) Then WinActivate($title,$text)
	WinWaitActive($title,$text,$timeout)
EndFunc

_AU3RecordSetup()
#endregion --- Internal functions Au3Recorder End ---

#;Path and filename of the installer executable
#$INSTALLER="""" & $CmdLine[1] & """"



Run($CmdLine[1])
_WinWaitActivate("AlcoholSoftGen Downloader","")


MouseClick("left",49,103,1)
MouseMove(302,11)
MouseDown("left")
MouseMove(266,-17)
MouseUp("left")
MouseClick("left",538,471,1)
_WinWaitActivate("Alcohol 52% FE Version 2.0.3.6731","")
MouseClick("left",373,364,1)



# Focus
#MouseClick("left",37,100,1)
#Send("{ENTER}")

# Default Language - NOTE this window only shows on SOME systems
_WinWaitActivate("Installer Language","Please select a lang")
MouseClick("left",141,130,1)

# Welcome (click next)
_WinWaitActivate("Alcohol 52% FE Version 2.0.3.6731","Welcome")
MouseClick("left",360,365,1)

# Accept license
_WinWaitActivate("Alcohol 52% FE Version 2.0.3.6731 ","Alcohol")
MouseClick("left",360,365,1)

# Install
MouseClick("left",360,365,1)

# Accept components
MouseClick("left",360,365,1)

# Uncheck run now, keep run at start checked, finish
_WinWaitActivate("Alcohol 52% FE Version 2.0.3.6731 ","Completing the Alcoh")
MouseClick("left",189,180,1)
MouseClick("left",372,366,1)

# Browser opens. Kill it.
_WinWaitActivate("Alcohol 52% Installation - Windows Internet Explorer","Address Combo Contro")
Send("{CTRLDOWN}w")
#endregion --- Au3Recorder generated code End ---
