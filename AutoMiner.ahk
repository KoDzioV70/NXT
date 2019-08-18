#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Persistent
#SingleInstance force ;
#InstallMouseHook ;
#InstallKeybdHook ;
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SetTitleMatchMode, 2 ;
SetBatchLines -1 ;

Emerald = 0 ;

RotateSpeed = 0 ;

Komenda1Timer = 0 ;
Komenda2Timer = 0 ;
Komenda3Timer = 0 ;
Komenda4Timer = 0 ;
Komenda5Timer = 0 ;
Komenda6Timer = 0 ;
Komenda7Timer = 0 ;
Komenda8Timer = 0 ;

Komenda1Time = 0 ;
Komenda2Time = 0 ;
Komenda3Time = 0 ;
Komenda4Time = 0 ;
Komenda5Time = 0 ;
Komenda6Time = 0 ;
Komenda7Time = 0 ;
Komenda8Time = 0 ;

Komenda1 = 0 ;
Komenda2 = 0 ;
Komenda3 = 0 ;
Komenda4 = 0 ;
Komenda5 = 0 ;
Komenda6 = 0 ;
Komenda7 = 0 ;
Komenda8 = 0 ;

Komenda1TEXT = null ;
Komenda2TEXT = null ;
Komenda3TEXT = null ;
Komenda4TEXT = null ;
Komenda5TEXT = null ;
Komenda6TEXT = null ;
Komenda7TEXT = null ;
Komenda8TEXT = null ;



; ---GUI---
Gui,+AlwaysOnTop ;
Gui, +ToolWindow ;
Gui, Color,363636
Gui, Margin, 4, 4
Gui, Font, caqua

Gui, Add, Tab3,w247 h322, Ustawienia|Komendy|Makro|Pomoc
Gui, Show, w255 h330,NXT / Next Level Kopania
; ---Ustawienia---
Gui, Add, Text,w70 y40 x10, Tryby Gornika: ;
Gui, Add, DropDownList, Choose1 vTryb w85 x82 y36  gSubmitAll , Wybierz|Kwadrat|Lewo-Prawo ;

Gui, Add, Text, +left w200 y70 ca1a1a1,;

Gui, Font, cred
Gui, Font, s7 ;
Gui, font,bold
Gui, Add, Text,  x160 y65 ,  UWAGA ;
Gui, Add, Text,  x140 y80 ,  ILOSC DLUGOSCI ;
Gui, Add, Text,  x147 y95 ,I SZEROKOSCI  ;
Gui, Add, Text,  x148 y110 , MUSISI BYC x2  ;
Gui, font,
Gui, Font, s7 ;


Gui, Font, caqua
Gui, Add, Text,  x10 y100 vSzerokoscTEXT, Szerokosc: ;
Gui, Font, cblack
Gui, Add, Edit, vSzerokosc yp x82 w38 y67 gSubmitAll, 0 ;
Gui, Font, caqua
Gui, Add, Text, x10 y70 vDlugoscTEXT, Dlugosc: ;
Gui, Font, cblack
Gui, Add, Edit, vDlugosc yp x82 w38 y97 gSubmitAll, 0 ;
Gui, Font, caqua

Gui, Add, Button, x35 y235 w85 gStart, Start ;
Gui, Add, Button, y235 x130 w85 gStop, Stop ;

Gui, Add, Checkbox, x15 y130 w150  vEmerald gSubmitAll,  Wyrzucanie Eme ;




Gui, Add, Button, +center x35 y265 w180 gUpdate, Kanal YouTube Autora  ;

Gui, Font, s7 ;
Gui, Add, Text, ca1a1a1 +Right x25 y293 w120 , Autor V70 ;
Gui, Add, Text, ca1a1a1 +center x22 y310 w212 , POMOC NA TS3: PSP24.PL KANALY NEXT ;
Gui, Font, s9 ;

; ----Komendy-----
Gui, Font, caqua
Gui, Tab, Komendy ;
Gui, Font, s7 ;
Gui, Add, Text, x183 y35 , On? ;
Gui, Add, Text, x25 y35 , Komenda (BEZ / ) ;
Gui, Add, Text, x127 y35  , Okrozenia ;
Gui, Font, cblack

