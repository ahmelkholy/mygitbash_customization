; run the script as admin 
#SingleInstance Force
SetWorkingDir D:\OneDrive - Faculty Of Engineering (Tanta University)\General_software\scripts\AHK
if not A_IsAdmin
    Run *RunAs "D:\OneDrive - Faculty Of Engineering (Tanta University)\General_software\scripts\AHK\shk.ahk"

; the code 

:c:ds::DS
:C:tanta::Tanta
:C:egypt::Egypt
:C:phd::PhD
:C:dmitry::Dmitry
:C:ga::GA
:C:scada::SCADA
:C:pv::PV
:C:pf::PF
:C:upc::UPC
:C:dg::DG
:C:svc::SVC
:C:tl::TL
:C:dr::Dr
:C:prof::Prof
:C:nowdays::nowadays
:C:ieee::IEEE
:C:@@f::ahmed_elkholy@f-eng.tanta.edu.eg
:C:@@g::ahmedelkholy109@gmail.com
:C:@@m::EdkholiakhmedM@mpei.ru
:C:@@o::ahm_elkholy@outlook.com
:*:proplem::problem
:C:hte::the
::hight::height
::heght::height
:*:teh::the
:*:th e::the
:*:htis::this
:*:thsi::this
:*:c\::C:\
:*:d\::D:\
:*:pys\::python C:\Users\ahm_e\Documents\Python_Scripts\src\
:*:ps\::C:\Users\ahm_e\Documents\PowerShell\SRC
:C:gui::GUI
:C:matlab::MATLAB
:*:hwo::how
:*:coeff::coefficient
:*:effic::efficiency
:*:fig.::Fig.
:*:downl::download
:*:docum::document
:*:todo::TODO

;script for converting a note into Zettelkasten style.
:*:pr_zettel::
(
@workspace please read the note and search all md files in the workspace and rewrite the note in Zettelkasten style and link them in this style [[note]] only the name of the note inside [[note]] dont add in link please, with the existing notes in the workspace, and please make it in md box to pass it throw, and write the main idea of every figure as a bold sentence below every paragraph, the note is  
)
; scirpt for rewriting the note in latex
:*:pr_rpr::
(
@workspace please reade the selection and rewrite this in latex text and give me in box to pass it throw, and make the text suitable for high impact journal, make the style passive sound and scientific, if there is a link fetch the information in those notes the links will be in this style [[note]] but the final text without any links, if there is the this style [@refkey] convert this to be \cite(refkey) the text is 
)
; script for rewriting the paragraph in latex
:*:pr_rwr::
(
@workspace Please read the #selection and rewrite it in LaTeX format. Provide the output in a markdown code block. Ensure that the text is suitable for a high-impact journal, using a passive voice and a scientific tone appropriate for the context.
)


:c:]da::  ; This hotstring replaces "]d" with the current date and time via the commands below.
    FormatTime, CurrentDateTime,, dd.MM.yy   ; It will look like 20.09.23
    Send, %CurrentDateTime%
return

:c:]daf::  ; This hotstring replaces "]d" with the current date and time via the commands below.
    FormatTime, CurrentDateTime,, yyMMdd   ; It will look like 20.09.23
    Send, %CurrentDateTime%
return

#IfWinNotActive, ahk_exe Code.exe

