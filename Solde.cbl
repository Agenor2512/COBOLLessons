       IDENTIFICATION DIVISION.
       PROGRAM-ID. Solde.
       AUTHOR. Agenor.
       
      * -------------------
       ENVIRONMENT DIVISION.
      * -------------------

      * Configuration de la séparation décimale par une virgule
      * Seulement besoin de le faire quand on déclare une variable 
      * comme ça : 9(4)V99 (V représentant une virgule virtuelle)
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT COMMA.

      * -------------------
       DATA DIVISION.
      * -------------------

       WORKING-STORAGE SECTION.

      * Déclation d'une variable de type entier signé (symbole S)
       01  SOLDE PIC S9(4).
       
      * Déclaration d'une variable pouvant contenir un entier signé
      * décimal (ici : 4 chiffres avant la virgule et 2 après)
       01 SALAIRE PIC S9(4)V9(2).

       01 PERSONNE.
           02 PERSONNE1 PIC X(12).
           02 PERSONNE2 PIC A(12).

      * -------------------
       PROCEDURE DIVISION.
      * -------------------

      * On assigne un entier signé à la variable SOLDE
      * ------------ Résultat --------------- *
      *               +1698
           MOVE +1698 TO SOLDE.
           DISPLAY SOLDE.

           MOVE 1698,29 TO SALAIRE.
           DISPLAY SALAIRE.

           STOP RUN.
