VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   4365
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   4560
   LinkTopic       =   "Form1"
   ScaleHeight     =   4365
   ScaleWidth      =   4560
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command3 
      Caption         =   "Done"
      Height          =   495
      Left            =   3240
      TabIndex        =   2
      Top             =   2040
      Width           =   975
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Colder"
      Enabled         =   0   'False
      Height          =   495
      Left            =   3240
      TabIndex        =   1
      Top             =   960
      Width           =   975
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Hotter"
      Height          =   495
      Left            =   3240
      TabIndex        =   0
      Top             =   360
      Width           =   975
   End
   Begin VB.Label Label1 
      Caption         =   "Label1"
      Height          =   375
      Index           =   4
      Left            =   0
      TabIndex        =   7
      Top             =   0
      Width           =   855
   End
   Begin VB.Label Label1 
      Caption         =   "Label1"
      Height          =   375
      Index           =   3
      Left            =   0
      TabIndex        =   6
      Top             =   0
      Width           =   855
   End
   Begin VB.Label Label1 
      Caption         =   "Label1"
      Height          =   375
      Index           =   2
      Left            =   0
      TabIndex        =   5
      Top             =   0
      Width           =   855
   End
   Begin VB.Label Label1 
      Caption         =   "Label1"
      Height          =   375
      Index           =   1
      Left            =   0
      TabIndex        =   4
      Top             =   0
      Width           =   855
   End
   Begin VB.Label Label1 
      Caption         =   "Label1"
      Height          =   375
      Index           =   0
      Left            =   1920
      TabIndex        =   3
      Top             =   840
      Width           =   855
   End
   Begin VB.Shape Shape2 
      BackColor       =   &H80000001&
      BackStyle       =   1  'Opaque
      Height          =   255
      Left            =   1080
      Top             =   3960
      Width           =   615
   End
   Begin VB.Shape Shape1 
      Height          =   4095
      Left            =   960
      Top             =   120
      Width           =   855
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim temp, deginc As Double

Private Sub initVars()
For x = 0 To 4
Label1(x).Top = Shape1.Top + Shape1.Height - x * Shape1.Height / 5 - Label1(x).Height
Label1(x).Left = Shape1.Left + Shape1.Width
Label1(x).Caption = x * 10 - 10
Next
deginc = Shape1.Height / 30
temp = deginc
Call setTherm
End Sub

Private Sub Command1_Click()
Command2.Enabled = True
If temp < Shape1.Height Then
temp = temp + deginc
Call setTherm
Else
Command1.Enabled = False
End If
End Sub

Private Sub Command2_Click()
Command1.Enabled = True
If Shape2.Top < Shape1.Height + Shape1.Top - 2 * deginc Then
temp = temp - deginc
Call setTherm
Else
Command2.Enabled = False
End If
End Sub

Private Sub Command3_Click()
Unload Me
End Sub

Private Sub Form_Load()
Call initVars
End Sub

Private Sub setTherm()
Shape2.Height = temp
Shape2.Top = Shape1.Height + Shape1.Top - temp
End Sub