SetCapsLockState, AlwaysOff
;___________________________________________________________
; This autocompletes (), [], "", ''
:*?:(::
Send, {Raw}()
Send, {Left}
return
; Bonus :D

:*?:[::
Send, {Raw}[]
Send, {Left}
reset()
return
#IfWinNotActive

; Autocompletes '', ""
:*:'::
Send, {Raw}'
Sleep, 100
Send, {Raw}'
Send, {Left}
return

:*:"::
Send, {Raw}"
Sleep, 100
Send, {Raw}"
Send, {Left}
return

SetCapsLockState, AlwaysOff                                          ;|
reset()

#f:: Send {f11}
!w:: Send ^#{Left}                                              ;|
!e::Send ^#{Right}                                              ;|
SetCapsLockState, AlwaysOff
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
SetCapsLockState, AlwaysOff
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

SetCapsLockState, AlwaysOff

!s::
{
    Send, ^c
    Sleep 50
    If WinExist("ahk_exe msedge.exe")
        WinActivate
    else
        Run, C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe
    SetCapsLockState, AlwaysOff
    Return
}

; !^q::
; {
;  Send, ^c
;  Sleep 50
;  Run, "C:\Program Files\Google\Chrome\Application\chrome_proxy.exe"  --profile-directory=Default --app-id=moennpndhigdhdkephojjndcmcamfjan
;  Sleep 500
;  Send, ^v
;      SetCapsLockState, AlwaysOff
;  Return
; }
; return
; SetCapsLockState, AlwaysOff
; ^!SPACE:: Winset, Alwaysontop, , A ; ctrl + space
+Esc::Run taskmgr
    SetCapsLockState, AlwaysOff
return
SetCapsLockState, AlwaysOff
; ; Define the function

reset() {
    ; Change the current language to English
    ; This assumes that the English language is associated with the ^{0} hotkey
    ControlSend, , ^{0}, ahk_class Shell_TrayWnd

    Sleep, 100  ; Wait for 100 milliseconds to ensure the language switch command is processed

    ; Get the current state of the Caps Lock key
    GetKeyState, CapsLockState, CapsLock, T

    ; If the Caps Lock key is down, set it to always off
    ; Otherwise, set it to always on
    if (CapsLockState = "D") {
        SetCapsLockState, AlwaysOff
    } else {
        SetCapsLockState, AlwaysOn
    }

    ; Wait for the grave accent key to be released
    KeyWait, ``

    ; Set the Caps Lock key to always off
    SetCapsLockState, AlwaysOff
}

; Call the function from another part of the code
CapsLock & Esc::reset()

CapsLock & 1::
; Create an array to store window paths
windowPaths := []

; Enumerate all File Explorer windows
WinGet, windows, List, ahk_class CabinetWClass
Loop, %windows%
{
    ; Get the HWND of the current window
    hwnd := windows%A_Index%

    ; Get the full path of the current window
    WinGetText, path, ahk_id %hwnd%
    StringTrimRight, path, path, 1

    ; If the window path is already in the array, close the window
    if (path in windowPaths)
    {
        WinClose, ahk_id %hwnd%
    }
    ; Otherwise, add the window path to the array
    else
    {
        windowPaths.push(path)
    }
}
return

;---------------------------------------------------------------------o
SetCapsLockState, AlwaysOff
CapsLock::Send, {ESC}

SetCapsLockState, AlwaysOff
return
;-----------------------------------o                                ;|
;-----------------------------------o                                ;|
CapsLock & h::                                                       ;|
if GetKeyState("RALT") = 0                                        ;|
{                                                                    ;|
    if GetKeyState("LALT") = 0                                        ;|
        Send, {Left}                                                 ;|
    else                                                             ;|
        Send, ^+{Left}
    return                                                           ;|
}                                                                    ;|
else {                                                               ;|
    if GetKeyState("LALT") = 0                                        ;|
        Send, ^{Left}                                                ;|
    else                                                             ;|
        Send, +^{Left}                                               ;|
    return                                                           ;|
}                                                                    ;|
return                                                               ;|
;-----------------------------------o                                ;|
CapsLock & j::                                                       ;|
if GetKeyState("RALT") = 0                                        ;|
{                                                                    ;|
    if GetKeyState("LALT") = 0                                        ;|
        Send, {Down}                                                 ;|
    else                                                             ;|
        Send, ^+{Down}                                                ;|
    return                                                           ;|
}                                                                    ;|
else {                                                               ;|
    if GetKeyState("LALT") = 0                                        ;|
        Send, ^{Down}                                                ;|
    else                                                             ;|
        Send, +^{Down}                                               ;|
    return                                                           ;|
}                                                                    ;|
return                                                               ;|
;-----------------------------------o                                ;|
CapsLock & k::                                                       ;|
if GetKeyState("RALT") = 0                                        ;|
{                                                                    ;|
    if GetKeyState("LALT") = 0                                        ;|
        Send, {Up}                                                   ;|
    else                                                             ;|
        Send, ^+{Up}                                                  ;|
    return                                                           ;|
}                                                                    ;|
else {                                                               ;|
    if GetKeyState("LALT") = 0                                        ;|
        Send, ^{Up}                                                  ;|
    else                                                             ;|
        Send, +^{Up}                                                 ;|
    return                                                           ;|
}                                                                    ;|
return                                                               ;|
;-----------------------------------o                                ;|
CapsLock & l::                                                       ;|
if GetKeyState("RALT") = 0                                        ;|
{                                                                    ;|
    if GetKeyState("LALT") = 0                                        ;|
        Send, {Right}                                                ;|
    else                                                             ;|
        Send, ^+{Right}                                               ;|
    return                                                           ;|
}                                                                    ;|
else {                                                               ;|
    if GetKeyState("LALT") = 0                                        ;|
        Send, ^{Right}                                               ;|
    else                                                             ;|
        Send, +^{Right}                                              ;|
    return                                                           ;|
}                                                                    ;|
return                                                               ;|
;---------------------------------------------------------------------o
SetCapsLockState, AlwaysOff
reset()
;=====================================================================o
;                     CapsLock Home/End Navigator                    ;|
;-----------------------------------o---------------------------------o
CapsLock & .::                                                       ;|
if GetKeyState("control") = 0                                        ;|
{                                                                    ;|
    if GetKeyState("alt") = 0                                        ;|
        Send, {Home}                                                 ;|
    else                                                             ;|
        Send, +{Home}                                                ;|
    return                                                           ;|
}                                                                    ;|
else {                                                               ;|
    if GetKeyState("alt") = 0                                        ;|
        Send, ^{Home}                                                ;|
    else                                                             ;|
        Send, +^{Home}                                               ;|
    return                                                           ;|
}                                                                    ;|
return                                                               ;|
;-----------------------------------o                                ;|
CapsLock & /::                                                       ;|
if GetKeyState("control") = 0                                        ;|
{                                                                    ;|
    if GetKeyState("alt") = 0                                        ;|
        Send, {End}                                                  ;|
    else                                                             ;|
        Send, +{End}                                                 ;|
    return                                                           ;|
}                                                                    ;|
else {                                                               ;|
    if GetKeyState("alt") = 0                                        ;|
        Send, ^{End}                                                 ;|
    else                                                             ;|
        Send, +^{End}                                                ;|
    return                                                           ;|
}                                                                    ;|
return
SetCapsLockState, AlwaysOff  ;|
reset()
;---------------------------------------------------------------------o
;=====================================================================o
;                      CapsLock Page Navigator                       ;|
;-----------------------------------o---------------------------------o
CapsLock & ,::                                                       ;|
if GetKeyState("control") = 0                                        ;|
{                                                                    ;|
    if GetKeyState("alt") = 0                                        ;|
        Send, {PgUp}                                                 ;|
    else                                                             ;|
        Send, +{PgUp}                                                ;|
    return                                                           ;|
}                                                                    ;|
else {                                                               ;|
    if GetKeyState("alt") = 0                                        ;|
        Send, ^{PgUp}                                                ;|
    else                                                             ;|
        Send, +^{PgUp}                                               ;|
    return                                                           ;|
}                                                                    ;|
return                                                               ;|
;-----------------------------------o                                ;|
CapsLock & m::                                                       ;|
if GetKeyState("control") = 0                                        ;|
{                                                                    ;|
    if GetKeyState("alt") = 0                                        ;|
        Send, {PgDn}                                                 ;|
    else                                                             ;|
        Send, +{PgDn}                                                ;|
    return                                                           ;|
}                                                                    ;|
else {                                                               ;|
    if GetKeyState("alt") = 0                                        ;|
        Send, ^{PgDn}                                                ;|
    else                                                             ;|
        Send, +^{PgDn}                                               ;|
    return                                                           ;|
}                                                                    ;|
return                                                               ;|
;---------------------------------------------------------------------o

SetCapsLockState, AlwaysOff
reset()
;=====================================================================o
;                     CapsLock Mouse Controller                      ;|
;-----------------------------------o---------------------------------o
CapsLock & Up:: Send #{Up}                        ;|
CapsLock & Down:: Send #{Down}                             ;|
CapsLock & Left:: Send #{Left}                             ;|
CapsLock & Right:: Send #{Right}                           ;|
;-----------------------------------o                                ;|
CapsLock & Enter::
{                                                   ;|
SendEvent {Blind}{LButton down}                                      ;|
KeyWait Enter                                                      ;|
SendEvent {Blind}{LButton up}                                        ;|
return
}                                                               ;|
;---------------------------------------------------------------------o

SetCapsLockState, AlwaysOff
reset()
;=====================================================================o
;                           CapsLock Deletor                         ;|
;-----------------------------------o---------------------------------o
CapsLock & u:: Send, {Del}                                           ;|
CapsLock & i:: Send, ^{Del}                                          ;|
CapsLock & o::
{
Send, ^{BS}
;Send, {Space}
Return
}                                           ;|
CapsLock & p:: Send,  {BS}
;---------------------------------------------------------------------o
SetCapsLockState, AlwaysOff
reset()

;=====================================================================o
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
CapsLock & z:: Run "C:\Program Files\Zotero\zotero.exe"


#IfWinNotActive     ;|
CapsLock & x:: Send, ^x                                              ;|
CapsLock & c:: Send, ^c                                              ;|
CapsLock & v:: Send, #!v                                              ;|

#IfWinActive, ahk_class QPasteClass ahk_exe Ditto.exe
j::Send {Down}
k::Send {Up}
`;::Send {Enter}
return

#IfWinActive
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

#IfWinActive, ahk_exe Code.exe
CapsLock & a::
{
    if GetKeyState("alt") = 0
    {
        Send, ^p
        return
    }
    else
    {
        Send, ^+p
        return
    }
    return
}

:*:$::
Send, {Raw}$$
Send, {Left 1}
return

SetCapsLockState, AlwaysOff

^+s:: ; If Ctrl+Shift+S is pressed
    WinGetTitle, Title, A ; Get the title of the active window
    StringSplit, OutputArray, Title, / ; Split the title on the slash character
    FileName := OutputArray1 ; The first item in the array should be your file name

    StringGetPos, pos, FileName, .m ; Find the position of ".m" in the file name
    if pos != -1 ; If ".m" is found
    {
        StringLeft, FileNameNoExt, FileName, pos ; Get the file name without the extension
        Clipboard := FileNameNoExt ; Copy the file name without extension to the clipboard
        IfWinExist ahk_exe matlab.exe ; If MATLAB exists
         {
            WinActivate, ; Activate the MATLAB window
            Send, %FileNameNoExt% ; Send the file name without extension
            Send, {Enter} ; Press Enter to run the script
         }
    reset()
    }
return

:*?:{::
Send, {Raw}{}
Send, {Left}
reset()
return
#IfWinActive

#IfWinActive, ahk_exe  Cursor.exe
CapsLock & a::
{
    if GetKeyState("alt") = 0
    {
        Send, ^p
        return
    }
    else
    {
        Send, ^+p
        return
    }
    return
}
#IfWinActive
#IfWinActive, ahk_exe Obsidian.exe
CapsLock & a::
{
    if GetKeyState("alt") = 0
    {
        Send, ^p
        return
    }
    else
    {
        Send, ^+p
        return
    }
    return
}
#IfWinActive
#IfWinActive ahk_exe msedge.exe
CapsLock & a::Send, ^+{a}
#IfWinActive

#IfWinActive ahk_class Chrome_WidgetWin_1
CapsLock & a::Send, ^+{a}
#IfWinActive

#IfWinNotActive ahk_exe chrome.exe
CapsLock & a::Send, ^{a}
#IfWinNotActive                                      ;|
CapsLock & y:: Send, ^y                                              ;|
CapsLock & w::
{
if GetKeyState("control") = 0
{
if GetKeyState("alt") = 0                                            ;|
{                                                                   ;|
	Send, ^{Left}
	return                                                        ;|
}                                                                    ;|
else {                                                               ;|
	Send, {Home}
	return                                                          ;|
}
}
else
{
    Send, {Left}
    return
}
}
SetCapsLockState, AlwaysOff
reset()
CapsLock & e::
{
if GetKeyState("control") = 0
{
if GetKeyState("alt") = 0                                            ;|
{                                                                   ;|
	Send, ^{Right}
	return                                                        ;|
}                                                                    ;|
else {                                                               ;|
	Send, {end}
	return                                                          ;|
}
}
else
{
    Send, {Right}
    return
}
}
;---------------------------------------------------------------------o

SetCapsLockState, AlwaysOff
reset()
;=====================================================================o
;                       CapsLock Media Controller                    ;|
;-----------------------------------o---------------------------------o
;                    CapsLock + F1  |  open the markdown or tex by the word ;|
;                    CapsLock + F2  |  Volume_Down                   ;|
;                    CapsLock + F3  |  Volume_Up                     ;|
;                    CapsLock + F3  |  Media_Play_Pause              ;|
;                    CapsLock + F5  |  Media_Next                    ;|
;                    CapsLock + F6  |  Media_Stop                    ;|
;-----------------------------------o---------------------------------o
                                  ;|
;CapsLock & F2:: Send, {Volume_Down}                                  ;|
;CapsLock & F3:: Send, {Volume_Up}                                    ;|
;CapsLock & F4:: Send, {Media_Play_Pause}                             ;|
;CapsLock & F5:: Send, {Media_Next}                                   ;|
;CapsLock & F6:: Send, {Media_Stop}                                   ;|
;---------------------------------------------------------------------o
CapsLock & F1::
{
    filePath := Explorer_GetSelection()
if filePath =
{
    MsgBox, You didn't select anything.
    Sleep 500
    Send, {Enter}
}
else
{
    Run, winword.exe %filePath%
    Sleep 600
    Send, {Enter}
return
}
}
Explorer_GetSelection(hwnd="") {
        WinGet, process, processName, % "ahk_id" hwnd := hwnd? hwnd:WinExist("A")
        WinGetClass class, ahk_id %hwnd%
        if (process = "explorer.exe")
            if (class ~= "Progman|WorkerW") {
                ControlGet, files, List, Selected Col1, SysListView321, ahk_class %class%
                Loop, Parse, files, `n, `r
                ToReturn .= A_Desktop "\" A_LoopField "`n"
        } else if (class ~= "(Cabinet|Explore)WClass") {
            for window in ComObjCreate("Shell.Application").Windows
                if (window.hwnd==hwnd)
                    sel := window.Document.SelectedItems
            for item in sel
                ToReturn .= item.path "`n"
        }
    return Trim(ToReturn,"`n")
}
return
SetCapsLockState, AlwaysOff
reset()
;=====================================================================o
;                      CapsLock Window Controller                    ;|
;-----------------------------------o---------------------------------o
;                     CapsLock + s  |  Ctrl + Tab (Swith Tag)        ;|
;                     CapsLock + q  |  Ctrl + W   (Close Tag)        ;|
;               Alt + CapsLock + q  |  Ctrl + Tab (Close Windows)    ;|
;                     CapsLock + g  |  AppsKey    (Menu Key)         ;|
;-----------------------------------o---------------------------------o
CapsLock & s::
if GetKeyState("alt") = 0                                            ;|
{                                                                    ;|
    Send, ^+{Tab}
    Return                                                      ;|
}                                                                    ;|
else {                                                               ;|
    Send, ^{Tab}                                                     ;|
    return                                                           ;|
}                                                                    ;|
return                                                               ;|

