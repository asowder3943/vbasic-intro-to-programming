VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   3195
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   4830
   LinkTopic       =   "Form1"
   ScaleHeight     =   3195
   ScaleWidth      =   4830
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command2 
      Caption         =   "done"
      Height          =   375
      Left            =   2475
      TabIndex        =   3
      Top             =   2280
      Width           =   1335
   End
   Begin VB.CommandButton Command1 
      Caption         =   "pull"
      Height          =   375
      Left            =   1020
      TabIndex        =   2
      Top             =   2280
      Width           =   1335
   End
   Begin VB.Label Label3 
      Caption         =   "tokens you have:"
      Height          =   255
      Left            =   1268
      TabIndex        =   4
      Top             =   1800
      Width           =   1335
   End
   Begin VB.Label Label2 
      Caption         =   "100"
      Height          =   255
      Left            =   2828
      TabIndex        =   1
      Top             =   1800
      Width           =   375
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      Caption         =   "2   2   2"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   29.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   901
      TabIndex        =   0
      Top             =   480
      Width           =   3135
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
    Randomize
    Label2.Caption = Int(Label2.Caption) - 1
    Label1.Caption = Int(3 * Rnd + 1) * 100 + Int(3 * Rnd + 1) * 10 + Int(3 * Rnd + 1)
    If Int(Label1.Caption) Mod 111 = 0 Then
        MsgBox ("you get " & Int(Label1.Caption) / 27.75 & " tokens")
        Label2.Caption = Int(Label2.Caption) + Int(Label1.Caption) / 27.75
    End If
End Sub
Private Sub Command2_Click()
Unload Me
End Sub
