
use betsson
go


--	1	How much daily turnover and accounting revenue did each brand generate on each product in the first 6 days of the year


with six_first as
(
	select 
		mk_calendar
	from 
		dbtest.[dim.calendar]
	where 
		DATEDIFF(day,'2019-01-01',[date]) <=5 
)


select 
	cus.brandName, 
	pro.ProductName,
	sum(rv.turnover_EUR) as TotalTurnover, 
	sum(totalAccountingRevenue_EUR) as TotalRevenue
from 
	[DBtest].[revenue.aggregation] rv 
	left join 
	dbtest.[dim.customers] cus 
		on rv.mk_Customer = cus.mk_customer
	left join 
	dbtest.[dim.provider] pro
		on rv.mk_Provider = pro.mk_Provider
where mk_Calendar in (select mk_calendar from six_first)
group by
	cus.brandName, 
	pro.ProductName
order by 
	cus.brandName, 
	pro.ProductName


--	2	How many daily actives (unique) did we have on each device in each market separately during the first 6 days of the year?


with six_first as
(
	select 
		mk_calendar
	from 
		dbtest.[dim.calendar]
	where 
		DATEDIFF(day,'2019-01-01',[date]) <=4 
)

select 
	cal.[date],cus.CustomerMarketName as market, 
	dev.channelname as channel,
	count(distinct rev.mk_Customer) as unique_Users
from 
	DBtest.[revenue.aggregation] rev 
	left join 
	DBtest.[dim.customers] cus 
		on rev.mk_Customer=cus.mk_customer 
	left join 
	dbtest.[dim.device] dev 
		on rev.mk_device=dev.mk_device
	left join dbtest.[dim.calendar] cal
		on rev.mk_Calendar=cal.mk_calendar
where 
	rev.mk_Calendar in (select mk_calendar from six_first)
group by
	cal.[date],cus.CustomerMarketName, dev.channelname

go


--	3	How many successful depositors and deposit amount did we have for each payment method in Brand A during the first 6 days of the year?


with six_first as
(
	select 
		mk_calendar
	from 
		dbtest.[dim.calendar]
	where 
		DATEDIFF(day,'2019-01-01',[date]) <=5 
)

select 
	mth.PaymentMethodName,
	count(distinct trn.mk_Customer) as unique_customers, 
	sum(trn.amount_EUR) as Total_Amount_dep
from 
	[DBtest].[deposits.transactions] trn 
	left join 
	dbtest.[dim.PaymentMethod] mth 
		on trn.mk_PaymentMethod = mth.mk_PaymentMethod
	left join 
	dbtest.[dim.PaymentStatus] st
		on trn.mk_paymentstatus = st.mk_paymentstatus
	left join 
	DBtest.[dim.customers] cus
		on trn.mk_Customer=cus.mk_customer
where 
	st.StatusName='Completed' 
	and cus.brandName = 'Brand A' 
	and trn.mk_Calendar in (select mk_calendar from six_first)
group by 
	mth.PaymentMethodName

go


--	4	How many new registrations and new depositors did we have for each brand in each month?


select 
	cal.[month],
	coalesce(cus.brandName,cus_2.brandName,'Nothing') as brand_0, 
	count(cus.mk_customer) as new_reg, 
	count(trn.mk_Customer) as new_dep 
from 
	dbtest.[dim.calendar] cal 
	left join 
	dbtest.[dim.customers] cus 
		on cal.mk_calendar=cus.FirstDepositDate
	left join 
	dbtest.[deposits.transactions] trn 
		on cal.mk_calendar=trn.mk_Calendar
	left join 
	dbtest.[dim.customers] cus_2 
		on cus_2.mk_customer=trn.mk_Customer
group by 
	cal.[month], 
	cus.brandName,
	cus_2.brandName


--	5	Overall, for each customer, how many deposit attempts were made on each payment method and what is the deposit success rate?   


with payments as
(
	select 
		trn.mk_Customer as customer, 
		st.StatusName as status,
		mth.PaymentMethodName as method,
		count(*) as count_payments
	from 
		[DBtest].[deposits.transactions] trn 
		left join 
		dbtest.[dim.PaymentStatus] st 
			on trn.mk_paymentstatus=st.mk_paymentstatus
		left join
		dbtest.[dim.PaymentMethod] mth
			on trn.mk_PaymentMethod=mth.mk_PaymentMethod
	group by
		trn.mk_Customer, 
		mth.PaymentMethodName,
		st.StatusName
),
Total as
(
	select 
		Customer, 
		method, 
		sum(count_payments) Total_payments 
	from 
		payments  
	group by 
		Customer, 
		method
)
select 
	payments.customer, 
	payments.method, 
	total.Total_payments, 
	round(cast(count_payments as float)/cast(Total_payments as float),3) as success_ratio
from 
	payments left join Total on payments.customer=total.customer and payments.method=total.method
where payments.status='Completed'

