# Interia
d


CREATE table teamproduct(
product_code int not null AUTO_INCREMENT PRIMARY KEY,
product_name VARCHAR(50) not null,
product_amount int not null,
product_price int not null,
product_brand VARCHAR(50) not null,
product_best VARCHAR(50),
file1 VARCHAR(500),
filename VARCHAR(500)
);

select * from teamproduct;



CREATE table teammember(
midx int not null AUTO_INCREMENT UNIQUE,
memberid VARCHAR(50) PRIMARY key,
memberpw VARCHAR(50) not null,
membername VARCHAR(50) not null,
memberemail VARCHAR(100) not null
);



CREATE table teamcart(
cart_id int AUTO_INCREMENT PRIMARY key,
memberid VARCHAR(50) not null REFERENCES teammember(member_id),
product_code int not null REFERENCES teamproduct(product_code),
amount int
);


create table teamorder(
order_idx int AUTO_INCREMENT PRIMARY KEY,
order_id VARCHAR(50) not null REFERENCES teammember(memberid),
order_name VARCHAR(50),
order_phone VARCHAR(50),
order_product VARCHAR(100),
order_sum int not null,
order_addr1 VARCHAR(50),
order_addr2 VARCHAR(50),
order_addr3 VARCHAR(50),
order_code int not null REFERENCES teamproduct(product_code),
order_cart int not null REFERENCES teamcart(cart_id),
DELIVERY_STATE VARCHAR(20) DEFAULT 'payment',
date DATETIME DEFAULT now()
);

CREATE table teamadmin(
memberid VARCHAR(50) PRIMARY key,
memberpw VARCHAR(50) not null,
membername VARCHAR(50)
);
drop table teamadmin;
insert into teamadmin(memberid,memberpw,membername) values('admin','1234','관리자');


