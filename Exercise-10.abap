
REPORT Z_ABPTRAIN002_EXER910.
************************************************************************
*Report Name: Z_ABPTRAIN002_EXER10.
*Report Title:
*User:
*Date:
************************************************************************

CONSTANTS: gc_birthday     TYPE D Value '19950112',
           gc_dreamSalary  TYPE N LENGTH 6 VALUE '120000',
           gc_hobby        TYPE STRING VALUE 'Video games'.



WRITE:'*****************************************************************'.
SKIP: 2.
WRITE:
      / 'Birthdate:   ', gc_birthday,
      / 'Dream salary:', gc_dreamSalary,
      / 'Hobby:       ', gc_hobby.
SKIP: 2.
WRITE:'*****************************************************************'.