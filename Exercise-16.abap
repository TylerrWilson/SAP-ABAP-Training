*&---------------------------------------------------------------------*
*& Report Z_ABPTRAIN002_EXER13.
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*

REPORT Z_ABPTRAIN002_EXER15.
************************************************************************
*Report Name:  Z_ABPTRAIN002_EXER13.
*Report Title: Creating Parameters
*User:         TWilson
*Date:         02/14/2019
************************************************************************

*Sets the data types
DATA:  gv_fName       TYPE STRING,
       gv_lName       TYPE STRING,
       gv_birthdate   TYPE DATE.

*Sets parameters for users to input data defined below
PARAMETERS: p_empNum  TYPE I,
            p_fName   Type STRING,
            p_lName   Type STRING,
            p_birth   Type D,
            p_salary  TYPE I,
            p_hobby   TYPE STRING.

*Displays the users input
WRITE:'*****************************************************************'.
SKIP: 1.
WRITE:  'First Name:   ', p_fName,
      / 'Last Name:    ', p_lName,
      / 'Birth month:  ', p_birth,
      / 'Dream salary: ', p_salary,
      / 'Hobby:        ', p_hobby.
SKIP: 1.
WRITE:'*********    ********************************************************'.