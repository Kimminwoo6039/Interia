# interia
개인프로젝트1




CREATE table membertable(
midx int not null AUTO_INCREMENT UNIQUE,
member_id VARCHAR(50) PRIMARY key,
member_pw VARCHAR(50) not null,
member_name VARCHAR(50) not null,
member_addr1 VARCHAR(50) not null,
member_addr2 VARCHAR(100) not null,
member_addr3 VARCHAR(100) not null,
member_email VARCHAR(100) not null
);



CREATE table producttable(

product_code int not null AUTO_INCREMENT PRIMARY KEY,
product_name VARCHAR(50) not null,
product_amount int not null,
product_price int not null,
product_brand VARCHAR(50) not null,
file1 VARCHAR(500),
filename VARCHAR(500)
);


CREATE table carttable(
cart_id int AUTO_INCREMENT PRIMARY key,
member_id VARCHAR(50) not null REFERENCES membertable(member_id),
product_code int not null REFERENCES producttable(product_code),
amount int
);
