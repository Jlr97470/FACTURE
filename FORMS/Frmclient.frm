VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Object = "{C932BA88-4374-101B-A56C-00AA003668DC}#1.1#0"; "MSMASK32.OCX"
Begin VB.Form FrmClient 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "CLIENT"
   ClientHeight    =   8055
   ClientLeft      =   1665
   ClientTop       =   1560
   ClientWidth     =   12765
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   NegotiateMenus  =   0   'False
   ScaleHeight     =   8055
   ScaleWidth      =   12765
   Begin VB.CommandButton cmdButton 
      Caption         =   "IMPRIMER ECHEANCIER"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Index           =   10
      Left            =   11280
      TabIndex        =   77
      Top             =   7440
      Width           =   1455
   End
   Begin VB.CommandButton cmdButton 
      Caption         =   "IMPRIMER AVIS DE PASSAGE"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Index           =   9
      Left            =   9840
      TabIndex        =   76
      Top             =   7440
      Width           =   1455
   End
   Begin VB.CommandButton cmdButton 
      Caption         =   "MODIFIER"
      BeginProperty Font 
         Name            =   "Arial Black"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Index           =   8
      Left            =   8400
      TabIndex        =   75
      Top             =   7440
      Width           =   1455
   End
   Begin VB.Frame FraContrat 
      BackColor       =   &H00C00000&
      Caption         =   "CONTRAT"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   4095
      Left            =   6480
      TabIndex        =   67
      Top             =   3240
      Width           =   6255
      Begin MSMask.MaskEdBox MaskEdBox8 
         Bindings        =   "Frmclient.frx":0000
         DataField       =   "CliConDatePaiment"
         BeginProperty DataFormat 
            Type            =   1
            Format          =   "dd-MM-yyyy"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1036
            SubFormatType   =   3
         EndProperty
         DataMember      =   "DEcmdTableClient"
         DataSource      =   "DEFacture"
         Height          =   285
         Left            =   1080
         TabIndex        =   28
         Top             =   840
         Width           =   1215
         _ExtentX        =   2143
         _ExtentY        =   503
         _Version        =   393216
         MaxLength       =   10
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Palatino Linotype"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Mask            =   "##-##-####"
         PromptChar      =   "_"
      End
      Begin VB.TextBox txtCONTRATPRIX 
         DataField       =   "CliConPrix"
         DataMember      =   "DEcmdTableClient"
         DataSource      =   "DEFacture"
         BeginProperty Font 
            Name            =   "Palatino Linotype"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   4440
         TabIndex        =   30
         Top             =   1320
         Width           =   1095
      End
      Begin VB.TextBox txtCONTRATTVA 
         DataField       =   "CliConTVA"
         DataMember      =   "DEcmdTableClient"
         DataSource      =   "DEFacture"
         BeginProperty Font 
            Name            =   "Palatino Linotype"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   1080
         TabIndex        =   29
         Top             =   1320
         Width           =   615
      End
      Begin VB.TextBox txtCONTRATCOEFFICIENT 
         DataField       =   "CliConCoefficient"
         DataMember      =   "DEcmdTableClient"
         DataSource      =   "DEFacture"
         BeginProperty Font 
            Name            =   "Palatino Linotype"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   4440
         TabIndex        =   27
         Top             =   360
         Width           =   855
      End
      Begin VB.TextBox txtCONTRATTYPE 
         DataField       =   "CliConType"
         DataMember      =   "DEcmdTableClient"
         DataSource      =   "DEFacture"
         BeginProperty Font 
            Name            =   "Palatino Linotype"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   1080
         TabIndex        =   26
         Top             =   345
         Width           =   615
      End
      Begin MSMask.MaskEdBox MaskEdBox9 
         Bindings        =   "Frmclient.frx":001B
         DataField       =   "CliConDateDebut"
         BeginProperty DataFormat 
            Type            =   1
            Format          =   "dd-MM-yyyy"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1036
            SubFormatType   =   3
         EndProperty
         DataMember      =   "DEcmdTableClient"
         DataSource      =   "DEFacture"
         Height          =   285
         Left            =   1080
         TabIndex        =   31
         Top             =   1800
         Width           =   1215
         _ExtentX        =   2143
         _ExtentY        =   503
         _Version        =   393216
         MaxLength       =   10
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Palatino Linotype"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Mask            =   "##-##-####"
         PromptChar      =   "_"
      End
      Begin MSMask.MaskEdBox MaskEdBox10 
         Bindings        =   "Frmclient.frx":0036
         DataField       =   "CliConDateFin"
         BeginProperty DataFormat 
            Type            =   1
            Format          =   "dd-MM-yyyy"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1036
            SubFormatType   =   3
         EndProperty
         DataMember      =   "DEcmdTableClient"
         DataSource      =   "DEFacture"
         Height          =   285
         Left            =   4440
         TabIndex        =   32
         Top             =   1800
         Width           =   1215
         _ExtentX        =   2143
         _ExtentY        =   503
         _Version        =   393216
         MaxLength       =   10
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Palatino Linotype"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Mask            =   "##-##-####"
         PromptChar      =   "_"
      End
      Begin VB.Label lblFieldLabel 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         BackColor       =   &H00C00000&
         Caption         =   "PRIX:"
         BeginProperty Font 
            Name            =   "Palatino Linotype"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H0000FFFF&
         Height          =   240
         Index           =   27
         Left            =   3210
         TabIndex        =   74
         Top             =   1320
         Width           =   450
      End
      Begin VB.Label lblFieldLabel 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         BackColor       =   &H00C00000&
         Caption         =   "FIN:"
         BeginProperty Font 
            Name            =   "Palatino Linotype"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H0000FFFF&
         Height          =   240
         Index           =   25
         Left            =   3240
         TabIndex        =   73
         Top             =   1800
         Width           =   330
      End
      Begin VB.Label lblFieldLabel 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         BackColor       =   &H00C00000&
         Caption         =   "DEBUT:"
         BeginProperty Font 
            Name            =   "Palatino Linotype"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H0000FFFF&
         Height          =   240
         Index           =   24
         Left            =   120
         TabIndex        =   72
         Top             =   1800
         Width           =   645
      End
      Begin VB.Label lblFieldLabel 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         BackColor       =   &H00C00000&
         Caption         =   "TVA:"
         BeginProperty Font 
            Name            =   "Palatino Linotype"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H0000FFFF&
         Height          =   240
         Index           =   23
         Left            =   120
         TabIndex        =   71
         Top             =   1320
         Width           =   435
      End
      Begin VB.Label lblFieldLabel 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         BackColor       =   &H00C00000&
         Caption         =   "PAIEMENT:"
         BeginProperty Font 
            Name            =   "Palatino Linotype"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H0000FFFF&
         Height          =   240
         Index           =   21
         Left            =   120
         TabIndex        =   70
         Top             =   840
         Width           =   990
      End
      Begin VB.Label lblFieldLabel 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         BackColor       =   &H00C00000&
         Caption         =   "COEFFICIENT:"
         BeginProperty Font 
            Name            =   "Palatino Linotype"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H0000FFFF&
         Height          =   240
         Index           =   20
         Left            =   3135
         TabIndex        =   69
         Top             =   360
         Width           =   1185
      End
      Begin VB.Label lblFieldLabel 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         BackColor       =   &H00C00000&
         Caption         =   "TYPE:"
         BeginProperty Font 
            Name            =   "Palatino Linotype"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H0000FFFF&
         Height          =   240
         Index           =   19
         Left            =   90
         TabIndex        =   68
         Top             =   360
         Width           =   495
      End
   End
   Begin VB.Frame FraChaudiere 
      BackColor       =   &H00C00000&
      Caption         =   "CHAUDIERE"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   1695
      Left            =   6480
      TabIndex        =   60
      Top             =   1440
      Width           =   6255
      Begin VB.TextBox txtCHAUDIEREPUISSANCE 
         DataField       =   "CliChdPuissance"
         DataMember      =   "DEcmdTableClient"
         DataSource      =   "DEFacture"
         BeginProperty Font 
            Name            =   "Palatino Linotype"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   1080
         TabIndex        =   66
         Top             =   1320
         Width           =   615
      End
      Begin VB.TextBox txtCHAUDIERETYPE 
         DataField       =   "CliChdIdentification"
         DataMember      =   "DEcmdTableClient"
         DataSource      =   "DEFacture"
         BeginProperty Font 
            Name            =   "Palatino Linotype"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   4440
         TabIndex        =   25
         Top             =   960
         Width           =   1215
      End
      Begin VB.TextBox txtCHAUDIEREGAZ 
         DataField       =   "CliChdGaz"
         DataMember      =   "DEcmdTableClient"
         DataSource      =   "DEFacture"
         BeginProperty Font 
            Name            =   "Palatino Linotype"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   1080
         TabIndex        =   24
         Top             =   960
         Width           =   615
      End
      Begin VB.TextBox txtCHAUDIEREMARQUE 
         DataField       =   "CliChdMarque"
         DataMember      =   "DEcmdTableClient"
         DataSource      =   "DEFacture"
         BeginProperty Font 
            Name            =   "Palatino Linotype"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   1080
         TabIndex        =   22
         Top             =   210
         Width           =   3735
      End
      Begin MSMask.MaskEdBox MaskEdBox7 
         Bindings        =   "Frmclient.frx":0051
         DataField       =   "CliChdRef"
         DataMember      =   "DEcmdTableClient"
         DataSource      =   "DEFacture"
         Height          =   285
         Left            =   1080
         TabIndex        =   23
         Top             =   600
         Width           =   1770
         _ExtentX        =   3122
         _ExtentY        =   503
         _Version        =   393216
         PromptInclude   =   0   'False
         MaxLength       =   7
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Palatino Linotype"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Mask            =   "#######"
         PromptChar      =   "_"
      End
      Begin VB.Label lblFieldLabel 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         BackColor       =   &H00C00000&
         Caption         =   "PUISSANCE:"
         BeginProperty Font 
            Name            =   "Palatino Linotype"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H0000FFFF&
         Height          =   240
         Index           =   18
         Left            =   30
         TabIndex        =   65
         Top             =   1320
         Width           =   1050
      End
      Begin VB.Label lblFieldLabel 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         BackColor       =   &H00C00000&
         Caption         =   "TYPE:"
         BeginProperty Font 
            Name            =   "Palatino Linotype"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H0000FFFF&
         Height          =   240
         Index           =   17
         Left            =   3810
         TabIndex        =   64
         Top             =   960
         Width           =   495
      End
      Begin VB.Label lblFieldLabel 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         BackColor       =   &H00C00000&
         Caption         =   "GAZ:"
         BeginProperty Font 
            Name            =   "Palatino Linotype"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H0000FFFF&
         Height          =   240
         Index           =   16
         Left            =   75
         TabIndex        =   63
         Top             =   960
         Width           =   420
      End
      Begin VB.Label lblFieldLabel 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         BackColor       =   &H00C00000&
         Caption         =   "MARQUE:"
         BeginProperty Font 
            Name            =   "Palatino Linotype"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H0000FFFF&
         Height          =   240
         Index           =   10
         Left            =   45
         TabIndex        =   62
         Top             =   240
         Width           =   825
      End
      Begin VB.Label lblFieldLabel 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         BackColor       =   &H00C00000&
         Caption         =   "N°:"
         BeginProperty Font 
            Name            =   "Palatino Linotype"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H0000FFFF&
         Height          =   240
         Index           =   9
         Left            =   105
         TabIndex        =   61
         Top             =   600
         Width           =   240
      End
   End
   Begin VB.Frame FraLocation 
      BackColor       =   &H00C00000&
      Caption         =   "LOCALISATION"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   1335
      Left            =   6480
      TabIndex        =   44
      Top             =   0
      Width           =   6255
      Begin VB.TextBox txtLOCALISATIONDIGICODE 
         DataField       =   "CliDigicode"
         DataMember      =   "DEcmdTableClient"
         DataSource      =   "DEFacture"
         BeginProperty Font 
            Name            =   "Palatino Linotype"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   4440
         TabIndex        =   21
         Top             =   855
         Width           =   1095
      End
      Begin VB.TextBox txtLOCALISATIONPORTE 
         DataField       =   "CliPorte"
         DataMember      =   "DEcmdTableClient"
         DataSource      =   "DEFacture"
         BeginProperty Font 
            Name            =   "Palatino Linotype"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   1080
         TabIndex        =   20
         Top             =   840
         Width           =   615
      End
      Begin VB.TextBox txtLOCALISATIONETAGE 
         DataField       =   "CliEtage"
         DataMember      =   "DEcmdTableClient"
         DataSource      =   "DEFacture"
         BeginProperty Font 
            Name            =   "Palatino Linotype"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   4440
         TabIndex        =   19
         Top             =   360
         Width           =   615
      End
      Begin VB.TextBox txtLOCALISATIONESC 
         DataField       =   "CliEscalier"
         DataMember      =   "DEcmdTableClient"
         DataSource      =   "DEFacture"
         BeginProperty Font 
            Name            =   "Palatino Linotype"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   2640
         TabIndex        =   18
         Top             =   360
         Width           =   615
      End
      Begin VB.TextBox txtLOCALISATIONBATIMENT 
         DataField       =   "CliBatiment"
         DataMember      =   "DEcmdTableClient"
         DataSource      =   "DEFacture"
         BeginProperty Font 
            Name            =   "Palatino Linotype"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   1080
         TabIndex        =   17
         Top             =   360
         Width           =   615
      End
      Begin VB.Label lblFieldLabel 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         BackColor       =   &H00C00000&
         Caption         =   "DIGICODE:"
         BeginProperty Font 
            Name            =   "Palatino Linotype"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H0000FFFF&
         Height          =   240
         Index           =   15
         Left            =   3450
         TabIndex        =   49
         Top             =   900
         Width           =   930
      End
      Begin VB.Label lblFieldLabel 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         BackColor       =   &H00C00000&
         Caption         =   "PORTE:"
         BeginProperty Font 
            Name            =   "Palatino Linotype"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H0000FFFF&
         Height          =   240
         Index           =   14
         Left            =   375
         TabIndex        =   48
         Top             =   885
         Width           =   645
      End
      Begin VB.Label lblFieldLabel 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         BackColor       =   &H00C00000&
         Caption         =   "ETAGE:"
         BeginProperty Font 
            Name            =   "Palatino Linotype"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H0000FFFF&
         Height          =   240
         Index           =   13
         Left            =   3735
         TabIndex        =   47
         Top             =   375
         Width           =   645
      End
      Begin VB.Label lblFieldLabel 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         BackColor       =   &H00C00000&
         Caption         =   "ESC:"
         BeginProperty Font 
            Name            =   "Palatino Linotype"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H0000FFFF&
         Height          =   240
         Index           =   12
         Left            =   2205
         TabIndex        =   46
         Top             =   360
         Width           =   375
      End
      Begin VB.Label lblFieldLabel 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         BackColor       =   &H00C00000&
         Caption         =   "BATIMENT:"
         BeginProperty Font 
            Name            =   "Palatino Linotype"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H0000FFFF&
         Height          =   240
         Index           =   11
         Left            =   120
         TabIndex        =   45
         Top             =   345
         Width           =   1005
      End
   End
   Begin MSDataGridLib.DataGrid DataGridClient 
      Bindings        =   "Frmclient.frx":006C
      Height          =   3015
      Left            =   0
      TabIndex        =   43
      Top             =   4320
      Width           =   6375
      _ExtentX        =   11245
      _ExtentY        =   5318
      _Version        =   393216
      BackColor       =   16777215
      HeadLines       =   1
      RowHeight       =   20
      FormatLocked    =   -1  'True
      BeginProperty HeadFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Palatino Linotype"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      DataMember      =   "DEcmdTableClient"
      ColumnCount     =   54
      BeginProperty Column00 
         DataField       =   "CliNum"
         Caption         =   "CliNum"
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1036
            SubFormatType   =   0
         EndProperty
      EndProperty
      BeginProperty Column01 
         DataField       =   "CliCode"
         Caption         =   "CliCode"
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1036
            SubFormatType   =   0
         EndProperty
      EndProperty
      BeginProperty Column02 
         DataField       =   "CliDateCre"
         Caption         =   "CliDateCre"
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1036
            SubFormatType   =   0
         EndProperty
      EndProperty
      BeginProperty Column03 
         DataField       =   "CliDateMaj"
         Caption         =   "CliDateMaj"
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1036
            SubFormatType   =   0
         EndProperty
      EndProperty
      BeginProperty Column04 
         DataField       =   "CliCivCode"
         Caption         =   "CliCivCode"
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1036
            SubFormatType   =   0
         EndProperty
      EndProperty
      BeginProperty Column05 
         DataField       =   "CliNom"
         Caption         =   "CliNom"
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1036
            SubFormatType   =   0
         EndProperty
      EndProperty
      BeginProperty Column06 
         DataField       =   "CliPrenom"
         Caption         =   "CliPrenom"
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1036
            SubFormatType   =   0
         EndProperty
      EndProperty
      BeginProperty Column07 
         DataField       =   "CliAdresse"
         Caption         =   "CliAdresse"
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1036
            SubFormatType   =   0
         EndProperty
      EndProperty
      BeginProperty Column08 
         DataField       =   "CliVilNum"
         Caption         =   "CliVilNum"
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1036
            SubFormatType   =   0
         EndProperty
      EndProperty
      BeginProperty Column09 
         DataField       =   "CliNote"
         Caption         =   "CliNote"
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1036
            SubFormatType   =   0
         EndProperty
      EndProperty
      BeginProperty Column10 
         DataField       =   "CliTel1Libelle"
         Caption         =   "CliTel1Libelle"
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1036
            SubFormatType   =   0
         EndProperty
      EndProperty
      BeginProperty Column11 
         DataField       =   "CliTel1"
         Caption         =   "CliTel1"
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1036
            SubFormatType   =   0
         EndProperty
      EndProperty
      BeginProperty Column12 
         DataField       =   "CliTel2Libelle"
         Caption         =   "CliTel2Libelle"
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1036
            SubFormatType   =   0
         EndProperty
      EndProperty
      BeginProperty Column13 
         DataField       =   "CliTel2"
         Caption         =   "CliTel2"
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1036
            SubFormatType   =   0
         EndProperty
      EndProperty
      BeginProperty Column14 
         DataField       =   "CliBatiment"
         Caption         =   "CliBatiment"
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1036
            SubFormatType   =   0
         EndProperty
      EndProperty
      BeginProperty Column15 
         DataField       =   "CliEscalier"
         Caption         =   "CliEscalier"
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1036
            SubFormatType   =   0
         EndProperty
      EndProperty
      BeginProperty Column16 
         DataField       =   "CliEtage"
         Caption         =   "CliEtage"
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1036
            SubFormatType   =   0
         EndProperty
      EndProperty
      BeginProperty Column17 
         DataField       =   "CliPorte"
         Caption         =   "CliPorte"
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1036
            SubFormatType   =   0
         EndProperty
      EndProperty
      BeginProperty Column18 
         DataField       =   "CliDigicode"
         Caption         =   "CliDigicode"
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1036
            SubFormatType   =   0
         EndProperty
      EndProperty
      BeginProperty Column19 
         DataField       =   "CliSousCivCode"
         Caption         =   "CliSousCivCode"
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1036
            SubFormatType   =   0
         EndProperty
      EndProperty
      BeginProperty Column20 
         DataField       =   "CliSousNom"
         Caption         =   "CliSousNom"
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1036
            SubFormatType   =   0
         EndProperty
      EndProperty
      BeginProperty Column21 
         DataField       =   "CliSousPrenom"
         Caption         =   "CliSousPrenom"
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1036
            SubFormatType   =   0
         EndProperty
      EndProperty
      BeginProperty Column22 
         DataField       =   "CliSousAdresse"
         Caption         =   "CliSousAdresse"
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1036
            SubFormatType   =   0
         EndProperty
      EndProperty
      BeginProperty Column23 
         DataField       =   "CliSousVilNum"
         Caption         =   "CliSousVilNum"
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1036
            SubFormatType   =   0
         EndProperty
      EndProperty
      BeginProperty Column24 
         DataField       =   "CliSousNote"
         Caption         =   "CliSousNote"
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1036
            SubFormatType   =   0
         EndProperty
      EndProperty
      BeginProperty Column25 
         DataField       =   "CliSousTel1"
         Caption         =   "CliSousTel1"
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1036
            SubFormatType   =   0
         EndProperty
      EndProperty
      BeginProperty Column26 
         DataField       =   "CliSousTel1Libelle"
         Caption         =   "CliSousTel1Libelle"
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1036
            SubFormatType   =   0
         EndProperty
      EndProperty
      BeginProperty Column27 
         DataField       =   "CliSousTel2"
         Caption         =   "CliSousTel2"
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1036
            SubFormatType   =   0
         EndProperty
      EndProperty
      BeginProperty Column28 
         DataField       =   "CliSousTel2Libelle"
         Caption         =   "CliSousTel2Libelle"
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1036
            SubFormatType   =   0
         EndProperty
      EndProperty
      BeginProperty Column29 
         DataField       =   "CliChdNum"
         Caption         =   "CliChdNum"
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1036
            SubFormatType   =   0
         EndProperty
      EndProperty
      BeginProperty Column30 
         DataField       =   "CliChdCliNum"
         Caption         =   "CliChdCliNum"
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1036
            SubFormatType   =   0
         EndProperty
      EndProperty
      BeginProperty Column31 
         DataField       =   "CliChdRef"
         Caption         =   "CliChdRef"
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1036
            SubFormatType   =   0
         EndProperty
      EndProperty
      BeginProperty Column32 
         DataField       =   "CliChdDateServ"
         Caption         =   "CliChdDateServ"
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1036
            SubFormatType   =   0
         EndProperty
      EndProperty
      BeginProperty Column33 
         DataField       =   "CliChdGaz"
         Caption         =   "CliChdGaz"
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1036
            SubFormatType   =   0
         EndProperty
      EndProperty
      BeginProperty Column34 
         DataField       =   "CliChdIdentification"
         Caption         =   "CliChdIdentification"
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1036
            SubFormatType   =   0
         EndProperty
      EndProperty
      BeginProperty Column35 
         DataField       =   "CliChdMarque"
         Caption         =   "CliChdMarque"
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1036
            SubFormatType   =   0
         EndProperty
      EndProperty
      BeginProperty Column36 
         DataField       =   "CliChdPuissance"
         Caption         =   "CliChdPuissance"
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1036
            SubFormatType   =   0
         EndProperty
      EndProperty
      BeginProperty Column37 
         DataField       =   "CliChdRemarque"
         Caption         =   "CliChdRemarque"
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1036
            SubFormatType   =   0
         EndProperty
      EndProperty
      BeginProperty Column38 
         DataField       =   "CliChdActif"
         Caption         =   "CliChdActif"
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1036
            SubFormatType   =   0
         EndProperty
      EndProperty
      BeginProperty Column39 
         DataField       =   "CliConNum"
         Caption         =   "CliConNum"
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1036
            SubFormatType   =   0
         EndProperty
      EndProperty
      BeginProperty Column40 
         DataField       =   "CliConCliNum"
         Caption         =   "CliConCliNum"
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1036
            SubFormatType   =   0
         EndProperty
      EndProperty
      BeginProperty Column41 
         DataField       =   "CliConDateDebut"
         Caption         =   "CliConDateDebut"
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1036
            SubFormatType   =   0
         EndProperty
      EndProperty
      BeginProperty Column42 
         DataField       =   "CliConDateFin"
         Caption         =   "CliConDateFin"
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1036
            SubFormatType   =   0
         EndProperty
      EndProperty
      BeginProperty Column43 
         DataField       =   "CliConDatePaiment"
         Caption         =   "CliConDatePaiment"
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1036
            SubFormatType   =   0
         EndProperty
      EndProperty
      BeginProperty Column44 
         DataField       =   "CliConType"
         Caption         =   "CliConType"
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1036
            SubFormatType   =   0
         EndProperty
      EndProperty
      BeginProperty Column45 
         DataField       =   "CliConCoefficient"
         Caption         =   "CliConCoefficient"
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1036
            SubFormatType   =   0
         EndProperty
      EndProperty
      BeginProperty Column46 
         DataField       =   "CliConPrixHT"
         Caption         =   "CliConPrixHT"
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1036
            SubFormatType   =   0
         EndProperty
      EndProperty
      BeginProperty Column47 
         DataField       =   "CliConTVA"
         Caption         =   "CliConTVA"
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1036
            SubFormatType   =   0
         EndProperty
      EndProperty
      BeginProperty Column48 
         DataField       =   "CliConPrix"
         Caption         =   "CliConPrix"
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1036
            SubFormatType   =   0
         EndProperty
      EndProperty
      BeginProperty Column49 
         DataField       =   "CliConActif"
         Caption         =   "CliConActif"
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1036
            SubFormatType   =   0
         EndProperty
      EndProperty
      BeginProperty Column50 
         DataField       =   "CliVilNom"
         Caption         =   "CliVilNom"
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1036
            SubFormatType   =   0
         EndProperty
      EndProperty
      BeginProperty Column51 
         DataField       =   "CliVilCodePostal"
         Caption         =   "CliVilCodePostal"
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1036
            SubFormatType   =   0
         EndProperty
      EndProperty
      BeginProperty Column52 
         DataField       =   "CliSousVilNom"
         Caption         =   "CliSousVilNom"
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1036
            SubFormatType   =   0
         EndProperty
      EndProperty
      BeginProperty Column53 
         DataField       =   "CliSousVilCodePostal"
         Caption         =   "CliSousVilCodePostal"
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1036
            SubFormatType   =   0
         EndProperty
      EndProperty
      SplitCount      =   1
      BeginProperty Split0 
         AllowFocus      =   0   'False
         BeginProperty Column00 
            ColumnWidth     =   915,024
         EndProperty
         BeginProperty Column01 
            ColumnWidth     =   840,189
         EndProperty
         BeginProperty Column02 
            ColumnWidth     =   1739,906
         EndProperty
         BeginProperty Column03 
            ColumnWidth     =   1739,906
         EndProperty
         BeginProperty Column04 
            ColumnWidth     =   854,929
         EndProperty
         BeginProperty Column05 
            ColumnWidth     =   1739,906
         EndProperty
         BeginProperty Column06 
            ColumnWidth     =   1739,906
         EndProperty
         BeginProperty Column07 
            ColumnWidth     =   1739,906
         EndProperty
         BeginProperty Column08 
            ColumnWidth     =   915,024
         EndProperty
         BeginProperty Column09 
            ColumnWidth     =   1739,906
         EndProperty
         BeginProperty Column10 
            ColumnWidth     =   1739,906
         EndProperty
         BeginProperty Column11 
            ColumnWidth     =   1140,095
         EndProperty
         BeginProperty Column12 
            ColumnWidth     =   1739,906
         EndProperty
         BeginProperty Column13 
            ColumnWidth     =   1140,095
         EndProperty
         BeginProperty Column14 
            ColumnWidth     =   1140,095
         EndProperty
         BeginProperty Column15 
            ColumnWidth     =   810,142
         EndProperty
         BeginProperty Column16 
            ColumnWidth     =   764,787
         EndProperty
         BeginProperty Column17 
            ColumnWidth     =   1140,095
         EndProperty
         BeginProperty Column18 
            ColumnWidth     =   1739,906
         EndProperty
         BeginProperty Column19 
            ColumnWidth     =   1214,929
         EndProperty
         BeginProperty Column20 
            ColumnWidth     =   1739,906
         EndProperty
         BeginProperty Column21 
            ColumnWidth     =   1739,906
         EndProperty
         BeginProperty Column22 
            ColumnWidth     =   1739,906
         EndProperty
         BeginProperty Column23 
            ColumnWidth     =   1170,142
         EndProperty
         BeginProperty Column24 
            ColumnWidth     =   1739,906
         EndProperty
         BeginProperty Column25 
            ColumnWidth     =   1140,095
         EndProperty
         BeginProperty Column26 
            ColumnWidth     =   1739,906
         EndProperty
         BeginProperty Column27 
            ColumnWidth     =   1140,095
         EndProperty
         BeginProperty Column28 
            ColumnWidth     =   1739,906
         EndProperty
         BeginProperty Column29 
            ColumnWidth     =   915,024
         EndProperty
         BeginProperty Column30 
            ColumnWidth     =   1094,74
         EndProperty
         BeginProperty Column31 
            ColumnWidth     =   1440
         EndProperty
         BeginProperty Column32 
            ColumnWidth     =   1739,906
         EndProperty
         BeginProperty Column33 
            ColumnWidth     =   1739,906
         EndProperty
         BeginProperty Column34 
            ColumnWidth     =   1739,906
         EndProperty
         BeginProperty Column35 
            ColumnWidth     =   1739,906
         EndProperty
         BeginProperty Column36 
            ColumnWidth     =   1275,024
         EndProperty
         BeginProperty Column37 
            ColumnWidth     =   1739,906
         EndProperty
         BeginProperty Column38 
            ColumnWidth     =   900,284
         EndProperty
         BeginProperty Column39 
            ColumnWidth     =   915,024
         EndProperty
         BeginProperty Column40 
            ColumnWidth     =   1094,74
         EndProperty
         BeginProperty Column41 
            ColumnWidth     =   1739,906
         EndProperty
         BeginProperty Column42 
            ColumnWidth     =   1739,906
         EndProperty
         BeginProperty Column43 
            ColumnWidth     =   1739,906
         EndProperty
         BeginProperty Column44 
            ColumnWidth     =   1739,906
         EndProperty
         BeginProperty Column45 
            ColumnWidth     =   1349,858
         EndProperty
         BeginProperty Column46 
            ColumnWidth     =   1739,906
         EndProperty
         BeginProperty Column47 
            ColumnWidth     =   1739,906
         EndProperty
         BeginProperty Column48 
            ColumnWidth     =   1739,906
         EndProperty
         BeginProperty Column49 
            ColumnWidth     =   900,284
         EndProperty
         BeginProperty Column50 
            ColumnWidth     =   1739,906
         EndProperty
         BeginProperty Column51 
            ColumnWidth     =   1319,811
         EndProperty
         BeginProperty Column52 
            ColumnWidth     =   1739,906
         EndProperty
         BeginProperty Column53 
            ColumnWidth     =   1679,811
         EndProperty
      EndProperty
   End
   Begin VB.Frame FraClient 
      BackColor       =   &H00C00000&
      Caption         =   "CLIENT"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   4215
      Left            =   0
      TabIndex        =   39
      Top             =   0
      Width           =   6375
      Begin MSMask.MaskEdBox MaskEdBox6 
         Bindings        =   "Frmclient.frx":0084
         DataField       =   "CliSousTel2"
         DataMember      =   "DEcmdTableClient"
         DataSource      =   "DEFacture"
         Height          =   285
         Left            =   3840
         TabIndex        =   16
         Top             =   3840
         Width           =   2265
         _ExtentX        =   3995
         _ExtentY        =   503
         _Version        =   393216
         ClipMode        =   1
         PromptInclude   =   0   'False
         MaxLength       =   14
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Palatino Linotype"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Mask            =   "##-##-##-##-##"
         PromptChar      =   "_"
      End
      Begin MSMask.MaskEdBox MaskEdBox5 
         Bindings        =   "Frmclient.frx":009F
         DataField       =   "CliSousTel1"
         DataMember      =   "DEcmdTableClient"
         DataSource      =   "DEFacture"
         Height          =   285
         Left            =   3840
         TabIndex        =   14
         Top             =   3480
         Width           =   2265
         _ExtentX        =   3995
         _ExtentY        =   503
         _Version        =   393216
         ClipMode        =   1
         PromptInclude   =   0   'False
         MaxLength       =   14
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Palatino Linotype"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Mask            =   "##-##-##-##-##"
         PromptChar      =   "_"
      End
      Begin MSMask.MaskEdBox MaskEdBox3 
         Bindings        =   "Frmclient.frx":00BA
         DataField       =   "CliTel2"
         BeginProperty DataFormat 
            Type            =   0
            Format          =   "##-##-##-##-##"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1036
            SubFormatType   =   0
         EndProperty
         DataMember      =   "DEcmdTableClient"
         DataSource      =   "DEFacture"
         Height          =   285
         Left            =   1320
         TabIndex        =   15
         Top             =   3840
         Width           =   2265
         _ExtentX        =   3995
         _ExtentY        =   503
         _Version        =   393216
         ClipMode        =   1
         PromptInclude   =   0   'False
         MaxLength       =   14
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Palatino Linotype"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Mask            =   "##-##-##-##-##"
         PromptChar      =   "_"
      End
      Begin MSMask.MaskEdBox MaskEdBox2 
         Bindings        =   "Frmclient.frx":00D5
         DataField       =   "CliSousTel1"
         BeginProperty DataFormat 
            Type            =   0
            Format          =   "##-##-##-##-##"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1036
            SubFormatType   =   0
         EndProperty
         DataMember      =   "DEcmdTableClient"
         DataSource      =   "DEFacture"
         Height          =   285
         Left            =   1320
         TabIndex        =   13
         Top             =   3480
         Width           =   2265
         _ExtentX        =   3995
         _ExtentY        =   503
         _Version        =   393216
         ClipMode        =   1
         PromptInclude   =   0   'False
         MaxLength       =   14
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Palatino Linotype"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Mask            =   "##-##-##-##-##"
         PromptChar      =   "_"
      End
      Begin MSMask.MaskEdBox MaskEdBox1 
         Bindings        =   "Frmclient.frx":00F0
         DataField       =   "CliVilCodePostal"
         BeginProperty DataFormat 
            Type            =   0
            Format          =   "#####"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1036
            SubFormatType   =   0
         EndProperty
         DataMember      =   "DEcmdTableClient"
         DataSource      =   "DEFacture"
         Height          =   285
         Left            =   1320
         TabIndex        =   9
         Top             =   2520
         Width           =   2265
         _ExtentX        =   3995
         _ExtentY        =   503
         _Version        =   393216
         PromptInclude   =   0   'False
         MaxLength       =   5
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Palatino Linotype"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Mask            =   "#####"
         PromptChar      =   "_"
      End
      Begin VB.TextBox txtSOUSCRIPTEURNOTE 
         DataField       =   "CliSousNote"
         DataMember      =   "DEcmdTableClient"
         DataSource      =   "DEFacture"
         BeginProperty Font 
            Name            =   "Palatino Linotype"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   525
         Left            =   3840
         TabIndex        =   12
         Top             =   2880
         Width           =   2265
      End
      Begin VB.TextBox txtUTILISATEURNOTE 
         DataField       =   "CliNote"
         DataMember      =   "DEcmdTableClient"
         DataSource      =   "DEFacture"
         BeginProperty Font 
            Name            =   "Palatino Linotype"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   525
         Left            =   1320
         TabIndex        =   11
         Top             =   2880
         Width           =   2265
      End
      Begin VB.TextBox txtSOUSCRIPTEURVILLE 
         DataField       =   "CliSousVilNom"
         DataMember      =   "DEcmdTableClient"
         DataSource      =   "DEFacture"
         BeginProperty Font 
            Name            =   "Palatino Linotype"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   3840
         TabIndex        =   8
         Top             =   2160
         Width           =   2265
      End
      Begin VB.TextBox txtUTILISATEURVILLE 
         DataField       =   "CliVilNom"
         DataMember      =   "DEcmdTableClient"
         DataSource      =   "DEFacture"
         BeginProperty Font 
            Name            =   "Palatino Linotype"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   1320
         TabIndex        =   7
         Top             =   2160
         Width           =   2265
      End
      Begin VB.TextBox txtSOUSCRIPTEURADRESSE 
         DataField       =   "CliSousAdresse"
         DataMember      =   "DEcmdTableClient"
         DataSource      =   "DEFacture"
         BeginProperty Font 
            Name            =   "Palatino Linotype"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   3840
         TabIndex        =   6
         Top             =   1800
         Width           =   2265
      End
      Begin VB.TextBox txtUTILISATEURADRESSE 
         DataField       =   "CliAdresse"
         DataMember      =   "DEcmdTableClient"
         DataSource      =   "DEFacture"
         BeginProperty Font 
            Name            =   "Palatino Linotype"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   1320
         TabIndex        =   5
         Top             =   1800
         Width           =   2265
      End
      Begin VB.TextBox txtSOUSCRIPTEURPRENOM 
         DataField       =   "CliSousPrenom"
         DataMember      =   "DEcmdTableClient"
         DataSource      =   "DEFacture"
         BeginProperty Font 
            Name            =   "Palatino Linotype"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   3840
         TabIndex        =   4
         Top             =   1440
         Width           =   2265
      End
      Begin VB.TextBox txtUTILISATEURPRENOM 
         DataField       =   "CliPrenom"
         DataMember      =   "DEcmdTableClient"
         DataSource      =   "DEFacture"
         BeginProperty Font 
            Name            =   "Palatino Linotype"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   1320
         TabIndex        =   3
         Top             =   1440
         Width           =   2265
      End
      Begin VB.TextBox txtSOUSCRIPTEURNOM 
         DataField       =   "CliSousNom"
         DataMember      =   "DEcmdTableClient"
         DataSource      =   "DEFacture"
         BeginProperty Font 
            Name            =   "Palatino Linotype"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   3840
         TabIndex        =   2
         Top             =   1080
         Width           =   2265
      End
      Begin VB.TextBox txtUTILISATEURNOM 
         DataField       =   "CliNom"
         DataMember      =   "DEcmdTableClient"
         DataSource      =   "DEFacture"
         BeginProperty Font 
            Name            =   "Palatino Linotype"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   1320
         TabIndex        =   1
         Top             =   1080
         Width           =   2265
      End
      Begin MSMask.MaskEdBox ctlCLIENTNUMERO 
         Bindings        =   "Frmclient.frx":013A
         DataField       =   "CliNum"
         DataMember      =   "DEcmdTableClient"
         DataSource      =   "DEFacture"
         Height          =   285
         Left            =   1320
         TabIndex        =   0
         Top             =   240
         Width           =   900
         _ExtentX        =   1588
         _ExtentY        =   503
         _Version        =   393216
         PromptInclude   =   0   'False
         MaxLength       =   7
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Palatino Linotype"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Mask            =   "#######"
         PromptChar      =   "_"
      End
      Begin MSMask.MaskEdBox MaskEdBox4 
         Bindings        =   "Frmclient.frx":0155
         DataField       =   "CliSousVilCodePostal"
         BeginProperty DataFormat 
            Type            =   0
            Format          =   "#####"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1036
            SubFormatType   =   0
         EndProperty
         DataMember      =   "DEcmdTableClient"
         DataSource      =   "DEFacture"
         Height          =   285
         Left            =   3840
         TabIndex        =   10
         Top             =   2520
         Width           =   2265
         _ExtentX        =   3995
         _ExtentY        =   503
         _Version        =   393216
         PromptInclude   =   0   'False
         MaxLength       =   5
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Palatino Linotype"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Mask            =   "#####"
         PromptChar      =   "_"
      End
      Begin VB.Label Label2 
         BackColor       =   &H00C00000&
         Caption         =   "SOUSCRIPTEUR"
         BeginProperty Font 
            Name            =   "Palatino Linotype"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H0000FFFF&
         Height          =   255
         Left            =   3840
         TabIndex        =   59
         Top             =   720
         Width           =   2295
      End
      Begin VB.Label Label1 
         BackColor       =   &H00C00000&
         Caption         =   "UTILISATEUR"
         BeginProperty Font 
            Name            =   "Palatino Linotype"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H0000FFFF&
         Height          =   255
         Left            =   1440
         TabIndex        =   58
         Top             =   720
         Width           =   2055
      End
      Begin VB.Label lblFieldLabel 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         BackColor       =   &H00C00000&
         Caption         =   "TEL.DOM:"
         BeginProperty Font 
            Name            =   "Palatino Linotype"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H0000FFFF&
         Height          =   240
         Index           =   8
         Left            =   120
         TabIndex        =   57
         Top             =   3840
         Width           =   855
      End
      Begin VB.Label lblFieldLabel 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         BackColor       =   &H00C00000&
         Caption         =   "TEL.BUR:"
         BeginProperty Font 
            Name            =   "Palatino Linotype"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H0000FFFF&
         Height          =   240
         Index           =   7
         Left            =   120
         TabIndex        =   56
         Top             =   3480
         Width           =   780
      End
      Begin VB.Label lblFieldLabel 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         BackColor       =   &H00C00000&
         Caption         =   "NOTE:"
         BeginProperty Font 
            Name            =   "Palatino Linotype"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H0000FFFF&
         Height          =   240
         Index           =   6
         Left            =   120
         TabIndex        =   55
         Top             =   2880
         Width           =   540
      End
      Begin VB.Label lblFieldLabel 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         BackColor       =   &H00C00000&
         Caption         =   "CODEPOSTAL:"
         BeginProperty Font 
            Name            =   "Palatino Linotype"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H0000FFFF&
         Height          =   240
         Index           =   5
         Left            =   120
         TabIndex        =   54
         Top             =   2520
         Width           =   1260
      End
      Begin VB.Label lblFieldLabel 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         BackColor       =   &H00C00000&
         Caption         =   "VILLE:"
         BeginProperty Font 
            Name            =   "Palatino Linotype"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H0000FFFF&
         Height          =   240
         Index           =   4
         Left            =   120
         TabIndex        =   53
         Top             =   2160
         Width           =   555
      End
      Begin VB.Label lblFieldLabel 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         BackColor       =   &H00C00000&
         Caption         =   "ADRESSE:"
         BeginProperty Font 
            Name            =   "Palatino Linotype"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H0000FFFF&
         Height          =   240
         Index           =   3
         Left            =   75
         TabIndex        =   52
         Top             =   1800
         Width           =   855
      End
      Begin VB.Label lblFieldLabel 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         BackColor       =   &H00C00000&
         Caption         =   "PRENOM:"
         BeginProperty Font 
            Name            =   "Palatino Linotype"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H0000FFFF&
         Height          =   240
         Index           =   2
         Left            =   120
         TabIndex        =   51
         Top             =   1440
         Width           =   825
      End
      Begin VB.Label lblFieldLabel 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         BackColor       =   &H00C00000&
         Caption         =   "NOM:"
         BeginProperty Font 
            Name            =   "Palatino Linotype"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H0000FFFF&
         Height          =   240
         Index           =   0
         Left            =   120
         TabIndex        =   50
         Top             =   1080
         Width           =   480
      End
      Begin VB.Label lblFieldLabel 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         BackColor       =   &H00C00000&
         Caption         =   "NUMERO:"
         BeginProperty Font 
            Name            =   "Palatino Linotype"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H0000FFFF&
         Height          =   240
         Index           =   1
         Left            =   120
         TabIndex        =   42
         Top             =   240
         Width           =   825
      End
   End
   Begin VB.CommandButton cmdButton 
      Caption         =   "RECHERCHER"
      BeginProperty Font 
         Name            =   "Arial Black"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Index           =   7
      Left            =   6960
      TabIndex        =   41
      Top             =   7440
      Width           =   1455
   End
   Begin VB.CommandButton cmdButton 
      Caption         =   "OK"
      BeginProperty Font 
         Name            =   "Arial Black"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Index           =   6
      Left            =   5760
      TabIndex        =   40
      Top             =   7440
      Width           =   1215
   End
   Begin VB.CommandButton cmdButton 
      Caption         =   "SUPPRIMER"
      BeginProperty Font 
         Name            =   "Arial Black"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Index           =   5
      Left            =   4440
      TabIndex        =   38
      Top             =   7440
      Width           =   1335
   End
   Begin VB.CommandButton cmdButton 
      BackColor       =   &H00C00000&
      Caption         =   "AJOUTER"
      BeginProperty Font 
         Name            =   "Arial Black"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Index           =   4
      Left            =   3360
      MaskColor       =   &H0000FFFF&
      TabIndex        =   37
      Top             =   7440
      Width           =   1095
   End
   Begin VB.CommandButton cmdButton 
      Caption         =   ">>|"
      Height          =   615
      Index           =   3
      Left            =   2520
      TabIndex        =   36
      Top             =   7440
      Width           =   855
   End
   Begin VB.CommandButton cmdButton 
      Caption         =   ">"
      Height          =   615
      Index           =   2
      Left            =   1680
      TabIndex        =   35
      Top             =   7440
      Width           =   855
   End
   Begin VB.CommandButton cmdButton 
      Caption         =   "<"
      Height          =   615
      Index           =   1
      Left            =   840
      TabIndex        =   34
      Top             =   7440
      Width           =   855
   End
   Begin VB.CommandButton cmdButton 
      Caption         =   "|<<"
      Height          =   615
      Index           =   0
      Left            =   0
      TabIndex        =   33
      Top             =   7440
      Width           =   855
   End
