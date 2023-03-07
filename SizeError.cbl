       IDENTIFICATION DIVISION.
       PROGRAM-ID. InputInfo.
       AUTHOR. Agenor.
       

       DATA DIVISION.

      * Déclaration de variables
      * Cette section se situe dans la DATA DIVISION
       WORKING-STORAGE SECTION.

       01  NUMBER1 PIC 9(2) VALUE 72.
       01  NUMBER2 PIC 9(2) VALUE 45.
       01  RESULT PIC 9     VALUE 0.


       PROCEDURE DIVISION.
           
      * L'instruction ON SIZE ERROR permet de gérer une erreur au 
      * niveau de la taille allouée à une variable
           ADD NUMBER1 TO NUMBER2 GIVING RESULT
           ON SIZE ERROR 
           DISPLAY "ON SIZE ERROR - ERREUR DE TAILLE"

           STOP RUN.

