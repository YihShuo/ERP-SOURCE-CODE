Attribute VB_Name = "XuatChuKy"
Option Explicit

Sub ExportPicture()

    Const SavePath As String = "C:\Users\Admin\Downloads\ChuKy\"
    Const CropSize As Single = 2     'C?t 2 point m?i c?nh
    Const MaxRetry As Integer = 10

    Dim PPT As Object
    Dim Pre As Object
    Dim Sld As Object
    Dim Shp As Object

    Dim ws As Worksheet
    Dim LastRow As Long
    Dim r As Long
    Dim Retry As Integer
    Dim FileName As String
    Dim FullName As String
    Dim Success As Boolean

    Set ws = ActiveSheet

    If Dir(SavePath, vbDirectory) = "" Then
        MkDir SavePath
    End If

    Set PPT = CreateObject("PowerPoint.Application")
    PPT.Visible = True

    Set Pre = PPT.Presentations.Add
    Set Sld = Pre.Slides.Add(1, 12)   'ppLayoutBlank

    LastRow = ws.Cells(ws.Rows.Count, "B").End(xlUp).Row

    For r = 2 To LastRow

        FileName = Trim(ws.Cells(r, "B").Value)

        If FileName <> "" Then

            FullName = SavePath & FileName & ".bmp"

            Success = False

            For Retry = 1 To MaxRetry

                On Error Resume Next

                Do While Sld.Shapes.Count > 0
                    Sld.Shapes(1).Delete
                Loop

                ws.Range("E" & r).CopyPicture Appearance:=xlScreen, Format:=xlBitmap

                Sld.Shapes.Paste

                If Err.Number = 0 Then

                    Set Shp = Sld.Shapes(Sld.Shapes.Count)

                    With Shp.PictureFormat
                        .CropLeft = CropSize
                        .CropRight = CropSize
                        .CropTop = CropSize
                        .CropBottom = CropSize
                    End With

                    Kill FullName

                    Err.Clear
                    Shp.Export FullName, 0      '0 = BMP

                    If Err.Number = 0 Then
                        If Dir(FullName) <> "" Then
                            Success = True
                            Exit For
                        End If
                    End If

                End If

                Err.Clear
                On Error GoTo 0

                DoEvents

            Next Retry

            If Not Success Then
                Debug.Print "Export failed: Row " & r
            End If

        End If

    Next r

    Pre.Close
    PPT.Quit

    Set Sld = Nothing
    Set Pre = Nothing
    Set PPT = Nothing

    MsgBox "Done."

End Sub
