Option Explicit

Const msiOpenDatabaseModeTransact = 1

Const msiViewModifyInsert = 1
Const msiViewModifyUpdate = 2

Dim msiPath : msiPath = Wscript.Arguments(0)

Dim installer
Set installer = Wscript.CreateObject("WindowsInstaller.Installer")
Dim database
Set database = installer.OpenDatabase(msiPath, msiOpenDatabaseModeTransact)

Dim query
query = "Select * FROM Property WHERE Property='ALLUSERS'"
Dim view
Set view = database.OpenView(query)
view.Execute
Dim record
Set record = view.Fetch
Dim viewModify
viewModify = msiViewModifyUpdate
'ALLUSERS‚ª‚È‚¢Žž
If record Is Nothing Then
    Set record = installer.CreateRecord(2)
    viewModify = msiViewModifyInsert
End If
record.StringData(1) = "ALLUSERS"
record.StringData(2) = "2"
view.Modify viewModify, record

query = "Select * FROM Property WHERE Property='FolderForm_AllUsers'"
Set view = database.OpenView(query)
view.Execute
Set record = view.Fetch
viewModify = msiViewModifyUpdate
'FolderForm_AllUsers‚ª‚È‚¢Žž
If record Is Nothing Then
    Set record = installer.CreateRecord(2)
    viewModify = msiViewModifyInsert
End If
record.StringData(1) = "FolderForm_AllUsers"
record.StringData(2) = "ALL"
view.Modify viewModify, record

database.Commit
