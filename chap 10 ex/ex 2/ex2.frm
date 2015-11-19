VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   3435
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   4905
   LinkTopic       =   "Form1"
   ScaleHeight     =   3435
   ScaleWidth      =   4905
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command2 
      Caption         =   "Done"
      Height          =   495
      Left            =   3120
      TabIndex        =   3
      Top             =   2760
      Width           =   1575
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Roll Dice"
      Height          =   855
      Left            =   3840
      TabIndex        =   2
      Top             =   240
      Width           =   855
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   1680
      TabIndex        =   1
      Top             =   240
      Width           =   1695
   End
   Begin VB.Image Image2 
      Height          =   975
      Left            =   2280
      Stretch         =   -1  'True
      Top             =   1200
      Width           =   975
   End
   Begin VB.Image Image1 
      Height          =   975
      Left            =   960
      Stretch         =   -1  'True
      Top             =   1200
      Width           =   975
   End
   Begin VB.Label Label2 
      Caption         =   "Total points = 1000"
      Height          =   255
      Left            =   240
      TabIndex        =   4
      Top             =   2520
      Width           =   2175
   End
   Begin VB.Label Label1 
      Caption         =   "Enter Points to risk:"
      Height          =   375
      Left            =   240
      TabIndex        =   0
      Top             =   240
      Width           =   1695
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim points, d(1 To 2), bet As Double

Private Sub initVars()
points = 1000
d(1) = 0: d(2) = 0
End Sub

Private Sub Command1_Click()
d(1) = Int(Rnd * 6) + 1: d(2) = Int(Rnd * 6) + 1
Image1.Picture = LoadPicture(App.Path & "\pics\dice-" & CStr(d(1) & ".jpg"))
Image2.Picture = LoadPicture(App.Path & "\pics\dice-" & CStr(d(2) & ".jpg"))
If (d(1) + d(2)) Mod 2 = 0 Then
points = points + bet
Else
points = points - bet
End If
Label2.Caption = "points = " & points
End Sub

Private Sub Command2_Click()
Unload Me
End Sub

Private Sub Form_Load()
Randomize
Call initVars
End Sub

Private Sub Text1_Change()
If IsNumeric(Text1.Text) Then
bet = CDbl(Text1.Text)
Text1.Text = Abs(bet)
Else
bet = 0
Text1.Text = ""
End If
End Sub
