## solution of blinkit table questions

#Q.1 Import Data from table Grocery Sales using the provided CSV File. 
select * from sql_blinkit_project16875985390;

#Q.2 Write an SQL query to show all Item_Identifier
select Item_Identifier from sql_blinkit_project16875985390;

#Q.3 Write an SQL query to show count of total Item_Identifier.
select count(item_identifier) from sql_blinkit_project16875985390; 

#Q.4 Write an SQL query to show maximum Item Weight.
select max(item_weight) from sql_blinkit_project16875985390;

#Q.5 Write an SQL query to show minimum Item Weight.
select min(item_weight) from sql_blinkit_project16875985390;

#Q.6 Write an SQL query to show average Item_Weight.
select avg(item_weight) from sql_blinkit_project16875985390;

#Q.7 Write an SQL query to show count of Item_Fat_Content WHERE Item_Fat_Content is Low Fat.
select Item_Identifier, item_fat_content from sql_blinkit_project16875985390 where Item_Fat_Content="low fat";

#Q.8 Write an SQL query to show count of Item_Fat_Content WHERE Item_Fat_Content is Regular.
select count(item_fat_content) from sql_blinkit_project16875985390 where Item_Fat_Content="regular";

#Q.9 Write an SQL query to show maximum Item_MRP
select max(item_mrp) from sql_blinkit_project16875985390; 

#Q.10 Write an SQL query to show minimum Item_MRP 
select min(item_mrp) from sql_blinkit_project16875985390;

#Q.11 Write an SQL query to show Item_Identifier , Item_Fat_Content, Item_Type, Item_MRP whose Item_MRP is greater than 200.
select Item_Identifier , Item_Fat_Content, Item_Type, Item_MRP from sql_blinkit_project16875985390 where item_mrp>200;

#Q.12 Write an SQL query to show maximum Item_MRP where Item_Fat_Content is Low Fat
select item_mrp from sql_blinkit_project16875985390 where Item_Fat_Content="low fat";

#Q.13 Write an SQL query to show minimum Item_MRP whose Item_Fat_Content is Low Fat
select min(item_mrp) from sql_blinkit_project16875985390 where Item_Fat_Content="low fat";

#Q.14 Write an SQL query to show ALL DATA WHERE item MRP is BETWEEN 50 to 100
select * from sql_blinkit_project16875985390 where Item_mrp<50 or item_mrp>100;

#Q.15 Write an SQL query to show ALL UNIQUE value of Item_Fat_Content
select distinct item_fat_content from sql_blinkit_project16875985390;

#Q.16 Write an SQL query to show ALL UNIQUE value of Item_Type
select distinct item_type from sql_blinkit_project16875985390;

#Q.17 Write an SQL query to show ALL DATA in descending ORDER by Item MRP
select * from sql_blinkit_project16875985390 order by item_mrp desc;

#Q.18 Write an SQL query to show ALL DATA in ascending ORDER by Item_Outlet_Sales
select * from sql_blinkit_project16875985390 order by Item_Outlet_Sales asc; 

#Q.19 Write an SQL query to show ALL DATA in ascending by Item_Type
select * from sql_blinkit_project16875985390 order by Item_Type asc; 

#Q.20 Write an SQL query to show DATA of item_type dairy & Meat
select * from sql_blinkit_project16875985390 where Item_Type='Dairy' or item_type='meat';

#Q.21 Write an SQL query to show ALL UNIQUE value of Outlet_Size
select distinct (outlet_size) from sql_blinkit_project16875985390; 

#Q.22 Write an SQL query to show ALL UNIQUE value of Outlet_Location_Type
select distinct outlet_location_type from sql_blinkit_project16875985390;

#Q.23 Write an SQL query to show ALL UNIQUE value of Outlet_Type
select distinct outlet_type from sql_blinkit_project16875985390;

#Q.24 Write an SQL query to show count of number of items by Item_Type and order it in descending order
select item_type, count(item_type) from sql_blinkit_project16875985390 where 
Item_Type in (select item_type from sql_blinkit_project16875985390) group by Item_Type order by item_type desc;