Gui, Add, Checkbox, x185 y55  vKomenda1 gSubmitAll
Gui, Add, Edit, yp x20 y55 -Wrap h15 w100 vKomenda1TEXT gSubmitAll,  ;
Gui, Add, Edit, yp x130 y55 -Wrap Number h15 w40 vKomenda1Time gSubmitAll, %Komenda1Time% ;

Gui, Add, Checkbox, x185 y75  vKomenda2 gSubmitAll
Gui, Add, Edit, yp x20 y75 -Wrap h15 w100 vKomenda2TEXT gSubmitAll,  ;
Gui, Add, Edit, yp x130 y75 -Wrap Number h15 w40 vKomenda2Time gSubmitAll, %Komenda2Time% ;

Gui, Add, Checkbox, x185 y95  vKomenda3 gSubmitAll
Gui, Add, Edit, yp x20 y95 -Wrap h15 w100 vKomenda3TEXT  gSubmitAll, ;
Gui, Add, Edit, yp x130 y95 -Wrap Number h15 w40 vKomenda3Time gSubmitAll, %Komenda3Time% ;

Gui, Add, Checkbox, x185 y115 vKomenda4 gSubmitAll
Gui, Add, Edit, yp x20 y115 -Wrap h15 w100 vKomenda4TEXT  gSubmitAll, ;
Gui, Add, Edit, yp x130 y115 -Wrap Number h15 w40 vKomenda4Time gSubmitAll, %Komenda4Time% ;

Gui, Add, Checkbox, x185 y135 vKomenda5 gSubmitAll
Gui, Add, Edit, yp x20 y135 -Wrap h15 w100 vKomenda5TEXT gSubmitAll, ;
Gui, Add, Edit, yp x130 y135 -Wrap Number h15 w40 vKomenda5Time gSubmitAll, %Komenda5Time% ;

Gui, Add, Checkbox, x185 y155 vKomenda6 gSubmitAll
Gui, Add, Edit, yp x20 y155 -Wrap h15 w100 vKomenda6TEXT  gSubmitAll, ;
Gui, Add, Edit, yp x130 y155 -Wrap Number h15 w40 vKomenda6Time gSubmitAll, %Komenda6Time% ;

Gui, Add, Checkbox, x185 y175 vKomenda7 gSubmitAll
Gui, Add, Edit, yp x20 y175 -Wrap h15 w100 vKomenda7TEXT  gSubmitAll, ;
Gui, Add, Edit, yp x130 y175 -Wrap Number h15 w40 vKomenda7Time gSubmitAll, %Komenda7Time% ;

Gui, Add, Checkbox, x185 y195 vKomenda8 gSubmitAll
Gui, Add, Edit, yp x20 y195 -Wrap h15 w100 vKomenda8TEXT  gSubmitAll, ;
Gui, Add, Edit, yp x130 y195 -Wrap Number h15 w40 vKomenda8Time gSubmitAll, %Komenda8Time% ;


; id minecraftow
Winget, id, list, Minecraft


; ---Pomoc---
Gui, Tab, Pomoc ;

Gui, Font, c20B2AA
Gui, Font, s9 ;
Gui, Add, Text, x10 y35, Kopanie

Gui, Font, s7 ;
Gui, Font, caqua
Gui, Add, Text, x10 y50, F7            |    Wlaczenie Skrypta do kopania
Gui, Add, Text, x10 y70, F8            |    Zatrzymanie Skrypta do kopania
Gui, Add, Text, x10 y90, Ctrl+F9     |    Force Quit NXT
Gui, Add, Text, x10 y110,F10          |    Wlacznie Kopania 5/3/3
Gui, Add, Text, x10 y130,Ctrl+F10   |    Wylacznie Kopania 5/3/3


Gui, Font, c20B2AA
Gui, Font, s9 ;
Gui, Add, Text, x10 y155, Makra

Gui, Font, s7 ;
Gui, Font, caqua
Gui, Add, Text, x10 y172, Scroll              |  ON/OFF Makro Na Klepke
Gui, Add, Text, x10 y190, Ctrl + Scroll     |  ON/OFF Makro Na Bloki

Gui, Font, c20B2AA
Gui, Font, s9 ;
Gui, Add, Text, x10 y212, Wyglad NXT

Gui, Font, s7 ;
Gui, Font, caqua

Gui, Add, Text, x10 y230, Ctrl+WinKey+F11  |  Zmienianie Przezroczystosci

