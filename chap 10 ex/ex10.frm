VERSION 5.00
Begin VB.Form Form1 
   AutoRedraw      =   -1  'True
   Caption         =   "Form1"
   ClientHeight    =   5085
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   5790
   LinkTopic       =   "Form1"
   ScaleHeight     =   5085
   ScaleWidth      =   5790
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer Timer2 
      Interval        =   100
      Left            =   4680
      Top             =   3600
   End
   Begin VB.Timer Timer1 
      Interval        =   20
      Left            =   1080
      Top             =   4320
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim c(1 To 2), circ(1 To 2), rad, circInc, per, co, rd, gn, bl As Double
Dim sun, ascend As Boolean
Const pi = 3.1415


Private Sub Form_Load()
Timer1.Enabled = True
Timer2.Enabled = True
c(1) = Me.Width / 2: c(2) = Me.Height / 2
circInc = 50
rad = 300
ascend = False
per = 1

End Sub

Private Sub Timer1_Timer()
Me.Cls
If circ(2) > Me.Height Then
sun = Not sun
circ(2) = 0
End If
If sun Then
Me.BackColor = RGB(condense(circ(2) / 15, 0, 255), condense(180 - circ(2) / 20, 0, 255), condense(140 + circ(2) / 20, 0, 255))
Me.FillColor = vbYellow
Me.Circle (circ(1), circ(2)), rad, vbYellow
Else
Me.FillStyle = solid
Me.BackColor = RGB(30, 0, 50)
Me.FillColor = vbWhite
Me.Circle (circ(1), circ(2)), rad, vbWhite
End If

circ(1) = c(1): circ(2) = circ(2) + circInc
If ascend Then
    per = per + 10
    If per >= 200 Then: ascend = False
Else
    per = per - 10
    If per <= -200 Then: ascend = True
End If
co = co + 1
wave
End Sub

Private Sub wave()
For x = 0 To Me.Width Step 15
Me.Line (x, (per * Sin((1 / 4) * ((co) + (x * pi / 180))) + 4000 + (9000 * Sin(50 * Abs(co)) / 60)))-(x, Me.Height), vbBlue
Next
End Sub

Function condense(ByVal num As Double, ByVal lbod As Double, ByVal ubod As Double) As Double
condense = num
If num < lbod Then: condense = lbod
If num > ubod Then: condense = ubod
End Function





