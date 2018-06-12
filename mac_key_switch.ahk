/*
Script to use USB Mac Keyboard on Windows

USAGE:
1. install auto hot key (https://autohotkey.com/)
2. put this script into autorun folder
3. Use CTRL + F12 to switch between mac keyboard and windows keyboard (useful for laptop)
4. Otherwise comment out lines 11-13 and the if statements around the keys
*/

LCtrl & f12::
ToggleKeys := !ToggleKeys
Return

#If ToggleKeys
; remap all the fn and media keys..
RAlt & F7::SendInput {Media_Prev}
RAlt & F8::SendInput {Media_Play_Pause}
RAlt & F9::SendInput {Media_Next}
RAlt & F10::SendInput {Volume_Mute}
RAlt & F11::SendInput {Volume_Down}
RAlt & F12::SendInput {Volume_Up}
F13::SendInput {PrintScreen}
F14::SendInput {ScrollLock}
F15::SendInput {Pause}

; switch those two as they are inverted on mac keyboard
LWin::LAlt
LAlt::LWin

;switch rwin to ralt to allow dev brackets to work - dont remap ralt tough to use it as fn key
RWin::RAlt

#if

return
