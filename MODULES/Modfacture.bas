Attribute VB_Name = "modFacture"
'******************************************************************************
'***    Delta Copyright                                                             (31/05/2001)  ***
'******************************************************************************
'***    MODULE:                                                                                          ***
'***        modFacture                                                                                   ***
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
Option Explicit                                                                                               ' Je doit etre sur que mes variables on ete declarer

'******************************************************************************
'***    Declaration De Constante Privee                                                       ***
'******************************************************************************

'******************************************************************************
'***    Constante Qui Defini Les Libelles De La feuille En Erreur                   ***
'******************************************************************************
Private Const mconFeuilleType = "MODULE"                                                   ' Le type de feuille
Private Const mconFeuilleNom = "modFacture"                                               ' Le nom de la Feuille

'******************************************************************************
'***    Declaration De Constante Public                                                       ***
'******************************************************************************

'******************************************************************************
'***    Constante Qui Defini Les Libelles Des Erreur                                     ***
'******************************************************************************
Public Const LIBELLEFONCTION = "FONCTION"                                                ' Le libelle fonction
Public Const LIBELLEPROCEDURE = "PROCEDURE"                                         ' Le libelle procedure
Public Const LIBELLEEVENEMENT = "EVENEMENT"                                         ' Le libelle evenement

'******************************************************************************
'***    Declaration De Object Public                                                             ***
'******************************************************************************

'******************************************************************************
'***    Object Pour La Gestion D'un Fichier Journal                                      ***
'******************************************************************************
Public gfloLogWebBase As New clsFicLog                                                             ' L'object pour la gestion d'un fichier journal

'******************************************************************************
'***    Declaration De Procedure Priver                                                        ***
'******************************************************************************

'******************************************************************************
'***    PROCEDURE:                                                                                   ***
'***        Main()                                                                                           ***
'******************************************************************************
'***    FONCTION:                                                                                       ***
'******************************************************************************
'***    ENTREE:                                                                                          ***
'***    SORTIE:                                                                                           ***
'******************************************************************************
'***    EXEMPLE:                                                                                        ***
'******************************************************************************
Private Sub Main()
    ' En Cas D'Erreur Je Gere L'Erreur
    On Error GoTo Main_Erreur
    ' Je defini la chaine de connection a la base
    DEFacture.DEconFacture.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & App.Path & "\DATA\FACTURE.MDB;Persist Security Info=False"
    ' J'affiche la feuille principale
    MDIFacture.Show
    ' Fin
Main_Exit:
    ' Je Sort De La Procedure
    Exit Sub
    ' Fin
Main_Erreur:
    ' Je l'ecrit dans le journal
    gfloLogWebBase.AjouteErreur App, mconFeuilleType, mconFeuilleNom, LIBELLEPROCEDURE, "Main", vbNullString, Err
    ' Je Continue
    Resume Main_Exit
    ' Fin
End Sub
