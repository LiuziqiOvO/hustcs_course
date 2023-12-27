-- 9) 查询购买了货币型(f_type='货币型')基金的用户的名称、电话号、邮箱。
--   请用一条SQL语句实现该查询：


-- SELECT c_name, c_phone, c_mail  FROM client where c_id in (
--     SELECT pro_c_id FROM property where pro_c_id=client.c_id AND pro_pif_id in 
--             (SELECT f_id fund FROM fund where f_id=pro_pif_id AND f_type='货币型')
-- )
-- order by c_id;


SELECT c_name, c_phone, c_mail  FROM client where c_id in (
    SELECT pro_c_id FROM property where pro_c_id=client.c_id AND pro_type=3 AND pro_pif_id in (SELECT f_id fund FROM fund where f_id=pro_pif_id  AND f_type='货币型')
)
order by c_id;



/*  end  of  your code  */
