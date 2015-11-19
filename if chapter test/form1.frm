VERSION 5.00
Begin VB.Form form1 
   Caption         =   "lunch order"
   ClientHeight    =   3030
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   4560
   LinkTopic       =   "Form1"
   ScaleHeight     =   3030
   ScaleWidth      =   4560
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "done"
      Height          =   375
      Left            =   2400
      TabIndex        =   4
      Top             =   2400
      Width           =   1215
   End
   Begin VB.Frame Frame1 
      Caption         =   "Frame1"
      Height          =   855
      Left            =   833
      TabIndex        =   0
      Top             =   360
      Width           =   2895
      Begin VB.CheckBox Check2 
         Caption         =   "soup"
         Height          =   255
         Left            =   1440
         TabIndex        =   2
         Top             =   360
         Width           =   1095
      End
      Begin VB.CheckBox Check1 
         Caption         =   "salad"
         Height          =   255
         Left            =   240
         TabIndex        =   1
         Top             =   360
         Width           =   1095
      End
   End
   Begin VB.Label Label1 
      Caption         =   "Price:"
      Height          =   375
      Left            =   840
      TabIndex        =   3
      Top             =   1560
      Width           =   2895
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim x As Integer

Private Sub Check1_Click()
If Check1.Value = vbChecked And Check2.Value = vbChecked Then
    Label1.Caption = 5.99
Else
    if check1.Value = vbchecked
End If
Call finished
End Sub

Private Sub Check2_Click()
If Check2.Value = vbChecked Then
    x = x + 2
Else
    x = x - 2
End If
Call finished
End Sub

Private Sub finished()
If x = 1 Then
    Label1.Caption = "price: 4.99"
Else
    If x = 2 Then
        Label1.Caption = "price: 1.99"
    Else
        If x = 3 Then
            Label1.Caption = "price: 5.99"
        Else
            Label1.Caption = "price:"
        End If
    End If
End If
End Sub

Private Sub Command1_Click()
Unload Me
End Sub
