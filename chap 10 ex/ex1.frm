VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   4260
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   4650
   LinkTopic       =   "Form1"
   ScaleHeight     =   4260
   ScaleWidth      =   4650
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton D 
      Caption         =   "Done"
      Height          =   495
      Left            =   360
      TabIndex        =   12
      Top             =   3240
      Width           =   1215
   End
   Begin VB.Frame Frame1 
      Caption         =   "House"
      Height          =   855
      Index           =   3
      Left            =   2880
      TabIndex        =   9
      Top             =   3000
      Width           =   1575
      Begin VB.OptionButton Option1 
         Caption         =   "black"
         Height          =   255
         Index           =   3
         Left            =   240
         TabIndex        =   11
         Top             =   240
         Width           =   1215
      End
      Begin VB.OptionButton Option2 
         Caption         =   "white"
         Height          =   255
         Index           =   3
         Left            =   240
         TabIndex        =   10
         Top             =   480
         Width           =   1215
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "House"
      Height          =   855
      Index           =   2
      Left            =   2880
      TabIndex        =   6
      Top             =   2040
      Width           =   1575
      Begin VB.OptionButton Option1 
         Caption         =   "blue"
         Height          =   255
         Index           =   2
         Left            =   240
         TabIndex        =   8
         Top             =   240
         Width           =   1215
      End
      Begin VB.OptionButton Option2 
         Caption         =   "cyan"
         Height          =   255
         Index           =   2
         Left            =   240
         TabIndex        =   7
         Top             =   480
         Width           =   1215
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "House"
      Height          =   855
      Index           =   1
      Left            =   2880
      TabIndex        =   3
      Top             =   1080
      Width           =   1575
      Begin VB.OptionButton Option1 
         Caption         =   "red"
         Height          =   255
         Index           =   1
         Left            =   240
         TabIndex        =   5
         Top             =   240
         Width           =   1215
      End
      Begin VB.OptionButton Option2 
         Caption         =   "yellow"
         Height          =   255
         Index           =   1
         Left            =   240
         TabIndex        =   4
         Top             =   480
         Width           =   1215
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "House"
      Height          =   855
      Index           =   0
      Left            =   2880
      TabIndex        =   0
      Top             =   120
      Width           =   1575
      Begin VB.OptionButton Option2 
         Caption         =   "Magenta"
         Height          =   255
         Index           =   0
         Left            =   240
         TabIndex        =   2
         Top             =   480
         Width           =   1215
      End
      Begin VB.OptionButton Option1 
         Caption         =   "Green"
         Height          =   255
         Index           =   0
         Left            =   240
         TabIndex        =   1
         Top             =   240
         Width           =   1215
      End
   End
   Begin VB.Shape Shape3 
      BackStyle       =   1  'Opaque
      Height          =   735
      Left            =   240
      Shape           =   3  'Circle
      Top             =   360
      Width           =   975
   End
   Begin VB.Line Line2 
      X1              =   2400
      X2              =   1800
      Y1              =   1200
      Y2              =   480
   End
   Begin VB.Line Line1 
      X1              =   1200
      X2              =   1800
      Y1              =   1200
      Y2              =   480
   End
   Begin VB.Shape Shape2 
      BackStyle       =   1  'Opaque
      Height          =   615
      Left            =   1680
      Top             =   1920
      Width           =   375
   End
   Begin VB.Shape Shape1 
      BackStyle       =   1  'Opaque
      Height          =   1335
      Left            =   1200
      Top             =   1200
      Width           =   1215
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub initVars()
For X = 0 To 3
Option1(X).Value = True
Next
Call colorForm
End Sub


Private Sub D_Click()
Unload Me
End Sub

Private Sub Form_Load()
Call initVars
End Sub

Private Sub colorForm()
If Option1(0).Value Then
Shape1.BackColor = vbGreen
Else
Shape1.BackColor = vbMagenta
End If
If Option1(1).Value Then
Shape3.BackColor = vbRed
Else
Shape3.BackColor = vbYellow
End If
If Option1(2).Value Then
Form1.BackColor = vbBlue
Else
Form1.BackColor = vbCyan
End If
If Option1(3).Value Then
Shape2.BackColor = vbBlack
Else
Shape2.BackColor = vbWhite
End If
For X = 0 To 3
Frame1(X).BackColor = Me.BackColor
Option1(X).BackColor = Me.BackColor
Option2(X).BackColor = Me.BackColor

If Me.BackColor = vbBlue Then
Frame1(X).ForeColor = vbWhite
Option1(X).ForeColor = vbWhite
Option2(X).ForeColor = vbWhite
Else
Frame1(X).ForeColor = vbBlack
Option1(X).ForeColor = vbBlack
Option2(X).ForeColor = vbBlack
End If
Next

End Sub

Private Sub Option1_Click(Index As Integer)
Call colorForm
End Sub

Private Sub Option2_Click(Index As Integer)
Call colorForm
End Sub
