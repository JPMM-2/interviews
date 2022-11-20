use master

DROP DATABASE if exists BetsSon;
go
CREATE DATABASE BetsSon;
go


use BetsSon

DROP schema if exists DBtest
go
CREATE schema DBtest
go

--drop table if exists DBtest.[aa.calendar]
--drop table if exists device
--drop table if exists provider
--drop table if exists PaymentStatus
--drop table if exists PaymentMethod
--drop table if exists brand
--drop table if exists market
--drop table if exists customers

create table DBtest.[dim.calendar]
(
	mk_calendar nvarchar(8),
	[date] date,
	[month] date
	CONSTRAINT [PK_date] PRIMARY KEY (mk_calendar)
)

create table DBtest.[dim.device]
(
	mk_device [int] IDENTITY(1,1),
	channelname nvarchar(25) 
	CONSTRAINT [PK_device] PRIMARY KEY (mk_device),
	CONSTRAINT [UC_channel] UNIQUE  (channelname)
)

create table DBtest.[dim.provider]
(
	mk_Provider [int] IDENTITY(1,1),
	providerName nvarchar(25) not null,
	ProductName nvarchar(25) not null
	CONSTRAINT [PK_provider] PRIMARY KEY (mk_Provider)
	--CONSTRAINT [UC_Account_ID] UNIQUE (providerName, ProductName)
)

create table DBtest.[dim.PaymentStatus]
(
	mk_paymentstatus [int] IDENTITY(1,1),
	StatusName nvarchar(25) not null,
	[Description] nvarchar(200) not null
	CONSTRAINT [PK_paystatus] PRIMARY KEY (mk_paymentstatus),
	CONSTRAINT [UC_paystatus] UNIQUE (StatusName)
)

create table DBtest.[dim.PaymentMethod]
(
	mk_PaymentMethod [int] IDENTITY(1,1) ,
	PaymentMethodName nvarchar(25) not null , -- not sure about this unique primary key or should include the payment type as well
	PaymentType nvarchar(25) not null
	CONSTRAINT [PK_paymethod] PRIMARY KEY (mk_PaymentMethod),
	CONSTRAINT [UC_paymethod] UNIQUE (PaymentMethodName)
)

-- we create 2 extra tables to be consistent with the data
-- Brand table
-- Market table

--create table brand
--(
--	mk_brand int IDENTITY(1,1),
--	brandname nvarchar(20) not null,
--	CONSTRAINT [PK_brand] PRIMARY KEY (mk_brand),
--	CONSTRAINT [UC_brand] UNIQUE (brandname)
--)

--create table market
--(
--	mk_market int IDENTITY(1,1),
--	marketname nvarchar(20) not null,
--	CONSTRAINT [PK_market] PRIMARY KEY (mk_market),
--	CONSTRAINT [UC_market] UNIQUE (marketname)
--)


create table DBtest.[dim.customers]
(
	mk_customer [int] IDENTITY(1,1),
	brandName nvarchar(20) not null,
	CustomerMarketName nvarchar(20) not null,
	AccountState nvarchar(20) not null,
	RegistrationDate nvarchar(8) not null,
	FirstDepositDate nvarchar(8) not null
	CONSTRAINT [PK_customers] PRIMARY KEY (mk_customer)
)

CREATE TABLE DBtest.[revenue.aggregation]
(
	mk_Calendar nvarchar(8),
	mk_Customer	int,
	mk_Provider	int,
	mk_device	int,
	rounds	int,
	turnover_EUR float,	
	gameWin_EUR	float,
	[bonus cost] float,	
	totalAccountingRevenue_EUR float,
	isCutomerActive smallint
	CONSTRAINT fk_rev_Calendar FOREIGN KEY (mk_Calendar) REFERENCES DBtest.[dim.calendar](mk_Calendar),
	CONSTRAINT fk_rev_Customer FOREIGN KEY (mk_Customer) REFERENCES DBtest.[dim.customers](mk_Customer),
	CONSTRAINT fk_rev_provider FOREIGN KEY (mk_Provider) REFERENCES DBtest.[dim.provider](mk_Provider),
	CONSTRAINT fk_rev_device FOREIGN KEY (mk_device) REFERENCES  DBtest.[dim.device](mk_device)
)

CREATE TABLE DBtest.[deposits.transactions]
(
	mk_Calendar	nvarchar(8),
	mk_Customer	int,
	mk_PaymentMethod int,	
	mk_paymentstatus int,
	amount_EUR float
	CONSTRAINT fk_dep_Calendar FOREIGN KEY (mk_Calendar) REFERENCES DBtest.[dim.calendar](mk_Calendar),
	CONSTRAINT fk_dep_Customer FOREIGN KEY (mk_Customer) REFERENCES DBtest.[dim.customers](mk_Customer),
	CONSTRAINT fk_dep_PaymentMethod FOREIGN KEY (mk_PaymentMethod) REFERENCES DBtest.[dim.PaymentMethod](mk_PaymentMethod),
	CONSTRAINT fk_dep_paymentstatus FOREIGN KEY (mk_paymentstatus) REFERENCES DBtest.[dim.PaymentStatus](mk_paymentstatus)
)