Gui, Add, Button, x35 y263 w91 gHelp, Updaty ;
Gui, Add, Button, x129 y263 w91 gAutorzy, Autorzy ;
Gui, add, button, x35 y290 w185 h24 gRelaunch, Relaunch NXT | Next Level Kopania




; ---Makro ---
Gui, Font, caqua
Gui, Tab, Makro ;
Gui, Font, s8 ;

#SingleInstance, Force
#MaxThreadsPerHotkey 3

;~ MAKRO DO KLEPANIA


Gui, Font, caqua
Gui, Add, Text, y35 x67,Makro | Klepa:
Gui, Add, Text,y53 x10,Delay: 
Gui, Font, cblack
Gui, Add, Edit, x50 y50 vDelay,
Gui, Font, caqua
Gui, Add, Text,x10 y78,Times: 
Gui, Font, cblack
Gui, Add, Edit, x50 y75 vTimes,
Gui, Font, caqua
Gui, Add, Checkbox,x190 y50 vInfinite,Infinite
Gui, Add, Button,x190 y75 gSubmit_All,Update



Gui, Font, s7 ;
Gui, Add, Text, x20 y102, Delay = 0.15        |     6-7CPS
Gui, Add, Text, x20 y114, Delay = 0.1          |     8-9CPS
Gui, Add, Text, x20 y126, Delay = 0.09        |     10-11CPS
Gui, Add, Text, x20 y138, Delay = 0.08        |     12-13CPS

Gui, Add, Text, x20 y150, Delay = 0.065      |     14-15CPS
Gui, Font, s17 ;
Gui, Font, caqua
Gui, Add, Text, x0 y162, ------------------------------------------------------------------------------------



Gui, Font, cwhite
;~ 9CPS
Gui, Add, Text, x8 y100, *
;~ 10CPS
Gui, Add, Text, x8 y112, *
;~ 11CPS
Gui, Add, Text, x8 y124, *
;~ 12CPS
Gui, Add, Text, x8 y136, *
;~ 13CPS
Gui, Add, Text, x8 y148, *
Gui, Font, s8 ;




#SingleInstance, Force
#MaxThreadsPerHotkey 3
;~ MAKRO DO KLEPKI

;~ MAKRO DO BLOKOW
Gui, Tab, Makro ;
Gui, Font, caqua
Gui, Add, Text, y190 x67,Makro | Bloki:
Gui, Add, Text,y208 x10,Delay: 
Gui, Font, cblack
Gui, Add, Edit, x50 y208 vDelay1,
Gui, Font, caqua
Gui, Add, Text,x10 y240,Times: 
Gui, Font, cblack
Gui, Add, Edit, x50 y240 vTimes1,
Gui, Font, caqua
Gui, Add, Checkbox,x190 y210 vInfinite1,Infinite
Gui, Add, Button,x190 y238 gSubmit_All,Update

aot:
gui, submit, nohide
if aot=1
GuiControl, +Alwaysontop, 4Gui
return
;;;the others below are not in the code, just other attempts
GuiControl, +Alwaysontop, AutoHotkeyGUI ;winspy gave me this name for all my GUI's.
Gui, 4: Show, +alwaysontop, wintitle ;this results in a horizontally flat window
GuiControl, +Alwaysontop, aot ;see if it would make my checkbox alwaysontop
WinSet, AlwaysOnTop, toggle, Tag ;and my 3 other GUI titles. As well as "on" instead of "toggle"
and probably a few more methods.

MButton::
Toggle := !Toggle
if(Infinite==1)
	Loop
	{
		If(!Toggle)
			Break
		Click left
		Sleep Delay*1000
	}
else if(Infinite==0)
	Loop, Times
		{
			If(!Toggle)
			Break
		Click left
			Sleep Delay*1000
	}
return

^MButton::
Toggle := !Toggle
if(Infinite1==1)
	Loop
	{
		If(!Toggle)
			Break
		Click right
		Sleep Delay1*1000
	}
else if(Infinite1==0)
	Loop, Times
		{
			If(!Toggle)
			Break
		Click right
			Sleep Delay1*1000
	}
return

	
Goto, SubmitAll ;
return

GuiClose:
	ExitApp

Submit_All:
	Gui, Submit, NoHide
return




