VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "object height"
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
      Height          =   495
      Left            =   3000
      TabIndex        =   4
      Top             =   2280
      Width           =   1215
   End
   Begin VB.CommandButton Command1 
      Caption         =   "calculate"
      Height          =   495
      Left            =   3000
      TabIndex        =   3
      Top             =   1440
      Width           =   1215
   End
   Begin VB.TextBox Text1 
      Height          =   735
      Left            =   2880
      TabIndex        =   1
      Text            =   "Text1"
      Top             =   120
      Width           =   1215
   End
   Begin VB.Label Label2 
      Height          =   495
      Left            =   240
      TabIndex        =   2
      Top             =   1320
      Width           =   1695
   End
   Begin VB.Label Label1 
      Caption         =   "enter a time less than 4.5 seconds"
      Height          =   495
      Left            =   240
      TabIndex        =   0
      Top             =   240
      Width           =   2295
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
Label2.Caption = 100 - 4.9 * x ^ 2
End Sub


Private Sub Command2_Click()
Unload Me
End Sub
