START TRANSACTION;
CREATE TABLE another_T (col1 INT, col2 INT, col3 INT, col4 INT, col5 INT, col6 INT, col7 INT, col8 INT);
INSERT INTO another_T VALUES (1,2,3,4,5,6,7,8), (11,22,33,44,55,66,77,88), (111,222,333,444,555,666,777,888), (1111,2222,3333,4444,5555,6666,7777,8888);
CREATE TABLE LongTable (col1 INT, col2 INT, col3 INT, col4 INT, col5 INT, col6 INT, col7 INT, col8 INT);
INSERT INTO LongTable VALUES (1,7,2,1,1,909,1,1), (2,7,2,2,3,4,4,6), (NULL,5,4,81,NULL,5,-10,1), (-90,NULL,0,NULL,2,0,1,NULL);
CREATE TABLE integers(i INTEGER);
INSERT INTO integers VALUES (1), (2), (3), (NULL);
CREATE TABLE tbl_ProductSales (col1 INT, col2 varchar(64), col3 varchar(64), col4 INT, col5 REAL, col6 date); 
INSERT INTO tbl_ProductSales VALUES (1,'Game','Mobo Game',200, 1.2, date '2015-12-12'),(2,'Game','PKO Game',400, -1.0, date '2012-02-10'),(3,'Fashion','Shirt',500, NULL, date '1990-01-01'),
(4,'Fashion','Shorts',100, 102.45, date '2000-03-08'),(5,'Sport','Ball',0, 224.78, NULL);
CREATE TABLE analytics (aa INT, bb INT, cc BIGINT);
INSERT INTO analytics VALUES (15, 3, 15), (3, 1, 3), (2, 1, 2), (5, 3, 5), (NULL, 2, NULL), (3, 2, 3), (4, 1, 4), (6, 3, 6), (8, 2, 8), (NULL, 4, NULL);
CREATE TABLE tab0(col0 INTEGER, col1 INTEGER, col2 INTEGER);
INSERT INTO tab0 VALUES (97,1,99), (15,81,47),(87,21,10);
CREATE TABLE tab1(col0 INTEGER, col1 INTEGER, col2 INTEGER);
INSERT INTO tab1 VALUES (51,14,96), (85,5,59), (91,47,68);
CREATE TABLE tab2(col0 INTEGER, col1 INTEGER, col2 INTEGER);
INSERT INTO tab2 VALUES (64,77,40), (75,67,58),(46,51,23);

select 
 case when subq_1.c1 is not null then subq_1.c0 else subq_1.c0 end
 as c0
from 
 (select 
 ref_0.col2 as c0
 from 
 tab2 as ref_0
 where true
 limit 93) as subq_0
 left join (select 
 ref_1.i as c0, 
 case when (true) 
 or (63 is null) then ref_2.col1 else ref_2.col1 end
 as c1, 
 ref_1.i as c2
 from 
 integers as ref_1
 right join tab0 as ref_2
 on (95 is null)
 where true
 limit 62) as subq_1
 on ((subq_0.c0 is null) 
 and (((subq_0.c0 is not null) 
 or (exists (
 select 
 subq_0.c0 as c0
 from 
 analytics as ref_3
 where (((false) 
 or (subq_1.c1 is not null)) 
 and (true)) 
 and (false)))) 
 and (((false) 
 or ((exists (
 select 
 ref_4.aa as c0, 
 subq_1.c2 as c1, 
 subq_1.c2 as c2, 
 subq_1.c0 as c3, 
 ref_4.cc as c4
 from 
 analytics as ref_4
 where (((true) 
 and (true)) 
 and (ref_4.aa is not null)) 
 and (false))) 
 or (false))) 
 and (subq_1.c0 is null))))
where subq_0.c0 is not null
limit 32; -- 3 NULL values on 3 rows, 1 column

