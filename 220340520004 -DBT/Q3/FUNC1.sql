delimiter //
 create function FUNC1(a int  , b  int , c int )
 returns varchar(50) 
 deterministic
 begin 
 if(a+b>c and b+c> a and c+a> b) then 
 return 'TRUE' ;
 else 
 return 'FALSE';
 end if;
 end ; //
 delimiter ;
 select func1(1,3,5) from dual;