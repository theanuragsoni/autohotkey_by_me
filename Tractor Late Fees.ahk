#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force
CoordMode, Mouse, Screen
^#!l::
;Select neemuch and one page report
Send,{Tab}n{Down}{Tab}p
;switch tabs
SendEvent {click 77, 17}
;select name
SendEvent {click 302, 329}{click 302, 329}{click 302, 329}
;copy name
Send, ^c
;switch tabs
SendEvent {click 280, 12}

;wait for some time
;Sleep, 2500

;select name space
SendEvent {click 666, 279}
;paste the name and remove the extra bits
Send, ^v{Backspace}{Up}{Right}{Right}{Backspace}{Backspace}
;switch tabs, select chassis no.
SendEvent {click 88, 14}{click 312, 570}{click 312, 570}
;copy chassis no.
Send, ^c
;switch tabs, select RC/chassis no. entering field
SendEvent {click 353, 0}{click 618, 305}
;paste chassis no. and also enter the mobile no.
Send, ^v{Tab}{Tab}{Tab}8224029253
return