select
 subq_0.c18 as c0, 
 19 as c1, 
 subq_1.c2 as c2, 
 subq_1.c3 as c3, 
 subq_0.c6 as c4
 from 
 (select 
 ref_0.col1 as c0, 
 ref_0.col5 as c1, 
 ref_0.col2 as c2, 
 ref_0.col1 as c3, 
 ref_0.col5 as c4, 
 ref_0.col5 as c5, 
 ref_0.col5 as c6, 
 ref_0.col1 as c7, 
 ref_0.col4 as c8, 
 ref_0.col3 as c9, 
 ref_0.col6 as c10, 
 ref_0.col1 as c11, 
 case when ref_0.col4 is null then ref_0.col2 else ref_0.col2 end
 as c12, 
 ref_0.col3 as c13, 
 ref_0.col2 as c14, 
 ref_0.col4 as c15, 
 ref_0.col4 as c16, 
 ref_0.col4 as c17, 
 ref_0.col4 as c18, 
 ref_0.col3 as c19
 from 
 tbl_productsales as ref_0
 where ref_0.col3 is not null
 limit 136) as subq_0
 inner join (select 
 ref_1.i as c0, 
 ref_1.i as c1, 
 ref_1.i as c2, 
 ref_1.i as c3, 
 ref_1.i as c4
 from 
 integers as ref_1
 where exists (
 select 
 ref_1.i as c0, 
 ref_1.i as c1, 
 ref_2.col2 as c2, 
 ref_2.col1 as c3
 from 
 tab1 as ref_2
 where (((ref_1.i is null) 
 and (ref_2.col0 is null)) 
 and ((true) 
 or (false))) 
 and (((ref_1.i is null) 
 and (67 is null)) 
 and (true)))
 limit 41) as subq_1
 on ((false) 
 or (subq_1.c4 is null))
where subq_1.c1 is null
limit 151;
-- empty result set

select 
 subq_0.c4 as c0, 
 subq_0.c8 as c1, 
 subq_0.c2 as c2, 
 1 as c3, 
 subq_0.c0 as c4, 
 subq_0.c9 as c5, 
 subq_0.c9 as c6, 
 subq_0.c6 as c7
from 
 (select 
 ref_4.i as c0, 
 case when (false) 
 or (ref_7.col3 is not null) then ref_2.col2 else ref_2.col2 end
 as c1, 
 ref_7.col6 as c2, 
 ref_7.col1 as c3, 
 ref_4.i as c4, 
 ref_2.col0 as c5, 
 ref_3.col3 as c6, 
 ref_0.col1 as c7, 
 ref_2.col2 as c8, 
 ref_3.col2 as c9, 
 ref_7.col1 as c10, 
 ref_1.aa as c11, 
 ref_2.col1 as c12, 
 ref_1.cc as c13, 
 ref_2.col2 as c14, 
 ref_1.cc as c15
 from 
 tab0 as ref_0
 inner join analytics as ref_1
 inner join tab2 as ref_2
 on (ref_2.col2 is not null)
 inner join another_t as ref_3
 on (ref_1.bb is null)
 inner join integers as ref_4
 on (exists (
 select 
 79 as c0
 from 
 integers as ref_5
 where (true) 
 and (((exists (
 select 
 24 as c0, 
 ref_2.col2 as c1, 
 ref_6.i as c2, 
 ref_3.col6 as c3
 from 
 integers as ref_6
 where true)) 
 or (false)) 
 and ((true) 
 and (ref_4.i is not null)))))
 inner join tbl_productsales as ref_7
 on (ref_2.col2 = ref_7.col1 )
 on ((ref_1.bb is null) 
 or ((false) 
 and (false)))
 where ref_3.col4 is null
 limit 59) as subq_0
where subq_0.c6 is null
limit 106;
-- empty result set

select 
 1
 from 
 tab0
 inner join analytics as ref_1
 inner join integers as ref_4
 on (exists (
 select 
 1
 where (exists (
 select 
 1)
 and (ref_4.i is not null))))
 on (ref_1.bb is null);
 -- empty result set

