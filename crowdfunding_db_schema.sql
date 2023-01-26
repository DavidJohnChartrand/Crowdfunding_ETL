CREATE TABLE Contact(
	contact_id int PRIMARY KEY,
	first_name varchar(50),
	last_name varchar(50),
	email varchar(100)
);

CREATE TABLE Category(
	category_id varchar(8) PRIMARY KEY,
	category varchar(60)
);

CREATE TABLE Subcategory(
	subcategory_id varchar(10) PRIMARY KEY,
	subcategory varchar(60)
);

CREATE TABLE Campaign (
	cf_df int PRIMARY KEY,
	contact_id int,
	company_name varchar(50) NOT NULL,
	description varchar(300)NOT NULL,
	goal float NOT NULL,
	pledge float NOT NULL,
	outcome varchar(10) NOT NULL,
	backer_count int,
	country varchar(60),
	currency varchar(3),
	launch_date date,
	end_date date,
	category varchar(8),
	subcategory varchar(10),
	FOREIGN KEY (contact_id) REFERENCES Contact(contact_id),
	FOREIGN KEY (category) REFERENCES Category(category_id),
	FOREIGN KEY (subcategory) REFERENCES Subcategory(subcategory_id)
);