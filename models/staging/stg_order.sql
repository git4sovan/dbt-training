select 
o.orderid,
o.orderdate,
o.shipdate,
o.shipmode,
(ordersellingprice -ordercostprice) profit,
c.customername,
c.segment,
c.country,
p.category,
p.productname,
p.subcategory

 from {{ ref('raw_order') }} as o
 left  join
 {{ ref('raw_customer') }} as c
  on o.customerid=c.customerid
 left  join
 {{ ref('raw_product') }} as p
 on o.porductid=p.productid

