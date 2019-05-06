*&---------------------------------------------------------------------*
*& Report Z_ABPTRAIN002_EXER23
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*

REPORT Z_ABPTRAIN002_EXER23.
************************************************************************
*Report Name: Z_ABPTRAIN002_EXER23
*Report Title:Exercise - Loops
*User:TWilson
*Date:04/30/2019
************************************************************************

*Allows user to set parameters
PARAMETERS: p_par1 TYPE I, "Number of loop passes
            p_par2 TYPE I. "Threshold Index

*Executes the loop the amount of times specified and only shows the integers larger than the second number.
DO p_par1 TIMES.
  IF sy-index > p_par2.
    WRITE:/ 'The index value is: ', sy-index. "If the index is greater than the p_par2 continue the loop.
  ENDIF.
ENDDO.