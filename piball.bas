DIM lot1(15), lot2(15), lot3(15), lot4(15), lot5(15), ball(15)
1: 
color 15,0
cls

locate 1,1
INPUT "Contestant Name>"; name$: COLOR 15, 1: CLS: PRINT "Press [Spacebar] to continue"
 DO
 LOOP UNTIL INKEY$ = CHR$(32)
RANDOMIZE TIMER
2:
locate 1,1
SCREEN 0

lot = 1
COLOR 15, 1
CLS
LOCATE 1, 1
COLOR 14, 4
PRINT "PiBall V 2.0: Lotto Powerball Gen  [ESC]"
COLOR 0, 15
LOCATE 2, 1
PRINT "Press [ENTER] to get get results [C]lear"
COLOR 14, 1
LOCATE 3, 1: PRINT "Contestant: "; name$
COLOR 0, 15
LOCATE 20, 1
PRINT "Should you win with this program,       "
LOCATE 21, 1
PRINT "Give generous tip :) paypal.me/drnothing"
LOCATE 22, 1
PRINT "jsp@pagetelegram.com : pagetelegram.com "
DO
    1801: lot1(lot) = INT(RND * 70) + 1
    1802: lot2(lot) = INT(RND * 70) + 1
    1803: IF lot1(lot) = lot2(lot) THEN GOTO 1801
    1804: lot3(lot) = INT(RND * 70) + 1
    1805: IF lot2(lot) = lot3(lot) THEN GOTO 1804
    1806: lot4(lot) = INT(RND * 70) + 1
    1807: IF lot3(lot) = lot4(lot) THEN GOTO 1806
    1808: lot5(lot) = INT(RND * 70) + 1
    1809: IF lot5(lot) = lot4(lot) THEN GOTO 1808
    ball(lot) = INT(RND * 25) + 1

    LOCATE lot + 3, 1
    COLOR 4, 14: PRINT lot;
    COLOR 15, 1
    PRINT lot1(lot); "-"; lot2(lot); "-"; lot3(lot); "-"; lot4(lot); "-"; lot5(lot); "*"; ball(lot)
    SELECT CASE UCASE$(INKEY$)
        CASE CHR$(13)
            IF lot <= 15 THEN
                LOCATE lot + 3, 1
                PRINT "                                                 "
                LOCATE lot + 3, 1
                COLOR 4, 14
                PRINT lot;
                COLOR 15, 1
                PRINT lot1(lot); "-"; lot2(lot); "-"; lot3(lot); "-"; lot4(lot); "-"; lot5(lot); "*"; ball(lot)
                IF lot < 15 THEN
                    IF lot < 14 THEN
                        FOR a = 1 TO lot
                            SELECT CASE lot1(a)
                                CASE lot2(lot): win1 = lot2(lot)
                                CASE lot3(lot): win1 = lot3(lot)
                                CASE lot4(lot): win1 = lot4(lot)
                                CASE lot5(lot): win1 = lot5(lot)
                            END SELECT
                            FOR b = 1 TO lot
                                SELECT CASE lot2(b)
                                    CASE lot1(lot): win2 = lot1(lot)
                                    CASE lot3(lot): win2 = lot3(lot)
                                    CASE lot4(lot): win2 = lot4(lot)
                                    CASE lot5(lot): win2 = lot5(lot)
                                END SELECT

                                FOR c = 1 TO lot
                                    SELECT CASE lot3(c)
                                        CASE lot1(lot): win3 = lot1(lot)
                                        CASE lot2(lot): win3 = lot2(lot)
                                        CASE lot4(lot): win3 = lot4(lot)
                                        CASE lot5(lot): win3 = lot5(lot)
                                    END SELECT

                                    FOR d = 1 TO lot
                                        SELECT CASE lot4(d)
                                            CASE lot1(lot): win4 = lot1(lot)
                                            CASE lot2(lot): win4 = lot2(lot)
                                            CASE lot4(lot): win4 = lot4(lot)
                                            CASE lot5(lot): win4 = lot5(lot)
                                        END SELECT

                                        FOR e = 1 TO lot
                                            SELECT CASE lot5(e)
                                                CASE lot1(lot): win5 = lot1(lot)
                                                CASE lot2(lot): win5 = lot2(lot)
                                                CASE lot3(lot): win5 = lot3(lot)
                                                CASE lot4(lot): win5 = lot4(lot)
                                            END SELECT

                                        NEXT e
                                    NEXT d

                                NEXT c

                            NEXT b
                        NEXT a
                        FOR f = 1 TO lot
                            SELECT CASE ball(f)
                                CASE ball(lot): winb = ball(lot)
                            END SELECT
                        NEXT f
                    END IF
                    LOCATE 19, 1: PRINT "                                       "
                    LOCATE 19, 1: PRINT "Luck:"; win1; "-"; win2; "-"; win3; "-"; win4; "-"; win5; "*"; winb
                    lot = lot + 1
                END IF
                IF lot >= 15 THEN
                    win1 = 0
                    win2 = 0
                    win3 = 0
                    win4 = 0
                    win5 = 0
                    winb = 0
                    lot = 1
                END IF
            END IF
        CASE CHR$(27): goto 1:
        CASE "C": GOTO 2:
    END SELECT
LOOP UNTIL ext = 1
