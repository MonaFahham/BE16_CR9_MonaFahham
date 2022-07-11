-- create table customer
CREATE TABLE customer (
	customer_id int PRIMARY KEY AUTO_INCREMENT,
    first_name varchar(50) not null,
    last_name varchar(50) not null,
    phone_number int null,
    bank_account varchar(30) not null,
    email varchar(100) UNIQUE not null,
    gender ENUM('M','F') not null,
    date_of_birth date null,
    fk_address_id int null,
    fk_account_id int null,
    fk_invoice_id int null,
    fk_payment_form_id int null
)

-- create table customer_product
CREATE TABLE customer_product(
	customer_product_id int PRIMARY KEY AUTO_INCREMENT,
    fk_product_id int null,
    fk_customer_id int null
)

-- create table product
CREATE TABLE product( 
    product_id int PRIMARY KEY AUTO_INCREMENT, 
    product_name varchar(100) not null, 
    warranty ENUM('Yes','No') not null, 
    product_order varchar(100) not null, 
    price int not null, quantity int not null, 
    availibility ENUM('Yes','No') not null, 
    description varchar(200) null, 
    fk_company_id int null 
)

-- create table company
CREATE TABLE company(
	company_id int PRIMARY KEY AUTO_INCREMENT,
    company_name varchar(100) not null,
    company_address varchar(200) not null,
    department varchar(50) not null,
    fk_address_id int null,
    fk_employee_id int null
)

-- create table account
CREATE TABLE account(
	account_id int PRIMARY KEY AUTO_INCREMENT,
    username varchar(100) not null,
    password varchar(30) not null
)

-- create table address
CREATE TABLE address(
	address_id int PRIMARY KEY AUTO_INCREMENT,
    country varchar(30) not null,
    city varchar(30) not null,
    postal_code int not null,
    street_name varchar(30) not null,
    house_number int not null
)

-- create table product_to_shipping_company
CREATE TABLE product_to_shipping_company(
	product_to_shipping_company_id int PRIMARY KEY AUTO_INCREMENT,
    fk_product_id int null,
    fk_shipping_company_id int null
)

-- create table payment_form
CREATE TABLE payment_form(
    payment_form_id int PRIMARY KEY AUTO_INCREMENT,
    creditcard int not null,
    paypal int not null,
    fk_invoice_id int null,
    fk_customer_id int null
)

-- create table invoice
CREATE TABLE invoice(
	invoice_id int PRIMARY KEY AUTO_INCREMENT,
    fk_product_id int null,
    fk_customer_id int null
)

-- create table shipping_company
CREATE TABLE shipping_company(
	shipping_company_id int PRIMARY KEY AUTO_INCREMENT,
    name varchar(50) not null,
    department varchar(50) not null,
    fk_address_id int null,
    fk_product_id int null,
    fk_customer_id int null
)

-- create table employee
CREATE TABLE employee(
    employee_id int PRIMARY KEY AUTO_INCREMENT,
    first_name varchar(50) not null,
    last_name varchar(50) not null,
    phone_number int null,
    email varchar(100) UNIQUE not null,
    gender ENUM('M','F') not null,
    date_of_birth date null,
    fk_address_id int null
)

-- ALTER FOREIGN KEY
ALTER TABLE customer ADD FOREIGN KEY (fk_address_id) REFERENCES address(address_id);
ALTER TABLE customer ADD FOREIGN KEY (fk_account_id) REFERENCES account(account_id);
ALTER TABLE customer ADD FOREIGN KEY (fk_invoice_id) REFERENCES invoice(invoice_id);
ALTER TABLE customer ADD FOREIGN KEY (fk_payment_form_id) REFERENCES payment_form(payment_form_id);

ALTER TABLE customer_product ADD FOREIGN KEY (fk_product_id) REFERENCES product(product_id);
ALTER TABLE customer_product ADD FOREIGN KEY (fk_customer_id) REFERENCES customer(customer_id);

