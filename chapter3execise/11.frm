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
   Begin VB.PictureBox Picture1 
      Height          =   1815
      Left            =   960
      Picture         =   "11.frx":0000
      ScaleHeight     =   1755
      ScaleWidth      =   1875
      TabIndex        =   4
      Top             =   1200
      Width           =   1935
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Done"
      Height          =   495
      Left            =   3000
      TabIndex        =   1
      Top             =   2400
      Width           =   1335
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Calculate"
      Height          =   495
      Left            =   3000
      TabIndex        =   0
      Top             =   1680
      Width           =   1335
   End
   Begin VB.Label Label2 
      Caption         =   "10"
      Height          =   375
      Left            =   240
      TabIndex        =   3
      Top             =   1200
      Visible         =   0   'False
      Width           =   735
   End
   Begin VB.Label Label1 
      Caption         =   "What is the number of kilometers per liter a car gets if it travels 700 kilometers on a 70 liter tank of gas?"
      Height          =   615
      Left            =   240
      TabIndex        =   2
      Top             =   240
      Width           =   3975
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Label2.Visible = True
End Sub

Private Sub Command2_Click()
Unload Me
End Sub