;-----------------------------------o                                ;|

CapsLock & q::                                                       ;|
if GetKeyState("alt") = 0                                            ;|
{                                                                    ;|
    Send, ^w                                                         ;|
}                                                                    ;|
else {                                                               ;|
    Send, !{F4}                                                      ;|
    return                                                           ;|
}                                                                    ;|
return                                                               ;|
;-----------------------------------o                                ;|
!q::Send, ^w                                                         ;|
return                                                               ;|
;-----------------------------------o                                ;|
;CapsLock & g::
;---------------------------------------------------------------------o
SetCapsLockState, AlwaysOff
reset()
;=====================================================================o
;                        CapsLock Self Defined Area                  ;|
;-----------------------------------o---------------------------------o
;                     CapsLock + d  |  Alt + d(Dictionary)           ;|
;                     CapsLock + f  |  Alt + f(Search via Everything);|
;                     CapsLock + e  |  Open Search Engine            ;|
;                     CapsLock + r  |  Open Shell                    ;|
;                     CapsLock + t  |  Open Text Editor              ;|
;-----------------------------------o---------------------------------o
CapsLock & d::
{
if GetKeyState("alt") = 0                                            ;|
{                                                                    ;|
	Send, {End}
	Send, +{Home}
	Send, ^+{Left}
	Send, {Delete}
	return                                                        ;|
}                                                                    ;|
else {                                                               ;|
	Send, {End}
	Send, +{Home}
	return                                                          ;|
}                                                                    ;|
}

