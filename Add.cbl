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


       PROCEDURE DIVISION.

           MOVE 10 TO NUMBER1.
           MOVE 15 TO NUMBER2.

           MOVE 10 TO NUMBER3.
           MOVE 15 TO NUMBER4.

      * Avec ADD on additionne des littéraux numériques ou des variables
      * numériques
      * Attention ! Le deuxième nombre devient le résultat de l'addition
           ADD NUMBER1 TO NUMBER2.
      
      * Grâce à GIVING on assigne le résultat à une troisième variable 
      * donc NUMBER4 reste inchangé
           ADD NUMBER3 TO NUMBER4 GIVING NUMBER5.
       
      
      *---------------- Résultat ---------------*
      *                   25
           DISPLAY NUMBER2.

           DISPLAY NUMBER5.

           STOP RUN.
