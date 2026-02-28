VERSION 5.00
Begin VB.Form FrmClientRecherche 
   BorderStyle     =   1  'Fixed Single
   ClientHeight    =   2280
   ClientLeft      =   4770
   ClientTop       =   4560
   ClientWidth     =   6495
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   NegotiateMenus  =   0   'False
   ScaleHeight     =   2280
   ScaleWidth      =   6495
   StartUpPosition =   1  'CenterOwner
   Begin VB.CommandButton cmdOk 
      Caption         =   "Ok"
      Height          =   615
      Left            =   5640
      TabIndex        =   16
      Top             =   1680
      Width           =   855
   End
   Begin VB.TextBox TxtRecherche 
      Height          =   285
      Index           =   5
      Left            =   4560
      TabIndex        =   14
      Top             =   600
      Width           =   1935
   End
   Begin VB.TextBox TxtRecherche 
      Height          =   285
      Index           =   4
      Left            =   4560
      TabIndex        =   12
      Top             =   240
      Width           =   1935
   End
   Begin VB.TextBox TxtRecherche 
      Height          =   285
      Index           =   7
      Left            =   4560
      TabIndex        =   10
      Top             =   1320
      Width           =   1935
   End
   Begin VB.TextBox TxtRecherche 
      Height          =   285
      Index           =   6
      Left            =   4560
      TabIndex        =   8
      Top             =   960
      Width           =   1935
   End
   Begin VB.TextBox TxtRecherche 
      Height          =   285
      Index           =   3
      Left            =   1320
      TabIndex        =   6
      Top             =   1320
      Width           =   1935
   End
   Begin VB.TextBox TxtRecherche 
      Height          =   285
      Index           =   2
      Left            =   1320
      TabIndex        =   4
      Top             =   960
      Width           =   1935
   End
   Begin VB.TextBox TxtRecherche 
      Height          =   285
      Index           =   1
      Left            =   1320
      TabIndex        =   2
      Top             =   600
      Width           =   1935
   End
   Begin VB.TextBox TxtRecherche 
      Height          =   285
      Index           =   0
      Left            =   1320
      TabIndex        =   0
      Top             =   240
      Width           =   1935
   End
   Begin VB.Label lblRecherche 
      Caption         =   "TEL. MAISON"
      Height          =   255
      Index           =   7
      Left            =   3360
      TabIndex        =   15
      Top             =   600
      Width           =   1215
   End
   Begin VB.Label lblRecherche 
      Caption         =   "TEL. BUREAU"
      Height          =   255
      Index           =   6
      Left            =   3360
      TabIndex        =   13
      Top             =   240
      Width           =   1215
   End
   Begin VB.Label lblRecherche 
      Caption         =   "CODE POSTAL"
      Height          =   255
      Index           =   5
      Left            =   3360
      TabIndex        =   11
      Top             =   1320
      Width           =   1215
   End
   Begin VB.Label lblRecherche 
      Caption         =   "VILLE"
      Height          =   255
      Index           =   4
      Left            =   3360
      TabIndex        =   9
      Top             =   960
      Width           =   1215
   End
   Begin VB.Label lblRecherche 
      Caption         =   "ADRESSE"
      Height          =   255
      Index           =   3
      Left            =   0
      TabIndex        =   7
      Top             =   1320
      Width           =   1215
   End
   Begin VB.Label lblRecherche 
      Caption         =   "PRENOM"
      Height          =   255
      Index           =   2
      Left            =   0
      TabIndex        =   5
      Top             =   960
      Width           =   1215
   End
   Begin VB.Label lblRecherche 
      Caption         =   "NOM"
      Height          =   255
      Index           =   1
      Left            =   0
      TabIndex        =   3
      Top             =   600
      Width           =   1215
   End
   Begin VB.Label lblRecherche 
      Caption         =   "NUMERO"
      Height          =   255
      Index           =   0
      Left            =   0
      TabIndex        =   1
      Top             =   240
      Width           =   1215
   End
End
Attribute VB_Name = "FrmClientRecherche"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'******************************************************************************
'***    Delta Copyright                                                             (31/05/2001)  ***
'******************************************************************************
'***    FORM:                                                                                              ***
'***        FrmClientRecherche                                                                     ***
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
Private Const LOGFEUILLENOM = "FrmClientRecherche"                                  ' Le nom de la Feuille

'******************************************************************************
'***    Evenement                                                                                       ***
'******************************************************************************

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
Private Sub Form_Load()
    ' En Cas D'Erreur Je Gere L'Erreur
    On Error GoTo Form_Load_Erreur

    DEFacture.rsDEcmdTableClient.MoveFirst
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
Private Sub cmdOk_Click()
    Dim strRecherche As String
    
    ' En Cas D'Erreur Je Gere L'Erreur
    On Error GoTo cmdOk_Click_Erreur
    
    DEFacture.rsDEcmdTableClient.MoveFirst
   
    Select Case TxtRecherche(0)
        Case vbNullString
        
        Case Else
        
            DEFacture.rsDEcmdTableClient.Find "([CliNum] like '" & TxtRecherche(0) & "*')"
    End Select
    
    Select Case TxtRecherche(1)
        Case vbNullString
        
        Case Else
        
            DEFacture.rsDEcmdTableClient.Find "([CliNom] like '" & TxtRecherche(1) & "*')"
    End Select
    
    Select Case TxtRecherche(2)
        Case vbNullString
        
        Case Else
        
            DEFacture.rsDEcmdTableClient.Find "([CliPrenom] like '" & TxtRecherche(2) & "*')"
    End Select
    
    Select Case TxtRecherche(3)
        Case vbNullString
        
        Case Else
        
            DEFacture.rsDEcmdTableClient.Find "([CliAdresse] like '" & TxtRecherche(3) & "*')"
    End Select
    
    Select Case TxtRecherche(4)
        Case vbNullString
        
        Case Else
        
            DEFacture.rsDEcmdTableClient.Find "([CliTel1] like '" & TxtRecherche(4) & "*')"
    End Select
    
    Select Case TxtRecherche(5)
        Case vbNullString
        
        Case Else
        
            DEFacture.rsDEcmdTableClient.Find "([CliTel2] like '" & TxtRecherche(5) & "*')"
    End Select
    
    Select Case TxtRecherche(6)
        Case vbNullString
        
        Case Else
        
            DEFacture.rsDEcmdTableClient.Find "([CliVilNom] like '" & TxtRecherche(6) & "*')"
    End Select
    
    Select Case TxtRecherche(7)
        Case vbNullString
        
        Case Else
        
            DEFacture.rsDEcmdTableClient.Find "([CliCodePostal] like '" & TxtRecherche(7) & "*')"
    End Select
    ' Fin
cmdOk_Click_Exit:
    ' Je Sort De La Procedure
    Exit Sub
    ' Fin
cmdOk_Click_Erreur:
    ' Je l'ecrit dans le journal
    gfloLogWebBase.AjouteErreur App, FEUILLEFORM, LOGFEUILLENOM, INSTRUCTIONEVENEMENT, "cmdOk_Click", vbNullString, Err
    ' Je Continue
    Resume cmdOk_Click_Exit
    ' Fin
End Sub

