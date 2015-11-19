VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   3345
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   6555
   LinkTopic       =   "Form1"
   ScaleHeight     =   3345
   ScaleWidth      =   6555
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "done"
      Height          =   375
      Left            =   4230
      TabIndex        =   1
      Top             =   2520
      Width           =   1095
   End
   Begin VB.Label Label1 
      Caption         =   "Examples:"
      Height          =   375
      Left            =   1350
      TabIndex        =   0
      Top             =   240
      Width           =   1455
   End
   Begin VB.Line Line1 
      X1              =   1350
      X2              =   4605
      Y1              =   720
      Y2              =   735
   End
   Begin VB.Shape Shape1 
      FillColor       =   &H0080C0FF&
      FillStyle       =   0  'Solid
      Height          =   735
      Index           =   5
      Left            =   1230
      Top             =   1320
      Width           =   975
   End
   Begin VB.Shape Shape1 
      Height          =   735
      Index           =   2
      Left            =   3870
      Shape           =   2  'Oval
      Top             =   1320
      Width           =   975
   End
   Begin VB.Shape Shape1 
      BackStyle       =   1  'Opaque
      FillStyle       =   4  'Upward Diagonal
      Height          =   735
      Index           =   1
      Left            =   2550
      Shape           =   1  'Square
      Top             =   1320
      Width           =   975
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
