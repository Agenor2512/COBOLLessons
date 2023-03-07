       IDENTIFICATION DIVISION.
       PROGRAM-ID. InputInfo.
       AUTHOR. Agenor.
       

       DATA DIVISION.

      * Déclaration de variables
      * Cette section se situe dans la DATA DIVISION
       WORKING-STORAGE SECTION.

      * On définit 2 variables numériques de maximum 2 chiffres
      * si il y a moins de 2 chiffres, les blancs sont remplacés par
      * des 0
       01  NUMBER1 PIC 9(2).
       01  NUMBER2 PIC 9(2).


       PROCEDURE DIVISION.

           MOVE 2 TO NUMBER1.
           MOVE 5 TO NUMBER2.

      * Avec MULTIPLY on multiplie des littéraux numériques ou des variables
      * numériques
      * Attention ! Le deuxième nombre devient le résultat de l'addition
           MULTIPLY NUMBER1 BY NUMBER2.
       
      
      *---------------- Résultat ---------------*
      *                   10
           DISPLAY NUMBER2.

           STOP RUN.