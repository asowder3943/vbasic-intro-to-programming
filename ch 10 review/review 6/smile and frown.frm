VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   6090
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   6750
   LinkTopic       =   "Form1"
   ScaleHeight     =   6090
   ScaleWidth      =   6750
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command2 
      Caption         =   "Sad"
      Height          =   615
      Left            =   4448
      TabIndex        =   2
      Top             =   5160
      Width           =   1455
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Happy"
      Height          =   615
      Left            =   848
      TabIndex        =   1
      Top             =   5160
      Width           =   1455
   End
   Begin VB.PictureBox Picture1 
      AutoRedraw      =   -1  'True
      Height          =   4575
      Left            =   308
      ScaleHeight     =   4515
      ScaleWidth      =   6075
      TabIndex        =   0
      Top             =   120
      Width           =   6135
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim c(1 To 2), eyeSpread, eyeHite, eyeSize As Integer
Const pi = 3.14

Private Sub Command1_Click()
Picture1.Cls
Picture1.DrawWidth = 1

'head
Picture1.FillStyle = vbFSTransparent
Picture1.Circle (c(1), c(2)), 2000

'nose
Picture1.FillStyle = solid: Picture1.FillColor = vbBlack
Picture1.Circle (c(1), c(2)), 200

'eyes
Picture1.FillColor = vbGreen
eyeSize = 200: eyeHite = 800: eyeSpread = 1200
Picture1.Circle (c(1) + eyeSpread / 2, c(2) - eyeHite), eyeSize
Picture1.Circle (c(1) - eyeSpread / 2, c(2) - eyeHite), eyeSize

'mouth
Picture1.DrawWidth = 2
mouDep = 900: moulen = 2000
Picture1.Circle (c(1), c(2)), moulen / 2, vbRed, pi, 0
End Sub


Private Sub Command2_Click()
Picture1.Cls
Picture1.DrawWidth = 1

'head
Picture1.FillStyle = vbFSTransparent
Picture1.Circle (c(1), c(2)), 2000

'nose
Picture1.FillStyle = solid: Picture1.FillColor = vbBlack
Picture1.Circle (c(1), c(2)), 200

'eyes
Picture1.FillColor = vbGreen
eyeSize = 200: eyeHite = 800: eyeSpread = 1200
Picture1.Circle (c(1) + eyeSpread / 2, c(2) - eyeHite), eyeSize
Picture1.Circle (c(1) - eyeSpread / 2, c(2) - eyeHite), eyeSize

'mouth
Picture1.DrawWidth = 2
mouDep = 800: moulen = 2000
Picture1.Circle (c(1), c(2) + 2 * mouDep), moulen / 2, vbRed, 0, pi
End Sub






Private Sub Form_Load()
c(1) = Picture1.Width / 2: c(2) = Picture1.Height / 2

'head
Picture1.Circle (c(1), c(2)), 2000

Picture1.FillStyle = solid
'nose
Picture1.Circle (c(1), c(2)), 200

'eyes
Picture1.FillColor = vbGreen
eyeSize = 200: eyeHite = 800: eyeSpread = 1200
Picture1.Circle (c(1) + eyeSpread / 2, c(2) - eyeHite), eyeSize
Picture1.Circle (c(1) - eyeSpread / 2, c(2) - eyeHite), eyeSize

'mouth
Picture1.DrawWidth = 2
mouDep = 900: moulen = 2000
Picture1.Line (c(1) - moulen / 2, c(2) + mouDep)-(c(1) + moulen / 2, c(2) + mouDep), vbRed
End Sub