End
Attribute VB_Name = "frmClient"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'******************************************************************************
'***    Delta Copyright                                                             (31/05/2001)  ***
'******************************************************************************
'***    FORM:                                                                                              ***
'***        FrmClient                                                                                     ***
'******************************************************************************
'***    FONCTION:                                                                                       ***
'******************************************************************************
'***    PROGRAMMEUR:                                                                              ***
'***        Royer Jean-Laurent                                                                       ***
'******************************************************************************

'******************************************************************************
'***    MODIF :                                                                                            ***
'***        Version 1.0 : 30/10/2000 :                                                              ***
'***            - Creation initial du module                                                       ***
'******************************************************************************
Option Explicit

'******************************************************************************
'***    Declaration De Constante Privee                                                       ***
'******************************************************************************

'******************************************************************************
'***    Constante Qui Defini Les Libelles De La feuille En Erreur                   ***
'******************************************************************************
Private Const LOGFEUILLENOM = "FrmClient"                                             ' Le nom de la Feuille

'******************************************************************************
'***    Declaration De Variable Priver                                                          ***
'******************************************************************************

'******************************************************************************
'***    Variable qui defini le numero de client                                               ***
'******************************************************************************
Private intLastNumber As Integer
Private strLastNumber As String

'******************************************************************************
'***    Evenement                                                                                       ***
'******************************************************************************

