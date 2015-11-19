VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   5100
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   4560
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   ScaleHeight     =   5100
   ScaleWidth      =   4560
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   2507
      TabIndex        =   1
      Top             =   623
      Width           =   1335
   End
   Begin VB.TextBox Text2 
      Height          =   285
      Left            =   2507
      TabIndex        =   3
      Top             =   1103
      Width           =   1335
   End
   Begin VB.TextBox Text3 
      Height          =   285
      Left            =   2507
      TabIndex        =   5
      Top             =   1583
      Width           =   1335
   End
   Begin VB.CommandButton Command1 
      Caption         =   "&Calculate"
      Height          =   375
      Left            =   1433
      TabIndex        =   6
      Top             =   2183
      Width           =   1695
   End
   Begin VB.CommandButton Command2 
      Caption         =   "&Done"
      Height          =   375
      Left            =   1613
      TabIndex        =   8
      Top             =   4103
      Width           =   1335
   End
   Begin VB.Label Label1 
      Alignment       =   1  'Right Justify
      Caption         =   "&Initial value ($):"
      Height          =   255
      Left            =   1078
      TabIndex        =   0
      Top             =   630
      Width           =   1215
   End
   Begin VB.Label Label2 
      Alignment       =   1  'Right Justify
      Caption         =   "&Ending Value ($):"
      Height          =   255
      Left            =   1078
      TabIndex        =   2
      Top             =   1110
      Width           =   1215
   End
   Begin VB.Label Label3 
      Alignment       =   1  'Right Justify
      Caption         =   "&Rate of Depreciattion:"
      Height          =   255
      Left            =   718
      TabIndex        =   4
      Top             =   1590
      Width           =   1575
   End
   Begin VB.Label Label4 
      Alignment       =   2  'Center
      Caption         =   $"ex 14.frx":0000
      Height          =   975
      Left            =   533
      TabIndex        =   7
      Top             =   2760
      Width           =   3495
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
If IsNumeric(Text1.Text) And IsNumeric(Text2.Text) And IsNumeric(Text3.Text) Then
    Dim n, v, p, r As Double
    p = Text1.Text: r = Text3.Text: v = Text2.Text
    Label4.Caption = "It will take " & Format(Log(v / p) / Log(1 + (-r / 100)), "fixed") & " years for a piece of equipment to depreciate to " & Format(v, "currency") & " if its initial value was " & Format(p, "currency") & " and the rate of dependency is " & Format(r / 100, "percent")
End If
End Sub

Private Sub Command2_Click()
Unload Me
End Sub

Private Sub Text1_Change()
Call reset
End Sub

Private Sub Text2_Change()
Call reset
End Sub

Private Sub Text3_Change()
Call reset
End Sub

Private Sub reset()
Label4.Caption = "It will take ____ years for a piece of equipment to depreciate to ____ if its initial value was ____ and the rate of dependency is ____"
End Sub
