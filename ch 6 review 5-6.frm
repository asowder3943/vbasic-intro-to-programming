VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   3030
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   10980
   LinkTopic       =   "Form1"
   ScaleHeight     =   3030
   ScaleWidth      =   10980
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command2 
      Caption         =   "calculate position"
      Height          =   495
      Left            =   6480
      TabIndex        =   9
      Top             =   1320
      Width           =   2535
   End
   Begin VB.CommandButton Command1 
      Caption         =   "done"
      Height          =   375
      Left            =   4200
      TabIndex        =   7
      Top             =   2280
      Width           =   975
   End
   Begin VB.Frame Frame1 
      Caption         =   "Frame1"
      Height          =   855
      Left            =   360
      TabIndex        =   2
      Top             =   1200
      Width           =   3135
      Begin VB.OptionButton Option3 
         Caption         =   "p case"
         Height          =   255
         Left            =   2040
         TabIndex        =   5
         Top             =   360
         Width           =   975
      End
      Begin VB.OptionButton Option2 
         Caption         =   "u case"
         Height          =   255
         Left            =   1080
         TabIndex        =   4
         Top             =   360
         Width           =   975
      End
      Begin VB.OptionButton Option1 
         Caption         =   "l case"
         Height          =   255
         Left            =   120
         TabIndex        =   3
         Top             =   360
         Width           =   975
      End
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   5123
      TabIndex        =   1
      Top             =   480
      Width           =   1935
   End
   Begin VB.Label Label3 
      Caption         =   "First:         Middle:          Last:"
      Height          =   615
      Left            =   5760
      TabIndex        =   8
      Top             =   2160
      Width           =   4095
   End
   Begin VB.Label Label2 
      Caption         =   "Label2"
      Height          =   495
      Left            =   360
      TabIndex        =   6
      Top             =   2280
      Width           =   2655
   End
   Begin VB.Label Label1 
      Caption         =   "enter text"
      Height          =   375
      Left            =   3923
      TabIndex        =   0
      Top             =   480
      Width           =   975
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Unload Me
End Sub

Private Sub Command2_Click()
Label3.Caption = "first:" + Left(Text1.Text, 1) + "     middle:" + Mid(Text1.Text, Len(Text1.Text) / 2, 1) + "     last:" + Right(Text1.Text, 1)
End Sub

Private Sub Option1_Click()
Label2.Caption = LCase(Text1.Text)
End Sub

Private Sub Option2_Click()
Label2.Caption = UCase(Text1.Text)
End Sub

Private Sub Option3_Click()
Label2.Caption = StrConv(Text1.Text, vbProperCase)
End Sub