ALTER TABLE product ADD FOREIGN KEY (fk_company_id) REFERENCES company(company_id);

ALTER TABLE payment_form ADD FOREIGN KEY (fk_invoice_id) REFERENCES invoice(invoice_id);
ALTER TABLE payment_form ADD FOREIGN KEY (fk_customer_id) REFERENCES customer(customer_id);

ALTER TABLE invoice ADD FOREIGN KEY (fk_product_id) REFERENCES product(product_id);
ALTER TABLE invoice ADD FOREIGN KEY (fk_customer_id) REFERENCES customer(customer_id);

ALTER TABLE shipping_company ADD FOREIGN KEY (fk_address_id) REFERENCES address(address_id);
ALTER TABLE shipping_company ADD FOREIGN KEY (fk_product_id) REFERENCES product(product_id);
ALTER TABLE shipping_company ADD FOREIGN KEY (fk_customer_id) REFERENCES customer(customer_id);

ALTER TABLE employee ADD FOREIGN KEY (fk_address_id) REFERENCES address(address_id);

ALTER TABLE product_to_shipping_company ADD FOREIGN KEY (fk_product_id) REFERENCES product(product_id);
ALTER TABLE product_to_shipping_company ADD FOREIGN KEY (fk_shipping_company_id) REFERENCES shipping_company(shipping_company_id);


ALTER TABLE company ADD FOREIGN KEY (fk_address_id) REFERENCES employee(address_id);
ALTER TABLE company ADD FOREIGN KEY (fk_employee_id) REFERENCES employee(employee_id);


-- Insert Into
insert into account (username, password) values ('ayitzhakof0', '3HvyEfP94xt');
insert into account (username, password) values ('jclemente1', '3g8hfuA');
insert into account (username, password) values ('cohenery2', '3Ba1Bo6CkcQb');
insert into account (username, password) values ('skuzma3', '8dmG7a6Fr');
insert into account (username, password) values ('hcolenutt4', 'ksQ0Kl3IdZ');
insert into account (username, password) values ('fkuhnhardt5', 'dHGqac');
insert into account (username, password) values ('cduchant6', 'n6w4fxnUNxV');
insert into account (username, password) values ('fleyes7', 'gBNgtrhYpyu8');
insert into account (username, password) values ('kgarmon8', 'LgzTJV');
insert into account (username, password) values ('dcopping9', 'YFnjIY');

insert into address (country, city, postal_code, street_name, house_number) values ('Brazil', 'Lapa', '83750', 'Mcguire', 1);
insert into address (country, city, postal_code, street_name, house_number) values ('Poland', 'Górki', '83751', 'Mockingbird', 2);
insert into address (country, city, postal_code, street_name, house_number) values ('Russia', 'Kaduy', '162510', '4th', 3);
insert into address (country, city, postal_code, street_name, house_number) values ('Russia', 'Kamenka', '692608', 'Moland', 4);
insert into address (country, city, postal_code, street_name, house_number) values ('Canada', 'Rimouski', '692664', 'Lyons', 5);
insert into address (country, city, postal_code, street_name, house_number) values ('Vietnam', 'An Châu', '6985408', 'South', 6);
insert into address (country, city, postal_code, street_name, house_number) values ('United Kingdom', 'Upton', '69266412', 'Sullivan', 7);
insert into address (country, city, postal_code, street_name, house_number) values ('Poland', 'Miłosław', '182510', 'Forster', 8);
insert into address (country, city, postal_code, street_name, house_number) values ('China', 'Muli', '692608', 'Lakewood Gardens', 9);
insert into address (country, city, postal_code, street_name, house_number) values ('Indonesia', 'Nglorogan', '162517', 'Village', 10);

