#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force
Esc::

MsgBox, 4, Close Autofill
IfMsgBox, No
    return
if WinExist(Blue Euro 42.ahk)
    WinClose ; Use the window found by WinExist.
if WinExist(Blue Euro 47.ahk)
    WinClose ; Use the window found by WinExist.
if WinExist(Blue Euro 50.ahk)
    WinClose ; Use the window found by WinExist.
if WinExist(Blue Powertrac 435.ahk)
    WinClose ; Use the window found by WinExist.
if WinExist(Blue Powertrac 439 DSPLS ALT4000.ahk)
    WinClose ; Use the window found by WinExist.
if WinExist(Blue Powertrac 439 RDX.ahk)
    WinClose ; Use the window found by WinExist.
if WinExist(Blue Powertrac 439.ahk)
    WinClose ; Use the window found by WinExist.
if WinExist(Blue Powertrac 439DS PLS 2WD.ahk)
    WinClose ; Use the window found by WinExist.
if WinExist(Tractor Insurance.ahk)
    WinClose ; Use the window found by WinExist.

Send, ^r

Run, C:\Users\WELCOME\files\AutoHotkey\Tractors\Blue Euro 42.ahk
Run, C:\Users\WELCOME\files\AutoHotkey\Tractors\Blue Euro 47.ahk
Run, C:\Users\WELCOME\files\AutoHotkey\Tractors\Blue Euro 50.ahk
Run, C:\Users\WELCOME\files\AutoHotkey\Tractors\Blue Powertrac 435.ahk
Run, C:\Users\WELCOME\files\AutoHotkey\Tractors\Blue Powertrac 439 DSPLS ALT4000.ahk
Run, C:\Users\WELCOME\files\AutoHotkey\Tractors\Blue Powertrac 439 RDX.ahk
Run, C:\Users\WELCOME\files\AutoHotkey\Tractors\Blue Powertrac 439.ahk
Run, C:\Users\WELCOME\files\AutoHotkey\Tractors\Blue Powertrac 439DS PLS 2WD.ahk
Run, C:\Users\WELCOME\files\AutoHotkey\Tractor Insurance.ahk
Run, C:\Users\WELCOME\files\AutoHotkey\Tractors\Blue Powertrac 439DS PLS 2WD.ahk