#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force
^#!v::
Send,{Tab}i{Down}


MsgBox Is IT in Policy No. ?
Send,{Tab}{Tab}E-2{Tab}Neemuch{Tab}Neemuch{Tab}{Down}{Tab}{Right}
return
