' FizzBuzz in VBA with PowerPoint
' Author: @cnguyen-uk

Sub FizzBuzz()
' This subroutine assumes that it is being run in a new presentation.

    ' The following clears the presentation
    For i = ActivePresentation.Slides(1).Shapes.Count To 1 Step -1
        ActivePresentation.Slides(1).Shapes(i).Delete
    Next

    ' The following creates a new textbox for the output FizzBuzz result.
    Dim objSl As Slide
    Dim objSh As Shape
    Set objSl = ActivePresentation.Slides(1)
    Set objSh = objSl.Shapes.AddTextbox(msoTextOrientationHorizontal, 0, 0, 100, 100)
    
    For i = 1 To 100
        If (i Mod 15) = 0 Then
            Application.ActivePresentation.Slides(1).Shapes(1).TextFrame.TextRange.InsertAfter "FizzBuzz" & vbCrLf
        ElseIf (i Mod 5) = 0 Then
            Application.ActivePresentation.Slides(1).Shapes(1).TextFrame.TextRange.InsertAfter "Buzz" & vbCrLf
        ElseIf (i Mod 3) = 0 Then
            Application.ActivePresentation.Slides(1).Shapes(1).TextFrame.TextRange.InsertAfter "Fizz" & vbCrLf
        Else
            Application.ActivePresentation.Slides(1).Shapes(1).TextFrame.TextRange.InsertAfter i & vbCrLf
        End If
    Next
End Sub
