#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force
!^#NumPad5::

; Select Vehicle class (Tractor)
Send, {Tab}{Down}


; Wait for loading to finish
MsgBox Press Space after loading


; Select Vehicle Class Type (Tractor)
Send, {Tab}{Down}

; Wait for loading to finish
MsgBox Press Space after loading


; Select Manufacturer (Escorts LTD)
Send, {Tab 2}{Down}

; Wait for loading to finish
MsgBox Press Space after loading

;Model (Powertrac 435)
Send, {Tab 2}{Down 4}

;Fuel (Diesel)
Send, {Tab}d

;color (Blue)
Send, {Tab}b{Down 121}

;Steering (Power)
Send, {Tab}p


;Wait for loading to finish
MsgBox Press Space after loading




;Engine no. skip - chassis no. skip
Send, {Tab 3}

;Gross Weight
Send, 2250

;Reg.. Weight skip - Invoice price (7.2 lakh)
Send, {Tab 2}720000

;Add.. Trade fee skip - Body type skip - horse power
Send, {Tab 3}37

;capasity skip - date of manufacturing skip - Unladen weight
Send, {Tab 5 }1530

;Laden Weight and other info skip
Send, {Tab 5}

;Tax exempted
Send, {Tab}{Space}

;Bharat Stage 3
Send, {Tab}{Down}

;Type current date and time
Send, {Tab}
FormatTime, CurrentDateTime,, dd/MM/yyyy
SendInput %CurrentDateTime%

;Return to engine no. input field
Send, {Shift down}{Tab 20}{Shift up}


return