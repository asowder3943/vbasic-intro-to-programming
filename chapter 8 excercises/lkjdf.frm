VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   5775
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   12390
   LinkTopic       =   "Form1"
   ScaleHeight     =   5775
   ScaleWidth      =   12390
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "ENTER VALUES"
      Height          =   495
      Left            =   5348
      TabIndex        =   12
      Top             =   4320
      Width           =   1695
   End
   Begin VB.TextBox Text6 
      Height          =   285
      Left            =   7984
      TabIndex        =   11
      Text            =   "0"
      Top             =   3720
      Width           =   1335
   End
   Begin VB.TextBox Text5 
      Height          =   285
      Left            =   7984
      TabIndex        =   9
      Text            =   "0"
      Top             =   3240
      Width           =   1335
   End
   Begin VB.TextBox Text4 
      Height          =   285
      Left            =   7984
      TabIndex        =   7
      Text            =   "0"
      Top             =   2760
      Width           =   1335
   End
   Begin VB.TextBox Text3 
      Height          =   285
      Left            =   4384
      TabIndex        =   5
      Text            =   "0"
      Top             =   3720
      Width           =   1335
   End
   Begin VB.TextBox Text2 
      Height          =   285
      Left            =   4384
      TabIndex        =   3
      Text            =   "0"
      Top             =   3240
      Width           =   1335
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   4384
      TabIndex        =   1
      Text            =   "0"
      Top             =   2760
      Width           =   1335
   End
   Begin VB.Frame Frame1 
      Caption         =   "TRIANGLE ABC"
      Height          =   2175
      Left            =   3728
      TabIndex        =   13
      Top             =   240
      Width           =   4935
      Begin VB.Line Line3 
         X1              =   1200
         X2              =   2280
         Y1              =   1680
         Y2              =   120
      End
      Begin VB.Line Line2 
         X1              =   1200
         X2              =   3720
         Y1              =   1680
         Y2              =   1680
      End
      Begin VB.Line Line1 
         X1              =   2280
         X2              =   3720
         Y1              =   120
         Y2              =   1680
      End
      Begin VB.Label Label12 
         Caption         =   "b = 0"
         Height          =   255
         Left            =   840
         TabIndex        =   19
         Top             =   600
         Width           =   1095
      End
      Begin VB.Label Label11 
         Caption         =   "A = 0"
         Height          =   255
         Left            =   360
         TabIndex        =   18
         Top             =   1560
         Width           =   975
      End
      Begin VB.Label Label10 
         Caption         =   "c = 0"
         Height          =   255
         Left            =   2040
         TabIndex        =   17
         Top             =   1680
         Width           =   975
      End
      Begin VB.Label Label9 
         Caption         =   "B = 0"
         Height          =   255
         Left            =   3600
         TabIndex        =   16
         Top             =   1680
         Width           =   975
      End
      Begin VB.Label Label8 
         Caption         =   "a = 0"
         Height          =   255
         Left            =   3120
         TabIndex        =   15
         Top             =   840
         Width           =   1095
      End
      Begin VB.Label Label7 
         Caption         =   "C = 0"
         Height          =   255
         Left            =   2520
         TabIndex        =   14
         Top             =   120
         Width           =   1215
      End
   End
   Begin VB.Label Label6 
      Caption         =   "ANGLE C:"
      Height          =   255
      Left            =   6671
      TabIndex        =   10
      Top             =   3720
      Width           =   1095
   End
   Begin VB.Label Label5 
      Caption         =   "ANGLE B:"
      Height          =   255
      Left            =   6671
      TabIndex        =   8
      Top             =   3240
      Width           =   1095
   End
   Begin VB.Label Label4 
      Caption         =   "ANGLE A:"
      Height          =   255
      Left            =   6671
      TabIndex        =   6
      Top             =   2760
      Width           =   1095
   End
   Begin VB.Label Label3 
      Caption         =   "SIDE c:"
      Height          =   255
      Left            =   3071
      TabIndex        =   4
      Top             =   3720
      Width           =   1095
   End
   Begin VB.Label Label2 
      Caption         =   "SIDE b:"
      Height          =   255
      Left            =   3071
      TabIndex        =   2
      Top             =   3240
      Width           =   1095
   End
   Begin VB.Label Label1 
      Caption         =   "SIDE a:"
      Height          =   255
      Left            =   3071
      TabIndex        =   0
      Top             =   2760
      Width           =   1095
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Command1_Click()
If StrComp(Text1.Text, "") = 0 Then: Text1.Text = 0
If StrComp(Text2.Text, "") = 0 Then: Text2.Text = 0
If StrComp(Text3.Text, "") = 0 Then: Text3.Text = 0
If StrComp(Text4.Text, "") = 0 Then: Text4.Text = 0
If StrComp(Text5.Text, "") = 0 Then: Text5.Text = 0
If StrComp(Text6.Text, "") = 0 Then: Text6.Text = 0
If IsNumeric(Text1.Text) And IsNumeric(Text2.Text) And IsNumeric(Text3.Text) And IsNumeric(Text4.Text) And IsNumeric(Text5.Text) And IsNumeric(Text6.Text) Then
    Dim sa, sb, sc, ma, mb, mc As Double
    sa = Text1.Text: sb = Text2.Text: sc = Text3.Text
    ma = Text4.Text: mb = Text5.Text: mc = Text6.Text
    
    'SSS
    If sa * sb * sc <> 0 Then
    End If
    
    'SAS
    If ma * sc * mb <> 0 Then
    End If
    
    If mb * sa * mc <> 0 Then
    End If
    
    If mc * sb * ma <> 0 Then
    End If
    
    'AAS
    If ma * mb * sa Then
    End If
    
    If mb * mc * sb Then
    
    
    
End If
End Sub

Private Sub Text1_Change()
Label8.Caption = "a = " & Text1.Text
End Sub

Private Sub Text2_Change()
Label12.Caption = "b = " & Text2.Text
End Sub

Private Sub Text3_Change()
Label10.Caption = "c = " & Text3.Text
End Sub

Private Sub Text4_Change()
Label11.Caption = "A = " & Text4.Text
End Sub

Private Sub Text5_Change()
Label9.Caption = "B = " & Text5.Text
End Sub

Private Sub Text6_Change()
Label7.Caption = "C = " & Text6.Text
End Sub
