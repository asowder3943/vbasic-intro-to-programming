VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   3330
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   4560
   LinkTopic       =   "Form1"
   ScaleHeight     =   3330
   ScaleWidth      =   4560
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command5 
      Caption         =   "Done"
      Height          =   615
      Left            =   1440
      TabIndex        =   4
      Top             =   2400
      Width           =   1455
   End
   Begin VB.CommandButton Command4 
      Caption         =   "Blue"
      Height          =   615
      Left            =   2640
      TabIndex        =   3
      Top             =   1440
      Width           =   1455
   End
   Begin VB.CommandButton Command3 
      Caption         =   "Green"
      Height          =   615
      Left            =   360
      TabIndex        =   2
      Top             =   1440
      Width           =   1455
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Yellow"
      Height          =   615
      Left            =   2640
      TabIndex        =   1
      Top             =   480
      Width           =   1455
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Red"
      Height          =   615
      Left            =   360
      TabIndex        =   0
      Top             =   480
      Width           =   1455
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Me.BackColor = vbRed
End Sub

Private Sub Command2_Click()
Me.BackColor = vbYellow
End Sub

Private Sub Command3_Click()
Me.BackColor = vbGreen
End Sub

Private Sub Command4_Click()
Me.BackColor = vbBlue
End Sub

Private Sub Command5_Click()
Unload Me
End Sub
