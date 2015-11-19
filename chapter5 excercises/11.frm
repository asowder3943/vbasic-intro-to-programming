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
      Caption         =   "done"
      Height          =   375
      Left            =   3360
      TabIndex        =   12
      Top             =   2520
      Width           =   975
   End
   Begin VB.CommandButton Command1 
      Caption         =   "print"
      Height          =   375
      Left            =   2040
      TabIndex        =   11
      Top             =   2520
      Width           =   975
   End
   Begin VB.Frame Frame2 
      Caption         =   "fixings"
      Height          =   975
      Left            =   240
      TabIndex        =   3
      Top             =   960
      Width           =   3975
      Begin VB.CheckBox Check4 
         Caption         =   "onion"
         Height          =   255
         Left            =   120
         TabIndex        =   9
         Top             =   600
         Width           =   855
      End
      Begin VB.CheckBox Check5 
         Caption         =   "cheese"
         Height          =   255
         Left            =   1080
         TabIndex        =   8
         Top             =   600
         Width           =   855
      End
      Begin VB.CheckBox joe 
         Caption         =   "mayo"
         Height          =   255
         Left            =   2040
         TabIndex        =   7
         Top             =   600
         Width           =   1215
      End
      Begin VB.CheckBox Check2 
         Caption         =   "tomato"
         Height          =   255
         Left            =   1080
         TabIndex        =   6
         Top             =   240
         Width           =   855
      End
      Begin VB.CheckBox bob 
         Caption         =   "mustard"
         Height          =   255
         Left            =   2040
         TabIndex        =   5
         Top             =   240
         Width           =   1215
      End
      Begin VB.CheckBox Check1 
         Caption         =   "lettuce"
         Height          =   255
         Left            =   120
         TabIndex        =   4
         Top             =   240
         Width           =   1215
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "Sandwich size"
      Height          =   615
      Left            =   360
      TabIndex        =   0
      Top             =   240
      Width           =   2775
      Begin VB.OptionButton Option2 
         Caption         =   "large"
         Height          =   195
         Left            =   1560
         TabIndex        =   2
         Top             =   240
         Width           =   1575
      End
      Begin VB.OptionButton Option1 
         Caption         =   "small"
         Height          =   255
         Left            =   120
         TabIndex        =   1
         Top             =   240
         Width           =   1095
      End
   End
   Begin VB.Label Label1 
      Caption         =   "Total price = $"
      Height          =   255
      Left            =   120
      TabIndex        =   10
      Top             =   2160
      Width           =   1695
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim price As Double


Private Sub Check1_Click()
If Check1.Value = vbChecked Then
    price = price + 0.1
Else
    price = price - 0.1
End If
Label1.Caption = "Total Price = $" & price
End Sub

Private Sub Check2_Click()
If Check2.Value = vbChecked Then
    price = price + 0.25
Else
    price = price - 0.25
End If
Label1.Caption = "Total Price = $" & price
End Sub

Private Sub Check4_Click()
If Check4.Value = vbChecked Then
    price = price + 0.1
Else
    price = price - 0.1
End If
Label1.Caption = "Total Price = $" & price
End Sub

Private Sub Check5_Click()
If Check5.Value = vbChecked Then
    price = price + 0.5
Else
    price = price - 0.5
End If
Label1.Caption = "Total Price = $" & price
End Sub

Private Sub Command2_Click()
Unload Me
End Sub

Private Sub Form_Load()
price = 4
End Sub

Private Sub Option1_Click()
price = price - 1.5
Label1.Caption = "Total Price = $" & price
End Sub

Private Sub Option2_Click()
price = price + 1.5
Label1.Caption = "Total Price = $" & price
End Sub


