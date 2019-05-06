*&---------------------------------------------------------------------*
*& Report Z_ABPTRAIN002_EXER22
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*

REPORT Z_ABPTRAIN002_EXER22.
************************************************************************
*Report Name:  Z_ABPTRAIN002_EXER22
*Report Title: Exercise COND Statement 2
*User:         TWilson
*Date:         02/14/2018
************************************************************************

*Allows users to set an interger
PARAMETERS: p_int1 TYPE I.

*the integer the user selected will determines how many times the Do loop executes
DO p_int1 TIMES.
  WRITE:/ 'The index value is: '.
  WRITE: sy-index.
ENDDO.