-- select 
drop table emp_grade;

PROMPT 1) -----------------------------------------------------------------------------------------------------------------------------------------

select * from emp;

PROMPT 2) -----------------------------------------------------------------------------------------------------------------------------------------

select distinct job from emp;

PROMPT 3) ----------------------------------------------------------------------------------------------------------------------------------------- 

select * from emp where job = 'MANAGER';

PROMPT 4) -----------------------------------------------------------------------------------------------------------------------------------------

select * from emp where HIREDATE < '01-JAN-1981';


PROMPT 5) -----------------------------------------------------------------------------------------------------------------------------------------

SELECT EMPNO, ENAME, JOB, HIREDATE FROM EMP WHERE JOB = 'MANGAER';


PROMPT 6) -----------------------------------------------------------------------------------------------------------------------------------------

ALTER TABLE EMP modify(EXP NUMBER);
update emp set exp = trunc((SYSDATE-HIREDATE)/365.25,1);

select * from emp where mgr = 7639;


PROMPT 7) -----------------------------------------------------------------------------------------------------------------------------------------

select * from emp where comm > sal;


PROMPT 8) -----------------------------------------------------------------------------------------------------------------------------------------

alter table emp modify (daily_sal number);
update emp set daily_sal=trunc((sal)/30);
select * from emp where daily_sal > 100;

PROMPT 9) -----------------------------------------------------------------------------------------------------------------------------------------

select * from emp where deptno = 10 or deptno = 20;

PROMPT 10) -----------------------------------------------------------------------------------------------------------------------------------------

select * from emp where MGR is NOT NULL;

PROMPT 11) -----------------------------------------------------------------------------------------------------------------------------------------

select * from emp where job = 'CLERK' and deptno = 20;


PROMPT 12) -----------------------------------------------------------------------------------------------------------------------------------------


PROMPT 15) -----------------------------------------------------------------------------------------------------------------------------------------

select distinct dept.dname from dept, emp where emp.deptno = dept.deptno;

PROMPT 16) -----------------------------------------------------------------------------------------------------------------------------------------

select * from emp where (sal+(sal*0.2))>3000; 


PROMPT 17) -----------------------------------------------------------------------------------------------------------------------------------------

alter table emp add(sal_in_dollars number);
update emp set sal_in_dollars = sal/80;
select ename, sal_in_dollars from emp where (sal_in_dollars+(sal_in_dollars*0.15));


PROMPT 23) -----------------------------------------------------------------------------------------------------------------------------------------

select distinct dept.dname, emp.job from emp, dept where dept.deptno = emp.deptno;


PROMPT 52) -----------------------------------------------------------------------------------------------------------------------------------------

create table emp_grade as select * from emp e join salgrade s on sal between losal and hisal;

select exp from emp_grade where grade = 3;

-- UPDATE

PROMPT 4) -----------------------------------------------------------------------------------------------------------------------------------------

update emp set sal = (select max(sal) where grade = 2), deptno = (select deptno from emp where ename='blake'),  mgr = (select empno from emp where ename='blake'), where ename='allen';

PROMPT 5) -----------------------------------------------------------------------------------------------------------------------------------------

update emp set sal = (sal+(sal*0.02)), comm = comm + 250, mgr = (select EMPNO from emp where ename = 'jones') where job = 'salesmen';


PROMPT 6) -----------------------------------------------------------------------------------------------------------------------------------------

update emp set sal = (select sal from emp where exp = (select max(exp) from emp where grade = 3)) where job = 'clerk' and exp = select max(exp) for


PROMPT 7) -----------------------------------------------------------------------------------------------------------------------------------------
update emp set dept = 20 where dept = 10, dept = 


PROMPT 10) -----------------------------------------------------------------------------------------------------------------------------------------
update emp set mgr = (select empno from emp where enmae = 'blake') where 


PROMPT 11) -----------------------------------------------------------------------------------------------------------------------------------------

update emp set sal = (sal+sal*0.012) where grade = 2


PROMPT 12) -----------------------------------------------------------------------------------------------------------------------------------------

update emp set 