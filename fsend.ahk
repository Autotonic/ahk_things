Gui, Add, Text,, Select an F key to send.
Gui, Add, DropDownList, vFkey Choose1, F13||F14||F15||F16||F17||F18||F19||F20||F21||F23||F23||F24
Gui, Add, Text,, Select the delay (in second) before sending the key.
Gui, Add, DropDownList, vToWait Choose2, 5||10||15||30
Gui, Add, Button, default xm, OK
Gui, Show,, Send F Keys
Return

ButtonOK:
Gui, Submit
MsgBox Preparing to send %Fkey% in %ToWait% seconds`nSelect the application's input box to send`nthe key to. 
IfMsgBox, OK
    Sleep, ToWait * 1000
    Send, {%Fkey%}

MsgBox, Key sent! `nNote: In some applications the key may appear blank.
ExitApp

GuiClose:
GuiEscape:
ExitApp