; ---Funkcje---
Start:
    Stopped = 0 ;
    Click down ;
    While, Stopped != 1 ;
    {
        ; ---Przekierowania---
        
        if(Komenda1Timer > (Komenda1Time*100) && Komenda1 = 1)
        {
            Goto, Komenda1 ;
        }
        
        if(Komenda2Timer > (Komenda2Time*100) && Komenda2 = 1)
        {
            Goto, Komenda2 ;
        }
        
        if(Komenda3Timer > (Komenda3Time*100) && Komenda3 = 1)
        {
            Goto, Komenda3 ;
        }
        
        if(Komenda4Timer > (Komenda4Time*100) && Komenda4 = 1)
        {
            Goto, Komenda4 ;
        }
        
        if(Komenda5Timer > (Komenda5Time*100) && Komenda5 = 1)
        {
            Goto, Komenda5 ;
        }
        
        if(Komenda6Timer > (Komenda6Time*100) && Komenda6 = 1)
        {
            Goto, Komenda6 ;
        }
        
        if(Komenda7Timer > (Komenda7Time*100) && Komenda7 = 1)
        {
            Goto, Komenda7 ;
        }
		
		if(Komenda8Timer > (Komenda8Time*100) && Komenda8 = 1)
        {
            Goto, Komenda8 ;
        }
        
        ; Tryby Kopania
        if (Tryb = "Obracanie") ; Tryb Obracanie
        {
            MouseMove, RotateSpeed,0, 100, R ;
            Sleep, 10 ;
            Komenda1Timer++ ;
            Komenda2Timer++ ;
            Komenda3Timer++ ;
            Komenda4Timer++ ;
            Komenda5Timer++ ;
            Komenda6Timer++ ;
            Komenda7Timer++ ;
			Komenda8Timer++ ;
        }
        
        if (Tryb = "Lewo-Prawo") ; Tryb Lewo-Prawo
        {
            Click down ;
            Send, {a down} ; 
            Sleep, Szerokosc*100 ;
            Send, {a up} ; 
            Sleep 50 ;
            Send, {d down} ; 
            Sleep, Szerokosc*100 ;
            Send, {d up} ; 
            Sleep 50 ;
            Komenda1Timer += 20 ;
            Komenda2Timer += 20 ;
            Komenda3Timer += 20 ;
            Komenda4Timer += 20 ;
            Komenda5Timer += 20 ;
            Komenda6Timer += 20 ;
            Komenda7Timer += 20 ;
            Komenda8Timer += 20 ;
        }
        
        if (Tryb = "Kwadrat") ; Tryb Kwadrat
        {
            Click down ;
            Send, {a down} ;
            Sleep, Szerokosc*100 ;
            Send, {a up} ;
            Sleep 50 ;
            Send, {w down} ;
            Sleep, Dlugosc*100 ;
            Send, {w up} ;
            Sleep 50 ;
            Send, {d down} ;
            Sleep, Szerokosc*100 ;
            Send, {d up} ;
            Sleep 50 ;
            Send, {s down} ;
            Sleep, Dlugosc*100 ;
            Send, {s up} ;
            Sleep 50 ;
            Komenda1Timer += 40 ;
            Komenda2Timer += 40 ;
            Komenda3Timer += 40 ;
            Komenda4Timer += 40 ;
            Komenda5Timer += 40 ;
            Komenda6Timer += 40 ;
            Komenda7Timer += 40 ;
            Komenda8Timer += 40 ;
        }
    }
    
return

Pos1:
    Sleep 100 ;
    KeyWait, LButton, D
    MouseGetPos, Pos1x, Pos1y ;
    MsgBox, , Pozycja1, Pozycja pierwsza zostala zapisana %Pos1x% %Pos1y%, 2 ;
return

Komenda1:
    if (Stopped != 1)
    {
        if(Emerald = 1)
        {
            Send, { e } ;
            SendInput, {Control down} ;
            Sleep, 1000 ;
			MouseMove, 26, 26 ;
            Loop, 
            {
                ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, *70 %A_WorkingDir%/emerald.png ;
                Sleep, 50 ;
                MouseMove, %FoundX%, %FoundY% , 100 ;
                Sleep, 100 ;
                ;MsgBox The icon was found at %FoundX%x%FoundY%.
                if (ErrorLevel = 1)
                {
                    SendInput, {Control up} ;
                    Sleep, 30 ;
                    Send, { e } ;
                    Break ;
                }
                Else
                {
                    Send, { q } ;
                }
            }
        }
        Stopped = 1;
        Send, {Raw}/ ;
        Sleep 100 ;
        Send, {Raw}%Komenda1TEXT% ;
        Sleep 300 ;
        Send, {Enter} ;
        Sleep 500 ;
        Komenda1Timer = 0 ;
        Sleep 100 ;
        Goto, Start ;
    }