insert into company (company_name, company_address, department, fk_address_id, fk_employee_id) values ('Meejo', '2 Summerview Road', 'Baby Clothes','1','1');
insert into company (company_name, company_address, department, fk_address_id, fk_employee_id) values ('Livetube', '08 Service Drive', 'Clothing','2','2');
insert into company (company_name, company_address, department, fk_address_id, fk_employee_id) values ('Centizu', '653 Prairieview Street', 'Computers','3','3');
insert into company (company_name, company_address, department, fk_address_id, fk_employee_id) values ('Voonder', '98091 Oriole Street', 'Electronic Device','4','4');
insert into company (company_name, company_address, department, fk_address_id, fk_employee_id) values ('Oyondu', '28401 Shopko Lane', 'Computers','5','5');
insert into company (company_name, company_address, department, fk_address_id, fk_employee_id) values ('Skynoodle', '048 Loeprich Park', 'Book','6','6');
insert into company (company_name, company_address, department, fk_address_id, fk_employee_id) values ('Yambee', '53 Lien Avenue', 'Home Appliance','7','7');
insert into company (company_name, company_address, department, fk_address_id, fk_employee_id) values ('Meembee', '47055 Eastwood Point', 'Beauty','8','8');
insert into company (company_name, company_address, department, fk_address_id, fk_employee_id) values ('Demimbu', '1 Waywood Lane', 'Garden Tools','9','9');
insert into company (company_name, company_address, department, fk_address_id, fk_employee_id) values ('Wikibox', '65 Garrison Court', 'Toys','1','8');


insert into customer (first_name, last_name, phone_number, bank_account, email, gender, date_of_birth, fk_address_id, fk_account_id, fk_invoice_id, fk_payment_form_id) values ('Mollee', 'Sawbridge', '911-645-2252', 'PL05 6520 3610 2280 3523 2153 1327', 'msawbridge0@storify.com', 'F', '17/01/1992', 16, 11, 1, 1);
insert into customer (first_name, last_name, phone_number, bank_account, email, gender, date_of_birth, fk_address_id, fk_account_id, fk_invoice_id, fk_payment_form_id) values ('Eugenio', 'd''Escoffier', '401-233-1513', 'AZ14 REFW 3JFU JFLW UXNO YFTQ NFSA', 'edescoffier1@wix.com', 'M', '11/12/1943', 17, 12, 2, 2);
insert into customer (first_name, last_name, phone_number, bank_account, email, gender, date_of_birth, fk_address_id, fk_account_id, fk_invoice_id, fk_payment_form_id) values ('Briggs', 'Graveney', '619-830-7641', 'FR52 3531 1747 42NO NFWI WUUM 393', 'bgraveney2@shinystat.com', 'M', '17/03/1964', 18, 13, 3, 3);
insert into customer (first_name, last_name, phone_number, bank_account, email, gender, date_of_birth, fk_address_id, fk_account_id, fk_invoice_id, fk_payment_form_id) values ('Henderson', 'Muldrew', '607-824-9592', 'IL65 5585 9534 4322 5494 336', 'hmuldrew3@newyorker.com', 'M', '25/08/2006', 19, 14, 4, 4);
insert into customer (first_name, last_name, phone_number, bank_account, email, gender, date_of_birth, fk_address_id, fk_account_id, fk_invoice_id, fk_payment_form_id) values ('Creight', 'Pessel', '706-768-7332', 'FR91 6184 8443 84EV SRRQ O9BZ Z75', 'cpessel4@networksolutions.com', 'M', '01/02/1947', 20, 15, 5, 5);
insert into customer (first_name, last_name, phone_number, bank_account, email, gender, date_of_birth, fk_address_id, fk_account_id, fk_invoice_id, fk_payment_form_id) values ('Quincy', 'Enticott', '582-887-9787', 'CY80 0543 4392 E7EZ TX9K TLAW 7KPU', 'qenticott5@illinois.edu', 'M', '03/08/1943', 21, 16, 6, 6);
insert into customer (first_name, last_name, phone_number, bank_account, email, gender, date_of_birth, fk_address_id, fk_account_id, fk_invoice_id, fk_payment_form_id) values ('Elnora', 'Levesley', '344-165-9657', 'BH56 DBLS YCBU IZB2 5UZ5 K8', 'elevesley6@washington.edu', 'F', '02/03/2013', 22, 17, 7, 7);
insert into customer (first_name, last_name, phone_number, bank_account, email, gender, date_of_birth, fk_address_id, fk_account_id, fk_invoice_id, fk_payment_form_id) values ('Curry', 'Cattroll', '379-442-3566', 'GI88 VZOI B2JF XAS7 G83U GRX', 'ccattroll7@accuweather.com', 'M', '14/06/1972', 23, 18, 8, 8);
insert into customer (first_name, last_name, phone_number, bank_account, email, gender, date_of_birth, fk_address_id, fk_account_id, fk_invoice_id, fk_payment_form_id) values ('Noel', 'Popple', '733-387-9736', 'FR61 5561 5904 63TV 3WQA SMSW Z50', 'npopple8@joomla.org', 'F', '09/06/1933', 24, 19, 9, 9);
insert into customer (first_name, last_name, phone_number, bank_account, email, gender, date_of_birth, fk_address_id, fk_account_id, fk_invoice_id, fk_payment_form_id) values ('Illa', 'Howitt', '348-745-7973', 'KW51 YVIP E9GA ERDM JXSQ 2Z2Y XWG9 SX', 'ihowitt9@example.com', 'F', '28/12/1948', 25, 20, 10, 10);


