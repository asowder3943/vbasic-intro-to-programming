VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   5130
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   12360
   LinkTopic       =   "Form1"
   ScaleHeight     =   5130
   ScaleWidth      =   12360
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command3 
      Caption         =   "AAS"
      Height          =   615
      Left            =   1320
      TabIndex        =   9
      Top             =   2160
      Width           =   1095
   End
   Begin VB.CommandButton Command2 
      Caption         =   "SAS"
      Height          =   615
      Left            =   1320
      TabIndex        =   8
      Top             =   1320
      Width           =   1095
   End
   Begin VB.CommandButton Command1 
      Caption         =   "SSS"
      Height          =   615
      Left            =   1320
      TabIndex        =   7
      Top             =   480
      Width           =   1095
   End
   Begin VB.Frame Frame1 
      Caption         =   "TRIANGLE ABC"
      Height          =   2175
      Left            =   3713
      TabIndex        =   0
      Top             =   240
      Width           =   4935
      Begin VB.Label tr 
         Caption         =   "C = 0"
         Height          =   255
         Left            =   2520
         TabIndex        =   6
         Top             =   120
         Width           =   1215
      End
      Begin VB.Label gdb 
         Caption         =   "a = 0"
         Height          =   255
         Left            =   3120
         TabIndex        =   5
         Top             =   840
         Width           =   1095
      End
      Begin VB.Label mu 
         Caption         =   "B = 0"
         Height          =   255
         Left            =   3600
         TabIndex        =   4
         Top             =   1680
         Width           =   975
      End
      Begin VB.Label yjmr 
         Caption         =   "c = 0"
         Height          =   255
         Left            =   2040
         TabIndex        =   3
         Top             =   1680
         Width           =   975
      End
      Begin VB.Label k7imy 
         Caption         =   "A = 0"
         Height          =   255
         Left            =   360
         TabIndex        =   2
         Top             =   1560
         Width           =   975
      End
      Begin VB.Label dsf 
         Caption         =   "b = 0"
         Height          =   255
         Left            =   840
         TabIndex        =   1
         Top             =   600
         Width           =   1095
      End
      Begin VB.Line Line1 
         X1              =   2280
         X2              =   3720
         Y1              =   120
         Y2              =   1680
      End
      Begin VB.Line Line2 
         X1              =   1200
         X2              =   3720
         Y1              =   1680
         Y2              =   1680
      End
      Begin VB.Line Line3 
         X1              =   1200
         X2              =   2280
         Y1              =   1680
         Y2              =   120
      End
   End
   Begin VB.Label lc 
      Caption         =   "Label7"
      Height          =   255
      Left            =   7800
      TabIndex        =   21
      Top             =   4080
      Width           =   1215
   End
   Begin VB.Label lb 
      Caption         =   "Label7"
      Height          =   255
      Left            =   7800
      TabIndex        =   20
      Top             =   3600
      Width           =   1215
   End
   Begin VB.Label la 
      Caption         =   "Label7"
      Height          =   255
      Left            =   7800
      TabIndex        =   19
      Top             =   3120
      Width           =   1215
   End
   Begin VB.Label ac 
      Caption         =   "Label7"
      Height          =   255
      Left            =   4800
      TabIndex        =   18
      Top             =   4080
      Width           =   1215
   End
   Begin VB.Label ab 
      Caption         =   "Label7"
      Height          =   255
      Left            =   4800
      TabIndex        =   17
      Top             =   3600
      Width           =   1215
   End
   Begin VB.Label aa 
      Caption         =   "Label7"
      Height          =   255
      Left            =   4800
      TabIndex        =   16
      Top             =   3120
      Width           =   1215
   End
   Begin VB.Label Label1 
      Caption         =   "SIDE a:"
      Height          =   255
      Left            =   6480
      TabIndex        =   15
      Top             =   3120
      Width           =   1095
   End
   Begin VB.Label Label2 
      Caption         =   "SIDE b:"
      Height          =   255
      Left            =   6480
      TabIndex        =   14
      Top             =   3600
      Width           =   1095
   End
   Begin VB.Label Label3 
      Caption         =   "SIDE c:"
      Height          =   255
      Left            =   6480
      TabIndex        =   13
      Top             =   4080
      Width           =   1095
   End
   Begin VB.Label Label4 
      Caption         =   "ANGLE A:"
      Height          =   255
      Left            =   3480
      TabIndex        =   12
      Top             =   3120
      Width           =   1095
   End
   Begin VB.Label Label5 
      Caption         =   "ANGLE B:"
      Height          =   255
      Left            =   3480
      TabIndex        =   11
      Top             =   3600
      Width           =   1095
   End
   Begin VB.Label Label6 
      Caption         =   "ANGLE C:"
      Height          =   255
      Left            =   3480
      TabIndex        =   10
      Top             =   4080
      Width           =   1095
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Function rd(ByVal ang As Double) As Double
rd = ang * 3.1415 / 180
End Function

Function acs(ByVal rat As Double) As Double
acs = dr(Atn(-rat / Sqr(-rat * rat + 1)) + 2 * Atn(1))
End Function

Function dr(ByVal ang As Double) As Double
dr = ang * 180 / 3.1415
End Function

Function asn(ByVal rat As Double) As Double
asn = dr(Atn(rat / Sqr(-rat * rat + 1)))
End Function

Function solve(ByVal a As String, ByVal b As String, ByVal c As String) As Boolean

If IsNumeric(a) And IsNumeric(b) And IsNumeric(c) Then
Dim ma, mb, mc, sa, sb, sc, h As Double
' given values
sc = a: ma = b: sb = c
MsgBox (sc & vbTab & ma & vbTab & sb)

'solve triangle values
sa = Sqr(sb ^ 2 + sc ^ 2 - 2 * sb * sc * Cos(rd(ma)))
MsgBox (sa)
mb = asn(sb / (sa * Sin(ma)))
MsgBox ("")
mc = 180 - ma - mb

'display results
aa.Caption = Round(ma, 2)
ab.Caption = Round(mb, 2)
ac.Caption = Round(mc, 2)
la.Caption = Round(sa, 2)
lb.Caption = Round(sb, 2)
lc.Caption = Round(sc, 2)
solve = False
End If

solve = True
End Function


Private Sub Command1_Click()
a = InputBox("enter largest side")
b = InputBox("enter second largest side")
c = InputBox("enter smallest side")
If solve(c, acs((-a ^ 2 + b ^ 2 + c ^ 2) / (2 * b * c)), b) Then: MsgBox ("envalid entry")
End Sub

Private Sub Command2_Click()
Dim p, q, r As Double
x = InputBox("enter first side")
y = InputBox("enter included angle")
z = InputBox("enter second side")
If solve(a, b, c) Then: MsgBox ("envalid entry")
End Sub
