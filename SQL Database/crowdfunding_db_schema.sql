CREATE TABLE campaign(
	cf_id int not null,
	contact_id int not null,
	company_name varchar(100) not null,
	description varchar(100) not null,
	goal int not null,
	pledged int not null,
	outcome varchar(100) not null,
	backers_count int not null,
	country varchar(100) not null,
	currency varchar(100) not null,
	launch_date int not null,
	end_date int not null,
	category_ids varchar(50) not null,
	subcategory_ids varchar(50) not null,
	primary key(contact_id)
	)
	
CREATE TABLE contacts(
	contact_id int not null,
	first_name varchar(100) not null,
	last_name varchar(100) not null,
	email varchar(100) not null,
	foreign key(contact_id) references campaign (contact_id)
	)

CREATE TABLE category(
	category_ids varchar(50) not null,
	category varchar(50) not null
	)

CREATE TABLE subcategory(
	subcategory_ids varchar(50) not null,
	subcategory varchar(50) not null
	)

SELECT * FROM campaign
SELECT * FROM contacts
SELECT * FROM category
SELECT * FROM subcategory

SELECT * FROM campaign
SELECT * FROM contacts
SELECT * FROM category
SELECT * FROM subcategory