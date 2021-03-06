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
MouseMove(514,467)
MouseDown("left")
MouseMove(512,433)
MouseUp("left")
Send("{ENTER}")
_WinWaitActivate("Alcohol 52% FE Version 2.0.3.6731","")
MouseClick("left",373,363,1)
_WinWaitActivate("Alcohol 52% FE Version 2.0.3.6731 ","")
MouseClick("left",373,363,1)
_WinWaitActivate("Alcohol 52% FE Version 2.0.3.6731","")
MouseClick("left",373,363,1)
_WinWaitActivate("Alcohol 52% FE Version 2.0.3.6731 ","")
MouseClick("left",373,363,1)
MouseClick("left",373,363,1)
MouseClick("left",241,180,1)
MouseClick("left",377,363,1)


# Browser opens. Kill it.
_WinWaitActivate("Alcohol 52% Installation","Address Combo Contro")
Send("{CTRLDOWN}w")

#endregion --- Au3Recorder generated code End ---
