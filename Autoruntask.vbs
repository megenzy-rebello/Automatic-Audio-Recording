Set WshShell = CreateObject("WScript.Shell")
WshShell.Run chr(34) & "C:\Recordings\Autoruntask.bat" & Chr(34), 0
Set WshShell = Nothing