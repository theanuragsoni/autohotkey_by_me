#SingleInstance force
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
;SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
CoordMode, Mouse, Screen
CoordMode, Pixel, Screen
Gui,2:+AlwaysOnTop
Gui,2:Add,Button,x10 y10 w200 h20 gFind_Image, Find Image
Gui,2:Add,Button,x10   w200 gGui_1,Load / Reload Image
Gui,2:Add,Text,x10, Press Numpad 1 to stop
Gui,2:Show,x1000 y200
Return
2GuiClose:
    ExitApp

Find_Image:
    Return


;GuiContextMenu:
    ;Gui,1:Destory
    ;Return

Move_Window:
    Random,new_x,0,A_ScreenWidth-posw
    Random,new_y,0,A_ScreenHeight-posh
    Gui,1:Show,x%new_x% y%new_y%
    return



Gui_1()
    {
                global
        Gui,1:Destroy
        Gui,1:Margin,0,0
        Gui,1:+AlwaysOnTop  -Caption  +Owner2
        Gui,1:Add,Picture,x0 y0 vClip_Picture gMove_Window,not_loading.png
        GuiControlGet,Pos,1:Pos,Clip_Picture
        Gui,1:Show, AutoSize

   }



NumPad1::
    Stop:=1



*ESC::ExitApp
