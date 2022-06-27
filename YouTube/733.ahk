#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
;#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force
CoordMode, Mouse, Screen
#^Numpad9::

Loop, 735
{
    run "C:\Users\WELCOME\files\Python\Science commentor on YT companion\copy_fact_to_clipboard.py"
    Sleep, 100
}

^Esc::ExitApp
return