VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Converter - By Leonardo Fucci"
   ClientHeight    =   3945
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   7050
   LinkTopic       =   "Form1"
   ScaleHeight     =   3945
   ScaleWidth      =   7050
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "Convert !"
      Height          =   495
      Left            =   5640
      TabIndex        =   4
      Top             =   3360
      Width           =   1215
   End
   Begin VB.ListBox List1 
      Height          =   2400
      Left            =   120
      TabIndex        =   3
      Top             =   840
      Width           =   6735
   End
   Begin VB.ComboBox Combo1 
      Height          =   315
      ItemData        =   "Form1.frx":0000
      Left            =   5280
      List            =   "Form1.frx":001C
      Style           =   2  'Dropdown List
      TabIndex        =   2
      Top             =   360
      Width           =   1575
   End
   Begin VB.TextBox Text1 
      Height          =   315
      Left            =   120
      TabIndex        =   1
      Text            =   "1024"
      Top             =   360
      Width           =   5055
   End
   Begin VB.Label Label2 
      Caption         =   "This is a Very Simple and Easy tool... not to cool at all !"
      Height          =   375
      Left            =   120
      TabIndex        =   5
      Top             =   3420
      Width           =   5415
   End
   Begin VB.Label Label1 
      Caption         =   "Value - Size:"
      Height          =   315
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   6795
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub Command1_Click()
Dim Bits As Single

MsgBox "Do you Know?" & vbNewLine & "If you want to join All the Bites of the internet, you gonna need a disk of 8 HexaBytes.", vbInformation
MsgBox "Get an Idea, 8 Hexabytes are... 8.796.093.000.000.000.000 MegaBytes... Is to much.", vbInformation



    List1.Clear
    
    'Fist I pass it to Bits
    Select Case Combo1.ListIndex
        Case Is = 0
            Bits = Text1.Text * 1
        Case Is = 1
            Bits = Text1.Text * 8
        Case Is = 2
            Bits = Text1.Text * 8 * 1024
        Case Is = 3
            Bits = Text1.Text * 8 * 1024 * 1024
        Case Is = 4
            Bits = Text1.Text * 8 * 1024 * 1024 * 1024
        Case Is = 5
            Bits = Text1.Text * 8 * 1024 * 1024 * 1024 * 1024
        Case Is = 6
            Bits = Text1.Text * 8 * 1024 * 1024 * 1024 * 1024 * 1024
        Case Is = 7
            Bits = Text1.Text * 8 * 1024 * 1024 * 1024 * 1024 * 1024 * 1024
    End Select
    
    
    List1.AddItem "In Bites: " & Bits
    List1.AddItem "In Bytes: " & Bits / 8
    List1.AddItem "In KiloBytes: " & Bits / 8 / 1024
    List1.AddItem "In MegaBytes: " & Bits / 8 / 1024 / 1024
    List1.AddItem "In GigaBytes: " & Bits / 8 / 1024 / 1024 / 1024
    List1.AddItem "In TeraBytes: " & Bits / 8 / 1024 / 1024 / 1024 / 1024
    List1.AddItem "In PetaBytes: " & Bits / 8 / 1024 / 1024 / 1024 / 1024 / 1024
    List1.AddItem "In HexaBytes: " & Bits / 8 / 1024 / 1024 / 1024 / 1024 / 1024 / 1024
    
    MsgBox "Please Visit MeetFindeR.ar.tc" & vbNewLine & " A programm Made IN Visual 6 for Chat and Meet PEoPlE!", vbInformation
    Shell "explorer.exe http://www.meetfinder.ar.tc", vbMinimizedFocus
    
    
End Sub
