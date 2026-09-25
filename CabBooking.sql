create database cab_booking;
use cab_booking;
create table drivers (
  driver_id int primary key,
  name varchar(50),
  city varchar(50),
  rating decimal(2,1),
  total_trips int,
  status varchar(20)
);
create table customers (
  customer_id int primary key,
  name varchar(50),
  city varchar(50)
);
create table rides (
  ride_id int primary key,
  customer_id int,
  driver_id int,
  pickup_location varchar(100),
  drop_location varchar(100),
  ride_date datetime,
  fare decimal(10,2),
  distance_km decimal(5,2),
  duration_min int,
  status varchar(20),
  foreign key(customer_id) references customers(customer_id),
  foreign key(driver_id) references drivers(driver_id)
);

show tables;
desc customers;

INSERT INTO drivers VALUES
(1, 'Amit', 'Delhi', 4.8, 120, 'active'),
(2, 'Ravi', 'Delhi', 4.2, 90, 'active'),
(3, 'Suresh', 'Noida', 3.9, 60, 'inactive'),
(4, 'Anil Yadav', 'Delhi', 4.2, 600, 'Active'),
(5, 'Rajesh Kumar', 'Noida', 4.5, 450, 'Active'),
(6, 'Vikas Sharma', 'Gurgaon', 4.7, 800, 'Active'),
(7, 'Manoj Patel', 'Ahmedabad', 4.6, 980, 'Active'),
(8, 'Deepak Jain', 'Jaipur', 4.4, 720, 'Inactive'),
(9, 'Karan Mehta', 'Hyderabad', 4.8, 1300, 'Active'),
(10, 'Nitin Arora', 'Kolkata', 4.1, 500, 'Active'),
(11, 'Rahul Verma', 'Mumbai', 4.3, 670, 'Active'),
(12, 'Aakash Singh', 'Lucknow', 4.9, 1100, 'Active'),
(13, 'Pankaj Gupta', 'Delhi', 3.8, 300, 'Inactive'),
(14, 'Rohit Mishra', 'Noida', 4.6, 850, 'Active'),
(15, 'Sunil Yadav', 'Kanpur', 4.0, 420, 'Active'),
(16, 'Mohit Sharma', 'Pune', 4.7, 920, 'Active'),
(17, 'Arjun Kapoor', 'Jaipur', 4.5, 760, 'Active'),
(18, 'Vivek Singh', 'Delhi', 3.7, 250, 'Inactive'),
(19, 'Sachin Verma', 'Mumbai', 4.4, 680, 'Active'),
(20, 'Ramesh Kumar', 'Chennai', 4.2, 540, 'Active'),
(21, 'Ajay Patel', 'Ahmedabad', 4.8, 1050, 'Active'),
(22, 'Deepak Verma', 'Hyderabad', 3.9, 350, 'Inactive'),
(23, 'Harish Gupta', 'Kolkata', 4.6, 890, 'Active'),
(24, 'Sumit Raj', 'Lucknow', 4.3, 620, 'Active'),
(25, 'Naveen Kumar', 'Gurgaon', 4.9, 1150, 'Active'),
(26, 'Rakesh Singh', 'Pune', 4.1, 480, 'Inactive'),
(27, 'Tarun Sharma', 'Kanpur', 4.5, 730, 'Active'),
(28, 'Yash Mehta', 'Mumbai', 4.7, 970, 'Active'),
(29, 'Aman Gupta', 'Noida', 4.0, 390, 'Inactive'),
(30, 'Vijay Kumar', 'Delhi', 4.8, 1250, 'Active');

INSERT INTO customers VALUES
(101, 'Neha', 'Delhi'),
(102, 'Rahul', 'Noida'),
(103, 'Priya', 'Delhi'),
(104, 'Aman', 'Gurgaon'),
(105, 'Sneha', 'Mumbai'),
(106, 'Rohit', 'Pune'),
(107, 'Pooja', 'Jaipur'),
(108, 'Kunal', 'Ahmedabad'),
(109, 'Anjali', 'Lucknow'),
(110, 'Vikas', 'Kanpur'),
(111, 'Riya', 'Delhi'),
(112, 'Arjun', 'Noida'),
(113, 'Simran', 'Mumbai'),
(114, 'Nikhil', 'Hyderabad'),
(115, 'Kavita', 'Kolkata'),
(116, 'Sahil', 'Chennai'),
(117, 'Meena', 'Pune'),
(118, 'Varun', 'Gurgaon'),
(119, 'Isha', 'Jaipur'),
(120, 'Manish', 'Delhi'),
(121, 'Komal', 'Noida'),
(122, 'Abhishek', 'Lucknow'),
(123, 'Shreya', 'Mumbai'),
(124, 'Rakesh', 'Ahmedabad'),
(125, 'Tanya', 'Hyderabad'),
(126, 'Deepak', 'Kolkata'),
(127, 'Nisha', 'Kanpur'),
(128, 'Yash', 'Chennai'),
(129, 'Divya', 'Delhi'),
(130, 'Mohit', 'Noida');