'******************************************************************************
'***    EVENEMENT:                                                                                    ***
'******************************************************************************
'***    FONCTION:                                                                                       ***
'******************************************************************************
'***    ENTREE:                                                                                          ***
'***        Neant                                                                                           ***
'***    SORTIE:                                                                                           ***
'***        Neant                                                                                           ***
'******************************************************************************
Private Sub Form_Load()
    ' En Cas D'Erreur Je Gere L'Erreur
    On Error GoTo Form_Load_Erreur

    With DEFacture
                
        frmClient.FraClient.Enabled = False
                
        frmClient.FraContrat.Enabled = False
                
        frmClient.FraChaudiere.Enabled = False
                    
        frmClient.FraLocation.Enabled = False
                
        Select Case .rsDEcmdTableClient.EOF Or .rsDEcmdTableClient.BOF
            Case True
            
            Case False
                .rsDEcmdTableClient.MoveLast
            
                intLastNumber = .rsDEcmdTableClient("CliNum") + 1
                
                .rsDEcmdTableClient.MoveFirst
        End Select
        
    End With
    ' Fin
Form_Load_Exit:
    ' Je Sort De La Procedure
    Exit Sub
    ' Fin
Form_Load_Erreur:
    ' Je l'ecrit dans le journal
    gfloLogWebBase.AjouteErreur App, FEUILLEFORM, LOGFEUILLENOM, INSTRUCTIONEVENEMENT, "Form_Load", vbNullString, Err
    ' Je Continue
    Resume Form_Load_Exit
    ' Fin
