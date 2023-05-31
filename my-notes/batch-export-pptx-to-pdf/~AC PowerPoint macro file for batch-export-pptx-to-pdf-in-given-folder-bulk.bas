Attribute VB_Name = "Module1"
' this pptm macro export all pptx files in a given folder to pdf.
' make sure you set the folder path correctly (variable FolderPath)
' the folder path must end with \.



Sub ForEachPresentation()
' Run a macro of your choosing on each presentation in a folder

    Dim rayFileList() As String
    Dim FolderPath As String
    Dim FileSpec
    Dim strTemp As String
    Dim x As Long

    ' EDIT THESE to suit your situation
    FolderPath = "c:\users\chrisa\Downloads\pptx-to-pdf-test\"  ' Note: MUST end in \
    FileSpec = "*.pptx"
    ' END OF EDITS

    ' Fill the array with files that meet the spec above
    ReDim rayFileList(1 To 1) As String
    strTemp = Dir$(FolderPath & FileSpec)
    While strTemp <> ""
        rayFileList(UBound(rayFileList)) = FolderPath & strTemp
        ReDim Preserve rayFileList(1 To UBound(rayFileList) + 1) As String
        strTemp = Dir
    Wend

    ' array has one blank element at end - don't process it
    ' don't do anything if there's less than one element
    If UBound(rayFileList) > 1 Then
        For x = 1 To UBound(rayFileList) - 1
            Call MyMacro(rayFileList(x))
        Next x
    End If

End Sub

Sub MyMacro(strMyFile As String)
' this gets called once for each file that meets the spec you enter in ForEachPresentation
' strMyFile is set to the file name each time

    ' Probably at a minimum, you'd want to:
    Dim oPresentation As Presentation
    Set oPresentation = Presentations.Open(strMyFile)

    With oPresentation

        ActivePresentation.ExportAsFixedFormat _
        ActivePresentation.Path & "\" _
        & ActivePresentation.Name _
        & ".pdf", ppFixedFormatTypePDF, ppFixedFormatIntentPrint
        
    End With

    oPresentation.Save
    oPresentation.Close

End Sub
