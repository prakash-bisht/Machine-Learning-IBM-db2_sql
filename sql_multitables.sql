
--- Query 1A ---
select * from employees where JOB_ID IN (select JOB_IDENT from jobs)
;	
--- Query 1B ---	
select * from employees where JOB_ID IN (select JOB_IDENT from jobs where JOB_TITLE= 'Jr. Designer')
;
--- Query 1C ---
select JOB_TITLE, MIN_SALARY,MAX_SALARY,JOB_IDENT from jobs where JOB_IDENT IN (select JOB_ID from employees where SALARY > 70000 )
;	
--- Query 1D ---
select JOB_TITLE, MIN_SALARY,MAX_SALARY,JOB_IDENT from jobs where JOB_IDENT IN (select JOB_ID from employees where YEAR(B_DATE)>1976 )
;
--- Query 1E ---
select JOB_TITLE, MIN_SALARY,MAX_SALARY,JOB_IDENT from jobs where JOB_IDENT IN (select JOB_ID from employees where YEAR(B_DATE)>1976 and SEX='F' )
;
--- Query 2A ---
select * from employees, jobs
;
--- Query 2B ---
select * from employees, jobs where employees.JOB_ID = jobs.JOB_IDENT
;
--- Query 2C ---
select * from employees E, jobs J where E.JOB_ID = J.JOB_IDENT
;
--- Query 2D ---
select EMP_ID,F_NAME,L_NAME, JOB_TITLE from employees E, jobs J where E.JOB_ID = J.JOB_IDENT
;
--- Query 2E ---
select E.EMP_ID,E.F_NAME,E.L_NAME, J.JOB_TITLE from employees E, jobs J where E.JOB_ID = J.JOB_IDENT
;


SELECT * FROM EMPLOYEES WHERE JOB_ID IN (SELECT JOB_IDENT FROM JOBS);

SELECT * FROM EMPLOYEES WHERE JOB_ID IN (SELECT JOB_IDENT FROM JOBS WHERE JOB_TITLE = "Jr. Designer");

SELECT JOB_TITLE,JOB_IDENT FROM JOBS WHERE JOB_IDENT IN (SELECT JOB_ID FROM EMPLOYEES WHERE SALARY > 70000);

SELECT JOB_TITLE,JOB_IDENT FROM JOBS WHERE JOB_IDENT IN (SELECT JOB_ID FROM EMPLOYEES WHERE YEAR(B_DATE)>1976 AND SEX='F' );








SELECT * FROM EMPLOYEES, JOBS;

SELECT * FROM EMPLOYEES, JOBS WHERE EMPLOYEES.JOB_ID = JOBS.JOB_IDENT;

SELECT * FROM EMPLOYEES E, JOBS J WHERE E.JOB_ID = J.JOB_IDENT;

