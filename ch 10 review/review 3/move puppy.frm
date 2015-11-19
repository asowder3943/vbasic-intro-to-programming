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
      Height          =   375
      Left            =   3360
      TabIndex        =   4
      Top             =   2760
      Width           =   975
   End
   Begin VB.CommandButton Command4 
      Caption         =   "Right"
      Height          =   375
      Left            =   3360
      TabIndex        =   3
      Top             =   2040
      Width           =   975
   End
   Begin VB.CommandButton Command3 
      Caption         =   "Left"
      Height          =   375
      Left            =   3360
      TabIndex        =   2
      Top             =   1440
      Width           =   975
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Down"
      Height          =   375
      Left            =   3360
      TabIndex        =   1
      Top             =   840
      Width           =   975
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Up"
      Height          =   375
      Left            =   3360
      TabIndex        =   0
      Top             =   240
      Width           =   975
   End
   Begin VB.Image Image1 
      Height          =   1095
      Left            =   1440
      Picture         =   "move puppy.frx":0000
      Stretch         =   -1  'True
      Top             =   960
      Width           =   1335
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Const inc = 30
Private Sub Command1_Click()
Image1.Top = Image1.Top - inc
End Sub

Private Sub Command2_Click()
Image1.Top = Image1.Top + inc
End Sub

Private Sub Command3_Click()
Image1.Left = Image1.Left - inc
End Sub

Private Sub Command4_Click()
Image1.Left = Image1.Left + inc
End Sub

Private Sub Command5_Click()
Unload Me
End Sub
