VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "hello world international"
   ClientHeight    =   3030
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   4560
   LinkTopic       =   "Form1"
   ScaleHeight     =   3030
   ScaleWidth      =   4560
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "Done"
      Height          =   495
      Left            =   1560
      TabIndex        =   5
      Top             =   2520
      Width           =   1335
   End
   Begin VB.Frame Frame1 
      Caption         =   "slect a language"
      Height          =   975
      Left            =   480
      TabIndex        =   0
      Top             =   1440
      Width           =   3735
      Begin VB.OptionButton Option3 
         Caption         =   "spanish"
         Height          =   255
         Left            =   1440
         TabIndex        =   3
         Top             =   480
         Width           =   855
      End
      Begin VB.OptionButton Option2 
         Caption         =   "french"
         Height          =   255
         Left            =   2520
         TabIndex        =   2
         Top             =   480
         Width           =   855
      End
      Begin VB.OptionButton Option1 
         Caption         =   "english"
         Height          =   255
         Left            =   360
         TabIndex        =   1
         Top             =   480
         Width           =   855
      End
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      Caption         =   "Program"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   975
      Left            =   480
      TabIndex        =   4
      Top             =   240
      Width           =   3735
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Command1_Click()
Unload Me
End Sub

Private Sub Option1_Click()
Label1.Caption = "hello world"
End Sub
Private Sub Option3_Click()
Label1.Caption = "Hola Mundo"
End Sub
Private Sub Option2_Click()
Label1.Caption = "Bonjour le monde!"
End Sub
