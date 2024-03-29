CREATE DATABASE Library_management_System
 
use Library_management_System
go

create table PublicationMst
(
 PID INT primary key Identity (1,1) ,
 Publication NVARCHAR(256),
 EntryDate DATETIME,
 
)
	
	
create table StudentMst
	(
	SID int primary key Identity (1,1),
	StudentName  NVARCHAR(256),
	BranchName NVARCHAR(256),
	Mobile  NVARCHAR(256),
	Address  NVARCHAR(256),
		
	City  NVARCHAR(256),
	Pincode  NVARCHAR(256),
	DOB DATETIME,
	Gender  NVARCHAR(256),
	Email  NVARCHAR(256),
	Password NVARCHAR(256),
	Image nvarchar(500),
	EntryDate DATETIME
	)
	
create table RentMst
(
RID INT PRIMARY KEY IDENTITY(1,1),
BookName NVARCHAR(256),
SID INT,
Days INT,
IssueDate DATETIME,
ReturnDate DATETIME,
Status INT,
 
)

CREATE table PenaltyMst
(
PID int primary key identity(1,1),
SID INT,
BookName NVARCHAR(256),
 Price Numeric,
 Panalty Numeric,
 Detail NVARCHAR(500),
 EntryDate DATETIME,
 
)


create table BranchMst
(
BranchID int primary key identity(1,1),
BranchName nvarchar(256),

)

create table AdminMst
(
aid int PRIMARY KEY IDENTITY(1,1),
Name nvarchar(256),
UserName nvarchar(256),
Password nvarchar(256),
EntryDate DATETIME,
)


create table BookMst
(
BookID int primary key identity (1,1),
BookName nvarchar(256),
Author nvarchar(256),
Detail nvarchar(256),
Price float,
 Publication nvarchar(256),
 Branch nvarchar(256),
 Quantities int,
   AvailableQnt int,
   RentQnt int,
Image nvarchar(1000),
EntryDate DATETIME,
)
	