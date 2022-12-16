create database artisian;
use artisian;
create table artisian_data(S_No varchar (8000),Name varchar (8000),Gender varchar (8000), Age varchar (8000), Phone varchar (8000),State varchar (4000) ,
District varchar (2000),Craft varchar (4000));

GO 
Bulk insert artisian_data
from 'D:\Artisan_Data 3-7.csv'
with(
firstrow=2,
fieldterminator=',',
rowterminator='\n',
maxerrors=0
)
Go 

select * from artisian_data;
SELECT COUNT(*) as count_rows
FROM artisian_data;

ALTER TABLE artisian_data ADD ID INT IDENTITY(1,1), primary key(ID);
ALTER TABLE artisian_data modify S_No varchar(8000) after ID;
select * from Artisian;
/*ALTER TABLE artisian_data ADD ID INT IDENTITY(1,1), primary key(ID);*/
/*id integer auto_increment,primary key(id) , Name blob(32759) , Gender blob(), S_No blob (32759)
, Age blob(32759), State varchar(2677), District varchar(1189), Craft varchar(3817), Phone blob(32759)*/

/*ID_column INT NOT NULL IDENTITY(1,1) PRIMARY KEY,S_No varchar (8000),Name varchar (8000),Gender varchar (8000), Age varchar (8000), Phone varchar (8000),State varchar (4000) ,
District varchar (2000),Craft varchar (4000)*/