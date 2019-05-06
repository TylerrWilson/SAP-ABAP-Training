*&---------------------------------------------------------------------*
*& Report Z_ABPTRAIN002_EXER24
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*

REPORT Z_ABPTRAIN002_EXER24 MESSAGE-ID ZTEST.
************************************************************************
*Report Name:  Z_ABPTRAIN002_EXER24
*Report Title: Exercise - Cond Statement
*User:         TWilson
*Date:         05/01/2019
************************************************************************
*Define data type for equation solutions
DATA: lv_num  TYPE I.


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

*Adding error messages if the user trys to divide or usr modular with a 0
AT SELECTION-SCREEN.
  IF p_num2 = 0 AND rb_quot = 'X'.
    MESSAGE E001.
  ENDIF.

  IF p_num2 = 0 AND rb_mod = 'X'.
    MESSAGE E001.
  ENDIF.

*Case statement to determine what equations solution will be generated.
*Output the solutions once executed
START-OF-SELECTION.
  CASE 'X'.
    WHEN rb_sum.
      lv_num = p_num1 + p_num2.
      WRITE: 'Sum =      ' ,lv_num  LEFT-JUSTIFIED.

    WHEN rb_diff.
      lv_num = p_num1 - p_num2.
      WRITE: /'Difference=' ,lv_num LEFT-JUSTIFIED.

    WHEN rb_prod.
      lv_num = p_num1 * p_num2.
      WRITE:'Product=   ' ,lv_num LEFT-JUSTIFIED.

    WHEN rb_quot.
      lv_num = p_num1 / p_num2.
      WRITE: /'Quotient=  ' ,lv_num LEFT-JUSTIFIED.

    WHEN rb_mod.
      lv_num  = p_num1 mod p_num2.
      WRITE: /'Modulo=    ' ,lv_num  LEFT-JUSTIFIED.
  ENDCASE.