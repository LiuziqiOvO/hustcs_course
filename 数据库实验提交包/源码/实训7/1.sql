use fib;

-- 创建存储过程`sp_fibonacci(in m int)`，向表fibonacci插入斐波拉契数列的前m项，及其对应的斐波拉契数。fibonacci表初始值为一张空表。请保证你的存储过程可以多次运行而不出错。

drop procedure if exists sp_fibonacci;
delimiter $$
create procedure sp_fibonacci(in m int)
begin
######## 请补充代码完成存储过程体 ########

declare n int default 0;
declare a int default -1;
declare b decimal(21) unsigned default 1;
declare c decimal(21) unsigned default 0;
TRUNCATE TABLE fibonacci;
WHILE n<m DO
	SET c=a+b;
    SET a=b;
    SET b=c;
    INSERT into fibonacci values(n,c);
    SET n=n+1;
END WHILE;
end $$

delimiter ;

 
