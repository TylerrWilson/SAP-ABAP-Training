REPORT Z_ABPTRAIN002_EXER12.
************************************************************************
*Report Name: Z_ABPTRAIN002_EXER12.
*Report Title:
*User:
*Date:
************************************************************************
TYPES: BEGIN OF ts_profile,
     gv_employeeID TYPE n LENGTH 8,
     gv_fName       TYPE STRING,
     gv_lName       TYPE STRING,
     gv_dreamSalary TYPE n LENGTH 6,
     gv_hobby       TYPE STRING,
     END OF ts_profile.

DATA:wa_profile TYPE ts_profile.

wa_profile-gv_employeeID =  11629708.
wa_profile-gv_fName =       'Tyler'.
wa_profile-gv_lName =        'Wilson'.
wa_profile-gv_dreamSalary = '120000'.
wa_profile-gv_hobby =       'Video games'.

WRITE:'*****************************************************************'.
SKIP: 2.
WRITE:
        'First name:  ',wa_profile-gv_fName,
      / 'Last name:   ',wa_profile-gv_lName,
      / 'Dream salary:',wa_profile-gv_dreamSalary,
      / 'Hobby:       ',wa_profile-gv_hobby.
SKIP: 2.
WRITE:'*****************************************************************'.