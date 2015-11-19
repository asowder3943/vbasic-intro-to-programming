VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Addition Properties"
   ClientHeight    =   3030
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   4635
   LinkTopic       =   "Form1"
   ScaleHeight     =   3030
   ScaleWidth      =   4635
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command3 
      Caption         =   "Done"
      Height          =   375
      Index           =   0
      Left            =   3360
      TabIndex        =   3
      Top             =   2520
      Width           =   1335
   End
   Begin VB.CommandButton Command2 
      Caption         =   "commutative"
      Height          =   375
      Index           =   1
      Left            =   1680
      TabIndex        =   1
      Top             =   2520
      Width           =   1335
   End
   Begin VB.CommandButton Command1 
      Caption         =   "associative"
      Height          =   375
      Index           =   0
      Left            =   0
      TabIndex        =   0
      Top             =   2520
      Width           =   1335
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      Height          =   735
      Left            =   240
      TabIndex        =   2
      Top             =   600
      Width           =   4095
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click(Index As Integer)
Label1.Caption = "(a + b) + c = a + (b + c)"
End Sub

Private Sub Command2_Click(Index As Integer)
Label1.Caption = "a + b = b + a"
End Sub

Private Sub Command3_Click(Index As Integer)
Unload Me
End Sub
