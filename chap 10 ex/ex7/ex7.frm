VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   4065
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   5085
   LinkTopic       =   "Form1"
   ScaleHeight     =   4065
   ScaleWidth      =   5085
   StartUpPosition =   3  'Windows Default
   Begin VB.Image Image1 
      Height          =   855
      Index           =   7
      Left            =   0
      Stretch         =   -1  'True
      Top             =   840
      Width           =   1095
   End
   Begin VB.Image Image1 
      Height          =   855
      Index           =   6
      Left            =   0
      Stretch         =   -1  'True
      Top             =   0
      Width           =   1095
   End
   Begin VB.Image Image1 
      Height          =   855
      Index           =   5
      Left            =   -600
      Stretch         =   -1  'True
      Top             =   0
      Width           =   1095
   End
   Begin VB.Image Image1 
      Height          =   855
      Index           =   4
      Left            =   1080
      Stretch         =   -1  'True
      Top             =   0
      Width           =   1095
   End
   Begin VB.Image Image1 
      Height          =   855
      Index           =   3
      Left            =   0
      Stretch         =   -1  'True
      Top             =   960
      Width           =   1095
   End
   Begin VB.Image Image1 
      Height          =   855
      Index           =   2
      Left            =   0
      Stretch         =   -1  'True
      Top             =   120
      Width           =   1095
   End
   Begin VB.Image Image1 
      Height          =   855
      Index           =   1
      Left            =   1080
      Stretch         =   -1  'True
      Top             =   960
      Width           =   1095
   End
   Begin VB.Image Image1 
      Height          =   855
      Index           =   0
      Left            =   1080
      Stretch         =   -1  'True
      Top             =   120
      Width           =   1095
   End
   Begin VB.Shape Shape1 
      BackStyle       =   1  'Opaque
      Height          =   2535
      Left            =   240
      Shape           =   2  'Oval
      Top             =   1560
      Width           =   4815
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim picpath, ext As String
Dim center(1 To 2) As Integer

Private Sub initVars()
center(1) = Me.Width / 2
center(2) = Me.Height / 2
picpath = "C:\Users\asowder3943\Desktop\chap 10 ex\ex7\pics\"
ext = ".jpg"
uscale = Me.Width / 4

For x = 0 To 3
Image1(x).Picture = LoadPicture(picpath & CStr(x) & ext)
Image1(x + 4).Picture = LoadPicture(picpath & CStr(x) & ext)
Image1(x).Left = uscale * x
Image1(x).Top = 0
Next

For x = 4 To 5
Image1(x).Left = center(1) - (x - 3) * Image1(1).Width
Image1(x).Top = center(2)
Image1(x).Visible = False
Next

For x = 6 To 7
Image1(x).Left = center(1) + (x - 6) * Image1(1).Width
Image1(x).Top = center(2)
Image1(x).Visible = False
Next
End Sub

Private Sub Form_Load()
Call initVars
End Sub

Private Sub Image1_Click(Index As Integer)
Image1(Index + 4).Visible = Not Image1(Index + 4).Visible
End Sub
