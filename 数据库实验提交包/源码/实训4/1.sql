 -- 1) 查询销售总额前三的理财产品
--   请用一条SQL语句实现该查询：


select *  from(
    select pro_purchase_time as pyear,
        rank() over(partition by pro_purchase_time order by sum(p_amount*pro_quantity) desc) as rk,
        p_id,
        sum(p_amount*pro_quantity) as sumamount
    from 
        (select pro_pif_id, pro_quantity,pro_type,year(pro_purchase_time) as pro_purchase_time from property) as a
        left join finances_product  on a.pro_pif_id = finances_product.p_id 
    where pro_type = 1 and pro_purchase_time in (2010,2011)
    group by p_id,pro_purchase_time
) as b
limit 0,6
/*  end  of  your code  */