VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Bacteria Growth"
   ClientHeight    =   4890
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   4560
   LinkTopic       =   "Form1"
   ScaleHeight     =   4890
   ScaleWidth      =   4560
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command2 
      Caption         =   "&Done"
      Height          =   375
      Left            =   1613
      TabIndex        =   7
      Top             =   3840
      Width           =   1335
   End
   Begin VB.TextBox Text3 
      Height          =   285
      Left            =   2269
      TabIndex        =   5
      Top             =   1320
      Width           =   1335
   End
   Begin VB.TextBox Text2 
      Height          =   285
      Left            =   2269
      TabIndex        =   3
      Top             =   840
      Width           =   1335
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   2269
      TabIndex        =   1
      Top             =   360
      Width           =   1335
   End
   Begin VB.CommandButton Command1 
      Caption         =   "&Calculate"
      Height          =   375
      Left            =   1433
      TabIndex        =   6
      Top             =   1920
      Width           =   1695
   End
   Begin VB.Label Label4 
      Alignment       =   2  'Center
      Caption         =   "____ Bacteria will be present after ___ hours if there were ___ initial bacteria and k is ___"
      Height          =   975
      Left            =   533
      TabIndex        =   8
      Top             =   2520
      Width           =   3495
   End
   Begin VB.Label Label3 
      Alignment       =   1  'Right Justify
      Caption         =   "&Time:"
      Height          =   255
      Left            =   956
      TabIndex        =   4
      Top             =   1320
      Width           =   1095
   End
   Begin VB.Label Label2 
      Alignment       =   1  'Right Justify
      Caption         =   "&K:"
      Height          =   255
      Left            =   1196
      TabIndex        =   2
      Top             =   840
      Width           =   855
   End
   Begin VB.Label Label1 
      Alignment       =   1  'Right Justify
      Caption         =   "&Initial amount:"
      Height          =   255
      Left            =   1076
      TabIndex        =   0
      Top             =   360
      Width           =   975
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Const e = 2.71828182845905
Private Sub Command1_Click()
If IsNumeric(Text1.Text) And IsNumeric(Text2.Text) And IsNumeric(Text3.Text) Then
    Dim i, k, t As Double
    n = Text1.Text: k = Text2.Text: t = Text3.Text
    Label4.Caption = Format(n * e ^ (k * t), "fixed") & " Bacteria will be present after " & t & " hours if there were " & n & " initial bacteria and k is " & k
End If
End Sub

Private Sub Command2_Click()
Unload Me
End Sub

Private Sub Text1_Change()
Label4.Caption = "____ Bacteria will be present after ___ hours if there were ___ initial bacteria and k is ___"
End Sub

Private Sub Text2_Change()
Label4.Caption = "____ Bacteria will be present after ___ hours if there were ___ initial bacteria and k is ___"
End Sub

Private Sub Text3_Change()
Label4.Caption = "____ Bacteria will be present after ___ hours if there were ___ initial bacteria and k is ___"

End Sub