select
  subq_0.c2 as c0, 
  subq_0.c2 as c1, 
  subq_0.c3 as c2, 
  subq_0.c1 as c3 from 
  (select distinct 
      ref_0.col1 as c0, 
      ref_0.col1 as c1, 
      ref_0.col0 as c2, 
      ref_0.col2 as c3
      from 
        tab1 as ref_0
      where ref_0.col1 is null
      limit 140) as subq_0 where false limit 61;
 -- empty result set

select
  1
from tab1
  left join tab2 as ref_5
  right join (select 2) as subq_0
  left join tab1 as ref_8
  on (true)
  on (exists (select ref_5.col0, ref_8.col2))
  on (true);
 -- 27 rows with 1

select 
 ref_1.col3 as c0, 
 ref_1.col4 as c1, 
 cast(nullif(ref_0.col0,
 subq_0.c8) as int) as c2 from 
 tab1 as ref_0
 right join tbl_productsales as ref_1
 on (exists (
 select 
 ref_1.col1 as c0, 
 ref_2.col2 as c1, 
 ref_0.col0 as c2, 
 ref_2.col0 as c3, 
 ref_2.col0 as c4, 
 ref_1.col2 as c5
 from 
 tab1 as ref_2
 where false))
 inner join (select 
 ref_4.i as c0, 
 ref_3.col0 as c1, 
 ref_4.i as c2, 
 ref_4.i as c3, 
 ref_4.i as c4, 
 ref_4.i as c5, 
 ref_3.col2 as c6, 
 ref_4.i as c7, 
 ref_3.col2 as c8, 
 ref_4.i as c9
 from 
 tab0 as ref_3
 right join integers as ref_4
 on (true)
 where ((((((73 is null) 
 and (ref_4.i is not null)) 
 or (true)) 
 and (ref_4.i is null)) 
 or (ref_3.col2 is null)) 
 or (true)) 
 and (ref_4.i is not null)
 limit 56) as subq_0
 on (true) where true limit 85;
  --long output

select 
 subq_1.c0 as c0, 
 subq_1.c0 as c1, 
 subq_1.c0 as c2, 
 subq_0.c0 as c3, 
 subq_0.c1 as c4, 
 subq_0.c0 as c5, 
 subq_0.c0 as c6
from 
 (select 
 ref_0.col0 as c0, 
 ref_1.bb as c1
 from 
 tab0 as ref_0
 right join analytics as ref_1
 on (exists (
 select 
 ref_1.aa as c0
 from 
 longtable as ref_2
 where ref_0.col2 is not null))
 where ((ref_1.aa is null) 
 and ((false) 
 and (ref_0.col2 is not null))) 
 or (ref_0.col2 is not null)) as subq_0
 inner join (select 
 ref_3.col3 as c0
 from 
 tbl_productsales as ref_3
 where (ref_3.col3 is null) 
 and (exists (
 select 
 ref_3.col6 as c0, 
 ref_3.col2 as c1, 
 ref_4.col1 as c2, 
 ref_4.col1 as c3, 
 ref_4.col2 as c4, 
 ref_3.col4 as c5, 
 ref_4.col0 as c6, 
 ref_4.col0 as c7
 from 
 tab0 as ref_4
 where (true) 
 and (true)))
 limit 173) as subq_1
 on ((subq_1.c0 is not null) 
 or (subq_0.c0 is null))
where subq_1.c0 is not null;
  --empty

select 
 ref_0.col2 as c0, 
 cast(nullif(ref_0.col1,
 ref_0.col0) as int) as c1, 
 29 as c2, 
 ref_0.col1 as c3, 
 ref_0.col1 as c4, 
 ref_0.col0 as c5
from 
 tab1 as ref_0
