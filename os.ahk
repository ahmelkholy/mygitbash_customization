#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

;=====================================================================o
!o::
{
    if WinExist("ahk_exe olk.exe")
        WinActivate, ahk_exe olk.exe ; Activate the window with the title "olk.exe"
    else
    {
        Run "olk.exe"
        Sleep 500
        WinActivate, ahk_exe olk.exe ; Activate the window with the title "olk.exe" after running Outlook
    }
    Return
}

;------------run matlab
!m::Run "C:\Program Files\Wolfram Research\Mathematica\13.2\Mathematica.exe" -nosplash
^!m::Run "C:\Program Files\MATLAB\R2024a\bin\matlab.exe" -nosplash
#IfWinNotActive ahk_exe EXCEL.EXE
!i::Run "C:\Program Files (x86)\Internet Download Manager\IDMan.exe"
#IfWinNotActive

!c::
{
SetTitleMatchMode, 2
If WinExist("ahk_exe chrome.exe")
    {
    WinActivate, ahk_exe chrome.exe
    Send ^t
    Send !d
    Return
    }
else
    {
    Run "C:\Program Files\Google\Chrome\Application\chrome.exe" --profile-directory="Default"
    Sleep 500
    WinActivate, ahk_exe chrome.exe
    Send !d
    Return
    }
Return
}


!s::
{
    Send, ^c
    Sleep 50
    If WinExist("ahk_exe msedge.exe")
        WinActivate
    else
        Run, C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe
    Return
}

; !^q::
; {
;  Send, ^c
;  Sleep 50
;  Run, "C:\Program Files\Google\Chrome\Application\chrome_proxy.exe"  --profile-directory=Default --app-id=moennpndhigdhdkephojjndcmcamfjan
;  Sleep 500
;  Send, ^v
;  Return
; }
; return
; ^!SPACE:: Winset, Alwaysontop, , A ; ctrl + space
;                            CapsLock Editor                         ;|
;-----------------------------------o---------------------------------o
#IfWinActive ahk_exe msedge.exe
CapsLock & z:: Send, ^+E
!s::Send, ^t
CapsLock & f::
{
Send ^c
if GetKeyState("alt") = 0                                            ;|
{                                                                    ;|
SetTitleMatchMode, 2

    Send ^t
    Send !d
    Send ^v
Send {enter}
Return


return                                                       ;|
}                                                                    ;|
else
{                                                               ;|
    send ^f
    Send ^v
	return                                                          ;|
}                                                                    ;|

}
#IfWinActive


#IfWinNotActive ahk_exe msedge.exe

CapsLock & z:: Run "C:\Program Files (x86)\Zotero\zotero.exe"

#IfWinNotActive     ;|
CapsLock & x:: Send, ^x                                              ;|
CapsLock & c:: Send, ^c                                              ;|
CapsLock & v:: Send, #!v                                              ;|
#IfWinActive ahk_exe chrome.exe
CapsLock & a::
{
    if GetKeyState("alt") = 0
    {
        Send, ^+{a}
        return
    }
    else
    {
        Send, ^{a}
        return
    }
    return
}
#IfWinActive

#IfWinActive ahk_exe SumatraPDF.exe
CapsLock & a::
{
    if GetKeyState("alt") = 0
    {
        Send, ^+{p}
        return
    }
    else
    {
        Send, ^{a}
        return
    }
    return
}
#IfWinActive

#IfWinNotActive ahk_exe chrome.exe
CapsLock & a::Send, ^{a}
#IfWinNotActive                                      ;|

CapsLock & t::
{
if GetKeyState("alt") = 0                                            
{                                                                    
    If (WinExist("ahk_exe  Code.exe"))
    WinActivate, ahk_exe Code.exe
    Else
    {
    Run "C:\Users\ahm_e\AppData\Local\Programs\Microsoft VS Code\Code.exe"
    Sleep, Delay, 200
    WinActivate, ahk_exe Code.exe
    }
	Return
}               
else
{          
If (WinExist("ahk_exe Obsidian.exe"))
    WinActivate, ahk_exe Obsidian.exe 
Else
    {
	Run "C:\Users\ahm_e\AppData\Local\Obsidian\Obsidian.exe"
    Sleep, Delay, 200
    WinActivate, ahk_exe Obsidian.exe
    }
	Return 
}               
}