CapsLock & f::
{
Send ^c
if GetKeyState("alt") = 0                                            ;|
{                                                                    ;|
SetTitleMatchMode, 2
If WinExist("ahk_exe chrome.exe")
    {
    WinActivate, ahk_exe chrome.exe
    Send ^t
    Send !d
    Send ^v
    Send {enter}
    Return
    }
else
    {
    Run "C:\Program Files\Google\Chrome\Application\chrome.exe" --profile-directory="Default"
    Sleep 200
    Send !d
    Send ^v
    Send {enter}
    }
return                                                       ;|
}                                                                    ;|
else
{                                                               ;|
    send ^f
    Send ^v
	return                                                          ;|
}                                                                    ;|
}

SetCapsLockState, AlwaysOff

CapsLock & r::
{
    ; Send the Windows key and "i" to open the Start menu
    Send, #x
    ; Send "i" again (if needed for further actions)
    Sleep, 200
    Send, i
    Return
}

SetCapsLockState, AlwaysOff

;---------------------------------------------------------------------o


;=====================================================================o
;                        CapsLock Char Mapping                       ;|
;-----------------------------------o---------------------------------o
;                     CapsLock + ;  |  Enter (Cancel)                ;|
;                     CapsLock + '  |  =                             ;|
;                     CapsLock + [  | zoom in   ;|
;                     CapsLock + ]  |  zoom out  ;|
;                     CapsLock + 1  |  Build and Run(Visual Studio)  ;|
;                     CapsLock + 2  |  Debuging     (Visual Studio)  ;|
;                     CapsLock + 3  |  Step Over    (Visual Studio)  ;|
;                     CapsLock + 4  |  Step In      (Visual Studio)  ;|
;                     CapsLock + 5  |  Stop Debuging(Visual Studio)  ;|
;                     CapsLock + 6  |  Shift + 6     ^               ;|
;                     CapsLock + 7  |  Shift + 7     &               ;|
;                     CapsLock + 8  |  Shift + 8     *               ;|
;                     CapsLock + 9  |  Shift + 9     (               ;|
;                     CapsLock + 0  |  Shift + 0     )               ;|
;-----------------------------------o---------------------------------o
CapsLock & `;::
{
if GetKeyState("alt") = 0
{
    Send, {Enter}
    return
}
else
{
    CoordMode, Caret, Screen     ; set Caret to use Screen Coordinates
    CoordMode, Mouse, Screen     ; set Mouse to use Screen Coordinates
    MouseMove, %A_CaretX%, %A_CaretY%   ; move mouse to caret position
    return
}
}
SetCapsLockState, AlwaysOff
CapsLock & '::
{
    Send, =
    return
}
ctrl & j::
{
    Send, {AppsKey}
    return
}
CapsLock & [:: Send, ^{-}                                              ;|
SetCapsLockState, AlwaysOff
CapsLock & ]:: Send, ^{=}                                         ;|
SetCapsLockState, AlwaysOff
;CapsLock & 1:: Send,+1
CapsLock & 2:: Send,+2
SetCapsLockState, AlwaysOff
CapsLock & 3:: Send,+4
SetCapsLockState, AlwaysOff
CapsLock & 5:: Send,+5
SetCapsLockState, AlwaysOff
CapsLock & 7:: Send,+7
SetCapsLockState, AlwaysOff
CapsLock & 8:: Send,+8
SetCapsLockState, AlwaysOff
CapsLock & 9:: Send,+9
SetCapsLockState, AlwaysOff
CapsLock & 0:: Send,+0
SetCapsLockState, AlwaysOff
CapsLock & -:: Send,+{-}
SetCapsLockState, AlwaysOff
CapsLock & =:: Send,+{=}
SetCapsLockState, AlwaysOff
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

SetCapsLockState, AlwaysOff

reset()
;-----------------------------------
; Only run when Windows Explorer or Desktop is active
; Alt+N
;-----------------------------------
#IfWinActive ahk_class CabinetWClass
!SC031::
#IfWinActive ahk_class ExploreWClass
!SC031::
#IfWinActive ahk_class Progman
!SC031::

    ; Get full path from open Explorer window using COM object
    FullPath := ""
    for window in ComObjCreate("Shell.Application").Windows
    {
        if (window.hwnd = WinExist("A"))
        {
            FullPath := window.Document.Folder.Self.Path
            break
        }
    }

    ; If FullPath is still empty, return
    if (FullPath = "")
        Return

    ; Clean up result
    FullPath := RegExReplace(FullPath, "(^.+?: )", "")
    StringReplace, FullPath, FullPath, `r, , all

    ; Change working directory
    SetWorkingDir, %FullPath%

    ; An error occurred with the SetWorkingDir directive
    If ErrorLevel
        Return

    ; Display input box for filename
    InputBox, UserInput, New File, , , 400, 100, , , , ,
    ; User pressed cancel
    If ErrorLevel
        Return
    ; Create file
    FileAppend, , %UserInput%
    ; Open the file in the appropriate editor
    Run %UserInput%
