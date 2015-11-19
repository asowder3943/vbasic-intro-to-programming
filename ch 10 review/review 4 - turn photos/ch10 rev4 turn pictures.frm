VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   7230
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   7515
   LinkTopic       =   "Form1"
   ScaleHeight     =   7230
   ScaleWidth      =   7515
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox Text3 
      BackColor       =   &H8000000E&
      Height          =   285
      Left            =   4230
      TabIndex        =   6
      Text            =   ".5"
      Top             =   5400
      Width           =   615
   End
   Begin VB.TextBox Text2 
      BackColor       =   &H8000000E&
      Height          =   285
      Left            =   5430
      TabIndex        =   4
      Text            =   "1"
      Top             =   4920
      Width           =   615
   End
   Begin VB.TextBox Text1 
      BackColor       =   &H8000000E&
      Height          =   285
      Left            =   3030
      TabIndex        =   2
      Text            =   "3"
      Top             =   4920
      Width           =   615
   End
   Begin VB.Timer Timer2 
      Enabled         =   0   'False
      Interval        =   1
      Left            =   6960
      Top             =   1440
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Show animation"
      Height          =   495
      Left            =   2910
      TabIndex        =   1
      Top             =   4080
      Width           =   1695
   End
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Left            =   6960
      Top             =   720
   End
   Begin VB.PictureBox Picture1 
      AutoRedraw      =   -1  'True
      BackColor       =   &H00FFFFFF&
      Height          =   3615
      Left            =   480
      ScaleHeight     =   3555
      ScaleWidth      =   6315
      TabIndex        =   0
      Top             =   240
      Width           =   6375
      Begin VB.Line Line1 
         BorderColor     =   &H0000C000&
         X1              =   3840
         X2              =   6120
         Y1              =   1560
         Y2              =   360
      End
      Begin VB.Shape Shape2 
         BorderColor     =   &H000000FF&
         Height          =   375
         Left            =   3000
         Shape           =   3  'Circle
         Top             =   2400
         Width           =   1095
      End
      Begin VB.Shape Shape1 
         BorderColor     =   &H00FF0000&
         Height          =   855
         Left            =   960
         Shape           =   3  'Circle
         Top             =   1800
         Width           =   1455
      End
   End
   Begin VB.Label Label3 
      Caption         =   "Green line length"
      Height          =   255
      Left            =   2670
      TabIndex        =   7
      Top             =   5400
      Width           =   1455
   End
   Begin VB.Label Label2 
      Caption         =   "Outer Circle radius"
      Height          =   255
      Left            =   3870
      TabIndex        =   5
      Top             =   4920
      Width           =   1455
   End
   Begin VB.Label Label1 
      Caption         =   "Center Circle Radius"
      Height          =   255
      Left            =   1470
      TabIndex        =   3
      Top             =   4920
      Width           =   1455
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim center(1 To 2), dest(1 To 2), radius, bigrad, lilrad As Long
Dim d, temp, theta, degInc, ltheta, ldegInc, uscale As Double
Const pi = 3.14

Private Sub initVars() '<-sets initial values of variables
    center(1) = Picture1.Width / 2: center(2) = Picture1.Height / 2
    bigrad = Picture1.Height / 4: lilrad = bigrad / 3: radius = bigrad + lilrad: d = lilrad / 2
    degInc = 1: theta = 90: ltheta = 360 - theta: ldegInc = degInc * (bigrad / lilrad + 1)
    Timer1.Interval = bigrad / lilrad
    uscale = lilrad
End Sub

'<object dependant subs>
    Private Sub Form_Load()
        Call initVars
        Call bigcirc(bigrad): Call lilcirc(theta)
        Call Dline(theta, ltheta)
        Call plotGraph(Picture1.Height / lilrad)
    End Sub
    
    Private Sub Command1_Click()
        Timer1.Enabled = Not Timer1.Enabled
        If Timer1.Enabled Then
            Command1.Caption = "stop animation"
        Else
            Command1.Caption = "show animation"
        End If
    End Sub

    Private Sub Text1_Change()
        If IsNumeric(Text1.Text()) Then
            bigrad = Text1.Text: bigrad = bigrad * uscale
            Call reset
        End If
    End Sub
    
    Private Sub Text2_Change()
        If IsNumeric(Text2.Text()) Then
            lilrad = Text2.Text: lilrad = lilrad * uscale
            Call reset
        End If
    End Sub
        
    Private Sub Text3_Change()
        If IsNumeric(Text3.Text()) Then
            d = Text3.Text: d = d * uscale
            Call reset
        End If
    End Sub
    
    Private Sub Timer1_Timer()
        theta = theta + degInc
        Call lilcirc(theta)
        ltheta = ltheta + ldegInc
        Call Dline(theta, ltheta)
        Call fcurve(ltheta)
    End Sub
'</object dependant subs>

'<dest finder subs>
    Private Sub turn(ByVal deg As Double)
        raDeg = deg * pi / 180
        dest(1) = Sin(raDeg) * radius + center(1)
        dest(2) = Cos(raDeg) * radius + center(2)
    End Sub
    
     Private Sub lturn(ByVal deg As Double)
        raDeg = deg * pi / 180
        dest(1) = Sin(raDeg) * d + Shape2.Left + Shape2.Width / 2
        dest(2) = Cos(raDeg) * d + Shape2.Top + Shape2.Height / 2
    End Sub
'</dest finder subs>

'<draws shapes>
    Private Sub bigcirc(ByVal r As Integer)
        'V draws bigcirc V
        Shape1.Width = r * 2: Shape1.Height = Shape1.Width: Shape1.Left = center(1) - r: Shape1.Top = center(2) - r
    End Sub
    
    Private Sub lilcirc(ByVal deg As Double)
        Call turn(deg) '<- sets center of lilcircle
        ' V draws lilcirc V
        Shape2.Width = lilrad * 2: Shape2.Height = Shape2.Width: Shape2.Left = dest(1) - lilrad: Shape2.Top = dest(2) - lilrad
    End Sub
    
    Private Sub Dline(ByVal deg1 As Double, ByVal deg2 As Double)
        Call turn(deg1): Line1.X1 = dest(1): Line1.Y1 = dest(2)
        Call lturn(deg2): Line1.X2 = dest(1): Line1.Y2 = dest(2)
    End Sub
'</draws shapes>

'<Plot subs>
    Private Sub plotGraph(ByVal gdiv As Integer)
        'V draws grey plot lines V
        Debug.Print gdiv
        '^grey plotlines^
        Picture1.Line (Picture1.Width / 2, 0)-(Picture1.Width / 2, Picture1.Height)  '<- y axis
        Picture1.Line (0, Picture1.Height / 2)-(Picture1.Width, Picture1.Height / 2) '<- x axis
    End Sub
        
    Private Sub fcurve(ByVal deg)
        Call lturn(deg): thick = 10
        Picture1.Line (dest(1) - thick, dest(2) - thick)-(dest(1) + thick, dest(2) + thick), vbMagenta, BF
    End Sub
'</Plot subs>

'<other>
    Private Sub reset()
        If Timer1.Enabled Then: Call Command1_Click
        theta = 90: ltheta = 360 - theta
        ldegInc = degInc * (bigrad / lilrad + 1): Timer1.Interval = bigrad / lilrad
        radius = bigrad + lilrad
        Call bigcirc(bigrad): Call lilcirc(theta): Call Dline(theta, ltheta)
        Picture1.Cls: Call plotGraph(Picture1.Height / lilrad)
    End Sub
