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
      Caption         =   "naame"
      Height          =   375
      Left            =   1200
      TabIndex        =   2
      Top             =   1800
      Width           =   2175
   End
   Begin VB.CommandButton Command1 
      Caption         =   "done"
      Height          =   375
      Left            =   1200
      TabIndex        =   1
      Top             =   2520
      Width           =   2175
   End
   Begin VB.Label Label1 
      Caption         =   "Label1"
      Height          =   1095
      Left            =   480
      TabIndex        =   0
      Top             =   240
      Width           =   3615
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Unload Me
End Sub

Private Sub Command2_Click()
Label1.Caption = InputBox("enter your first name name") & " " & InputBox("enter other name")
Label1.Caption = Label1.Caption & vbCrLf & String(Len(Label1.Caption), "_")
End Sub
