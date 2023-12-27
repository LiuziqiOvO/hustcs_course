-- 10) 查询当前总的可用资产收益(被冻结的资产除外)前三名的客户的名称、身份证号及其总收益，按收益降序输出，总收益命名为total_income。不考虑并列排名情形。
--    请用一条SQL语句实现该查询：



SELECT c_name,c_id_card, SUM(pro_income) as total_income  
    FROM property left join client on client.c_id=pro_c_id 
    where pro_status != '冻结'
    group by c_id 
    order by total_income DESC
    LIMIT 0,3




/*  end  of  your code  */ 
