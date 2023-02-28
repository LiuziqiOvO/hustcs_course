-- 编写一存储过程，自动安排某个连续期间的大夜班的值班表:

delimiter $$
create procedure sp_night_shift_arrange(in start_date date, in end_date date)
begin
    declare done, typ, wk int default false;
    declare doc, nur1, nur2, temp_Chief char(30);
    declare cur1 cursor for select e_name from employee where e_type = 3;
    declare cur2 cursor for select e_type, e_name from employee where e_type < 3;
    declare continue handler for not found set done = true;
    open cur1;
    open cur2;
    while start_date <= end_date do
        fetch cur1 into nur1;
        if done then
            close cur1;
            open cur1;
            set done = false;
            fetch cur1 into nur1;
        end if;
        fetch cur1 into nur2;
        if done then
            close cur1;
            open cur1;
            set done = false;
            fetch cur1 into nur2;
        end if;
        
        set wk = weekday(start_date);
        if wk = 0 and temp_Chief is not null then
            set doc = temp_Chief;
            set temp_Chief = null;
        else
            fetch cur2 into typ, doc;
            if done then
                close cur2;
                open cur2;
                set done = false;
                fetch cur2 into typ, doc;
            end if;
            if wk > 4 and typ = 1 then
                set temp_Chief = doc;
                fetch cur2 into typ, doc;
                if done then
                    close cur2;
                    open cur2;
                    set done = false;
                    fetch cur2 into typ, doc;
                end if;
            end if;
        end if;
        insert into night_shift_schedule values (start_date, doc, nur1, nur2);
        set start_date = date_add(start_date, interval 1 day);
    end while;
end$$

delimiter ;