End Sub

'******************************************************************************
'***    EVENEMENT:                                                                                    ***
'******************************************************************************
'***    FONCTION:                                                                                       ***
'******************************************************************************
'***    ENTREE:                                                                                          ***
'***      Neant                                                                                             ***
'***    SORTIE:                                                                                           ***
'***      Neant                                                                                             ***
'******************************************************************************
Private Sub cmdButton_Click(Index As Integer)
    Dim intBtnIndex As Integer

    ' En Cas D'Erreur Je Gere L'Erreur
    On Error GoTo cmdButton_Click_Erreur


    With DEFacture
    
        Select Case .rsDEcmdTableClient.RecordCount
            Case Is = 0
            
            Case Is > 0
                                
                Select Case Index
                    Case 0
                    
                        .rsDEcmdTableClient.MoveFirst
                    Case 1
                    
                        .rsDEcmdTableClient.MovePrevious
                        
                        Select Case .rsDEcmdTableClient.BOF
                            Case True
                            
                                .rsDEcmdTableClient.MoveFirst
                            Case False
                            
                        End Select
                    Case 2
                    
                        .rsDEcmdTableClient.MoveNext
                        
                        Select Case .rsDEcmdTableClient.EOF
                            Case True
                            
                                .rsDEcmdTableClient.MoveLast
                            Case False
                            
                        End Select
                    Case 3
                    
                        .rsDEcmdTableClient.MoveLast
                    Case 5
                    
                        Select Case .rsDEcmdTableClient.EOF = True Or .rsDEcmdTableClient.BOF = True
                            Case True
                            
                            Case False
                            
                                .rsDEcmdTableClient.Delete
                                
                                
                        End Select
                End Select
        End Select
        
        Select Case Index
            Case 4
            
                .rsDEcmdTableClient.AddNew
                                                                  
                strLastNumber = intLastNumber
                                  
                .rsDEcmdTableClient("CliNum") = String(7 - Len(strLastNumber), "0") & strLastNumber
                
                intLastNumber = intLastNumber + 1
                
                frmClient.FraClient.Enabled = True
                
                frmClient.FraContrat.Enabled = True
            
                frmClient.FraChaudiere.Enabled = True
                
                frmClient.FraLocation.Enabled = True
                
                For intBtnIndex = 0 To 5
                
                    frmClient.cmdButton(intBtnIndex).Enabled = False
                    
                Next
                For intBtnIndex = 7 To 8
                
                    frmClient.cmdButton(intBtnIndex).Enabled = False
                    
                Next
            Case 6
                Select Case .rsDEcmdTableClient.EOF = True Or .rsDEcmdTableClient.BOF = True
                    Case True
                    
                    Case False
                    
                        .rsDEcmdTableClient.Update
                        
                        frmClient.FraClient.Enabled = False
        
                        frmClient.FraContrat.Enabled = False
    
                        frmClient.FraChaudiere.Enabled = False
        
                        frmClient.FraLocation.Enabled = False
                        
                        For intBtnIndex = 0 To 5
                        
                            frmClient.cmdButton(intBtnIndex).Enabled = True
                            
                        Next
                        For intBtnIndex = 7 To 8
                        
                            frmClient.cmdButton(intBtnIndex).Enabled = True
                                
                        Next
                End Select
                
            Case 7
            
                FrmClientRecherche.Show vbModal
                
            Case 8
            
                frmClient.FraClient.Enabled = True
                
                frmClient.FraContrat.Enabled = True
            
                frmClient.FraChaudiere.Enabled = True
                
                frmClient.FraLocation.Enabled = True
            
                For intBtnIndex = 0 To 5
            
                    frmClient.cmdButton(intBtnIndex).Enabled = False
                
                Next
            
                For intBtnIndex = 7 To 8
                
                    frmClient.cmdButton(intBtnIndex).Enabled = False

                Next
            Case 9
                                        
                .rsDEcmdSqlPassage.Filter = "[CliNum]=" & .rsDEcmdTableClient("CliNum")
                
                DRpassage.Show
            Case 10
                                        
                .rsDEcmdSqlEcheancier.Filter = "[CliNum]=" & .rsDEcmdTableClient("CliNum")
                
                DREcheancier.Show
        End Select
                 
    End With
    ' Fin
