#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force
^#!b::
Send, {Down}{Tab }
Sleep, 100
Send, neemuch{Tab}{Tab}n{Down}{Tab}458441{Tab}{Tab}{Right}{Backspace}4
return