    #NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force
CoordMode, Mouse, Screen
^#w::
Loop, 35
{
    Send, {Ctrl down}r{Ctrl up}
    Sleep, 2000
    Send, {Space}
    Loop, 200
    {
        SendEvent {Click 1265, 277}
        Sleep, 200

    }
    
}

^Esc::ExitApp
;SendEvent {click 828, 132, down}{click 857, 217, up}
return