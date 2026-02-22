VERSION 5.00
Begin VB.MDIForm MDIFacture 
   BackColor       =   &H8000000C&
   ClientHeight    =   9375
   ClientLeft      =   3270
   ClientTop       =   2325
   ClientWidth     =   13425
   LinkTopic       =   "MDIForm1"
   StartUpPosition =   1  'CenterOwner
   Begin VB.Menu mnuPrincipale 
      Caption         =   "Fichier"
      Index           =   0
   End
   Begin VB.Menu mnuPrincipale 
      Caption         =   "Panneau"
      Index           =   1
      Begin VB.Menu mnuPanneau 
         Caption         =   "Client"
         Index           =   0
      End
      Begin VB.Menu mnuPanneau 
         Caption         =   "Rappel Contrat"
         Index           =   1
      End
      Begin VB.Menu mnuPanneau 
         Caption         =   "Rappel V1"
         Index           =   2
      End
   End
End
Attribute VB_Name = "MDIFacture"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'******************************************************************************
'***    Delta Copyright                                                             (31/05/2001)  ***
'******************************************************************************
'***    FORM:                                                                                              ***
'***        FrmRappelV1                                                                                ***
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
Private Const LOGFEUILLENOM = "MDIFacture"                                               ' Le nom de la Feuille


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
Private Sub MDIForm_Load()
   ' En cas d'erreur je gere l'erreur
   On Error GoTo Form_Load_Erreur
   ' Je defini le nom de l'application
   Me.Caption = App.ProductName & " V " & App.Major & "." & App.Minor & "." & App.Revision & " Copyright " + App.LegalCopyright
   ' Fin
Form_Load_Exit:
   ' Je sort de la procedure
   Exit Sub
   ' Fin
Form_Load_Erreur:
     ' Je l'ecrit dans le journal
     gfloLogWebBase.AjouteErreur App, FEUILLEMDIFORM, LOGFEUILLENOM, INSTRUCTIONEVENEMENT, "Form_Load", vbNullString, Err
    ' Je continue
    Resume Form_Load_Exit
    ' Fin
End Sub

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
Private Sub MDIForm_Unload(Cancel As Integer)
    Dim Form
    ' En Cas D'Erreur Je Gere L'Erreur
    On Error GoTo MDIForm_Unload_Erreur
    
    For Each Form In Forms
    
        Unload Form
    Next
    ' Fin
MDIForm_Unload_Exit:
    ' Je Sort De La Procedure
    Exit Sub
    ' Fin
MDIForm_Unload_Erreur:
    ' Je l'ecrit dans le journal
    gfloLogWebBase.AjouteErreur App, FEUILLEMDIFORM, LOGFEUILLENOM, INSTRUCTIONEVENEMENT, "MDIForm_Unload", vbNullString, Err
    ' Je Continue
    Resume MDIForm_Unload_Exit
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
Private Sub mnuPanneau_Click(Index As Integer)
    ' En Cas D'Erreur Je Gere L'Erreur
    On Error GoTo mnuPanneau_Click_Erreur
    Select Case Index
        Case 0
        
            frmClient.Show
        Case 1
        
            FrmRappelContrat.Show
        Case 2
        
            FrmRappelV1.Show
    End Select
    ' Fin
mnuPanneau_Click_Exit:
    ' Je Sort De La Procedure
    Exit Sub
    ' Fin
mnuPanneau_Click_Erreur:
    ' Je l'ecrit dans le journal
    gfloLogWebBase.AjouteErreur App, FEUILLEMDIFORM, LOGFEUILLENOM, INSTRUCTIONEVENEMENT, "mnuPanneau_Click", Index, Err
    ' Je Continue
    Resume mnuPanneau_Click_Exit
    ' Fin
End Sub
