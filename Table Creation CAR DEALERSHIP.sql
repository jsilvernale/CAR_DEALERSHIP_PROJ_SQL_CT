create table car_inventory(
	car_id SERIAL primary key,
	car_type VARCHAR(25),
	amount Numeric(10,2)
);

create table customer(
	customer_id SERIAL primary key,
	first_name VARCHAR(50),
	last_name VARCHAR(50)
);

create table SALESPERSON(
	SALES_ID SERIAL primary key,
	FIRST_NAME VARCHAR(50),
	LAST_NAME VARCHAR(50)
);

create table MECHANIC(
	MECHANIC_ID SERIAL primary key,
	FIRST_NAME VARCHAR(50),
	LAST_NAME VARCHAR(50)
);

create table SERVICE(
	SERVICE_ID SERIAL primary key,
	AMOUNT NUMERIC(8,2),
	MECHANIC_ID INTEGER not null,
	CAR_ID INTEGER not null,
	CUSTOMER_ID INTEGER not null,
	foreign key(MECHANIC_ID) references MECHANIC(MECHANIC_ID),
	foreign KEY(CAR_ID) references CAR_INVENTORY(CAR_ID),
	foreign KEY(CUSTOMER_ID) references CUSTOMER(CUSTOMER_ID)
);

create table INVOICE(
	INVOICE_ID SERIAL primary key,
	CAR_ID INTEGER not null,
	SALES_ID INTEGER not null,
	CUSTOMER_ID INTEGER not null,
	foreign key(CAR_ID) references CAR_INVENTORY(CAR_ID),
	foreign key(SALES_ID) references SALESPERSON(SALES_ID),
	foreign KEY(CUSTOMER_ID) references CUSTOMER(CUSTOMER_ID)
);