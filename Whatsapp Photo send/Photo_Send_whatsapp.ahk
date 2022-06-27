    #NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force
CoordMode, Mouse, Screen
^#w::

Loop, 4
{
    ;30 photo select
   Send, {Shift down}{Down 29}{Shift up}

    Sleep, 500


    ;photo copy and paste on whatsapp
    Send, {Ctrl down}c{ctrl up}
    Send, {Alt down}{Tab}{Alt up}
    Sleep, 2000
    SendEvent {Click 708, 362}
    Send, {Ctrl down}v{Ctrl up}

    ; Send after 12 s
    Sleep, 12000
    Send, {Enter}
    Sleep, 2000

    ;Open Explorer
    Send, {Alt down}{Tab}{Alt up}
    Sleep, 1000



    Send, {Backspace}{down}{Enter}

    Sleep, 2000

    Send, {Ctrl down}v{Ctrl up}


    Send, {Backspace}{Up}{Enter}

    Sleep, 10000

    SendEvent {Click 581, 132}

    Send, {Shift down}{Down 29}{Shift up}{Delete}

    Send, {PgUp 3}

    Sleep, 10000
    SendEvent {Click 581, 132}
}
^Esc::ExitApp
return