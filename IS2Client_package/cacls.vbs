'////////////////////////////////////////////////////////////////////////////
' フォルダのアクセス権限を追加する
'////////////////////////////////////////////////////////////////////////////

Option Explicit
On Error Resume Next

Dim pathWis2Dll
Dim pathIS2

Dim wshShell
Set wshShell = CreateObject("WScript.Shell")

pathWis2Dll = wshShell.ExpandEnvironmentStrings("%SystemRoot%\system32\wis2.dll")
wshShell.Run "CACLS """ & pathWis2Dll & """ /E /G BUILTIN\Users:C", 0, false

pathIS2 = Session.Property("CustomActionData") & "."
wshShell.Run "CACLS """ & pathIS2 & """ /T /E /G BUILTIN\Users:C", 0, false

Set wshShell = Nothing