Return

;-----------------------------------o---------------------------------o
;-----------------------------------o---------------------------------o
; this to creat new folder using Ctrl+alt+n
#IfWinActive ahk_class CabinetWClass
^+SC031::
#IfWinActive ahk_class ExploreWClass
^+SC031::
#IfWinActive ahk_class Progman
^+SC031::

    ; Get full path from open Explorer window using COM object
    FullPath := ""
    for window in ComObjCreate("Shell.Application").Windows
    {
        if (window.hwnd = WinExist("A"))
        {
            FullPath := window.Document.Folder.Self.Path
            break
        }
    }

    ; If FullPath is still empty, return
    if (FullPath = "")
        Return

    ; Clean up result
    FullPath := RegExReplace(FullPath, "(^.+?: )", "")
    StringReplace, FullPath, FullPath, `r, , all

    ; Change working directory
    SetWorkingDir, %FullPath%

    ; An error occurred with the SetWorkingDir directive
    If ErrorLevel
        Return

    ; Display input box for folder name
    InputBox, FolderName, Create New Folder, , , 400, 100, , , , ,

    ; User pressed cancel
    If ErrorLevel
        Return

    ; Create directory
    FileCreateDir, %FolderName%
    ; Open the directory in the Explorer
    Run, explorer.exe %FolderName%
Return
