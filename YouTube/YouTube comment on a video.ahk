#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force
CoordMode, Mouse, Screen
^#Numpad1::
;This script is for Pixel 2 XL Version of YouTube website

;variable to count the comment no.
;comment_num := 1

;Whole script loop
Loop , 20
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

    
    ;individual comment loop
    Loop, 10
    {
        SendEvent {Click 401, 389 down}{Click 406, 571 up} ; scroll up just to make sure

        ;click on comment field
        SendEvent {Click 380, 397}

        ; paste the fact from facts txt file
        Send, {Ctrl down}v{Ctrl up}

        Sleep, 500 ;May have a glitch

        ;type actual message
        Send, {Enter 2}Hey Joe, firstly I want you to know that I am a really big fan of your channel. I've been watching it for almost 2 years and I am writing all these comments to ask you that why are you making fewer random Thursday videos recently I really enjoy your videos so I can't wait for them. (I've not joined your Patreon because I'm a student so I don't have much money){Enter}And one more thing if you could just talk to me for a few minutes on video chat then I would be really really happy, it would be like a dream come true.{Enter}(The facts above are for all viewers so that these comments don't count as spamming, they are there because of your living room rule for comments){Enter 2}Please Reply{Enter}Your Enormous fan, {Enter}Anurag Soni{Enter}imgonnabeabillionare@gmail.com

        sleep, 500 ; let the PC breathe

        ;Click on "comment" send button
        SendEvent {Click 514, 447}

        ;add 1 to the day watched
        ;comment_num := comment_num + 1

        Sleep, 2000 ;Sleep for 2 seconds after every click

        SendEvent {Click 382, 494} ;like popup
        sleep, 500
        SendEvent {Click 342, 391} ; like your own comment
        sleep, 100 ;you know just to make sure
        ; run the python script to get a new fact on clipboard
        run "C:\Users\WELCOME\files\Python\Science commentor on YT companion\copy_fact_to_clipboard.py"

        Sleep, 1000 ; Let the python popup show up and disappear
    }
}

^Esc::ExitApp
return