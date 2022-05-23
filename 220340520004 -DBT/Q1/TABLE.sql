Create table DEPT(
DEPTNO int(2),
DNAME varchar(15),
LOC varchar(10)
);
insert into dept(deptno, dname, loc) 
values(10,'ACCOUNTING', 'NEW YORK'),
(20 ,'RESEARCH', 'DALLAS'),
(30, 'SALES', 'CHICAGO'),
(40, 'OPERATIONS', 'BOSTON');

Create table EMP(
EMPNO int(4),
ENAME varchar(10),
JOB varchar(9),
HIREDATE date,
SAL float(7,2),
COMM float(7,2),
DEPTNO int(2)
);

insert into emp(empno, ename, job , hiredate,sal, comm, deptno)
values(7839, 'KING', 'MANAGER', '1991-11-17', 5000, NULL, 10),
(7698, 'BLAKE', 'CLERK', '1981-05-01', 2850, NULL, 30),
(7782, 'CLARK', 'MANAGER','1981-06-09', 2450, NULL, 10),
(7566, 'JONES', 'CLERK', '1981-04-02', 2975, NULL, 20),
(7654, 'MARTIN', 'SALESMAN', '1981-09-28', 1250, 1400, 30),
(7499, 'ALLEN', 'SALESMAN', '1981-02-20', 1600, 300, 30);

-- Display all the employees where SAL between 2500 and 5000 (inclusive of both).
select * from emp
where sal between 2500 and 5000;




-- Display all the ENAMEs in descending order of ENAME.
select ename from emp 
order by ename desc;


-- Display all the JOBs in lowercase.
select lower(job) from emp;

-- Display the ENAMEs and the lengths of the ENAMEs.
select ename , length(ename) from emp;


-- Display the DEPTNO and the count of employees who belong to that DEPTNO
select deptno,count(*) from emp
group by deptno;

-- Display the DNAMEs and the ENAMEs who belong to that DNAME.
select dept.dname , emp.ename from emp, dept
where dept.deptno = emp.deptno ;

-- Display the position at which the string ‘AR’ occurs in the ename.
select locate('AR',ename) from emp;


-- 10. Display the HRA for each employee given that HRA is 20% of SAL.
select ename , sal*0.2 HRA from emp ;