return



Komenda2:
    if (Stopped != 1)
    {
        Stopped = 1;
        Send, {Raw}/ ;
        Sleep 100 ;
        Send, {Raw}%Komenda2TEXT% ;
        Sleep 300 ;
        Send, {Enter} ;
        Sleep 500 ;
        Komenda2Timer = 0 ;
        Sleep 100 ;
        Goto, Start ;
    }
return

Komenda3:
    if (Stopped != 1)
    {
        Stopped = 1;
        Send, {Raw}/ ;
        Sleep 100 ;
        Send, {Raw}%Komenda3TEXT% ;
        Sleep 300 ;
        Send, {Enter} ;
        Sleep 500 ;
        Komenda3Timer = 0 ;
        Sleep 100 ;
        Goto, Start ;
    }
return

Komenda4:
    if (Stopped != 1)
    {
        Stopped = 1;
        Send, {Raw}/ ;
        Sleep 100 ;
        Send, {Raw}%Komenda4TEXT% ;
        Sleep 300 ;
        Send, {Enter} ;
        Sleep 500 ;
        Komenda4Timer = 0 ;
        Sleep 100 ;
        Goto, Start ;
    }
return

Komenda5:
    if (Stopped != 1)
    {
        Stopped = 1;
        Send, {Raw}/ ;
        Sleep 100 ;
        Send, {Raw}%Komenda5TEXT% ;
        Sleep 300 ;
        Send, {Enter} ;
        Sleep 500 ;
        Komenda5Timer = 0 ;
        Sleep 100 ;
        Goto, Start ;
    }
return

Komenda6:
    if (Stopped != 1)
    {
        Stopped = 1;
        Send, {Raw}/ ;
        Sleep 100 ;
        Send, {Raw}%Komenda6TEXT% ;
        Sleep 300 ;
        Send, {Enter} ;
        Sleep 500 ;
        Komenda6Timer = 0 ;
        Sleep 100 ;
        Goto, Start ;
    }
return

Komenda7:
    if (Stopped != 1)
    {
        Stopped = 1;
        Send, {Raw}/ ;
        Sleep 100 ;
        Send, {Raw}%Komenda7TEXT% ;
        Sleep 300 ;
        Send, {Enter} ;
        Sleep 500 ;
        Komenda7Timer = 0 ;
        Sleep 100 ;
        Goto, Start ;
    }
return 

Bloki:
    if (Stopped != 1)
    {
        Stopped = 1;
        Send, {Raw}/ ;
        Sleep 100 ;
        Send, {Raw}bloki ;
        Sleep 300 ;
        Send, {Enter} ;
        Sleep 800 ;
        MouseMove, Pos1x, Pos1y, 50 ;
        Sleep 400 ;
        Click ;
        Sleep 200 ;
        TimerBloki = 0 ;
        Sleep 100 ;
        Goto, Start ;
    }
return

Komenda8:
    if (Stopped != 1)
    {
        Stopped = 1;
        Send, {Raw}/ ;
        Sleep 100 ;
        Send, {Raw}%Komenda8TEXT% ;
        Sleep 300 ;
        Send, {Enter} ;
        Sleep 500 ;
        Komenda5Timer = 0 ;
        Sleep 100 ;
        Goto, Start ;
    }
return

Gui, Color,363636
Gui, Margin, 4, 4
Gui, Font, caqua
Gui, Font, s8 ;
Help:
	Gui, 3:Color,363636
	Gui, 3:Margin, 4, 4
	Gui, 3:Font, caqua
	Gui, 3:Font, s8 ;
    Gui, 3:+AlwaysOnTop ;
    Gui, 3:+ToolWindow ;
    Gui, 3:Add, Text,, F7 - Wlaczanie ;
    Gui, 3:Add, Text,, F8 - Pauza ;
    Gui, 3:Add, Text,, F9 - Wyjscie ;
    Gui, 3:Show, xCenter yCenter w200 h300, Pomoc ;
return

