#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force
CoordMode, Mouse, Screen
^#!l::
Send,{Tab}n{Down}{Tab}p
SendEvent {click 77, 17}
SendEvent {click 256, 319}{click 256, 319}{click 256, 319}
Send, ^c
SendEvent {click 280, 12}
Sleep, 2500
SendEvent {click 671, 268}
Send, ^v{Backspace}{Up}{Right}{Right}{Backspace}{Backspace}
SendEvent {click 88, 14}{click 276, 581}{click 276, 581}
Send, ^c
SendEvent {click 353, 0}{click 632, 295}
Send, ^v{Tab}{Tab}{Tab}8224029253
return