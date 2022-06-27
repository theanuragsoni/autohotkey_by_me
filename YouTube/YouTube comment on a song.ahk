#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force
CoordMode, Mouse, Screen
^#Numpad1::
;This script is for Pixel 2 XL Version of YouTube website

;variable to count the day watched
day_of_watching := 1

;Whole script loop
Loop , 73
{
    ;refresh the page
    Send, {Ctrl down}r{Ctrl up}

    Sleep, 1000 ;Wait
    SendEvent {Click 404, 250} ;To unmute
    ;Comment buttton
    SendEvent {Click 388, 470}

    ;click to pause the video
    Sleep, 1000
    SendEvent {Click 404, 250}{Click 404, 250}

    ;click on comment field
    SendEvent {Click 380, 397}
    
    ;individual comment loop
    Loop, 10
    {
        ;click on comment field
        SendEvent {Click 380, 397}

        ;type the actual message
        Send, for viewers

        Send, Enter your text here

        ;Click on "comment" send button
        SendEvent {Click 508, 448}

        ;add 1 to the day watched
        day_of_watching := day_of_watching + 1

        Sleep, 2000 ;Sleep for 2 seconds after every click

        ;Like your own comment
        SendEvent {Click 370, 485}{Click 342, 394}
    }
}

^Esc::ExitApp
return