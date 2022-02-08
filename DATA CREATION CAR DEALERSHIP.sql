-- STORED FUNCTION FOR ADDDING A CUSTOMER
create or replace function add_CUSTOMER(_CUSTOMER_ID INTEGER, _FIRST_NAME VARCHAR, _LAST_NAME VARCHAR)
returns VOID
as $MAIN$
begin 
	insert into CUSTOMER(CUSTOMER_ID, FIRST_NAME, last_name)
	values(_CUSTOMER_ID, _FIRST_NAME, _LAST_NAME);
end;
$MAIN$ 
language PLPGSQL;

select add_CUSTOMER(1, 'Josh', 'Silvernale');

select add_customer(2, 'Jaclyn', 'Silvernale');


-- STORED FUNCTION FOR ADDING A SALES PERSON
create or replace function add_salesperson(_sales_id integer, _first_name VARCHAR, _LAST_NAME VARCHAR)
returns VOID 
as $MAIN$ 
begin 
	insert into salesperson(SALES_ID, FIRST_NAME, last_name)
	VALUES(_SALES_ID, _FIRST_NAME, _LAST_NAME);
end;
$MAIN$
language PLPGSQL;

select ADD_SALESPERSON(1, 'Regina', 'Phalange');

select ADD_SALESPERSON(2, 'Chandler', 'Bing');


-- Manual creation of data for database
-- INSERTION OF CAR_INVENTORY

insert into car_inventory(
	CAR_ID,
	CAR_TYPE,
	amount 
) values(
	1,
	'Used',
	15999.00
	);

insert into car_inventory(
	CAR_ID,
	CAR_TYPE,
	amount
) VALUES(
	2,
	'New',
	25999.00
	);

-- INSERTION OF MECHANIC
insert into MECHANIC(
	MECHANIC_ID,
	FIRST_NAME,
	last_name 
) values(
	1,
	'James',
	'Patterson'
	);

insert into mechanic(
	MECHANIC_ID,
	FIRST_NAME,
	last_name 
) values (
	2,
	'John',
	'Grisham'
	);

-- INSERTION OF INVOICE

insert into INVOICE(
	INVOICE_ID,
	CAR_ID,
	SALES_ID,
	customer_id 
) values (
	1,
	1,
	1,
	1
	);

insert into INVOICE(
	INVOICE_ID,
	CAR_ID,
	SALES_ID,
	customer_id 
) values (
	2,
	2,
	2,
	2
	);


-- INSERTION OF SERVICE

insert into SERVICE(
	SERVICE_ID,
	AMOUNT,
	MECHANIC_ID,
	CAR_ID,
	customer_id 
) VALUES(
	1,
	300.00,
	2,
	1,
	1
	);

insert into SERVICE(
	SERVICE_ID,
	AMOUNT,
	MECHANIC_ID,
	CAR_ID,
	customer_id 
) VALUES(
	2,
	59.99,
	1,
	2,
	2
	);


	