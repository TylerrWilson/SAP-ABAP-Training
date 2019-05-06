*&---------------------------------------------------------------------*
*& Report Z_ABPTRAIN002_EXER13.
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*

REPORT Z_ABPTRAIN002_EXER14.
************************************************************************
*Report Name:   Z_ABPTRAIN002_EXER13.
*Report Title:  Concatenate First and last name
*User:          TWilson
*Date:          2/13/2019
************************************************************************

*Declaring data types
DATA:  gv_fName       TYPE STRING,
       gv_lName       TYPE STRING,
       gv_birthdate   TYPE DATE,
       gv_concat      TYPE string.

gv_fName =       'Tyler'.
gv_lName =        'Wilson'.

*Concatenate fisrt and last name into gv_concat
CONCATENATE gv_fname gv_lname INTO gv_concat SEPARATED BY space.

*Program output
WRITE:'*****************************************************************'.
SKIP: 2.
WRITE: 'First Name:', gv_fName,
      / 'Last Name:', gv_lName.
SKIP:1.
WRITE: gv_concat.
SKIP: 2.
WRITE:'*****************************************************************'.