cmdButton_Click_Exit:
    ' Je Sort De La Procedure
    Exit Sub
    ' Fin
cmdButton_Click_Erreur:
    ' Je l'ecrit dans le journal
    gfloLogWebBase.AjouteErreur App, FEUILLEFORM, LOGFEUILLENOM, INSTRUCTIONEVENEMENT, "cmdButton_Click", Index, Err
    ' Je Continue
    Resume cmdButton_Click_Exit
    ' Fin
End Sub

'******************************************************************************
'***    EVENEMENT:                                                                                    ***
'******************************************************************************
'***    FONCTION:                                                                                       ***
'******************************************************************************
'***    ENTREE:                                                                                          ***
'***      Neant                                                                                             ***
'***    SORTIE:                                                                                           ***
'***      Neant                                                                                             ***
'******************************************************************************
Private Sub MaskEdBox10_Validate(Cancel As Boolean)
        Select Case IsDate(MaskEdBox10)
            Case True
            
            Case False
            
                Cancel = True
            
                MsgBox "Vous devez saisir une date"
                
                MaskEdBox10.SetFocus
        End Select
End Sub

'******************************************************************************
'***    EVENEMENT:                                                                                    ***
'******************************************************************************
'***    FONCTION:                                                                                       ***
'******************************************************************************
'***    ENTREE:                                                                                          ***
'***      Neant                                                                                             ***
'***    SORTIE:                                                                                           ***
'***      Neant                                                                                             ***
'******************************************************************************
Private Sub MaskEdBox8_Validate(Cancel As Boolean)
        Select Case IsDate(MaskEdBox8)
            Case True
            
            Case False
            
                Cancel = True
                
                MsgBox "Vous devez saisir une date"
                
                MaskEdBox8.SetFocus
        End Select
End Sub

'******************************************************************************
'***    EVENEMENT:                                                                                    ***
'******************************************************************************
'***    FONCTION:                                                                                       ***
'******************************************************************************
'***    ENTREE:                                                                                          ***
'***      Neant                                                                                             ***
'***    SORTIE:                                                                                           ***
'***      Neant                                                                                             ***
'******************************************************************************
Private Sub MaskEdBox9_Validate(Cancel As Boolean)
        Select Case IsDate(MaskEdBox9)
            Case True
            
            Case False
            
                Cancel = True
       
                MsgBox "Vous devez saisir une date"
                
                MaskEdBox9.SetFocus
        End Select
End Sub