where (((true) 
 and ((ref_0.col0 is not null) 
 and (ref_0.col2 is null))) 
 or (false)) 
 or (exists (
 select 
 ref_1.col2 as c0, 
 subq_0.c0 as c1, 
 ref_1.col1 as c2, 
 subq_0.c6 as c3, 
 ref_0.col1 as c4, 
 ref_1.col2 as c5, 
 ref_1.col1 as c6, 
 ref_1.col0 as c7, 
 ref_0.col2 as c8, 
 ref_1.col1 as c9, 
 ref_1.col0 as c10, 
 subq_0.c1 as c11, 
 ref_0.col2 as c12, 
 subq_0.c3 as c13, 
 ref_1.col1 as c14
 from 
 tab0 as ref_1
 right join (select 
 17 as c0, 
 ref_0.col1 as c1, 
 ref_3.aa as c2, 
 ref_0.col1 as c3, 
 ref_3.aa as c4, 
 ref_3.aa as c5, 
 ref_0.col0 as c6
 from 
 tbl_productsales as ref_2
 inner join analytics as ref_3
 on (ref_2.col1 = ref_3.aa )
 where true) as subq_0
 on ((false) 
 or ((ref_1.col1 is null) 
 and ((true) 
 and ((true) 
 and ((((subq_0.c5 is null) 
 or (false)) 
 or ((false) 
 or (true))) 
 and (exists (
 select 
 ref_1.col0 as c0, 
 subq_0.c0 as c1, 
 subq_0.c3 as c2, 
 ref_4.col1 as c3, 
 subq_0.c0 as c4
 from 
 tab0 as ref_4
 where exists (
 select 
 ref_4.col1 as c0, 
 ref_0.col0 as c1
 from 
 tab2 as ref_5
 where true))))))))
 where ((exists (
 select 
 ref_6.col1 as c0, 
 ref_0.col2 as c1, 
 ref_1.col0 as c2, 
 subq_0.c1 as c3, 
 ref_1.col1 as c4, 
 subq_0.c3 as c5, 
 ref_1.col0 as c6, 
 ref_1.col2 as c7
 from 
 tab1 as ref_6
 where false)) 
 or (exists (
 select 
 ref_0.col1 as c0, 
 subq_0.c4 as c1, 
 ref_0.col2 as c2, 
 ref_1.col0 as c3, 
 ref_1.col0 as c4, 
 ref_0.col1 as c5
 from 
 tab1 as ref_7
 where ref_1.col2 is null))) 
 and (subq_0.c5 is not null)))
limit 74;
 -- 96  14  29  14  14  51
 -- 59   5  29   5   5  85
 -- 68  47  29  47  47  91

select 
 cast(coalesce(subq_1.c0,
 cast(nullif(subq_0.c0,
 93) as int)) as int) as c0, 
 subq_1.c0 as c1
from 
 (select 
 ref_0.col4 as c0, 
 ref_0.col7 as c1, 
 ref_0.col4 as c2
 from 
 another_t as ref_0
 where false
 limit 139) as subq_0
 inner join (select 
 ref_1.col1 as c0
 from 
 longtable as ref_1
 where 7 is not null
 limit 114) as subq_1
 on (exists (
 select 
 ref_3.col1 as c0, 
 subq_1.c0 as c1, 
 ref_3.col0 as c2, 
 ref_2.bb as c3, 
 ref_4.col8 as c4
 from 
 analytics as ref_2
 left join tab2 as ref_3
 left join longtable as ref_4
 on (subq_0.c0 is null)
 on (ref_2.bb = ref_4.col1 )
 where false))
where (((exists (
 select 
 ref_5.col5 as c0
 from 
 longtable as ref_5
 where ((false) 
 and (subq_0.c1 is not null)) 
 or (false))) 
 or ((true) 
 and ((true) 
 and (false)))) 
 or (subq_1.c0 is not null)) 
 and ((subq_0.c0 is null) 
 or (false));
  -- empty

select 
 subq_0.c3 as c0, 
 subq_0.c4 as c1, 
 subq_0.c2 as c2, 
 subq_0.c1 as c3, 
 subq_0.c2 as c4