Autorzy:
	Gui, 2:Color,363636
	Gui, 2:Margin, 4, 4
	Gui, 2:Font, caqua
	Gui, 2:Font, s8 ;
    Gui, 2:+AlwaysOnTop ;
    Gui, 2:+ToolWindow ;
	Gui, 2:Font, cc20B2AA
	Gui, 2:Add, Text, x10, Programista i Tworca : ;
	Gui, 2:Font, caqua
    Gui, 2:Add, Text, x20, V70/Sdasfg/KoDzio  ;
    Gui, 2:Add, Text, x20,      ;
	Gui, 2:Font, cc20B2AA
	Gui, 2:Add, Text, x10, Pomyslodawca : ;
	Gui, 2:Font, caqua
    Gui, 2:Add, Text, x20, ZebraYouTube  ;
	Gui, 2:Add, Text, x20, ; 
	Gui, 2:Font, cc20B2AA
	Gui, 2:Add, Text, x10, Testerzy : ;
	Gui, 2:Font, caqua
	Gui, 2:Add, Text, x20, ; 
	Gui, 2:Add, Text, x20, ; 
	Gui, 2:Add, Text, x20, ; 
    Gui, 2:Show, xCenter yCenter w200 h150, Autorzy ;
return


Relaunch:
	Run AutoMiner.ahk ;
return

Update:
    Run https://www.youtube.com/channel/UCn-LQGQhp6ttkBo7qBMewHQ?view_as=subscriber ;
return

