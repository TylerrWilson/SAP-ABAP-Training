     REPORT Z_ABPTRAIN002_EXER11.
************************************************************************
*Report Name: Z_ABPTRAIN002_EXER11.
*Report Title:
*User:
*Date:
************************************************************************
DATA: gv_employeeID TYPE n LENGTH 8,
     gv_fName       TYPE STRING,
     gv_lName       TYPE STRING,
     gv_dreamSalary TYPE n LENGTH 6,
     gv_hobby       TYPE STRING.


gv_employeeID =  11629708.
gv_fName =       'Tyler'.
gv_lName =        'Wilson'.
gv_dreamSalary = '120000'.
gv_hobby =       'Video games'.

WRITE:'*****************************************************************'.
SKIP: 2.
WRITE:
        'First name:  ',gv_fName,
      / 'Last name:   ',gv_lName,
      / 'Dream salary:',gv_dreamSalary,
      / 'Hobby:       ',gv_hobby.
SKIP: 2.
WRITE:'*****************************************************************'.