from 
 (select 
 ref_0.col0 as c0, 
 ref_0.col0 as c1, 
 ref_0.col0 as c2, 
 ref_0.col1 as c3, 
 ref_0.col2 as c4
 from 
 tab1 as ref_0
 where true
 limit 48) as subq_0
where (case when exists (
 select 
 subq_0.c1 as c0, 
 ref_1.col5 as c1, 
 ref_1.col7 as c2, 
 ref_1.col5 as c3, 
 subq_0.c3 as c4, 
 subq_0.c1 as c5
 from 
 longtable as ref_1
 where (true) 
 or ((ref_1.col1 is null) 
 and (true))) then subq_0.c1 else subq_0.c1 end
 is not null) 
 and (subq_0.c3 is null);
  -- empty

WITH ss_items AS
  (SELECT 1 item_id,
          1 ss_item_rev
   FROM another_T,
        LongTable
   WHERE another_T.col1 = LongTable.col1),
     cs_items AS
  (SELECT 1 item_id,
          1 cs_item_rev
   FROM tab0,
        LongTable
   WHERE tab0.col1 = LongTable.col1),
     ws_items AS
  (SELECT 1 item_id,
          1 ws_item_rev
   FROM tbl_ProductSales,
        LongTable
   WHERE tbl_ProductSales.col1 = LongTable.col1)
SELECT ss_items.item_id,
       ss_item_rev,
       ss_item_rev/((ss_item_rev+cs_item_rev+ws_item_rev)/3) * 100 ss_dev,
       cs_item_rev,
       cs_item_rev/((ss_item_rev+cs_item_rev+ws_item_rev)/3) * 100 cs_dev,
       ws_item_rev,
       ws_item_rev/((ss_item_rev+cs_item_rev+ws_item_rev)/3) * 100 ws_dev,
       (ss_item_rev+cs_item_rev+ws_item_rev)/3 average
FROM ss_items,
     cs_items,
     ws_items
WHERE ss_items.item_id=cs_items.item_id
  AND ss_items.item_id=ws_items.item_id
ORDER BY ss_items.item_id,
         ss_item_rev
LIMIT 100;

create table myitem (i_current_price decimal(7,2));
SELECT 1 FROM myitem WHERE i_current_price BETWEEN 64 AND 64 + 10 AND i_current_price BETWEEN 64 + 1 AND 64 + 15;

SELECT 1 FROM tab0 WHERE col0 BETWEEN 64 AND 64 + 10 AND col0 BETWEEN 64 + 1 AND 64 + 15;

select 
 subq_0.c6 as c0, 
 subq_0.c5 as c1, 
 38 as c2 from 
 (select 
 case when ref_0.i is not null then ref_0.i else ref_0.i end
 as c0, 
 ref_0.i as c1, 
 ref_0.i as c2, 
 ref_0.i as c3, 
 ref_0.i as c4, 
 ref_0.i as c5, 
 ref_0.i as c6, 
 ref_0.i as c7, 
 ref_0.i as c8, 
 case when ref_0.i is not null then ref_0.i else ref_0.i end
 as c9
 from 
 integers as ref_0
 where (exists (
 select 
 ref_1.col4 as c0, 
 28 as c1, 
 ref_1.col2 as c2, 
 ref_1.col3 as c3, 
 71 as c4
 from 
 tbl_productsales as ref_1
 where false)) 
 or ((ref_0.i is null) 
 or ((ref_0.i is not null) 
 or (exists (
 select 
 ref_2.col1 as c0
 from 
 tbl_productsales as ref_2
 where (((false) 
 and (true)) 
 and ((ref_2.col3 is null) 
 and ((false) 
 and (true)))) 
 and (ref_0.i is not null)))))
 limit 77) as subq_0 where case when (subq_0.c5 is null) 
 or (subq_0.c9 is not null) then subq_0.c2 else subq_0.c2 end
 is null limit 71;
 -- NULL NULL 38

ROLLBACK;
