-- 6) 查询资产表中所有资产记录里商品收益的众数和它出现的次数。
--    请用一条SQL语句实现该查询：

select pro_income , count(*) as presence
    from property group by pro_income
    having count(*)  >= ALL ( select count(*) 
                            from property
                            group by pro_income )


/*  end  of  your code  */

-- 字段名称	数据类型	约束	说明
-- pro_id	INTEGER	PRIMARY KEY	资产编号
-- pro_c_id	INTEGER	NOT NULL	FOREIGN KEY
-- pro_pif_id	INTEGER	NOT NULL	业务约束
-- pro_type	INTEGER	NOT NULL	商品类型:1表示理财产品;2表示保险;3表示基金
-- pro_status	CHAR(20)	无	商品状态:'可用','冻结'
-- pro_quantity	INTEGER	无	商品数量
-- pro_income	INTEGER	无	商品收益
-- pro_purchase_time	DATE	无	购买时间-- 6) 查询资产表中所有资产记录里商品收益的众数和它出现的次数。
--    请用一条SQL语句实现该查询：

select pro_income , count(*) as presence
    from property group by pro_income
    having count(*)  >= ALL ( select count(*) 
                            from property
                            group by pro_income )


/*  end  of  your code  */
