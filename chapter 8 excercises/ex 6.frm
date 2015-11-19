VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   5160
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   4560
   LinkTopic       =   "Form1"
   ScaleHeight     =   5160
   ScaleWidth      =   4560
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command2 
      Caption         =   "&Done"
      Height          =   375
      Left            =   2453
      TabIndex        =   2
      Top             =   4680
      Width           =   1215
   End
   Begin VB.CommandButton Command1 
      Caption         =   "&Compute"
      Height          =   375
      Left            =   893
      TabIndex        =   1
      Top             =   4680
      Width           =   1215
   End
   Begin VB.ListBox List1 
      Height          =   4155
      ItemData        =   "ex 6.frx":0000
      Left            =   773
      List            =   "ex 6.frx":0002
      TabIndex        =   0
      Top             =   360
      Width           =   3015
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
List1.AddItem ("A" & vbTab & "B" & vbTab & "C")
For a = 1 To 100
    For b = 1 To 100
        If Sqr(a ^ 2 + b ^ 2) = Int(Sqr(a ^ 2 + b ^ 2)) Then: List1.AddItem (a & vbTab & b & vbTab & Sqr(a ^ 2 + b ^ 2))
    Next
Next
End Sub

Private Sub Command2_Click()
Unload Me
End Sub
