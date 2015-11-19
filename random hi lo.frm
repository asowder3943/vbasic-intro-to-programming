VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   5415
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   9270
   LinkTopic       =   "Form1"
   ScaleHeight     =   5415
   ScaleWidth      =   9270
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command3 
      Caption         =   "done"
      Height          =   495
      Left            =   3480
      TabIndex        =   6
      Top             =   5640
      Width           =   975
   End
   Begin VB.CommandButton Command2 
      Caption         =   "new number"
      Height          =   495
      Left            =   3480
      TabIndex        =   5
      Top             =   4800
      Width           =   975
   End
   Begin VB.CommandButton Command1 
      Caption         =   "enter guess"
      Height          =   375
      Left            =   3480
      TabIndex        =   4
      Top             =   4200
      Width           =   975
   End
   Begin VB.TextBox Text1 
      Height          =   375
      Left            =   3960
      TabIndex        =   0
      Top             =   3480
      Width           =   1095
   End
   Begin VB.Label Label5 
      Caption         =   "number of guesses = "
      Height          =   1575
      Left            =   360
      TabIndex        =   8
      Top             =   600
      Width           =   615
   End
   Begin VB.Label Label4 
      Caption         =   "Enter guess"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2895
      Left            =   6240
      TabIndex        =   7
      Top             =   3120
      Width           =   2415
   End
   Begin VB.Label Label3 
      Alignment       =   2  'Center
      Caption         =   $"random hi lo.frx":0000
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1575
      Left            =   2160
      TabIndex        =   3
      Top             =   1200
      Width           =   3975
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      Caption         =   "Higher Lower"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   1440
      TabIndex        =   2
      Top             =   120
      Width           =   5055
   End
   Begin VB.Label Label1 
      Caption         =   "Guess:"
      Height          =   375
      Left            =   2880
      TabIndex        =   1
      Top             =   3480
      Width           =   855
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim secret, guess, counter As Integer


Private Sub Command1_Click()
    guess = Text1.Text
    MsgBox (counter & secret & guess)
    If guess < 1 Or guess > 100 Then
        MsgBox ("guess out of range")
    Else
        If guess = secret Then
            Label4.Caption = "good job you win !!"
        Else
            counter = counter + 1
            Label5.Caption = "number of guesses = " & counter
            MsgBox (counter & secret & guess)
            If (guess < secret) Then
                Label4.Caption = "go higher"
            Else
                Label4.Caption = "go lower"
            End If
        End If
    End If
End Sub

Private Sub Command2_Click()
    secret = Int((100 * Rnd) + 1)
    counter = 0
    Label5.Caption = "number of guesses = 0"
   ' Label5.Caption = secret
   ' Label5.Caption = secret
End Sub

Private Sub Command3_Click()
    Unload Me
End Sub

Public Sub Form_Load()
    Randomize
    secret = Int((100 * Rnd) + 1)
    Label5.Caption = secret
End Sub

Private Sub Text1_Change()
    Label4.Caption = ""
End Sub



