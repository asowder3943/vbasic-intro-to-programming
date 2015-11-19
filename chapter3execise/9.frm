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
   Begin VB.CommandButton Command2 
      Caption         =   "Done"
      Height          =   375
      Index           =   1
      Left            =   3120
      TabIndex        =   1
      Top             =   2640
      Width           =   1335
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Calculate"
      Height          =   375
      Index           =   1
      Left            =   3120
      TabIndex        =   0
      Top             =   2160
      Width           =   1335
   End
   Begin VB.Label Label2 
      Height          =   615
      Left            =   240
      TabIndex        =   3
      Top             =   720
      Width           =   1215
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      Caption         =   "What is the circumfrence of a circle with radius 10?"
      Height          =   375
      Left            =   120
      TabIndex        =   2
      Top             =   120
      Width           =   4215
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click(Index As Integer)
Label2.Caption = "62.8"
End Sub

Private Sub Command2_Click(Index As Integer)
Unload Me
End Sub
