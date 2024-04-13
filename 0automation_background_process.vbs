'-----------------------------------------------------------------
' Automation Wrapper
'-----------------------------------------------------------------
'
'   This wraps the .bat files so the command prompt will not show 
' on the desktop when triggered by the scheduler. A.k.a. simulating
' background process.

' Created Date: 2024-04-11
' Author (c): Aenna Co

'-----------------------------------------------------------------
' Task Scheduler
'-----------------------------------------------------------------
' See Task Scheduler > Task Scheduler Library
' Task Name: Automated Backup to Drive D
' Scheduled Run: Hourly
' 



'--------------------------------------------
' Version 1.0
'--------------------------------------------

Const ForAppending = 8

' Function to get current date and time in the specified format
Function GetCurrentDateTime()
    GetCurrentDateTime = FormatDateTime(Now, vbLongDate) & " " & FormatDateTime(Now, vbLongTime)
End Function

Set objFSO = CreateObject("Scripting.FileSystemObject")

' Define the log file path
Dim logFilePath
logFilePath = "C:\Users\annal\Desktop\Automations\log_file.txt"

' Check if drive E exists
If objFSO.DriveExists("E:\") Then
    ' Drive E exists, proceed with the backup
    ' Check if drive F exists
    If objFSO.DriveExists("F:\") Then
        ' Drive F exists, proceed with the backup
        Set objShell = CreateObject("WScript.Shell")
        objShell.Run "cmd /c C:\Users\annal\Desktop\Automations\All_Drives_Backup.bat", 0, False
        Set objShell = Nothing
        WriteToLogFile "✅ Automated Backup Successful! - " & GetCurrentDateTime()
    Else
        ' Drive F does not exist, log the message to a file
        WriteToLogFile "🔥 Drive F does not exist. Please insert the drive and try again - " & GetCurrentDateTime()
    End If
Else
    ' Drive E does not exist, log the message to a file
    WriteToLogFile "🔥 Drive E does not exist. Please insert the drive and try again - " & GetCurrentDateTime()
End If

Set objFSO = Nothing

' Function to write message to log file
Sub WriteToLogFile(message)
    Dim objLogFile
    Set objLogFile = objFSO.OpenTextFile(logFilePath, ForAppending, True)
    objLogFile.WriteLine message
    objLogFile.Close
    Set objLogFile = Nothing
End Sub