insert into rides values
(1001, 101, 1, 'Connaught Place', 'Dwarka',
'2025-06-01 09:00:00', 250.00, 10.50, 32, 'Completed'),

(1002, 102, 2, 'Noida Sector 18', 'Botanical Garden',
'2025-06-01 11:30:00', 180.00, 7.80, 25, 'Completed'),

(1003, 103, 1, 'Dwarka', 'Airport',
'2025-06-02 09:00:00', 450.00, 18.50, 45, 'Completed'),

(1004, 101, 3, 'CP', 'Gurgaon',
'2025-06-02 12:00:00', 400.00, 16.20, 40, 'Completed'),

(1005, 104, 6, 'Gurgaon', 'Cyber City',
'2025-06-03 10:00:00', 220.00, 8.50, 28, 'Completed'),

(1006, 106, 6, 'Dwarka', 'Saket',
'2025-06-06 16:10:00', 300.00, 12.00, 35, 'Completed'),

(1007, 107, 7, 'SG Highway', 'Maninagar',
'2025-06-07 12:30:00', 270.00, 10.50, 28, 'Completed'),

(1008, 108, 8, 'Malviya Nagar', 'Vaishali Nagar',
'2025-06-08 15:00:00', 200.00, 7.80, 22, 'Completed'),

(1009, 109, 9, 'Hitech City', 'Gachibowli',
'2025-06-09 18:15:00', 320.00, 11.50, 32, 'Completed'),

(1010, 110, 10, 'Salt Lake', 'Park Street',
'2025-06-10 09:30:00', 280.00, 9.20, 30, 'Completed'),

(1011, 111, 11, 'Andheri', 'Bandra',
'2025-06-11 08:45:00', 240.00, 8.00, 27, 'Completed'),

(1012, 112, 12, 'Hazratganj', 'Aliganj',
'2025-06-12 13:20:00', 190.00, 6.50, 24, 'Completed'),

(1013, 113, 13, 'Paharganj', 'Karol Bagh',
'2025-06-13 17:00:00', 160.00, 5.20, 20, 'Completed'),

(1014, 114, 14, 'Sector 62', 'Sector 18',
'2025-06-14 10:15:00', 210.00, 7.00, 26, 'Completed'),

(1015, 115, 15, 'Mall Road', 'Civil Lines',
'2025-06-15 14:30:00', 175.00, 6.80, 23, 'Completed'),

(1016, 116, 16, 'Hinjewadi', 'Wakad',
'2025-06-16 11:00:00', 230.00, 8.90, 29, 'Completed'),

(1017, 117, 17, 'Vaishali Nagar', 'Mansarovar',
'2025-06-17 16:45:00', 260.00, 9.80, 31, 'Completed'),

(1018, 118, 18, 'MG Road', 'Indiranagar',
'2025-06-18 09:20:00', 300.00, 10.20, 34, 'Completed'),

(1019, 119, 19, 'Bandra', 'Powai',
'2025-06-19 18:30:00', 350.00, 14.00, 42, 'Completed'),

(1020, 120, 20, 'T Nagar', 'Adyar',
'2025-06-20 12:00:00', 210.00, 7.50, 26, 'Completed'),

(1021, 121, 21, 'Navrangpura', 'Vastrapur',
'2025-06-21 10:40:00', 180.00, 6.20, 22, 'Completed'),

(1022, 122, 22, 'Banjara Hills', 'Jubilee Hills',
'2025-06-22 15:30:00', 290.00, 9.60, 30, 'Completed'),

(1023, 123, 23, 'Park Street', 'Howrah',
'2025-06-23 17:45:00', 310.00, 11.00, 35, 'Completed'),

