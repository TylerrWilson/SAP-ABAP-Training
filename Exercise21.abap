*&---------------------------------------------------------------------*
*& Report Z_ABPTRAIN002_EXER21
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*

REPORT Z_ABPTRAIN002_EXER21.
************************************************************************
*Report Name:  Z_ABPTRAIN002_EXER21
*Report Title: Exercise - Cond Statement
*User:         TWilson
*Date:         02/14/2019
************************************************************************
*Define data types for equation solutions
DATA: gv_sum  TYPE I,
      gv_diff TYPE I,
      gv_prod TYPE I,
      gv_quot TYPE I,
      gv_mod  TYPE I.

*Paremeters for user to enter two Integers
PARAMETERS: p_num1 TYPE I,
            p_num2 TYPE I.

*Defining the radio buttons and assigning them to a group
SELECTION-SCREEN SKIP.
SELECTION-SCREEN BEGIN OF BLOCK rad1
            WITH FRAME TITLE text-009.
  PARAMETERS: rb_sum  RADIOBUTTON GROUP g1,
              rb_diff RADIOBUTTON GROUP g1,
              rb_prod RADIOBUTTON GROUP g1,
              rb_quot RADIOBUTTON GROUP g1,
              rb_mod  RADIOBUTTON GROUP g1.
SELECTION-SCREEN END of BLOCK rad1.

*Equations using the integers input by user
gv_sum = p_num1 + p_num2.
gv_diff = p_num1 - p_num2.
gv_prod = p_num1 * p_num2.
gv_quot = p_num1 / p_num2.
gv_mod  = p_num1 mod p_num2.

*IF/ELSEIF statement to determine what equations solution will but generated.
*Output to the solutions once executed
  IF rb_sum = 'X'.
    WRITE: 'Sum =      ' ,gv_sum  LEFT-JUSTIFIED.
  ELSEIF rb_diff = 'X'.
    WRITE: /'Difference=' ,gv_diff LEFT-JUSTIFIED.
  ELSEIF rb_prod = 'X'.
    WRITE:'Product=   ' ,gv_prod LEFT-JUSTIFIED.
  ELSEIF rb_quot = 'X'.
    WRITE: /'Quotient=  ' ,gv_quot LEFT-JUSTIFIED.
  ELSEIF rb_mod = 'X'.
    WRITE: /'Modulo=    ' ,gv_mod  LEFT-JUSTIFIED.
ENDIF.