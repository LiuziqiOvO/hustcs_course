-- 8) 查询持有两张(含）以上信用卡的用户的名称、身份证号、手机号。
--    请用一条SQL语句实现该查询：


SELECT c_name,c_id_card,c_phone FROM client
    where (c_id,"信用卡") in (
        SELECT b_c_id,b_type FROM bank_card 
            group by b_c_id, b_type
            having count(*) > 1 

    );



/*  end  of  your code  */
