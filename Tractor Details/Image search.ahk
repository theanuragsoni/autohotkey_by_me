#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force
CoordMode, Mouse, Screen
#^!a::
CoordMode Pixel  ; Interprets the coordinates below as relative to the screen rather than the active window.
ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, not_loading.png


;if (ErrorLevel = 2)
;    MsgBox Could not conduct the search.
;else if (ErrorLevel = 1)
;    MsgBox Icon could not be found on the screen.
;else
;    MsgBox The icon was found at %FoundX%x%FoundY%.



Send, {Tab}{Down}
FoundX := 0
while (FoundX = 0) {
    ImageSearch, FoundX, FoundY, 100, 100, A_ScreenWidth, A_ScreenHeight, Big_Loading.png
    Sleep, 10
    ;MsgBox in the loop
}

MsgBox Image found at (%FoundX%, %FoundY%)
return