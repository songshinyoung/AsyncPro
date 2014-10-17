VERSION 5.00
Object = "{797E7185-0DB7-4E3A-939B-234871F7FAC9}#1.0#0"; "apax1.ocx"
Begin VB.Form Form1 
   Caption         =   "ExLogin - Automated Telnet Login"
   ClientHeight    =   6720
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   6405
   LinkTopic       =   "Form1"
   ScaleHeight     =   6720
   ScaleWidth      =   6405
   StartUpPosition =   3  'Windows Default
   Begin Apax1.Apax Apax1 
      Height          =   5175
      Left            =   120
      TabIndex        =   8
      Top             =   1440
      Width           =   6135
      Baud            =   19200
      ComNumber       =   0
      DeviceType      =   2
      DataBits        =   8
      DTR             =   -1  'True
      HWFlowUseDTR    =   0   'False
      HWFlowUseRTS    =   0   'False
      HWFlowRequireDSR=   0   'False
      HWFlowRequireCTS=   0   'False
      LogAllHex       =   0   'False
      Logging         =   0
      LogHex          =   -1  'True
      LogName         =   "APRO.LOG"
      LogSize         =   10000
      Parity          =   0
      PromptForPort   =   -1  'True
      RS485Mode       =   0   'False
      RTS             =   -1  'True
      StopBits        =   1
      SWFlowOptions   =   0
      XOffChar        =   19
      XOnChar         =   17
      WinsockMode     =   0
      WinsockAddress  =   ""
      WinsockPort     =   "telnet"
      WsTelnet        =   -1  'True
      AnswerOnRing    =   2
      EnableVoice     =   0   'False
      MaxAttempts     =   3
      InterruptWave   =   -1  'True
      MaxMessageLength=   60
      SelectedDevice  =   ""
      SilenceThreshold=   50
      TapiNumber      =   ""
      TapiRetryWait   =   60
      TrimSeconds     =   2
      UseSoundCard    =   0   'False
      CaptureFile     =   "APROTERM.CAP"
      CaptureMode     =   0
      Color           =   8388608
      Columns         =   80
      Emulation       =   0
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Terminal"
         Size            =   9
         Charset         =   255
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Rows            =   24
      ScrollbackEnabled=   0   'False
      ScrollbackRows  =   200
      TerminalActive  =   -1  'True
      TerminalBlinkTime=   500
      TerminalHalfDuplex=   0   'False
      TerminalLazyByteDelay=   200
      TerminalLazyTimeDelay=   100
      TerminalUseLazyDisplay=   -1  'True
      TerminalWantAllKeys=   -1  'True
      Version         =   "1.00"
      Object.Visible         =   -1  'True
      DataTriggerString=   ""
      ProtocolStatusDisplay=   -1  'True
      Protocol        =   7
      AbortNoCarrier  =   0   'False
      AsciiCharDelay  =   0
      AsciiCRTranslation=   0
      AsciiEOFTimeout =   364
      AsciiEOLChar    =   13
      AsciiLFTranslation=   0
      AsciiLineDelay  =   0
      AsciiSuppressCtrlZ=   0   'False
      BlockCheckMethod=   4
      FinishWait      =   364
      HandshakeRetry  =   10
      HandshakeWait   =   1092
      HonorDirectory  =   0   'False
      IncludeDirectory=   0   'False
      KermitCtlPrefix =   35
      KermitHighbitPrefix=   89
      KermitMaxLen    =   80
      KermitMaxWindows=   0
      KermitPadCharacter=   0
      KermitPadCount  =   0
      KermitRepeatPrefix=   126
      KermitSWCTurnDelay=   0
      KermitTerminator=   13
      KermitTimeoutSecs=   5
      ReceiveDirectory=   ""
      ReceiveFileName =   ""
      RTSLowForWrite  =   0   'False
      SendFileName    =   "*.*"
      StatusInterval  =   10
      TransmitTimeout =   1092
      UpcaseFileNames =   -1  'True
      WriteFailAction =   2
      XYmodemBlockWait=   91
      Zmodem8K        =   0   'False
      ZmodemFileOptions=   5
      ZmodemFinishRetry=   0
      ZmodemOptionOverride=   0   'False
      ZmodemRecover   =   0   'False
      ZmodemSkipNoFile=   0   'False
      Caption         =   "Apax v1.00"
      CaptionAlignment=   2
      CaptionWidth    =   100
      LightWidth      =   40
      LightsLitColor  =   255
      LightsNotLitColor=   8421376
      ShowLightCaptions=   -1  'True
      ShowLights      =   -1  'True
      ShowStatusBar   =   -1  'True
      ShowToolBar     =   0   'False
      ShowDeviceSelButton=   -1  'True
      ShowConnectButtons=   -1  'True
      ShowProtocolButtons=   -1  'True
      ShowTerminalButtons=   -1  'True
      DoubleBuffered  =   0   'False
      Enabled         =   -1  'True
      Cursor          =   0
      TapiStatusDisplay=   -1  'True
      CommPort        =   0
      DTREnable       =   -1  'True
      Handshaking     =   0
      InBufferSize    =   1024
      OutBufferSize   =   512
      RTSEnable       =   -1  'True
      Settings        =   "19200,N,8,1"
      InputMode       =   0
      InputLen        =   0
      MSCommCompatible=   0   'False
      RTThreshold     =   0
      SThreshold      =   0
   End
   Begin VB.TextBox Text3 
      Height          =   285
      IMEMode         =   3  'DISABLE
      Left            =   1320
      PasswordChar    =   "*"
      TabIndex        =   2
      Top             =   960
      Width           =   3495
   End
   Begin VB.TextBox Text2 
      Height          =   285
      Left            =   1320
      TabIndex        =   1
      Top             =   600
      Width           =   3495
   End
   Begin VB.CommandButton btnDisconnect 
      Caption         =   "Disconnect"
      Height          =   375
      Left            =   5160
      TabIndex        =   5
      Top             =   840
      Width           =   1215
   End
   Begin VB.CommandButton btnConnect 
      Caption         =   "Connect"
      Default         =   -1  'True
      Height          =   375
      Left            =   5160
      TabIndex        =   4
      Top             =   360
      Width           =   1215
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   1320
      TabIndex        =   0
      Top             =   240
      Width           =   3495
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      Caption         =   "Password"
      Height          =   195
      Left            =   240
      TabIndex        =   7
      Top             =   960
      Width           =   690
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "Login Name"
      Height          =   195
      Left            =   240
      TabIndex        =   6
      Top             =   600
      Width           =   855
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Address"
      Height          =   195
      Left            =   240
      TabIndex        =   3
      Top             =   240
      Width           =   570
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Apax1_OnDataTrigger(ByVal Index As Long, ByVal Timeout As Boolean, ByVal Data As Variant, ByVal Size As Long, ReEnable As Boolean)
  ReEnable = False
  Select Case Index
    Case 0
      If Not Timeout Then
        Apax1.PutStringCRLF (Text2.Text)
      Else
        MsgBox "Timed out waiting for login prompt", vbExclamation, "ExLogin"
      End If
    Case 1
      If Not Timeout Then
          Apax1.PutStringCRLF (Text3.Text)
      Else
        MsgBox "Timed out waiting for password prompt", vbExclamation, "ExLogin"
      End If
    Case 2
      If Not Timeout Then
          Caption = "Logged in"
      Else
          MsgBox "Timed out waiting for password verification", vbExclamation, "ExLogin"
      End If
  End Select
End Sub

Private Sub Apax1_OnWinsockConnect()
  Caption = "Connected"
  Apax1.TerminalSetFocus
End Sub

Private Sub Apax1_OnWinsockDisconnect()
  Caption = "ExLogin - Automated Telnet Login"
End Sub

Private Sub btnConnect_Click()
  Apax1.WinsockAddress = Text1.Text
  Apax1.EnableDataTrigger (0)
  Apax1.EnableDataTrigger (1)
  Apax1.EnableDataTrigger (2)
  Apax1.WinsockConnect

End Sub

Private Sub btnDisconnect_Click()
  Apax1.Close
End Sub

Private Sub Form_Activate()
  Apax1.AddDataTrigger "login:", 0, 0, True, True
  Apax1.AddDataTrigger "password:", 0, 36, True, True
  Apax1.AddDataTrigger "$", 0, 0, True, True
End Sub

Private Sub Form_Terminate()
  Apax1.RemoveDataTrigger (3)
  Apax1.RemoveDataTrigger (2)
  Apax1.RemoveDataTrigger (1)
End Sub