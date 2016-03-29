10 REM Created by Chris Osborn <fozztexx@fozztexx.com>
20 REM http://insentricity.com

1000 REM Identify Apple II
1010 REM http://www.1000bit.it/support/manuali/apple/technotes/misc/tn.misc.07.html
1020 I1 = PEEK(64435):I2 = PEEK(64286):I3 = PEEK(64448)
1030 I4 = PEEK(64477):I5 = PEEK(64446):I6 = PEEK(64447)
1040 IF I1 = 56 THEN PRINT "APPLE ][":END
1050 IF I1 <> 234 THEN 1080
1060 IF I2 = 138 THEN PRINT "Apple ///":END
1070 PRINT "APPLE ][+":END
1080 IF I1 <> 6 THEN 2000
1090 IF I3 = 234 THEN PRINT "Apple IIe":END
1100 IF I3 <> 224 THEN 1130
1110 IF I4 = 2 AND I5 = 0 THEN PRINT "Apple IIe Card for Macintosh LC":END
1120 PRINT "Apple IIe (enhanced)":END
1130 IF I6 = 5 THEN PRINT "Apple IIc Plus":END
1140 PRINT "Apple IIc":END

2000 REM Identify Commodore
2010 IF I1 = 220 THEN PRINT "COMMODORE 64":END
2020 IF I1 = 0 THEN PRINT "VIC-20":END
2030 IF I1 = 255 THEN PRINT "COMMODORE 128":END
2040 IF I1 = 169 THEN PRINT "Commodore PET":END