#Q.25 Write an SQL query to show count of number of items by Outlet_Size and ordered it in ascending order
select Outlet_Size, count(item_type) from sql_blinkit_project16875985390 where 
Item_Type in (select item_type from sql_blinkit_project16875985390) group by Item_Type order by Outlet_Size desc;

#Q.26 Write an SQL query to show count of number of items by Outlet_Type and ordered it in descending order.
select Outlet_type, count(item_type) from sql_blinkit_project16875985390 where 
Item_Type in (select item_type from sql_blinkit_project16875985390) group by Item_Type order by Outlet_Size;

#Q.27 Write an SQL query to show count of items by Outlet_Location_Type and order it indescending order
select Outlet_Location_Type, count(item_type) from sql_blinkit_project16875985390 where 
Item_Type in (select item_type from sql_blinkit_project16875985390) group by Item_Type order by Outlet_Location_Type desc;

#Q.28 Write an SQL query to show maximum MRP by Item_Type
select item_type, item_mrp from sql_blinkit_project16875985390 where Item_MRP=(select max(Item_MRP) from sql_blinkit_project16875985390);

#Q.29 Write an SQL query to show minimum MRP by Item_Type
select item_type, item_mrp from sql_blinkit_project16875985390 where Item_MRP=(select min(Item_MRP) from sql_blinkit_project16875985390);

#Q.30 Write an SQL query to show minimum MRP by Outlet_Establishment_Year and order it in descending order.
select * from sql_blinkit_project16875985390
where Item_MRP=(select min(Item_MRP) from sql_blinkit_project16875985390) order by Outlet_Establishment_Year desc;

#Q.31 Write an SQL query to show maximum MRP by Outlet_Establishment_Year and order it in descending order.
select * from sql_blinkit_project16875985390 where 
Item_MRP=(select max(Item_MRP) from sql_blinkit_project16875985390) order by Outlet_Establishment_Year desc;

#Q.32 Write an SQL query to show average MRP by Outlet_Size and order it in descending order.
select Outlet_Size, avg(Item_MRP) from sql_blinkit_project16875985390 where 
Item_MRP in (select (Item_MRP) from sql_blinkit_project16875985390) group by Outlet_Size order by Outlet_Size desc;

#Q.33 Write an SQL query to Average MRP by Outlet_Type and ordered in ascending order.
select Outlet_type, avg(Item_MRP) from sql_blinkit_project16875985390 where 
Item_MRP in (select (Item_MRP) from sql_blinkit_project16875985390) group by Outlet_Type order by Outlet_type desc;

#Q.34 Write an SQL query to show maximum MRP by Outlet_Type
select outlet_type, item_mrp from sql_blinkit_project16875985390 where Item_MRP=(select max(Item_MRP) from sql_blinkit_project16875985390);

#Q.35 Write an SQL query to show maximum Item_Weight by Item_Type
select item_type, Item_Weight from sql_blinkit_project16875985390 where Item_Weight=(select max(Item_Weight) from sql_blinkit_project16875985390);

#Q.36 Write an SQL query to show maximum Item_Weight by Outlet_Establishment_Year
select Outlet_Establishment_Year, Item_Weight from sql_blinkit_project16875985390 where Item_Weight=(select max(Item_Weight) from sql_blinkit_project16875985390);

#Q.37 Write an SQL query to show minimum Item_Weight by Outlet_Typ 
select outlet_type, Item_Weight from sql_blinkit_project16875985390 where Item_Weight=(select max(Item_Weight) from sql_blinkit_project16875985390);

#Q.38 Write an SQL query to show average Item_Weight by Outlet_Location_Type and arrange it by descending order
select Outlet_Location_Type, Item_Weight from sql_blinkit_project16875985390 where 
Item_Weight=(select max(Item_Weight) from sql_blinkit_project16875985390) order by Outlet_Location_Type asc;