insert into customer_product (fk_customer_id, fk_product_id) values (1, 1);
insert into customer_product (fk_customer_id, fk_product_id) values (2, 2);
insert into customer_product (fk_customer_id, fk_product_id) values (3, 3);
insert into customer_product (fk_customer_id, fk_product_id) values (4, 4);
insert into customer_product (fk_customer_id, fk_product_id) values (5, 5);
insert into customer_product (fk_customer_id, fk_product_id) values (6, 6);
insert into customer_product (fk_customer_id, fk_product_id) values (7, 7);
insert into customer_product (fk_customer_id, fk_product_id) values (8, 8);
insert into customer_product (fk_customer_id, fk_product_id) values (9, 9);
insert into customer_product (fk_customer_id, fk_product_id) values (10, 10);


insert into employee (first_name, last_name, phone_number, email, gender, date_of_birth,fk_address_id ) values ('Mandel', 'Hurcombe', '(540) 6824833', 'monafahham@gmail.com', 'M', '3/13/2022',26);
insert into employee (first_name, last_name, phone_number, email, gender, date_of_birth,fk_address_id) values ('Erik', 'Lassells', '(182) 5745103', 'eli_mnd@amazonaws.com', 'M', '8/22/2021',27);
insert into employee (first_name, last_name, phone_number, email, gender, date_of_birth,fk_address_id) values ('Terri', 'Duddell', '(663) 2362270', 'sirlakdashti@yahoo.com', 'F', '2/5/2022',28);
insert into employee (first_name, last_name, phone_number, email, gender, date_of_birth,fk_address_id) values ('Isabelita', 'Ebourne', '(368) 4464432', 'misaghmin@yahoo.com', 'F', '4/22/2022',29);
insert into employee (first_name, last_name, phone_number, email, gender, ,fk_address_id) values ('Dana', 'Espadater', '(863) 2722016', 'delia@gmail.com', 'M', '8/13/2021',30);
insert into employee (first_name, last_name, phone_number, email, gender, ,fk_address_id) values ('Mirabella', 'Nussey', '(580) 8519557', 'muussy@yahoo.com', 'F', '9/17/2021',31);
insert into employee (first_name, last_name, phone_number, email, gender, ,fk_address_id) values ('Dorita', 'Schoenrock', '(552) 7851612', 'donald@gmail.com', 'F', '7/6/2022',32);
insert into employee (first_name, last_name, phone_number, email, gender, ,fk_address_id) values ('Gardner', 'Maffulli', '(188) 8409878', 'karitas@mail.com', 'M', '12/17/2021',33);
insert into employee (first_name, last_name, phone_number, email, gender, ,fk_address_id) values ('Chelsy', 'Zmitrovich', '(927) 8204082', 'karisam@yahoo.com', 'F', '3/27/2022',34);
insert into employee (first_name, last_name, phone_number, email, gender, ,fk_address_id) values ('Linda', 'Sindle', '(883) 8307289', 'lsindle9@gmail.com', 'F', '12/16/2021',35);


