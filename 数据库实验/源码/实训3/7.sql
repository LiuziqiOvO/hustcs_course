
-- 7) 查询身份证隶属武汉市没有买过任何理财产品的客户的名称、电话号、邮箱。
--    请用一条SQL语句实现该查询：

SELECT c_name, c_phone, c_mail FROM client 
    where c_id_card LIKE "4201%" 
    AND NOT EXISTS (
            SELECT pro_c_id FROM property where pro_c_id = client.c_id AND pro_type=1
        )
    

order by c_id;

/*  end  of  your code  */