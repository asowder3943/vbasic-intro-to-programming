VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   4890
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   8100
   LinkTopic       =   "Form1"
   ScaleHeight     =   4890
   ScaleWidth      =   8100
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command2 
      Caption         =   "&Done"
      Height          =   375
      Left            =   4320
      TabIndex        =   9
      Top             =   4200
      Width           =   2895
   End
   Begin VB.CommandButton Command1 
      Caption         =   "ar&ea"
      Height          =   615
      Left            =   4680
      TabIndex        =   6
      Top             =   2520
      Width           =   2055
   End
   Begin VB.TextBox Text3 
      Height          =   375
      Left            =   6240
      TabIndex        =   5
      Top             =   1800
      Width           =   1335
   End
   Begin VB.TextBox Text2 
      Height          =   375
      Left            =   6240
      TabIndex        =   3
      Top             =   1200
      Width           =   1335
   End
   Begin VB.TextBox Text1 
      Height          =   375
      Left            =   6240
      TabIndex        =   1
      Top             =   600
      Width           =   1215
   End
   Begin VB.PictureBox Picture1 
      Height          =   2535
      Left            =   600
      Picture         =   "ex 11.frx":0000
      ScaleHeight     =   2475
      ScaleWidth      =   2835
      TabIndex        =   7
      Top             =   960
      Width           =   2895
   End
   Begin VB.Label Label4 
      Caption         =   "Area of Triangle = "
      Height          =   495
      Left            =   3960
      TabIndex        =   8
      Top             =   3360
      Width           =   3495
   End
   Begin VB.Label Label3 
      Caption         =   "Enter angle &c in degrees:"
      Height          =   375
      Left            =   3960
      TabIndex        =   4
      Top             =   1800
      Width           =   2055
   End
   Begin VB.Label Label2 
      Caption         =   "Enter side length &b:"
      Height          =   375
      Left            =   3960
      TabIndex        =   2
      Top             =   1200
      Width           =   2055
   End
   Begin VB.Label Label1 
      Caption         =   "Enter side length &a:"
      Height          =   255
      Left            =   3960
      TabIndex        =   0
      Top             =   720
      Width           =   1935
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Const pi = 3.1415926536

Private Sub Command1_Click()
If IsNumeric(Text1.Text) And IsNumeric(Text2.Text) And IsNumeric(Text3.Text) Then
    Dim a, b, c As Double
    a = Text1.Text: b = Text2.Text: c = Text3.Text
    Label4.Caption = "The area of the tringle is " & Format((1 / 2) * a * b * Sin(c * pi / 180), "fixed")
End If

End Sub

Private Sub Command2_Click()
Unload Me
End Sub
