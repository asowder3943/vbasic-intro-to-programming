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
      Caption         =   "done"
      Height          =   375
      Left            =   2520
      TabIndex        =   5
      Top             =   2280
      Width           =   1215
   End
   Begin VB.CommandButton Command1 
      Caption         =   "enter grade"
      Height          =   375
      Left            =   840
      TabIndex        =   4
      Top             =   2280
      Width           =   1335
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   2280
      TabIndex        =   1
      Top             =   360
      Width           =   975
   End
   Begin VB.Label Label3 
      Caption         =   "number of students who didnt pass = "
      Height          =   255
      Left            =   240
      TabIndex        =   3
      Top             =   1560
      Width           =   3135
   End
   Begin VB.Label Label2 
      Caption         =   "number of students who passed = "
      Height          =   255
      Left            =   240
      TabIndex        =   2
      Top             =   1080
      Width           =   3015
   End
   Begin VB.Label Label1 
      Caption         =   "enter grade of student"
      Height          =   375
      Left            =   360
      TabIndex        =   0
      Top             =   360
      Width           =   1575
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim x, y, z As Double
Private Sub Command1_Click()
    x = Text1.Text
    If x >= 60 Then
        y = y + 1
    Else
        z = z + 1
    End If
    Label2.Caption = "number of students who passed= " & y
    Label3.Caption = "number of students who didnt pass= " & z
End Sub

Private Sub Command2_Click()
Unload Me
End Sub
