MsgBox, 4, , Create a chrome app?, 30
IfMsgBox, No
    Return
IfMsgBox, Timeout
    Return
IfMsgBox, Yes
    MsgBox, Select the chrome executable... `n("C:\Program Files\Google\Chrome\Application\chrome.exe")
    FileSelectFile, SelectedFile, 3, C:\Program Files\Google\Chrome\Application\, Open a file, (*.exe)
    if (SelectedFile = "")
        Return
    else
        InputBox, Site, URL, Insert a URL to create a Chrome application with:
        InputBox, Name, URL, Insert a name for the application:
        if (Site = "")
            MsgBox, No URL inserted, no lnk will be made!
        if (Name == "")
            Name = %Site%
        else
            Lnk = %A_Desktop%\%Name%.lnk
            FileCreateShortcut, %SelectedFile%, %Lnk%, , --app="%Site%", Shortcut for %Site
