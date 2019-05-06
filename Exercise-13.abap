REPORT Z_ABPTRAIN002_EXER13.
************************************************************************
*Report Name: Z_ABPTRAIN002_EXER13.
*Report Title:
*User:
*Date:
************************************************************************

DATA:  gv_fName       TYPE STRING,
       gv_lName       TYPE STRING,
       gv_birthdate   TYPE DATE.

gv_fName =       'Tyler'.
gv_lName =        'Wilson'.
gv_birthdate =    '19951201'.

WRITE:'*****************************************************************'.
SKIP: 2.
WRITE: 'First Initial:', gv_fName(1),
      / 'Last Initial:', gv_lName(1),
      / 'Birth month:',  gv_birthdate+6(2),
      / 'Birth Day:',    gv_birthdate+4(2),
      / 'Birth Year:',   gv_birthdate(4).

SKIP: 2.
WRITE:'*****************************************************************'.