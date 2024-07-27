CREATE DATABASE tables1;
USE tables1;

CREATE TABLE chat_center(id int not null,c_center_name varchar(20),c_owner_name varchar(30) not null unique,available_chats varchar(30),c_profit bigint,selling_chat bigint,c_loc varchar(20),c_menu varchar(20),c_customer_day int,c_employer int,constraint c_menu_uni unique(c_menu),constraint c_customer_day_chk check(c_customer_day>1),constraint c_profit_chk check(c_profit>500));
desc chat_center;

INSERT INTO chat_center VALUES(1,'ganesh chats','ganesh','gobi',6000,100,'rajajinagar','items of chats',50,3);
INSERT INTO chat_center VALUES(2,'viswa chats','vishwa','masalagobi',7000,200,'btm','items of gobi',60,4);
INSERT INTO chat_center VALUES(3,'gowdru chats','madan','noodles',5700,190,'magadi','items of masals',55,5);
INSERT INTO chat_center VALUES(4,'keerthana chats','keerthi','fried rice',5090,150,'jaynagar','items of juice',61,6);
INSERT INTO chat_center VALUES(5,'girish chats','girish','panipuri',5500,107,'rr nagar','items of fried',59,7);
INSERT INTO chat_center VALUES(6,'sowmya chats','sowmya','masal puri',5200,130,'r nagar','items of rice',54,8);
INSERT INTO chat_center VALUES(7,'lav chats','lav','dry gobi',5870,160,'chikpete','items of food',53,9);
INSERT INTO chat_center VALUES(8,'kavya chats','kavya','juice',5078,190,'gadag','items of zeera',52,11);
INSERT INTO chat_center VALUES(9,'divya chats','divya','lemon juice',5066,134,'nagarbhjavi','items of noodles',60,12);
INSERT INTO chat_center VALUES(10,'renuka chats','renuka','butter fruit',5360,110,'mg road','items of snacks',70,13);
INSERT INTO chat_center VALUES(11,'surya chats','surya','roti',6500,200,'kkp','items of kfc',62,15);
INSERT INTO chat_center VALUES(12,'kkp chats','','peenut buttor',6010,109,'rajajinagar','items of puris',60,16);
INSERT INTO chat_center VALUES(13,'magadi chats','pree','watermelon',6020,108,'rajajinagar','items of  panees',70,17);
INSERT INTO chat_center VALUES(14,'yash chats','yash','pineple juice',6030,107,'rajajinagar','items of chocklate',72,18);
INSERT INTO chat_center VALUES(15,'kamla chats','kamla','candy',6040,106,'rajajinagar','items of products',73,19);
INSERT INTO chat_center VALUES(16,'sahana chats','sahan','puris',6050,105,'rajajinagar','items of sugers',75,20);
INSERT INTO chat_center VALUES(17,'sri chats','sri','fruits',6060,104,'rajajinagar','items of chai',76,31);
INSERT INTO chat_center VALUES(18,'kiran chats','kiran','sweets',6070,103,'rajajinagar','items of grills',79,32);
INSERT INTO chat_center VALUES(19,'nayan chats','nayan','save puri',6080,101,'rajajinagar','items of veg',81,33);
INSERT INTO chat_center VALUES(20,'geetha chats','geetha','dall',60090,102,'rajajinagar','items of nonveg',80,34);

ALTER TABLE chat_center MODIFY c_owner_name VARCHAR(30) NOT NULL;

ALTER TABLE chat_center ADD CONSTRAINT c_center_name_uni UNIQUE (c_center_name);

ALTER TABLE chat_center
ADD CONSTRAINT c_profit_chk_new CHECK (c_profit > 0),
ADD CONSTRAINT c_selling_chat_chk CHECK (selling_chat >= 0);


SELECT * FROM chat_center;

CREATE TABLE showroom(id int not null unique,s_name varchar(20),s_employer int,s_car_no bigint not null unique,s_availble_brand varchar(30),s_location varchar(40),selling_cars int,day_income bigint,car_price bigint,car_maintanance varchar(40),constraint car_price_chk check(car_price>1000000),constraint day_income_chk check(day_income>200000));
desc showroom;
INSERT INTO showroom VALUES(1,'car showroom',10,324567,'kia','rajajinagar',7,2000000,1100000,'good');
INSERT INTO showroom VALUES(2,'bike showroom',11,234567,'royal enfeild','white feild',8,3000000,1200000,'good');
INSERT INTO showroom VALUES(3,'bicycle showroom',12,345627,'bianchi','btm layout',5,30000000,1200000,'not bad');
INSERT INTO showroom VALUES(4,'cloth showroom',15,32456,'gowns','kankapura',8,5000000,1500000,'good');
INSERT INTO showroom VALUES(5,'artisanwonders',32,876543,'wonders','vijaynagar',4,800034,1900000,'good');
INSERT INTO showroom VALUES(21,'product showroom',11,562456,'nykaa','banashankari',12,3000045,1800000,'good');
INSERT INTO showroom VALUES(7,'car dealer showroom',10,874567,'marcedec','chikpete',7,2300000,1100000,'good');
INSERT INTO showroom VALUES(8,'pvr showroom',15,224567,'cinema hall','mall',7,300000,1400000,'good');
INSERT INTO showroom VALUES(9,'nandu restorent',16,724567,'north indian','shivajinagar',9,540000,1800000,'good');
INSERT INTO showroom VALUES(22,'toscano',12,214567,'italian','orion mall',15,507800,1600004,'good');
INSERT INTO showroom VALUES(11,'tascano',10,324867,'restorent','githanagar',9,307800,1300000,'good');
INSERT INTO showroom VALUES(12,'cardekho',12,765567,'kmaruthi','haminagar',11,6089000,1500000,'good');
INSERT INTO showroom VALUES(13,'varun motars',13,824567,'benzz','sugar factry',7,900000,1200000,'good');
INSERT INTO showroom VALUES(14,'viva tayota',21,674567,'mahindra','bijapur',8,450000,3200000,'good');
INSERT INTO showroom VALUES(15,'mandovi motars',12,674587,'skoda','gadag',9,870000,1400000,'good');
INSERT INTO showroom VALUES(16,'cars net',15,84567,'honda','jaynagar',17,560000,2100600,'good');
INSERT INTO showroom VALUES(17,'nexa yelahanka',19,784567,'thar','matatalli',7,780000,1400000,'good');
INSERT INTO showroom VALUES(18,'kalyani motors',18,984567,'bajaj qute','hebbagodi',7,708000,1500000,'good');
INSERT INTO showroom VALUES(19,'ccardealer',11,864567,'mg motor','doddsandra',7,900670,1600000,'good');
INSERT INTO showroom VALUES(20,'book my time',7,78567,'renault','indirnagar',7,800000,1700000,'good');

ALTER TABLE showroom
MODIFY s_location VARCHAR(40) NOT NULL;

ALTER TABLE showroom ADD CONSTRAINT showroom_s_name_unique UNIQUE (s_name);


ALTER TABLE showroom ADD CONSTRAINT showroom_day_income_check CHECK (day_income > 0);

ALTER TABLE showroom ADD CONSTRAINT showroom_selling_cars_check CHECK (selling_cars > 0);

SELECT * FROM showroom;