insert into invoice (fk_product_id, fk_customer_id) values (22, 1);
insert into invoice (fk_product_id, fk_customer_id) values (23, 2);
insert into invoice (fk_product_id, fk_customer_id) values (24, 3);
insert into invoice (fk_product_id, fk_customer_id) values (25, 4);
insert into invoice (fk_product_id, fk_customer_id) values (26, 5);

insert into invoice (fk_product_id, fk_customer_id) values (6, 6);
insert into invoice (fk_product_id, fk_customer_id) values (7, 7);
insert into invoice (fk_product_id, fk_customer_id) values (8, 8);
insert into invoice (fk_product_id, fk_customer_id) values (9, 9);
insert into invoice (fk_product_id, fk_customer_id) values (10, 10);

insert into payment_form (creditcard, paypal, fk_invoice_id, fk_customer_id) values ('DE19 8458 1252 2740 3476 13', 'b6ffa2b984d59601', 1, 1);
insert into payment_form (creditcard, paypal, fk_invoice_id, fk_customer_id) values ('KW53 PFNZ 1KKG UNON SF0D XQ8J NIPA GM', 'b6ffa2b984d59601', 2, 2);
insert into payment_form (creditcard, paypal, fk_invoice_id, fk_customer_id) values ('AZ44 LIIH VPCY FXGJ KNUW TYPD VS5W', '8fc1a7bd66c9be39', 3, 3);
insert into payment_form (creditcard, paypal, fk_invoice_id, fk_customer_id) values ('RS76 8157 5856 7156 8365 69', '1f41ecdf38bcaf81', 4, 4);
insert into payment_form (creditcard, paypal, fk_invoice_id, fk_customer_id) values ('SE06 9669 0006 9189 4870 3598', '9607a8e6d7bf6bab', 5, 5);
insert into payment_form (creditcard, paypal, fk_invoice_id, fk_customer_id) values ('SI81 1491 0115 8713 550', '5033184ccb65224e', 6, 6);
insert into payment_form (creditcard, paypal, fk_invoice_id, fk_customer_id) values ('AD64 6199 0255 GIKZ MGNE Y8DW', '5033184ccb65224e', 7, 7);
insert into payment_form (creditcard, paypal, fk_invoice_id, fk_customer_id) values ('SA63 06SZ CGMV IZWU TFJH GHDJ', '5e042f91ba112564', 8, 8);
insert into payment_form (creditcard, paypal, fk_invoice_id, fk_customer_id) values ('AE53 3426 6972 2835 2045 716', '574ff70bea28fcf', 9, 9);
insert into payment_form (creditcard, paypal, fk_invoice_id, fk_customer_id) values ('ES80 9727 8871 3284 3686 6705', '22929e6fc9b9f8c1', 10, 10);


