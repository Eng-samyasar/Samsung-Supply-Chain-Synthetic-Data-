use Samsung;

create view fact_analysis_viewas

select distinct s.sales_id,
d.day,d.month ,d.year,
c.country,c.customer_name,
p.category,p.product_name,
i.Safety_Status,sh.Shipment_Status,
s.quantity_sold,s.unit_price,s.net_revenue,s.total_cost,s.profit,s.profit_margin_pct
from  fact_sales s left join dim_product p
on s.product_id = p.product_id
left join dim_customer c
on s.customer_id = c.customer_id 
left join dim_date d 
on s.date_key =d.date_key
left join fact_inventory i
on s.product_id = i.product_id
left join fact_shipment sh
on s.product_id = sh.product_id;