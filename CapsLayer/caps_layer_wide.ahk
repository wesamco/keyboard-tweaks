﻿
; AutoHotKey script for redefining the Caps Lock key as dual-role modifier
; Hold Caps Lock and press other keys to provide an additional layer for navigation and other fuctionality
; Single press AltGr enables a sticky shift - next letter will be capitalized only
; http://www.keyboard-layout-editor.com/#/layouts/0e9b9a41ddd3bbe0846967a59c782ba2
  
#Persistent
SetCapsLockState, AlwaysOff
global navLayer

*CapsLock::
  GetKeyState, sh, Shift
  GetKeyState, la, LAlt
  GetKeyState, ra, RAlt
  GetKeyState, ct, Control
  if ra = D
  {
    GetKeyState, cp, CapsLock, T
	if cp = D
	  SetCapsLockState, AlwaysOff
	else
      SetCapsLockState, AlwaysOn  
  } 
  else if la = D
  {
	if navLayer
	  navLayer := 0
	else
	  navLayer := 1  
    SetCapsLockState, AlwaysOff
  } 
  else
  {
;    Send {Backspace}
    SetCapsLockState, AlwaysOff
    navLayer := 0
  }
Return

; digit row

*SC002::
  GetKeyState, cp, CapsLock, P
  if cp = D
    Send {Blind}{F1}
  else if navLayer
    Send {Blind}{F1}
  else
    Send {Blind}{SC002}
return

*SC003::
  GetKeyState, cp, CapsLock, P
  if cp = D
    Send {Blind}{F2}
  else if navLayer
    Send {Blind}{F2}
  else
    Send {Blind}{SC003}
return

*SC004::
  GetKeyState, cp, CapsLock, P
  if cp = D
    Send {Blind}{F3}
  else if navLayer
    Send {Blind}{F3}
  else
    Send {Blind}{SC004}
return

*SC005::
  GetKeyState, cp, CapsLock, P
  if cp = D
    Send {Blind}{F4}
  else if navLayer
    Send {Blind}{F4}
  else
    Send {Blind}{SC005}
return

*SC006::
  GetKeyState, cp, CapsLock, P
  if cp = D
    Send {Blind}{F5}
  else if navLayer
    Send {Blind}{F5}
  else
    Send {Blind}{SC006}
return

*SC008::
  GetKeyState, cp, CapsLock, P
  if cp = D
    Send {Blind}{F6}
  else if navLayer
    Send {Blind}{F6}
  else
    Send {Blind}{SC008}
return

*SC009::
  GetKeyState, cp, CapsLock, P
  if cp = D
    Send {Blind}{F7}
  else if navLayer
    Send {Blind}{F7}
  else
    Send {Blind}{SC009}
return

*SC00A::
  GetKeyState, cp, CapsLock, P
  if cp = D
    Send {Blind}{F8}
  else if navLayer
    Send {Blind}{F8}
  else
    Send {Blind}{SC00A}
return

*SC00B::
  GetKeyState, cp, CapsLock, P
  if cp = D
    Send {Blind}{F9}
  else if navLayer
    Send {Blind}{F9}
  else
    Send {Blind}{SC00B}
return

*SC00C::
  GetKeyState, cp, CapsLock, P
  if cp = D
    Send {Blind}{F10}
  else if navLayer
    Send {Blind}{F10}
  else
    Send {Blind}{SC00C}
return

*SC00D::
  GetKeyState, cp, CapsLock, P
  if cp = D
    Send {Blind}{F11}
  else if navLayer
    Send {Blind}{F11}
  else
    Send {Blind}{SC00D}
return

*SC007::
  GetKeyState, cp, CapsLock, P
  if cp = D
    Send {Blind}{F12}
  else if navLayer
    Send {Blind}{F12}
  else
    Send {Blind}{SC007}
return

; top row

*SC010::
  GetKeyState, cp, CapsLock, P
  if cp = D
    Send {Esc}
  else if navLayer
    Send {Esc}
  else
    Send {Blind}{SC010}
return

*SC011::Send {Blind}{SC011}

*SC012::
  GetKeyState, cp, CapsLock, P
  if cp = D
    Send {CtrlDown}{f}{CtrlUp}
  else if navLayer
    Send {CtrlDown}{f}{CtrlUp}
  else
    Send {Blind}{SC012}
return

*SC013::Send {Blind}{SC013}
*SC014::Send {Blind}{SC014}
*SC015::Send {Blind}{SC015}

*SC016::
  GetKeyState, cp, CapsLock, P
  if cp = D
    Send {Blind}{PgUp}
  else if navLayer
    Send {Blind}{PgUp}
  else
    Send {Blind}{SC016}
return

*SC017::
  GetKeyState, cp, CapsLock, P
  if cp = D
    Send {Blind}{Home}
  else if navLayer
    Send {Blind}{Home}
  else
    Send {Blind}{SC017}
return

*SC018::
  GetKeyState, cp, CapsLock, P
  if cp = D
    Send {Blind}{Up}
  else if navLayer
    Send {Blind}{Up}
  else
    Send {Blind}{SC018}
return

*SC019::
  GetKeyState, cp, CapsLock, P
  if cp = D
    Send {Blind}{End}
  else if navLayer
    Send {Blind}{End}
  else
    Send {Blind}{SC019}
return

*SC01A::
  GetKeyState, cp, CapsLock, P
  if cp = D
    Send {Blind}{End}{;}
  else if navLayer
    Send {Blind}{End}{;}
  else
    Send {Blind}{SC01A}
return

