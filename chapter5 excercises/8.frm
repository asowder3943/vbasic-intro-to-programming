VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   3735
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   4770
   LinkTopic       =   "Form1"
   ScaleHeight     =   3735
   ScaleWidth      =   4770
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command2 
      Caption         =   "done"
      Height          =   375
      Left            =   2520
      TabIndex        =   4
      Top             =   2640
      Width           =   1215
   End
   Begin VB.CommandButton Command1 
      Caption         =   "check nuber"
      Height          =   375
      Left            =   600
      TabIndex        =   3
      Top             =   2640
      Width           =   1215
   End
   Begin VB.TextBox Text1 
      Height          =   375
      Left            =   2520
      TabIndex        =   1
      Top             =   840
      Width           =   1335
   End
   Begin VB.Label Label2 
      Caption         =   "the nuber is a  __ digit number"
      Height          =   735
      Left            =   1080
      TabIndex        =   2
      Top             =   1680
      Width           =   2415
   End
   Begin VB.Label Label1 
      Caption         =   "enter a number"
      Height          =   375
      Left            =   720
      TabIndex        =   0
      Top             =   840
      Width           =   1335
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
'Dim x As Integer
'On Error GoTo help
'x = Text1.Text
Label2.Caption = "the number is a " & Len(Text1.Text) & " digit number"
Exit Sub
'help:
'MsgBox ("have to enter a number")
End Sub

Private Sub Command2_Click()
Unload Me
End Sub

