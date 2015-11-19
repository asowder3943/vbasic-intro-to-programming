VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "test grade"
   ClientHeight    =   3030
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   4560
   LinkTopic       =   "Form1"
   ScaleHeight     =   3030
   ScaleWidth      =   4560
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command2 
      Caption         =   "done"
      Height          =   375
      Left            =   2760
      TabIndex        =   3
      Top             =   2160
      Width           =   1335
   End
   Begin VB.CommandButton Command1 
      Caption         =   "check"
      Height          =   375
      Left            =   2760
      TabIndex        =   2
      Top             =   1440
      Width           =   1335
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   1320
      TabIndex        =   1
      Top             =   360
      Width           =   1575
   End
   Begin VB.Label Label2 
      Caption         =   "enter grade:"
      Height          =   255
      Left            =   240
      TabIndex        =   4
      Top             =   360
      Width           =   975
   End
   Begin VB.Label Label1 
      Height          =   375
      Left            =   360
      TabIndex        =   0
      Top             =   1080
      Width           =   1575
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim x As Double

Private Sub Command1_Click()
x = Text1.Text
If x > 100 Or x < 0 Then
    MsgBox ("invalid test grade")
Else
    If x >= 70 Then
        Label1.Caption = "good job"
    Else
        Label1.Caption = "study more"
    End If
End If
End Sub

Private Sub Command2_Click()
Unload Me
End Sub

