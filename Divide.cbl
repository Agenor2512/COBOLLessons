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

           MOVE 6 TO NUMBER1.
           MOVE 2 TO NUMBER2.

      * Avec DIVIDE on divise des littéraux numériques ou des variables
      * numériques
      * Attention ! Le deuxième nombre devient le résultat
      * On pourrait aussi utiliser GIVING pour assigner le résultat à
      * une troisième variable

      * Il existe une autre notation qui est :
      *                      DIVIDE NUMBER1 INTO NUMBER2 
      * où le deuxième nombre est aussi divisé par le premier *
      * mais cette notation est moins facile à appréhender
           DIVIDE NUMBER2 BY NUMBER1.
       
      
      *---------------- Résultat ---------------*
      *                   10
           DISPLAY NUMBER2.

           STOP RUN.
