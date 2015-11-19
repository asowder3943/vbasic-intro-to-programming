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
      Left            =   3360
      TabIndex        =   7
      Top             =   3720
      Width           =   1695
   End
   Begin VB.CommandButton Command1 
      Caption         =   "random numbers"
      Height          =   375
      Left            =   840
      TabIndex        =   6
      Top             =   3720
      Width           =   1335
   End
   Begin VB.Label Label6 
      Height          =   375
      Left            =   480
      TabIndex        =   5
      Top             =   1320
      Width           =   2295
   End
   Begin VB.Label Label5 
      Height          =   375
      Left            =   480
      TabIndex        =   4
      Top             =   2040
      Width           =   2295
   End
   Begin VB.Label Label4 
      Height          =   375
      Left            =   3480
      TabIndex        =   3
      Top             =   2640
      Width           =   2295
   End
   Begin VB.Label Label3 
      Height          =   375
      Left            =   480
      TabIndex        =   2
      Top             =   2640
      Width           =   2295
   End
   Begin VB.Label Label2 
      Height          =   375
      Left            =   3480
      TabIndex        =   1
      Top             =   1920
      Width           =   2295
   End
   Begin VB.Label Label1 
      Height          =   375
      Left            =   3480
      TabIndex        =   0
      Top             =   1320
      Width           =   2295
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Label1.Caption = Rnd
Label6.Caption = Rnd
Label5.Caption = Rnd
Label4.Caption = Rnd
Label3.Caption = Rnd
Label2.Caption = Rnd
End Sub

Private Sub Command2_Click()
Unload Me
End Sub