(1024, 124, 24, 'Gomti Nagar', 'Charbagh',
'2025-06-24 08:30:00', 200.00, 7.20, 25, 'Completed'),

(1025, 125, 25, 'Cyber City', 'MG Road',
'2025-06-25 19:00:00', 275.00, 10.80, 33, 'Completed'),

(1026, 126, 26, 'Kothrud', 'Shivajinagar',
'2025-06-26 13:15:00', 220.00, 8.40, 27, 'Completed'),

(1027, 127, 27, 'Kanpur Central', 'Swaroop Nagar',
'2025-06-27 11:50:00', 170.00, 5.90, 21, 'Completed'),

(1028, 128, 28, 'Marina Beach', 'T Nagar',
'2025-06-28 16:20:00', 250.00, 9.30, 30, 'Completed'),

(1029, 129, 29, 'India Gate', 'Saket',
'2025-06-29 18:00:00', 330.00, 13.20, 38, 'Completed'),

(1030, 130, 30, 'Noida Sector 15', 'Greater Noida',
'2025-06-30 20:15:00', 420.00, 18.00, 45, 'Completed');


select*from customers;
select*from drivers;
select*from rides;


select driver_id, count(*) as total_rides from rides where status="Completed" group by driver_id;
select driver_id, count(*) as total_rides from rides where status='Incomplete' group by driver_id;

select driver_id, sum(fare) from rides where status="Completed" group by driver_id;
select driver_id, sum(fare) from rides where status='Incomplete' group by driver_id;

select driver_id, sum(fare) as total_earning from rides where status="Completed" group by driver_id order by total_earning desc limit 3;
select driver_id, sum(fare) as total_earning from rides where status="Incompleted" group by driver_id;


-- Operational performance status--

select status, count(*) as ride_count from rides group by status;

select*from drivers where status <> 'Active';           --   <> or != is not sign 
select name, rating from drivers where rating >4.5;
select*from customers where city= 'Delhi';
select*from rides where fare >300;
select*from rides where fare < 300;
select max(fare) as highest_fare from rides;
select avg(rating) as avg_driver_rating from drivers;
select*from rides where status="Completed";
select city,count(customer_id) as num_customers from customers group by city;
select*from drivers order by rating desc limit 1;


-- =====================================================
-- 	JOINS  
-- =====================================================

-- INNER JOIN   : ride details with customer and drivers names 

select r.ride_id, c.name as customer_name, d.name as driver_name, r.pickup_location, r.drop_location, r.fare, r.status 
from rides r join customers c on r.customer_id = c.customer_id
join drivers d on r.driver_id = d.driver_id;

-- 	LEFT JOIN  == all customers, with their rides if any (show customes who never booked )

select c.customer_id, c.name,r.ride_id, r.fare from customers c left join rides r on c.customer_id = r.customer_id;


-- LEFT JOIN :  all drivers with ride counts ( show drivers with zero completed rides)

select d.driver_id,d.name , count(r.ride_id) as rides_taken
 from drivers d
 left join rides r on d.driver_id and r.status = "Incompleted" group by d.driver_id, d.name; 
 

-- customers who  have NEVER booked a ride (LEFT JOIN + IS NULL anti-join pattern )
select c.customer_id,c.name
from customers c
left join rides r on c.customer_id = r.customer_id
where r.ride_id is null;

 -- drivers rides  at different cities  with their customer 

select d.name as driver_name, c.name as customer_name,d.city
from drivers d
join rides r on d.driver_id=r.driver_id
join customers c on r.customer_id=c.customer_id
where d.city=c.city;










-- ======================================================

-- SUBQUERYS

-- =======================================================

-- Single Line Subquery
-- driver whose total trips is grater then sum of avg trips(total trips)

select driver_id,name,total_trips from drivers 
where total_trips >(select avg(total_trips) from drivers);

 SELECT driver_id, name, total_trips
FROM (
    SELECT driver_id, name, total_trips,
           AVG(total_trips) OVER() AS avg_trips
    FROM drivers
) d
WHERE total_trips > avg_trips;
 
 
 
 -- Multi Line Query
 
 -- customer whose city in delhi and noida
 
 select*from customers;
 
 SELECT name,customer_id,city
FROM customers
WHERE city IN (SELECT city FROM customers WHERE city IN ('Delhi', 'Noida'));

--  top earning driver's full details (subquery returing single value )