#Q.39 Write an SQL query to show maximum Item_Outlet_Sales by Item_Type
select item_type, Item_Outlet_Sales from sql_blinkit_project16875985390 where
Item_Outlet_Sales=(select max(Item_Outlet_Sales) from sql_blinkit_project16875985390);

#Q.40 Write an SQL query to show minimum Item_Outlet_Sales by Item_Type
select * from sql_blinkit_project16875985390 where
Item_Outlet_Sales=(select min(Item_Outlet_Sales) from sql_blinkit_project16875985390);

#Q.41 Write an SQL query to show minimum Item_Outlet_Sales by Outlet_Establishment_Year
select * from sql_blinkit_project16875985390 where Item_Outlet_Sales=
(select min(Item_Outlet_Sales) from sql_blinkit_project16875985390);

#Q.42 Write an SQL query to show maximum Item_Outlet_Sales by Outlet_Establishment_Year and order it by descending order
select * from sql_blinkit_project16875985390 where Item_Outlet_Sales=(select max(Item_Outlet_Sales)
from sql_blinkit_project16875985390) order by Outlet_Establishment_Year desc ;

#Q.43 Write an SQL query to show average Item_Outlet_Sales by Outlet_Size and order it it descending order
select Outlet_Size, avg(Item_Outlet_Sales) from sql_blinkit_project16875985390 where 
Item_Outlet_Sales in (select Item_Outlet_Sales from sql_blinkit_project16875985390) group by Outlet_Size order by Outlet_Size desc;

#Q.44 Write an SQL query to show average Item_Outlet_Sales by Outlet_Type
select Outlet_type, avg(Item_Outlet_Sales) from sql_blinkit_project16875985390 where 
Item_Outlet_Sales in (select Item_Outlet_Sales from sql_blinkit_project16875985390) group by Outlet_Type;

#Q.45 Write an SQL query to show maximum Item_Outlet_Sales by Outlet_Type
select outlet_type, item_outlet_sales from sql_blinkit_project16875985390 where 
Item_Outlet_Sales=(select max(Item_Outlet_Sales) from sql_blinkit_project16875985390); 

#Q.46 Write an SQL query to show total Item_Outlet_Sales by Item_Type 
select Item_Type, count(Item_Outlet_Sales) from sql_blinkit_project16875985390 where 
Item_Outlet_Sales in (select Item_Outlet_Sales from sql_blinkit_project16875985390) group by Item_Type;

#Q.47 Write an SQL query to show total Item_Outlet_Sales by item_fat_content
select Item_Fat_Content, count(Item_Outlet_Sales) from sql_blinkit_project16875985390 where 
Item_Outlet_Sales in (select Item_Outlet_Sales from sql_blinkit_project16875985390) group by Item_Fat_Content;

#Q.48 Write an SQL query to show maximum Item_Visibility by Item_Type
select item_type, Item_Visibility from sql_blinkit_project16875985390 where
Item_Visibility=(select max(Item_Visibility) from sql_blinkit_project16875985390);

#Q.49 Write an SQL query to show Minimum Item_Visibility by Item_Type
select item_type, Item_Visibility from sql_blinkit_project16875985390 where
Item_Visibility=(select min(Item_Visibility) from sql_blinkit_project16875985390);

#Q.50 Write an SQL query to show total Item_Outlet_Sales by Item_Type but only WHERE Outlet_Location_Type is Tier 1
select Item_Type, count(Item_Outlet_Sales) from sql_blinkit_project16875985390 where 
Item_Outlet_Sales in (select Item_Outlet_Sales from sql_blinkit_project16875985390 where Outlet_Location_Type="tier 1") group by Item_Type;

#Q.51 Write an SQL query to show total Item_Outlet_Sales by Item_Type WHERE Item_Fat_Content is ONLY Low Fat & LF 
select Item_Type, count(Item_Outlet_Sales) from sql_blinkit_project16875985390 where 
Item_Outlet_Sales in (select Item_Outlet_Sales from sql_blinkit_project16875985390 where 
Item_Fat_Content="low fat" or Item_Fat_Content="lf") group by Item_Type;
