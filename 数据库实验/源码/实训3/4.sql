-- 4) 查询办理了储蓄卡的客户名称、手机号、银行卡号。 查询结果结果依客户编号排序。
--    请用一条SQL语句实现该查询：
select c_name,c_phone,b_number from bank_card,client client
    where client.c_id = b_c_id 
    AND b_type = '储蓄卡'
ORDER BY c_id;


/*  end  of  your code  */
