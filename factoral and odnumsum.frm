VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   3510
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   4560
   LinkTopic       =   "Form1"
   ScaleHeight     =   3510
   ScaleWidth      =   4560
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command3 
      Caption         =   "done"
      Height          =   495
      Left            =   1193
      TabIndex        =   4
      Top             =   2760
      Width           =   2175
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Odd num sum"
      Height          =   495
      Left            =   2400
      TabIndex        =   3
      Top             =   2160
      Width           =   2175
   End
   Begin VB.TextBox Text1 
      Height          =   495
      Left            =   480
      TabIndex        =   2
      Top             =   1320
      Width           =   3615
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Factoral"
      Height          =   495
      Left            =   0
      TabIndex        =   0
      Top             =   2160
      Width           =   2175
   End
   Begin VB.Label Label1 
      Caption         =   "Enter number below"
      Height          =   615
      Left            =   473
      TabIndex        =   1
      Top             =   360
      Width           =   3615
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Label1.Caption = 1
For x = Int(Text1.Text) To 1 Step -1
Label1.Caption = Int(Label1.Caption) * x
Next
End Sub

Private Sub Command2_Click()
Label1.Caption = 0
For x = 1 To Int(Text1.Text) Step 2
Label1.Caption = Int(Label1.Caption) + x
Next
End Sub

Private Sub Command3_Click()
Unload Me
End Sub

Private Sub Text1_Change()
Label1.Caption = "Enter number below"
End Sub
