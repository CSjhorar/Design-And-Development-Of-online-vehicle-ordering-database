create database OnlineVehicleBooking;

create Table CustomerData(
 email varchar(20) not NULL,
 phoneNumber char(10) not NULL,
 name varchar(20) not NULL,
 gender char(1) not NULL,
 dob date not NULL,
 licenseNumber varchar(15) not NULL,
 PANNumber varchar(15) not NULL,
 PRIMARY KEY(email)
 -- PRIMARY KEY(phoneNumber)
);

insert into CustomerData values 
('abc@gmail.com','9847493031','rwar','f','2000-10-13','dkfnkdkss','aseldntde'),
('xyz@gmail.com','9847493030','rcar','m','2000-07-13','alsdoinef','aenficif'),
('tyrur@gmail.com','9394953030','rcar','m','2002-10-14','jsdkjnnv','dfkbsvev');

create Table Contacts(
phoneNumber1 char (10) not NULL,
phoneNumber2 char (10) not NULL,
email varchar(20) not NULL,
isfraud bool not NULL,
PRIMARY KEY (email)
);

insert into Contacts values
('9847493031','1234543211','abc@gmail.com',true),
('9847493030','1234543212','xyz@gmail.com',false),
('9394953030','9283543212','tyrur@gmail.com',false);


create Table AccountDetails(
phoneNumber char (10) not NULL,
accountNumber double not NULL,
IFSCcode varchar (15) not NULL,
branchCode varchar(10) not NULL,
PRIMARY KEY (phoneNumber)
);

select * from AccountDetails;

insert into AccountDetails values
(9847493031,48392049593,'Icici80809','jkgdd9000'),
(9847493030,98234858493,'hdfc9339','jdgf9304'),
(9394953030,98234853833,'hdfc9009','kdgf0004');


create Table CustomerAddress(
 phoneNumber char (10) not NULL,
 pincode int not NULL,
 completeAddress varchar (30) not NULL,
 PRIMARY KEY (phoneNumber)
 );
 
 insert into CustomerAddress values
 (9847493031,466603,'block no 1 vpo dabli'),
(9847493030,455603,'block no 10 vpo nohar'),
(9394953030,665544,'ward no 4 vpo rawatsar');
 
 
 create Table CompanyDetails(
  companyName varchar(20) not NULL,
  netWorth double not NULL,
  originCountry varchar (20) not NULL,
  accountNumber double not NULL,
  UPIid varchar (20) not NULL,
  IFSCcode varchar(10) not NULL,
  totalSellPerYear int not NULL,
  PRIMARY KEY (companyName)
 );
 
 insert into CompanyDetails values
  ('mahindra',124,'india',89449303299,'mahindra@okhdfc.com','hdfc00888','65'),
('Kubota',34,'japan',23444523139,'kubota@okhdfc.com','hdfc00934','89'),
  ('bajaj',134,'india',89449303299,'bajaj@oksbi.com','icici00999','198'),
 ('honda',234,'japan',92345733489,'honda@okicic.com','icici00748','345'),
 ('tata',231,'india',2934938457,'tata@hdfc.com','hdfc00485','473');
 
 create Table ShowRoomLocations(
  companyName varchar(20) not NULL,
  pinCode int not NULL,
  sell int not NULL,
  year int not NULL,
  PRIMARY KEY (pinCode,companyName)
 );
 

insert into ShowRoomLocations values
('mahindra',34423,10,2002),
('mahindra',23476,8,2002),
('mahindra',23189,8,2001),
('kubota',23189,4,2002),
('kubota',23476,4,2002),
('bajaj',34423,12,2002),
('bajaj',23476,10,2002),
('honda',34423,3,2002),
('bajaj',23189,4,2002),
 ('honda',23476,23,2001),
 ('tata',23189,24,2002);
 
 create Table Address(
 pinCode int not NULL,
 stateName varchar(15) not NULL,
 CountryName varchar(15) not NULL,
 PRIMARY KEY (pinCode)
 );
 
 insert into address values
 (344423,'harayana','india'),
 (23476,'telangana','india'),
 (23189,'delhi','india');
 
 
 create Table TypesOfVehicle(
  companyName varchar(20) not NULL,
  patrol bool not NULL,
  diesel bool not NULL,
  electric bool not NULL,
  twoWheeler bool not NULL,
  threeWheeler bool not NULL,
  fourWheeler bool not NULL,
  heavyDeuty bool not NULL,
  PRIMARY KEY (companyName)
 );
 
 insert into  TypesOfVehicle values
 ('mahindra',true,true,false,true,false,true,false),
 ('kubota',false,true,true,false,false,true,true),
 ('bajaj',true,true,true,true,true,true,false),
 ('honda',true,true,false,true,false,true,false),
 ('tata',true,true,true,true,true,true,true);
 
 create Table AvailabilityOfModel(
  companyName varchar(20) not NULL,
  modelName varchar(20) not NULL,
  isAvailable bool not NULL,
  PRIMARY KEY (modelName,companyName)
  );
 
