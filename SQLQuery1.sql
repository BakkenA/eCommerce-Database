CREATE TABLE User_identifiers
(
id int IDENTITY(1,1) Primary Key,
first_name varchar(55),
last_name varchar(55),
middle_initial varchar(55),
user_name_id int,
address_id int,
credit_card_id int,
)

CREATE TABLE Email_address
(
id int IDENTITY(1,1) Primary Key,
email_addresses varchar(55),
)
CREATE TABLE Billing_address
(
id int IDENTITY(1,1) Primary Key,
billing_address_id int FOREIGN KEY REFERENCES Addresses(id),
)
CREATE TABLE Shipping_address
(
id int IDENTITY(1,1) Primary Key,
shipping_address_id int FOREIGN KEY REFERENCES Addresses(id),
)
CREATE TABLE State_sales_tax
(
id int IDENTITY(1,1) Primary Key,
tax_rate decimal(18,0),
)
CREATE TABLE States
(
id int IDENTITY(1,1) Primary Key,
state_name varchar(55),
tax_id int FOREIGN KEY REFERENCES State_sales_tax(id),
)
CREATE TABLE City
(
id int IDENTITY(1,1) Primary Key,
city_name varchar(55),
)
CREATE TABLE Zip_code
(
id int IDENTITY(1,1) Primary Key,
zip_code int,
) 
CREATE TABLE Addresses
(
id int IDENTITY(1,1) Primary Key,
street_address_line1 varchar(55),
street_address_line2 varchar(55),
city_id int FOREIGN KEY REFERENCES City,
zip_code_id int FOREIGN KEY REFERENCES Zip_code(id),
state_id int FOREIGN KEY REFERENCES States(id),
)