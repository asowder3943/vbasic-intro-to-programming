VERSION 5.00
Begin VB.Form Form1 
   ClientHeight    =   7710
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   12645
   LinkTopic       =   "Form1"
   ScaleHeight     =   7710
   ScaleWidth      =   12645
   StartUpPosition =   2  'CenterScreen
   Begin VB.Timer Timer3 
      Interval        =   5
      Left            =   2640
      Top             =   5880
   End
   Begin VB.Timer Timer2 
      Interval        =   900
      Left            =   1320
      Top             =   4560
   End
   Begin VB.Timer Timer1 
      Interval        =   1
      Left            =   3120
      Top             =   4680
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Height          =   375
      Left            =   4080
      TabIndex        =   1
      Top             =   2400
      Width           =   375
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BackColor       =   &H00C0C0FF&
      Caption         =   "Schnapsidee"
      BeginProperty Font 
         Name            =   "Chaparral Pro"
         Size            =   27.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1455
      Left            =   0
      TabIndex        =   0
      Top             =   120
      Width           =   5175
   End
   Begin VB.Image Image1 
      Height          =   2055
      Left            =   5520
      Stretch         =   -1  'True
      Top             =   1680
      Width           =   4215
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim speedMin, speedMax, speedInc, frameDif, frameMax, frame As Integer
Dim center(1 To 2), mouse(1 To 2) As Double
Dim EXT As String
Dim full, pause As Boolean

Private Sub initVars()
center(1) = Me.Width / 2: center(2) = Me.Height / 2
Image1.Width = Me.Width * 0.75: Image1.Height = Me.Height * 0.9
Image1.Left = center(1) - Image1.Width / 2: Image1.Top = center(2) - Image1.Height / 1.8
EXT = ".jpg"
speedMax = 200: speedMin = 100: speedInc = 10
frameDif = 1: frameMax = 83: frame = 1
Timer1.Interval = 20
End Sub

Private Sub Form_Load()
Me.Width = 40000: Me.Height = 10000
Label1.Width = Me.Width / 6: Label1.Height = Me.Height / 10
Call initVars
End Sub

Private Sub Form_Resize()
Call initVars
End Sub

Private Sub Timer1_Timer()
If frame = 40 Or frame = 13 Then
pause = True
Timer2.Enabled = True
Timer1.Enabled = False
End If
If frame < 3 Then
pause = True
frame = frameMax + frame
Timer2.Enabled = True
Timer1.Enabled = False
End If
If frame > frameMax + 1 Then
pause = True
frame = frame - frameMax
Timer2.Enabled = True
Timer1.Enabled = False
End If
frame = frame - frameDif
Image1.Picture = LoadPicture(App.Path & "\pics\pic" & CStr(frame) & EXT)
Debug.Print frame
End Sub

Private Sub Timer2_Timer()
pause = Not pause
If pause Then
Timer1.Enabled = True
Timer2.Enabled = False
End If
End Sub

