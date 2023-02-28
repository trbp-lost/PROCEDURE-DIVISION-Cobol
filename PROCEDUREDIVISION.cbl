        IDENTIFICATION DIVISION.
        PROGRAM-ID. "PROCEDURE DIVISION".
        AUTHOR. Tengku Revino Buana Putra.
        DATA DIVISION.
        WORKING-STORAGE SECTION.
        01 NAMA PIC X(32).
        01 NPM PIC 9(8).
        01 ANGKA PIC 9(38).
        01 PENENTU PIC 9(4).
        01 HASIL PIC Z(10).
        01 PILIHAN PIC 9(1).
        
        PROCEDURE DIVISION.
        1000-MENU.
            DISPLAY "----------MENU----------".
            DISPLAY "1. GANJIL GENAP".
            DISPLAY "2. IDENTITAS".
            DISPLAY "3. KELUAR".
            DISPLAY "PILIH NOMOR (1/2/3)? " WITH NO ADVANCING.
            ACCEPT PILIHAN.
            IF PILIHAN EQUAL 1 THEN
                GO TO 2000-GANJILGENAP
            END-IF.
            IF PILIHAN EQUAL 2 THEN
                GO TO 3000-IDENTITAS
            END-IF.
            IF PILIHAN EQUAL 3 THEN
                GO TO 9000-KELUAR
            ELSE
                GO TO 1000-MENU
            END-IF.
        GO TO 9000-KELUAR.

        2000-GANJILGENAP.
            DISPLAY "Masukkan ANGKA (MAKS 38 DIGIT): " WITH NO ADVANCING.
            ACCEPT ANGKA.
            PERFORM 8-KAKULASI VARYING PENENTU FROM 1 BY 1 UNTIL 
                PENENTU=-5.
        
        3000-IDENTITAS.
            DISPLAY "Masukkan Nama (MAKS 32 DIGIT): " WITH NO ADVANCING.
            ACCEPT NAMA.
            DISPLAY "Masukkan NPM (MAKS 8 DIGIT): " WITH NO ADVANCING.
            ACCEPT NPM.
            DISPLAY "Nama " NAMA " dengan NPM " NPM.
            GO TO 0000-SPACE.

        8-KAKULASI.
            SUBTRACT 2 FROM ANGKA.
            IF ANGKA EQUAL 0 THEN
                DISPLAY "BILANGAN GENAP"
                GO TO 0000-SPACE
            ELSE IF ANGKA EQUAL 1 OR ANGKA EQUAL -1 THEN
                DISPLAY "BILANGAN GANJIL"
                GO TO 0000-SPACE
            END-IF.

        0000-SPACE.
            DISPLAY X'0A'X'0A'X'0A'X'0A'X'0A'X'0A'X'0A'X'0A'X'0A'X'0A'.
            GO TO 1000-MENU.
        
        9000-KELUAR.
        STOP RUN.
        