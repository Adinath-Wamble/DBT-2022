create table tempp(
string1 varchar(100),
string2 varchar(100),
msg varchar(100));

drop table tempp;
delimiter //
create procedure PROC1(msg1 varchar(100),msg2 varchar(100))
begin
declare mg varchar(100);
declare n int;
select locate(msg1,msg2) into n;
if n> 0 then 
insert  into tempp values(msg1,msg2,'String1 exists in String2');
else 
insert  into tempp values(msg1,msg2,'String1  does not exists in String2');
end if ;
select *from tempp;
end; //
delimiter ;

call PROC1('dac','cdac');