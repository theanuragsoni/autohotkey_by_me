#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force
^#!b::

; Financer name skip
Send, {Down}{Tab }
Sleep, 100

; Financer Address
Send, neemuch

; City
Send, {Tab}{Tab}n{Down 2}

; Pinc
Send, {Tab}458441

; Finance from
Send, {Tab}

; Finance to
Send, {Tab}{Right}{Backspace}5
return