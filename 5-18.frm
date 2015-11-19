VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   4320
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   9390
   LinkTopic       =   "Form1"
   ScaleHeight     =   4320
   ScaleWidth      =   9390
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "done"
      Height          =   495
      Left            =   6480
      TabIndex        =   4
      Top             =   3360
      Width           =   2175
   End
   Begin VB.CheckBox Check3 
      Caption         =   "Underlined"
      Height          =   495
      Left            =   2400
      TabIndex        =   3
      Top             =   3240
      Width           =   1215
   End
   Begin VB.CheckBox Check2 
      Caption         =   "Bold"
      Height          =   375
      Left            =   2400
      TabIndex        =   1
      Top             =   1800
      Width           =   1215
   End
   Begin VB.CheckBox Check1 
      Caption         =   "Italic"
      Height          =   375
      Left            =   2400
      TabIndex        =   0
      Top             =   2520
      Width           =   1215
   End
   Begin VB.Label Label1 
      Caption         =   "Style"
      BeginProperty Font 
         Name            =   "MS Serif"
         Size            =   24
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   4440
      TabIndex        =   2
      Top             =   600
      Width           =   1215
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Check2_Click()
Label1.Font.Bold = False
If Check2.Value = vbChecked Then
    Label1.Font.Bold = True
End If
End Sub

Private Sub Check3_Click()
Label1.Font.Underline = False
If Check3.Value = vbChecked Then
    Label1.Font.Underline = True
End If
End Sub

Private Sub Check1_Click()
Label1.Font.Italic = False
If Check1.Value = vbChecked Then
    Label1.Font.Italic = True
End If
End Sub




Private Sub Command1_Click()
Unload Me
End Sub