SubmitAll:
    Gui, Submit, NoHide ;
    ; Wy??czanie przycisk?w
    if(Tryb ="Obracanie") 
    {
        GuiControl, Disable, SzerokoscTEXT ;
        GuiControl, Disable, DlugoscTEXT ;
    }
    if(Tryb ="Lewo-Prawo") 
    {
        GuiControl, Enable, SzerokoscTEXT ;
        GuiControl, Disable, DlugoscTEXT ;
    }
    if(Tryb ="Kwadrat") 
    {
        GuiControl, Enable, SzerokoscTEXT ;
        GuiControl, Enable, DlugoscTEXT ;
    }
    
    if(MakeCobbleX = 0) 
    {
        GuiControl, Disable, CobbleXTEXT ;
    }
    if(MakeCobbleX = 1) 
    {
        GuiControl, Enable, CobbleXTEXT ;
    }
    
    if(Sell = 0) 
    {
        GuiControl, Disable, SellTEXT ;
    }
    if(Sell = 1) 
    {
        GuiControl, Enable, SellTEXT ;
    }
    
    if(Bloki = 0) 
    {
        GuiControl, Disable, BlokiTEXT ;
    }
    if(Bloki = 1) 
    {
        GuiControl, Enable, BlokiTEXT ;
    }
    
    if(repair = 0) 
    {
        GuiControl, Disable, RepairTEXT ;
    }
    if(repair = 1) 
    {
        GuiControl, Enable, RepairTEXT ;
    }
    
    
    Gui Show ;
    ;FileAppend, %MakeCobbleX% `n, %A_WorkingDir%\AutoMinerConfig.txt ;
Return


Save:
    FileDelete Config.txt ;
    FileAppend,  ; The comma is required in this case.
    (
%Komenda1Time%
%Komenda2Time%
%Komenda3Time%
%Komenda4Time%
%Komenda5Time%
%Komenda6Time%
%Komenda7Time%
%Komenda8Tune%
%Komenda1%
%Komenda2%
%Komenda3%
%Komenda4%
%Komenda5%
%Komenda6%
%Komenda7%
%Komenda8%
%Komenda1TEXT%
%Komenda2TEXT%
%Komenda3TEXT%
%Komenda4TEXT%
%Komenda5TEXT%
%Komenda6TEXT%
%Komenda7TEXT%
%Komenda8TEXT%
%Szerokosc%
%Dlugosc%
%RotateSpeed%
%Emerald%
    ), Config.txt
return


;~ JESZCZE PRACE NAD ZAPISYWANIEM
Load:
    FileReadLine, Komenda1Time, Config.txt, 1 ;
    FileReadLine, Komenda2Time, Config.txt, 2 ;
    FileReadLine, Komenda3Time, Config.txt, 3 ;
    FileReadLine, Komenda4Time, Config.txt, 4 ;
    FileReadLine, Komenda5Time, Config.txt, 5 ;
    FileReadLine, Komenda6Time, Config.txt, 6 ;
    FileReadLine, Komenda7Time, Config.txt, 7 ;
	FileReadLine, Komenda8Time, Config.txt, 8 ;
    
    FileReadLine, Komenda1, Config.txt, 8 ;
    FileReadLine, Komenda2, Config.txt, 9 ;
    FileReadLine, Komenda3, Config.txt, 10 ;
    FileReadLine, Komenda4, Config.txt, 11 ;
    FileReadLine, Komenda5, Config.txt, 12 ;
    FileReadLine, Komenda6, Config.txt, 13 ;
    FileReadLine, Komenda7, Config.txt, 14 ;
	FileReadLine, Komenda8, Config.txt, 15 ;

    FileReadLine, Komenda1TEXT, Config.txt, 15 ;
    FileReadLine, Komenda2TEXT, Config.txt, 16 ;
    FileReadLine, Komenda3TEXT, Config.txt, 17 ;
    FileReadLine, Komenda4TEXT, Config.txt, 18 ;
    FileReadLine, Komenda5TEXT, Config.txt, 19 ;
    FileReadLine, Komenda6TEXT, Config.txt, 20 ;
    FileReadLine, Komenda7TEXT, Config.txt, 21 ;
	FileReadLine, Komenda8TEXT, Config.txt, 22 ;

    FileReadLine, Szerokosc, Config.txt, 22 ;
    FileReadLine, Dlugosc, Config.txt, 23 ;
    FileReadLine, RotateSpeed, Config.txt, 24 ;
    FileReadLine, Emerald, Config.txt, 25 ;

    

    GuiControl,, Komenda1Time, %Komenda1Time% ;
    GuiControl,, Komenda2Time, %Komenda2Time% ;
    GuiControl,, Komenda3Time, %Komenda3Time% ;
    GuiControl,, Komenda4Time, %Komenda4Time% ;
    GuiControl,, Komenda5Time, %Komenda5Time% ;
    GuiControl,, Komenda6Time, %Komenda6Time% ;
    GuiControl,, Komenda7Time, %Komenda7Time% ;
	GuiControl,, Komenda8Time, %Komenda8Time% ;

    GuiControl,, Komenda1, %Komenda1% ;
    GuiControl,, Komenda2, %Komenda2% ;
    GuiControl,, Komenda3, %Komenda3% ;
    GuiControl,, Komenda4, %Komenda4% ;
    GuiControl,, Komenda5, %Komenda5% ;
    GuiControl,, Komenda6, %Komenda6% ;
    GuiControl,, Komenda7, %Komenda7% ;
    GuiControl,, Komenda8, %Komenda8% ;

    GuiControl,, Komenda1TEXT, %Komenda1TEXT% ;
    GuiControl,, Komenda2TEXT, %Komenda2TEXT% ;
    GuiControl,, Komenda3TEXT, %Komenda3TEXT% ;
    GuiControl,, Komenda4TEXT, %Komenda4TEXT% ;
    GuiControl,, Komenda5TEXT, %Komenda5TEXT% ;
    GuiControl,, Komenda6TEXT, %Komenda6TEXT% ;
    GuiControl,, Komenda7TEXT, %Komenda7TEXT% ;
	GuiControl,, Komenda8TEXT, %Komenda8TEXT% ;

    GuiControl,, Szerokosc, %Szerokosc% ;
    GuiControl,, Dlugosc, %Dlugosc% ;
    GuiControl,, RotateSpeed, %RotateSpeed% ;
    GuiControl,, Emerald, %Emerald% ;
    
    MsgBox, , Wczytano!, Ustawienia wczytane!, 1
return





F10::
	send {shift down}
	send {click down left}
return

^+F10::
	Send {shift up}
	Send {click up left}

return


^#F11::
  Gui, Font, cred
  Menu, Transparency, Add, 300, SetTrans
  Menu, Transparency, Add, 200, SetTrans
  Menu, Transparency, Add, 100, SetTrans
  Menu, Transparency, Add, 50, SetTrans
  Menu, Transparency, Show
Return

SetTrans:     ; subroutine run by menu item
  Sleep 100   ; delay 100 milliseconds  
  WinSet, Transparent, %A_ThisMenuItem%, A
Return



F7::
    Goto, Start ;
return

#MaxThreadsPerHotkey 2 ;



F8::
	Goto, Stop ;
return

Stop:
	Stopped = 1 ;
	Click
return




^F9::ExitApp 

