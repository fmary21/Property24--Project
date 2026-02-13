Create Database Property24;

Create table property_details(
COUNTRY varchar (250),
PROVINCE varchar(250),
CITY varchar (250),
PROPERTY_PRICE int,
BEDROOMS int,
BATHROOMS int,
PARKING int,
FLOOR_SIZE int,
Monthly_Repayment int,
Total_Once_Off_Costs int,
Min_Gross_monthly_income int
)

--INSERT INTO table_name (column1, column2, column3, ...)
--VALUES (value1, value2, value3, ...);

INSERT INTO property_details ( COUNTRY ,
PROVINCE ,
CITY ,
PROPERTY_PRICE,
BEDROOMS,
BATHROOMS,
PARKING,
FLOOR_SIZE,
Monthly_Repayment,
Total_Once_Off_Costs,
Min_Gross_monthly_income
)
Values ( 'south Africa','western cape','capetown',5500000,8,5,4,2795, 53990, 557865,179967),
       ( 'south Africa','western cape','stellenborsh',2599000,3,2,2,574, 56724, 183371,83043),
       ( 'south Africa','western cape','somerset West',9950000,5,2,5,498, 114439, 1095537,325578),
       ( 'south Africa','western cape','Milnertorn',4450000,3,2,4,721, 43683, 421734,1445610),
       ( 'south Africa','western cape','Port Owen',3850000,3,2,1,95, 41963, 341066,139877),
       ( 'south Africa','Western Cape','belleview',2920000,3,3,2,125, 28663, 218182,95546),
       ( 'south Africa','Western Cape','Pinelands',7500000,4,3,4,342, 25450, 475000,132000),
       ( 'south Africa','Western Cape','Muizenburg',554000,3,4,3,472, 35430, 350000,180567),

---Johannesburg
( 'south Africa','Gauteng','johannesburg',700000,3,1,2,72, 23683, 321734,94510),
( 'south Africa','Gauteng','Randburg',1500000,3,2,2,172, 15678, 380679,1145720),
( 'south Africa','Gauteng','Kempton park',1099000,3,2,2,220, 11520, 294500,645200),
( 'south Africa','Gauteng','randburg',3100000,5,2,2,72, 30430, 538450,194610),
( 'south Africa','Gauteng','Roodepoort',899000,3,1,1,86, 8683, 121756,85230),
( 'south Africa','Gauteng','Germiston',2450000,4,2,2,470, 24050, 353734,194610),
( 'south Africa','Gauteng','soweto',450000,3,2,1,72, 13683, 121730,55610),

---Pretoria
  ( 'south Africa','Gauteng','petoria north',2350000,3,2,2,361, 23068, 136468,90610),
  ( 'south Africa','Gauteng','Danville',900000,3,2,1,250, 8834,95610,40530),
  ( 'south Africa','Gauteng','waterkloof Ridge',4500000,4,4.5,2,429, 44173, 601748,345610),
  ( 'south Africa','Gauteng','Waterkloof Ridge',5300000,5,4,3,681, 39265,423777,445230),
  ( 'south Africa','Gauteng','Waterkloof Ridge',1799000,3,2,2,72, 33683, 221340,150750),
       
---Limpopo
   ('south Africa','Limpopo','louis Trichardt',7750000,6,6,4,825,76077, 450325,258567),
   ('south Africa','Limpopo','louis Trichardt',1490000,3,2,2,115,14626, 310356,57555),
   ('south Africa','Limpopo','louis Trichardt',1075000,3,2,1,120,10552, 232639,55936),
   ('south Africa','Limpopo','Bela Bela',7278000,2,1,1,115,7144,114656,36819),
   ('south Africa','Limpopo','Bela Bela',750000,2,1,1,115,7362, 166958,46813),
   ('south Africa','Limpopo','Bela Bela',800000,2,2,1,94,7853, 184755,35047);




