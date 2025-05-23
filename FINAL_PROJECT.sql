-- SALES PER COUNTRY
select Country , SUM(Sales) AS TOTAL_SALES 
 FROM finalprojet.invocies
 group by Country;
 
 -- SALES PER REGION
 select Region , SUM(Sales) AS TOTAL_SALES
  FROM finalprojet.invocies
 group by Region;
 
 -- SALES PER STATE
 select `State or Province` , SUM(Sales) AS TOTAL_SALES
  FROM finalprojet.invocies
 group by `State or Province`
 order by TOTAL_SALES DESC;
 
 -- SALES PER PRODUCT CATEGORY
 select `Product Category` , SUM(Sales) AS TOTAL_SALES
  FROM finalprojet.invocies
 group by `Product Category`
 order by TOTAL_SALES DESC;
 
 -- SELES PER PRODUCT SUB CATEGORY
 Select `Product Sub-Category` , SUM(Sales) AS TOTAL_SALES
  FROM finalprojet.invocies
 group by `Product Sub-Category`
 order by TOTAL_SALES DESC;
 
-- SALES PER CUSTOMER ID

 Select `Customer ID` , SUM(Sales) AS TOTAL_SALES
  FROM finalprojet.invocies
 group by `Customer ID`
 order by TOTAL_SALES DESC; 
 
 -- TOP 10 BEST CUSTOMER
 Select `Customer Name`, SUM(Sales) AS TOTAL_SALES
  FROM finalprojet.invocies
 group by `Customer Name`
 order by TOTAL_SALES DESC
 limit 10; 
 
 -- TOP 10 BEST_SELLING PRODUCTS
 Select `Customer ID`, SUM(Sales) AS TOTAL_SALES
  FROM finalprojet.invocies
 group by `Customer ID`
 order by TOTAL_SALES DESC
 limit 10; 
 
 -- SALES PER MANAGER
 Select m.Manager, SUM(i.Sales) AS TOTAL_SALES
  FROM finalprojet.invocies i
  join finalprojet.areamanager m
  on i.Region = m.ï»¿Region
 group by m.Manager
 order by TOTAL_SALES DESC
 
 