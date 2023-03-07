       IDENTIFICATION DIVISION.
       PROGRAM-ID. InputInfo.
       AUTHOR. Agenor.
       

       DATA DIVISION.

      * Déclaration de variables
      * Cette section se situe dans la DATA DIVISION
       WORKING-STORAGE SECTION.

      * On définit 2 variables numériques de maximum 4 chiffres
      * si il y a moins de 4 chiffres, les blancs sont remplacés par
      * des 0
       01  NUMBER1 PIC 9(2).
       01  NUMBER2 PIC 9(2).
       01  NUMBER3 PIC 9(2).

       01  NUMBER4 PIC 9(2).
       01  NUMBER5 PIC 9(2).
       01  NUMBER6 PIC 9(2).
       01  NUMBER7 PIC 9(2).


       PROCEDURE DIVISION.

           MOVE 10 TO NUMBER1.
           MOVE 15 TO NUMBER2.

           MOVE 10 TO NUMBER4.
           MOVE 15 TO NUMBER5.
           MOVE 20 TO NUMBER6.
           MOVE 25 TO NUMBER7.
      
      * Grâce à GIVING on assigne le résultat à une troisième variable 
      * donc NUMBER4 reste inchangé
           SUBTRACT NUMBER1 FROM NUMBER2 GIVING NUMBER3.

      * Cette ligne donne les opérations :
      * NUMBER6 = 20 - (10 + 15)
      * NUMBER7 = 25 - (10 + 15)
           SUBTRACT NUMBER4 NUMBER5 FROM NUMBER6 NUMBER7.
       
      
      *---------------- Résultat ---------------*
      *                   05
           DISPLAY NUMBER3.
      
      *---------------- Résultat ---------------*
      *                   -05
      *                    00
           DISPLAY NUMBER6.
           DISPLAY NUMBER7.

           STOP RUN.

