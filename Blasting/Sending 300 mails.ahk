#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force
CoordMode, Mouse, Screen
^#z::

;assunming that email title is copied on clipboard
;(open tab excel, 2nd opened tab firefox gmail)

;Select and copy 302 email addresses
Send, {Shift down}{Down 301}{Shift up}{Ctrl down}c{Ctrl up}

;Change tab to browser
Send, {Alt down}{Tab}{Alt Up}
Sleep, 1000

;Fill out all the details
SendEvent {Click 81, 211}
SendEvent {Click 857, 314}
Send, {Ctrl down}{Shift down}b{Ctrl up}{Shift up}

Sleep, 1000

Send, emailmeonmyfakeemailid@gmail.com, hwilliam102003@gmail.com, rajeshvermamanasa@gmail.com


^Esc::ExitApp
return