insert into product (product_name, warranty, product_order, price, quantity, availability, description, fk_company_id) values ('JBL Flip 5 Bluetooth Box', 'Yes', 'e6ca4d01', '104.99', '100', 'Yes', 'A great JBL Speaker','17');
insert into product (product_name, warranty, product_order, price, quantity, availability, description, fk_company_id) values ('JLab Epic Air Sport ANC Wireless Headphones', 'Yes', 'e6ca4d11', '103.99', '200', 'Yes', 'A great JLab Epic Air Sport ANC Wireless Headphones','18');
insert into product (product_name, warranty, product_order, price, quantity, availability, description, fk_company_id) values ('Amazon Basics Household tool set 51 pieces', 'No', 'e6ca4d12', '51.17', '10', 'No', 'A great JLab Epic Air Sport ANC Wireless Headphones','19');
insert into product (product_name, warranty, product_order, price, quantity, availability, description, fk_company_id) values ('Oliver Womens analogue quartz watch with stainless steel strap', 'No', 'e6ca4d13', '33.30', '55', 'Yes', 'A great sOliver Womens analogue quartz watch with stainless steel strap','20');
insert into product (product_name, warranty, product_order, price, quantity, availability, description, fk_company_id) values ('Echo 5 2nd generation, smart display Alexa 2 MP camera Charcoal', 'Yes', '634541', '54.99', '80', 'Yes', 'A great Echo Show 5 2nd generation (2021 release), smart display with Alexa and 2 MP camera Charcoal','21');


insert into product_to_shipping_company (fk_product_id, fk_shipping_company_id) values (1, 1);
insert into product_to_shipping_company (fk_product_id, fk_shipping_company_id) values (2, 2);
insert into product_to_shipping_company (fk_product_id, fk_shipping_company_id) values (3, 3);
insert into product_to_shipping_company (fk_product_id, fk_shipping_company_id) values (4, 4);
insert into product_to_shipping_company (fk_product_id, fk_shipping_company_id) values (5, 5);
insert into product_to_shipping_company (fk_product_id, fk_shipping_company_id) values (6, 6);
insert into product_to_shipping_company (fk_product_id, fk_shipping_company_id) values (7, 7);
insert into product_to_shipping_company (fk_product_id, fk_shipping_company_id) values (8, 8);
insert into product_to_shipping_company (fk_product_id, fk_shipping_company_id) values (9, 9);
insert into product_to_shipping_company (fk_product_id, fk_shipping_company_id) values (10, 10);


insert into shipping_company (name, department, fk_address_id, fk_product_id, fk_customer_id) values ('Colony Bankcorp, Inc.', 'Support', 1, 1, 1);
insert into shipping_company (name, department, fk_address_id, fk_product_id, fk_customer_id) values ('PowerShares S&P SmallCap Materials Portfolio', 'Marketing', 2, 2, 2);
insert into shipping_company (name, department, fk_address_id, fk_product_id, fk_customer_id) values ('WisdomTree U.S. SmallCap Quality Dividend Growth Fund', 'Support', 3, 3, 3);
insert into shipping_company (name, department, fk_address_id, fk_product_id, fk_customer_id) values ('Proto Labs, Inc.', 'Support', 4, 4, 4);
insert into shipping_company (name, department, fk_address_id, fk_product_id, fk_customer_id) values ('Luxottica Group, S.p.A.', 'Support', 5, 5, 5);
insert into shipping_company (name, department, fk_address_id, fk_product_id, fk_customer_id) values ('Forward Industries, Inc.', 'Research and Development', 6, 6, 6);
insert into shipping_company (name, department, fk_address_id, fk_product_id, fk_customer_id) values ('Xplore Technologies Corp', 'Engineering', 7, 7, 7);
insert into shipping_company (name, department, fk_address_id, fk_product_id, fk_customer_id) values ('Enable Midstream Partners, LP', 'Engineering', 8, 8, 8);
insert into shipping_company (name, department, fk_address_id, fk_product_id, fk_customer_id) values ('Telefonica Brasil S.A.', 'Business Development', 9, 9, 9);
insert into shipping_company (name, department, fk_address_id, fk_product_id, fk_customer_id) values ('Beazer Homes USA, Inc.', 'Support', 10, 10, 10); 