VERSION 5.00
Begin VB.Form Form1 
   AutoRedraw      =   -1  'True
   Caption         =   "Form1"
   ClientHeight    =   5040
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   5010
   LinkTopic       =   "Form1"
   ScaleHeight     =   5040
   ScaleWidth      =   5010
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command6 
      Caption         =   "Done"
      Height          =   495
      Left            =   3720
      TabIndex        =   5
      Top             =   4080
      Width           =   1095
   End
   Begin VB.CommandButton Command5 
      Caption         =   "Clear"
      Height          =   495
      Left            =   3720
      TabIndex        =   4
      Top             =   3360
      Width           =   1095
   End
   Begin VB.CommandButton Command4 
      Caption         =   "Elipse"
      Height          =   495
      Left            =   3720
      TabIndex        =   3
      Top             =   2520
      Width           =   1095
   End
   Begin VB.CommandButton Command3 
      Caption         =   "Arc"
      Height          =   495
      Left            =   3720
      TabIndex        =   2
      Top             =   1800
      Width           =   1095
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Circle"
      Height          =   495
      Left            =   3720
      TabIndex        =   1
      Top             =   1080
      Width           =   1095
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Square"
      Height          =   495
      Left            =   3720
      TabIndex        =   0
      Top             =   360
      Width           =   1095
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Me.Line (100, 100)-(500, 500), , B
End Sub

Private Sub Command2_Click()
Me.Circle (1000, 800), 200
End Sub

Private Sub Command3_Click()
Me.Circle (1700, 1400), 200, , 0, 3.14
End Sub

Private Sub Command4_Click()
Me.Circle (2400, 1900), 400, , , , 1.5
End Sub

Private Sub Command5_Click()
Me.Cls
End Sub

Private Sub Command6_Click()
Unload Me
End Sub