*SC01B::
  GetKeyState, cp, CapsLock, P
  if cp = D
    Send {Insert}
  else if navLayer
    Send {Insert}
  else
    Send {Blind}{SC01B}
return

; middle row

*SC01E::
  GetKeyState, cp, CapsLock, P
  if cp = D
    Send {Blind}{AltDown}
  else if navLayer
    Send {Blind}{AltDown}
  else
    Send {Blind}{SC01E}
return

*SC01E Up::
  GetKeyState, cp, CapsLock, P
  if cp = D
    Send {AltUp}
  else if navLayer
    Send {AltUp}
return

*SC01F::
  GetKeyState, cp, CapsLock, P
  if cp = D
    Send {Home}{Home}{ShiftDown}{Down}{ShiftUp}
  else if navLayer
    Send {Home}{Home}{ShiftDown}{Down}{ShiftUp}
  else
    Send {Blind}{SC01F}
return

*SC020::
  GetKeyState, cp, CapsLock, P
  if cp = D
    Send {Blind}{ShiftDown}
  else if navLayer
    Send {Blind}{ShiftDown}
  else
    Send {Blind}{SC020}
return

*SC020 Up::
  GetKeyState, cp, CapsLock, P
  if cp = D
    Send {ShiftUp}
  else if navLayer
    Send {ShiftUp}
return

*SC021::
  GetKeyState, cp, CapsLock, P
  if cp = D
    Send {Blind}{CtrlDown}
  else if navLayer
    Send {Blind}{CtrlDown}
  else
    Send {Blind}{SC021}
return

*SC021 Up::
  GetKeyState, cp, CapsLock, P
  if cp = D
    Send {CtrlUp}
  else if navLayer
    Send {CtrlUp}
return

*SC022::Send {Blind}{SC022}

*SC023::Send {Blind}{SC023}

*SC024::
  GetKeyState, cp, CapsLock, P
  if cp = D
    Send {Blind}{PgDn}
  else if navLayer
    Send {Blind}{PgDn}
  else
    Send {Blind}{SC024}
return

*SC025::
  GetKeyState, cp, CapsLock, P
  if cp = D
    Send {Blind}{Left}
  else if navLayer
    Send {Blind}{Left}
  else
    Send {Blind}{SC025}
return

*SC026::
  GetKeyState, cp, CapsLock, P
  if cp = D
    Send {Blind}{Down}
  else if navLayer
    Send {Blind}{Down}
  else
    Send {Blind}{SC026}
return

*SC027::
  GetKeyState, cp, CapsLock, P
  if cp = D
    Send {Blind}{Right}
  else if navLayer
    Send {Blind}{Right}
  else
    Send {Blind}{SC027}
return

*SC028::
  GetKeyState, cp, CapsLock, P
  if cp = D
    Send {Blind}{Del}
  else if navLayer
    Send {Blind}{Del}
  else
    Send {Blind}{SC028}
return

*SC02B::
  GetKeyState, cp, CapsLock, P
  if cp = D
    Send {Blind}{Del}
  else if navLayer
    Send {Blind}{Del}
  else
    Send {Blind}{SC02B}
return

; bottom row

*SC056::
  GetKeyState, cp, CapsLock, P
  if cp = D
    Send {CtrlDown}{y}{CtrlUp}
  else if navLayer
    Send {CtrlDown}{y}{CtrlUp}
  else
    Send {Blind}{SC056}
return

*SC02C::
  GetKeyState, cp, CapsLock, P
  if cp = D
    Send {CtrlDown}{z}{CtrlUp}
  else if navLayer
    Send {CtrlDown}{z}{CtrlUp}
  else
    Send {Blind}{SC02C}
return

*SC02D::
  GetKeyState, cp, CapsLock, P
  if cp = D
    Send {CtrlDown}{x}{CtrlUp}
  else if navLayer
    Send {CtrlDown}{x}{CtrlUp}
  else
    Send {Blind}{SC02D}
return

*SC02E::
  GetKeyState, cp, CapsLock, P
  if cp = D
    Send {CtrlDown}{c}{CtrlUp}
  else if navLayer
    Send {CtrlDown}{c}{CtrlUp}
  else
    Send {Blind}{SC02E}
return

*SC02F::
  GetKeyState, cp, CapsLock, P
  if cp = D
    Send {CtrlDown}{v}{CtrlUp}
  else if navLayer
    Send {CtrlDown}{v}{CtrlUp}
  else
    Send {Blind}{SC02F}
return

*SC030::
  GetKeyState, cp, CapsLock, P
  if cp = D
    Send {AppsKey}
  else if navLayer
    Send {AppsKey}
  else
    Send {Blind}{SC030}
return

*SC031::Send {Blind}{SC031}

*SC032::
  GetKeyState, cp, CapsLock, P
  if cp = D
    Send {Blind}{PgDn}
  else if navLayer
    Send {Blind}{PgDn}
  else
    Send {Blind}{SC032}
return

*SC033::
  GetKeyState, cp, CapsLock, P
  if cp = D
    Send {Blind}{Backspace}
  else if navLayer
    Send {Blind}{Backspace}
  else
    Send {Blind}{SC033}
return

*SC034::Send {Blind}{SC034}

*SC035::Send {Blind}{SC035}

*SC039::
  GetKeyState, cp, CapsLock, P
  if cp = D
    Send {Return}
  else if navLayer
    Send {Return}
  else
    Send {Blind}{Space}
return

; RAlt cancel caps / nav layer

RAlt::
  GetKeyState, cp, CapsLock, T
  if navLayer 
  {
    navLayer := 0
  } 
  else if cp = D
  {
    SetCapsLockState, AlwaysOff
  } 
Return
