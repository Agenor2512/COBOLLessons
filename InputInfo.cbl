       IDENTIFICATION DIVISION.
       PROGRAM-ID. InputInfo.
       AUTHOR. Agenor.
       

       DATA DIVISION.

      * Déclaration de variables
      * Cette section se situe dans la DATA DIVISION
       WORKING-STORAGE SECTION.

      * Une variable est toujours déclarée avec un numéro de niveau 
      * hiérarchique puis par son nom, son type (ici alphanumérique 
      * PIC X suivi du nombre de caractères maximum)
      * Si plus de caractères sont entrés, la donnée sera tronquée
       01  WS-NAME PIC X(12).

       PROCEDURE DIVISION.

           DISPLAY 'Welcome ! What is your name ?'.
           
      * ACCEPT permet de prendre une entrée utilisateur
           ACCEPT WS-NAME.

           DISPLAY 'Okay, ' WS-NAME 
           DISPLAY 'We are happy to work with you'.

           STOP RUN.
           