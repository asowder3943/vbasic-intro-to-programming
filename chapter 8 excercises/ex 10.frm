VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   3030
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   4560
   LinkTopic       =   "Form1"
   ScaleHeight     =   3030
   ScaleWidth      =   4560
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command2 
      Caption         =   "&Done"
      Height          =   375
      Left            =   1800
      TabIndex        =   1
      Top             =   2640
      Width           =   735
   End
   Begin VB.CommandButton Command1 
      Caption         =   "&Random Numbers"
      Height          =   375
      Left            =   360
      TabIndex        =   0
      Top             =   2160
      Width           =   3615
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      Height          =   1935
      Left            =   720
      TabIndex        =   2
      Top             =   120
      Width           =   2655
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Label1.Caption = ""

For x = 1 To 100 Step 1
Label1.Caption = Label1.Caption & Int(Abs(Sin(x) * 1000)) Mod 16 & " "
Next x

End Sub

Private Sub Command2_Click()
Unload Me
End Sub