insert into  AvailabilityOfModel values
('mahindra','Di275',false),
('mahindra','Di475',true),
('mahindra','Di575',true),
('mahindra','nova',true),
('bajaj','platina',true),
('bajaj','ct100',true),
 ('honda','city',true),
 ('tata','nano',false);
 
 
 create Table ModelDetails(
 modelName varchar(20) not NULL,
 isSelected bool not NULL,
 quantity int not NULL,
 totalcharges double not NULL,
  PRIMARY KEY (modelName,pinCode)
 );
 
 insert into ModelDetails values
 ('Di575',false,3,5000),
 ('Di475',false,3,4000),
 ('platina',true,2,3000),
 ('ct100',true,3,2000), 
 ('city',false,2,13353),
 ('nano',false,3,1833);
 
  create Table ModelType(
  modelName varchar(20) not NULL,
  patrol bool not NULL,
  diesel bool not NULL,
  electric bool not NULL,
  twoWheeler bool not NULL,
  threeWheeler bool not NULL,
  fourWheeler bool not NULL,
  heavyDeuty bool not NULL,
  PRIMARY KEY (modelName)
 );
 
 insert into ModelType values
  ('Di275', false,true,false,false,false,true,false),
   ('Di475', false,true,false,false,false,true,false),
    ('Di575', false,true,false,false,false,true,false),
  ('ct100', true,false,false,true,false,false,false),
  ('platina',true,false,true,true,false,false,false),
 ('city', true,true,false,false,false,true,false),
 ('nano', true,false,true,false,false,true,false);
 
 
 create Table ModelCharges(
 modelName varchar(20) not NULL,
 stateTax  int not NULL,
 centerTax int not NULL,
 deliveryCharges int not NULL,
 PRIMARY KEY (modelName)
 );
 
 insert into ModelCharges values
 ('platina',2,1,0.5),
 ('ct100',2,1,0.5),
 ('nano',5,6,1),
 ('city',6,8,1);
 
 create Table ModelSpecification(
  modelName varchar(20) not NULL,
  rating double not NULL,
  basePrice double not NULL,
  hp int not NULL,
  mileage int not NULL,
  descriptions varchar(40) not NULL,
  PRIMARY KEY (modelName)
 );

insert into ModelSpecification values
('ct100',4.1,0.75,110,40,'very good mileage and suspention'),
('platina', 3.9,0.8,120,50,'light weight and sharp light'),
('city', 3.8,8,35,10,'very good peak up and ground cleareance'),
('nano',4.0,3,20,20,'small in size and full Air conditioned ');


create Table ModelColors(
modelName varchar(20) not NULL,
 color varchar(10) not NULL,
 pinCode int not NULL,
 quantity int not NULL,
 PRIMARY KEY (modelName,color,pinCode)
 );
 
 select * from ModelColors as A,modelType as B
 where A.color='green' and B.fourWheeler = true and A.modelName=B.modelName;

insert into ModelColors values
('ct100','blue',34423,2),
('platina','blue',344423,1),
('ct100','red',23476,1),
('city','white',23476,2),
('nano','green',23476,1),
('platina','green',23476,2),
('nano','yellow',455603,2),
('city','white',665544,1),
('nano','white',665544,2),
('city','silver',455603,3);
 
 create Table Reservation(
  transactionId double not NULL,
  modelName varchar(20) not NULL,
  totalPrice int not NULL,
  time datetime not NULL,
  modeOfPayment varchar (20) not NULL,
 PRIMARY KEY (transactionId)
 );
 
 insert into Reservation values 
 (1234556,'ct100',1,'2011-10-02 13:05:00','none'),
 (1235443,'platina',1,'2012-10-05 13:10:00','none'),
(1234567,'city',8.2,'2011-11-01 12:10:01','upi'),
(1234568,'nano',3.15,'2012-11-02 11:09:00','finance'),
(1234555,'city',8.2,'2011-01-01 10:10:01','finance');
 
 create Table finance(
 transactionId int not NULL,
 emi int not NULL,
 timeperiod double not NULL,
 PRIMARY KEY (transactionId)
 );
 
 insert into finance value
 (1234555,12000,4.5);
 
 
create Table financeProvider(
transactionId int not NULL,
name varchar (20) not NULL,
websiteUrl varchar (20) not NULL, 
interest double not NULL,
PRIMARY KEY (transactionId)
);
 
 insert into financeProvider value
 (1234555,'mahindra-finance','mahindra.com',4);
 
 create Table Approvement(
 email varchar(20) not NULL,
 transactionId int not NULL,
 isApproved bool not NULL,
 PRIMARY KEY (transactionId,email)
 );
 
 insert into Approvement values
 ('abc@gmail.com',1235443,false),
 ('tyrur@gmail.com',1234556,false),
 ('xyz@gmail.com',1234555,true);
 
 
select * from modelspecification
where modelName = ( select modelName
 from reservation as R,approvement as A
 where R.transactionId = A.transactionId and A.isApproved=true);