select*from drivers 
where driver_id = (
   select driver_id 
   from rides
   where status = 'Completed'
   group by driver_id
   order by sum(fare) desc limit 1
   );
 
 select driver_id 
   from rides
   where status = 'Completed'
   group by driver_id
   order by sum(fare) desc limit 1;
   
   
   -- corelated  subquery : rides that are the most expensive for that particular customer.
   
   select r1.* from rides r1
   where r1.fare = (
    select max(r2.fare) from rides r2 where r2.customer_id = r1.customer_id );
    
    -- ==================================================================================
    -- UNION AND UNION ALL
    -- =================================================================================
    
    -- COMBINED list of 'people' (customers  + drivers with role tag. )
    
    select name,city, 'customer' as role from customers
    union
    select name,city, 'driver' as role from drivers;
    
    
    -- Incomplete rides
-- Cancelled rides
UPDATE rides
SET status = 'Cancelled'
WHERE ride_id IN (1003, 1011, 1019);

-- Pending rides
UPDATE rides
SET status = 'Pending'
WHERE ride_id IN (1006, 1013, 1021, 1028);

    -- all cancelled or pending rides viva union all . ( duplicate allowed faster then OR in one engines )
    
    select* from rides where status='Completed'
    union all
    select* from rides where status='Pending'
     union all
    select* from rides where status='Cancelled';
    
    -- cities that appear either as a customer city or a driver city ( duplicated viva union )
    
select city from customers
union
select city from drivers;


-- ====================================================================================
--  WINDOW FUCTIONS
-- ====================================================================================


-- rank drivers by total earnings

select driver_id,
            sum(fare) as total_earning,
            rank() over (order by sum(fare) desc) as earning_rank
from rides
where status = "Completed" group by driver_id;


select*from customers;
select*from drivers;
select*from rides;

-- running total of fare per driver ordered by ride date

select driver_id,ride_id,ride_date,fare,
  sum(fare) over (partition by driver_id order by ride_date) as running_total 
from rides
 where status="Completed";
 
 
 -- each ride vs avg (ride) vs diff(ride avg(ride))   ( window fuction )
 select ride_id,driver_id,fare,
  avg(fare) over (partition by driver_id ) as driver_avg_fare,
  fare - avg(fare) over(partition by driver_id ) as diff_from_avg
from rides
 where status="Completed";
 
 -- row number to find each customer's most recent ride 
 
 select* 
 from (
     select r.*,
            row_number() over (partition by customer_id order by ride_date desc)  as rn 
            from rides r 
 ) ranked  where rn =1;
 
 -- =============================================================
 -- CTEs (Comman Table expressions )
 -- =============================================================
  
 -- CTE to first calculate driver earnings, then filter / rank on top of it 
 
 
			
 with driver_earnings as (
select driver_id, sum(fare) as total_earning, count(*) as total_completed_rides
from rides
where status = 'completed'
group by driver_id
)
select de.driver_id, d.name, de.total_earning, de.total_completed_rides
from driver_earnings de
join drivers d on d.driver_id = de.driver_id
order by de.total_earning desc;
 
            
  -- Multiple CTEs : city wise ride demand vs available active drivers
  
  with city_rides as (
  select c.city,count(*) as rides_from_city
  from rides r
  join customers c 
  on r.customer_id=c.customer_id
  group by c.city
  ),
  city_drivers as (
  select city,count(*) as active_drivers
  from drivers 
  where status ="Active"
  group by city
)
select cr.city, cr.rides_from_city, coalesce (cd.active_drivers,0) as active_drivers
from city_rides cr
left join city_drivers cd 
on cr.city= cd.city
order by cr.rides_from_city desc;
 
 
-- ==========================================
-- CASE STATEMENTS / DERIVED METRICS
-- ==========================================

select ride_id,fare,
   case 
   when fare < 200 then 'Low'
   when fare between 200 and 350 then 'Medium'
   else 'High' 
   end as fare_tier from rides;

select ride_id,fare,
   case 
   when fare < 200 then 'Low'
   else 'High' 
   end as fare_class from rides;
   
   -- driver performance tag based on rating and total_trips
   
   select driver_id,name,rating,total_trips,
   case
      when rating >=4.5 and total_trips >= 500 then 'Top Performer'
      when rating >= 4.0 then 'Good'
      else 'Need Improvement'
      end as performance_tag
from drivers;



 --                                                                Project Ended


    
    