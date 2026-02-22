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
      TabIndex        =   81
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
      TabIndex        =   80
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
      TabIndex        =   78
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
      TabIndex        =   68
      Top             =   3240
      Width           =   6255
      Begin MSMask.MaskEdBox MaskEdBox11 
         Bindings        =   "Frmclient.frx":0000
         DataField       =   "CONTRATV1"
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
         Height          =   255
         Left            =   1080
         TabIndex        =   79
         Top             =   2280
         Width           =   1215
         _ExtentX        =   2143
         _ExtentY        =   450
         _Version        =   393216
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Palatino Linotype"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         PromptChar      =   "_"
      End
      Begin MSMask.MaskEdBox MaskEdBox8 
         Bindings        =   "Frmclient.frx":001B
         DataField       =   "CONTRATPAIEMENT"
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
         DataField       =   "CONTRATPRIX"
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
         TabIndex        =   31
         Top             =   1320
         Width           =   1095
      End
      Begin VB.TextBox txtCONTRATTVA 
         DataField       =   "CONTRATTVA"
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
         TabIndex        =   30
         Top             =   1320
         Width           =   615
      End
      Begin VB.TextBox txtCONTRATCATEGORIE 
         DataField       =   "CONTRATCATEGORIE"
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
         TabIndex        =   29
         Top             =   840
         Width           =   1215
      End
      Begin VB.TextBox txtCONTRATCOEFFICIENT 
         DataField       =   "CONTRATCOEFFICIENT"
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
         DataField       =   "CONTRATTYPE"
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
         Bindings        =   "Frmclient.frx":0036
         DataField       =   "CONTRATDEBUT"
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
      Begin MSMask.MaskEdBox MaskEdBox10 
         Bindings        =   "Frmclient.frx":0051
         DataField       =   "CONTRATFIN"
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
         TabIndex        =   33
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
         TabIndex        =   77
         Top             =   1320
         Width           =   450
      End
      Begin VB.Label lblFieldLabel 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         BackColor       =   &H00C00000&
         Caption         =   "V1:"
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
         Index           =   26
         Left            =   120
         TabIndex        =   76
         Top             =   2280
         Width           =   270
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
         TabIndex        =   75
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
         TabIndex        =   74
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
         TabIndex        =   73
         Top             =   1320
         Width           =   435
      End
      Begin VB.Label lblFieldLabel 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         BackColor       =   &H00C00000&
         Caption         =   "CATEGORIE:"
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
         Index           =   22
         Left            =   3135
         TabIndex        =   72
         Top             =   840
         Width           =   1080
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
         TabIndex        =   71
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
         TabIndex        =   70
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
         TabIndex        =   69
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
      TabIndex        =   61
      Top             =   1440
      Width           =   6255
      Begin VB.TextBox txtCHAUDIEREPUISSANCE 
         DataField       =   "CHAUDIEREPUISSANCE"
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
         TabIndex        =   67
         Top             =   1320
         Width           =   615
      End
      Begin VB.TextBox txtCHAUDIERETYPE 
         DataField       =   "CHAUDIERETYPE"
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
         DataField       =   "CHAUDIEREGAZ"
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
         DataField       =   "CHAUDIEREMARQUE"
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
         Bindings        =   "Frmclient.frx":006C
         DataField       =   "CHAUDIERENUMERO"
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
         TabIndex        =   66
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
         TabIndex        =   65
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
         TabIndex        =   64
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
         TabIndex        =   63
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
         TabIndex        =   62
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
      TabIndex        =   45
      Top             =   0
      Width           =   6255
      Begin VB.TextBox txtLOCALISATIONDIGICODE 
         DataField       =   "CLIENTDIGICODE"
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
         DataField       =   "CLIENTPORTE"
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
         DataField       =   "CLIENTETAGE"
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
         DataField       =   "CLIENTESC"
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
         DataField       =   "CLIENTBATIMENT"
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
         TabIndex        =   50
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
         TabIndex        =   49
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
         TabIndex        =   48
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
         TabIndex        =   47
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
         TabIndex        =   46
         Top             =   345
         Width           =   1005
      End
   End
   Begin MSDataGridLib.DataGrid DataGrid1 
      Bindings        =   "Frmclient.frx":0087
      Height          =   3015
      Left            =   0
      TabIndex        =   44
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
      ColumnCount     =   37
      BeginProperty Column00 
         DataField       =   "CLECLIENT"
         Caption         =   "CLECLIENT"
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
         DataField       =   "CLIENTNUMERO"
         Caption         =   "NUMERO"
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
         DataField       =   "UTILISATEURNOM"
         Caption         =   "NOM"
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
         DataField       =   "UTILISATEURPRENOM"
         Caption         =   "PRENOM"
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
         DataField       =   "UTILISATEURADRESSE"
         Caption         =   "ADRESSE"
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
         DataField       =   "UTILISATEURVILLE"
         Caption         =   "VILLE"
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
         DataField       =   "UTILISATEURCODEPOSTAL"
         Caption         =   "CODEPOSTAL"
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
         DataField       =   "UTILISATEURNOTE"
         Caption         =   "NOTE"
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
         DataField       =   "UTILISATEURTELEPHONEBUREAU"
         Caption         =   "TEL.BUR"
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
         DataField       =   "UTILISATEURTELEPHONEMAISON"
         Caption         =   "TEL.DOM"
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
         DataField       =   "SOUSCRIPTEURNOM"
         Caption         =   "NOM"
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
         DataField       =   "SOUSCRIPTEURPRENOM"
         Caption         =   "PRENOM"
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
         DataField       =   "SOUSCRIPTEURADRESSE"
         Caption         =   "ADRESSE"
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
         DataField       =   "SOUSCRIPTEURVILLE"
         Caption         =   "VILLE"
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
         DataField       =   "SOUSCRIPTEURCODEPOSTAL"
         Caption         =   "CODEPOSTAL"
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
         DataField       =   "SOUSCRIPTEURNOTE"
         Caption         =   "NOTE"
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
         DataField       =   "SOUSCRIPTEURTELEPHONEBUREAU"
         Caption         =   "TEL.BUR"
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
         DataField       =   "SOUSCRIPTEURTELEPHONEMAISON"
         Caption         =   "TEL.DOM"
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
         DataField       =   "CLIENTBATIMENT"
         Caption         =   "BATIMENT"
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
         DataField       =   "CLIENTESC"
         Caption         =   "ESC"
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
         DataField       =   "CLIENTETAGE"
         Caption         =   "ETAGE"
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
         DataField       =   "CLIENTPORTE"
         Caption         =   "PORTE"
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
         DataField       =   "CLIENTDIGICODE"
         Caption         =   "DIGICODE"
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
         DataField       =   "CHAUDIERENUMERO"
         Caption         =   "NUMERO"
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
         DataField       =   "CHAUDIEREGAZ"
         Caption         =   "GAZ"
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
         DataField       =   "CHAUDIERETYPE"
         Caption         =   "TYPE"
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
         DataField       =   "CHAUDIEREPUISSANCE"
         Caption         =   "PUISSANCE"
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
         DataField       =   "CHAUDIEREMARQUE"
         Caption         =   "MARQUE"
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
         DataField       =   "CONTRATTYPE"
         Caption         =   "TYPE"
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
         DataField       =   "CONTRATCOEFFICIENT"
         Caption         =   "COEFFICIENT"
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
         DataField       =   "CONTRATPAIEMENT"
         Caption         =   "PAIEMENT"
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
         DataField       =   "CONTRATCATEGORIE"
         Caption         =   "CATEGORIE"
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
         DataField       =   "CONTRATTVA"
         Caption         =   "TVA"
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
         DataField       =   "CONTRATDEBUT"
         Caption         =   "DEBUT"
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
         DataField       =   "CONTRATFIN"
         Caption         =   "FIN"
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
         DataField       =   "CONTRATV1"
         Caption         =   "V1"
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
         DataField       =   "CONTRATPRIX"
         Caption         =   "PRIX"
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
            Object.Visible         =   0   'False
            ColumnWidth     =   945,071
         EndProperty
         BeginProperty Column01 
            Object.Visible         =   -1  'True
            ColumnWidth     =   1739,906
         EndProperty
         BeginProperty Column02 
            ColumnWidth     =   1739,906
         EndProperty
         BeginProperty Column03 
            ColumnWidth     =   1844,787
         EndProperty
         BeginProperty Column04 
            ColumnWidth     =   1904,882
         EndProperty
         BeginProperty Column05 
            ColumnWidth     =   1739,906
         EndProperty
         BeginProperty Column06 
            ColumnWidth     =   2220,094
         EndProperty
         BeginProperty Column07 
            ColumnWidth     =   1739,906
         EndProperty
         BeginProperty Column08 
            ColumnWidth     =   2789,858
         EndProperty
         BeginProperty Column09 
            ColumnWidth     =   2745,071
         EndProperty
         BeginProperty Column10 
            ColumnWidth     =   1739,906
         EndProperty
         BeginProperty Column11 
            ColumnWidth     =   2055,118
         EndProperty
         BeginProperty Column12 
            ColumnWidth     =   2115,213
         EndProperty
         BeginProperty Column13 
            ColumnWidth     =   1785,26
         EndProperty
         BeginProperty Column14 
            ColumnWidth     =   2429,858
         EndProperty
         BeginProperty Column15 
            ColumnWidth     =   1800
         EndProperty
         BeginProperty Column16 
            ColumnWidth     =   3000,189
         EndProperty
         BeginProperty Column17 
            ColumnWidth     =   2954,835
         EndProperty
         BeginProperty Column18 
            ColumnWidth     =   1739,906
         EndProperty
         BeginProperty Column19 
            ColumnWidth     =   1739,906
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
            ColumnWidth     =   1739,906
         EndProperty
         BeginProperty Column24 
            ColumnWidth     =   1739,906
         EndProperty
         BeginProperty Column25 
            ColumnWidth     =   1739,906
         EndProperty
         BeginProperty Column26 
            ColumnWidth     =   1934,929
         EndProperty
         BeginProperty Column27 
            ColumnWidth     =   1739,906
         EndProperty
         BeginProperty Column28 
            ColumnWidth     =   1739,906
         EndProperty
         BeginProperty Column29 
            ColumnWidth     =   1890,142
         EndProperty
         BeginProperty Column30 
            ColumnWidth     =   1739,906
         EndProperty
         BeginProperty Column31 
            ColumnWidth     =   1785,26
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
            ColumnWidth     =   1739,906
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
      TabIndex        =   40
      Top             =   0
      Width           =   6375
      Begin MSMask.MaskEdBox MaskEdBox6 
         Bindings        =   "Frmclient.frx":009F
         DataField       =   "SOUSCRIPTEURTELEPHONEMAISON"
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
         Bindings        =   "Frmclient.frx":00BA
         DataField       =   "SOUSCRIPTEURTELEPHONEBUREAU"
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
         Bindings        =   "Frmclient.frx":00D5
         DataField       =   "UTILISATEURTELEPHONEMAISON"
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
         Bindings        =   "Frmclient.frx":00F0
         DataField       =   "UTILISATEURTELEPHONEBUREAU"
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
         Bindings        =   "Frmclient.frx":010B
         DataField       =   "UTILISATEURCODEPOSTAL"
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
         DataField       =   "SOUSCRIPTEURNOTE"
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
         DataField       =   "UTILISATEURNOTE"
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
         DataField       =   "SOUSCRIPTEURVILLE"
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
         DataField       =   "UTILISATEURVILLE"
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
         DataField       =   "SOUSCRIPTEURADRESSE"
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
         DataField       =   "UTILISATEURADRESSE"
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
         DataField       =   "SOUSCRIPTEURPRENOM"
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
         DataField       =   "UTILISATEURPRENOM"
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
         DataField       =   "SOUSCRIPTEURNOM"
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
         DataField       =   "UTILISATEURNOM"
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
         Bindings        =   "Frmclient.frx":0155
         DataField       =   "CLIENTNUMERO"
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
         Bindings        =   "Frmclient.frx":0170
         DataField       =   "SOUSCRIPTEURCODEPOSTAL"
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
         TabIndex        =   60
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
         TabIndex        =   59
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
         TabIndex        =   58
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
         TabIndex        =   57
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
         TabIndex        =   56
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
         TabIndex        =   55
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
         TabIndex        =   54
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
         TabIndex        =   53
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
         TabIndex        =   52
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
         TabIndex        =   51
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
         TabIndex        =   43
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
      TabIndex        =   42
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
      TabIndex        =   41
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
      TabIndex        =   39
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
      TabIndex        =   38
      Top             =   7440
      Width           =   1095
   End
   Begin VB.CommandButton cmdButton 
      Caption         =   ">>|"
      Height          =   615
      Index           =   3
      Left            =   2520
      TabIndex        =   37
      Top             =   7440
      Width           =   855
   End
   Begin VB.CommandButton cmdButton 
      Caption         =   ">"
      Height          =   615
      Index           =   2
      Left            =   1680
      TabIndex        =   36
      Top             =   7440
      Width           =   855
   End
   Begin VB.CommandButton cmdButton 
      Caption         =   "<"
      Height          =   615
      Index           =   1
      Left            =   840
      TabIndex        =   35
      Top             =   7440
      Width           =   855
   End
   Begin VB.CommandButton cmdButton 
      Caption         =   "|<<"
      Height          =   615
      Index           =   0
      Left            =   0
      TabIndex        =   34
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
            
                intLastNumber = .rsDEcmdTableClient("CLIENTNUMERO") + 1
                
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
                                  
                .rsDEcmdTableClient("CLIENTNUMERO") = String(7 - Len(strLastNumber), "0") & strLastNumber
                
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
                                        
                .rsDEcmdSqlPassage.Filter = "[CLIENTNUMERO]=" & .rsDEcmdTableClient("CLIENTNUMERO")
                
                DRpassage.Show
            Case 10
                                        
                .rsDEcmdSqlEcheancier.Filter = "[CLIENTNUMERO]=" & .rsDEcmdTableClient("CLIENTNUMERO")
                
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
Private Sub MaskEdBox11_Validate(Cancel As Boolean)
        Select Case IsDate(MaskEdBox11)
            Case True
            
            Case False
            
                 Cancel = True
           
                 MsgBox "Vous devez saisir une date"
                                  
                 MaskEdBox11.SetFocus
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

