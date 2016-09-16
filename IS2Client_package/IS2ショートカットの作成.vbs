Option Explicit
On Error Resume Next

Dim strDesktop
Dim strFileName
Dim strCurrent

Dim objShell
Dim objShortCut

Set objShell = CreateObject("WScript.Shell")
strDesktop = objShell.SpecialFolders("Desktop")
strFileName = strDesktop + "\is-2.lnk"
strCurrent = objShell.CurrentDirectory

Set objShortCut = objShell.CreateShortcut(strFileName)
objShortCut.TargetPath = strCurrent + "\AutoUpGrade.exe"
objShortCut.WorkingDirectory = strCurrent
objShortCut.IconLocation = strCurrent + "\is2-020_l.ico"
objShortCut.Save

Set objShell = Nothing
Set objShortCut = Nothing

Set objShell = CreateObject("WScript.Shell")
strDesktop = objShell.SpecialFolders("Desktop")
strFileName = strDesktop + "\クイックエントリー.lnk"
strCurrent = objShell.CurrentDirectory

Set objShortCut = objShell.CreateShortcut(strFileName)
objShortCut.TargetPath = strCurrent + "\AutoUpGrade.exe"
objShortCut.WorkingDirectory = strCurrent
objShortCut.Arguments = "hinagata"
objShortCut.IconLocation = strCurrent + "\is2-022_l.ico"
objShortCut.Save

Set objShell = Nothing
Set objShortCut = Nothing

