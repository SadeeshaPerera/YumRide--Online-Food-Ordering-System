/*Create table Queries*/

CREATE TABLE `yumride`.`deliveries` (
	  `delivery_id` INT NOT NULL AUTO_INCREMENT,
	  `order_id` INT NULL,
	  `cus_id` INT NULL,
	  `address` VARCHAR(255) NULL,
	  `status` VARCHAR(45) NULL,
	  `estimate_time` VARCHAR(45) NULL,
	  `actual_del_time` VARCHAR(45) NULL,
	  PRIMARY KEY (`delivery_id`));



	CREATE TABLE `yumride`.`orders` (
	  `o_id` INT NOT NULL AUTO_INCREMENT,
	  `p_id` INT NULL,
	  `u_id` INT NULL,
	  `o_quantity` INT NULL,
	  `o_date` VARCHAR(450) NULL,
	  PRIMARY KEY (`o_id`));



	CREATE TABLE `yumride`.`products` (
	  `id` INT NOT NULL AUTO_INCREMENT,
	  `name` VARCHAR(450) NULL,
	  `category` VARCHAR(450) NULL,
	  `price` DOUBLE NULL,
	  `image` VARCHAR(450) NULL,
	  PRIMARY KEY (`id`));


	CREATE TABLE `yumride`.`users` (
	  `id` INT NOT NULL AUTO_INCREMENT,
	  `name` VARCHAR(45) NULL,
	  `email` VARCHAR(45) NULL,
	  `phone` VARCHAR(10) NULL,
	  `address` VARCHAR(255) NULL,
	  `username` VARCHAR(45) NULL,
	  `password` VARCHAR(255) NULL,
	  `role` VARCHAR(45) NULL,
	  PRIMARY KEY (`id`));
		
		
		
/*Insert into Queries*/
			
	insert into yumride.users values(0,'Anne', 'anne123@gmail.com', '0706754347', 'No.8,Flower rd, Kandy', 'ann12', 'jhgf','customer');
	insert into yumride.users values(0,'Kamal', 'ka34@gmail.com', '0714567089', 'No.6/54,Galle rd', '9876', 'kamal','customer');
	insert into yumride.users values(0,'Heshan', 'hesh12@gmail.com', '0772345967', 'No.5,3rd lane,Ganemulla', 'hesh12', 'h@90','admin');
	insert into yumride.users values(0,'Diyana', 'diy678@gmail.com', '0754509812', 'No.23,Street avenue,Matara', 'diy123', '098d','customer');
	insert into yumride.users values(0,'Sachini', 'sachi123@gmail.com', '0112361780', 'No.2,Main road,Colombo', 'sachi', 's7654','customer');
	insert into yumride.users values(0,'Nimali', 'ni$109@gmail.com', '0754501231', 'No.9/45,Malabe rd,Kandy', 'nimali', 'nim321','customer');
	insert into yumride.users values(0,'Shehan', 'shehan#thyu@qw@gmail.com', '0112245677', 'No.5,Kaduwela', 'shehan*', 'sh&456','admin');
	insert into yumride.users values(0,'Shirani', 'shi%uhgfd3@gmail.com', '0777123480', 'No.34,Negambo rd,Ja-ela', 's@432', 'abcde','customer');
	insert into yumride.users values(0,'Saman', 'saman@gmail.com', '0342256798', 'No.3/76,Araliya rd,Boralla', 'sam', '1234','admin');
	insert into yumride.users values(0,'Sadeesha', 'Sadeesha@gmail.com', '0712378012', 'No.4,Kandana,Ja Ela', 'sadee', '123','customer');




	insert into yumride.deliveries values(0, 54, 67, 'No.3/76,Araliya rd,Boralla', 'delivered', '1 hr', '50 min');
	insert into yumride.deliveries values(0, 31, 70, 'No34,Street lane,Galle', 'delivered', '30 min', '20 min');
	insert into yumride.deliveries values(0, 21, 56, 'No.5,3 rd lane,Ganemulla', 'pending', '45 min',' ');
	insert into yumride.deliveries values(0, 51, 80, 'No.43,1st lane,Kalutara', 'delivered','5 min','5 min');
	insert into yumride.deliveries values(0, 61, 78, 'No.76,Parkstreet avenue,Ratmalana', 'delivered','10 min','15 min');
	insert into yumride.deliveries values(0, 80, 41, 'No.9/45,Malabe rd,Kandy', 'pending', '1 hr',' ');
	insert into yumride.deliveries values(0, 20, 59, 'No.3.78,Western avenue,Bambalapitiya', 'delivered','15 min','20 min');
	insert into yumride.deliveries values(0, 78, 53, 'No.3/97,Green garden rd, Malabe', 'pending', '20 min',' ');
	insert into yumride.deliveries values(0, 23, 05, 'No.21,Sherman rd,Gampaha', 'delivered','25 min','30 min');
	insert into yumride.deliveries values(0, 43, 12, 'No.67,Temple rd,Wattala', 'delivered','45 min','35 min');
	
		
	insert into yumride.products values(0,'Beef Burger', 'Burger', 1600, 'https://tinyurl.com/yq8jq67v');
	insert into yumride.products values(0,'Chicken Burger', 'Burger', 1550, 'https://tinyurl.com/ymg9kyrs');
	insert into yumride.products values(0,'Cheese Burger', 'Burger', 1500, 'https://tinyurl.com/yvfaoq89');
	insert into yumride.products values(0,'Smoked Burger', 'Burger', 1540, 'https://tinyurl.com/ywetzjqh');
	insert into yumride.products values(0,'Chocolate Ice Cream', 'Dessert', 200, 'https://tinyurl.com/yw5lq86p');
	insert into yumride.products values(0,'Coca Cola', 'Beverage', 175, 'https://rb.gy/8z5b8');
	insert into yumride.products values(0,'Flurry', 'Dessert', 450, 'https://tinyurl.com/ynt2mz8l');
	insert into yumride.products values(0,'Sprite', 'Beverage', 150, 'https://tinyurl.com/yujvw8hz');
	insert into yumride.products values(0,'Chicken Katsu Burger', 'Burger', 1680, 'https://tinyurl.com/yuh2e6bb');
	insert into yumride.products values(0,'Almond Cupcake', 'Dessert', 290, 'https://tinyurl.com/yn6jwvxz');
	insert into yumride.products values(0,'Yoghurt with Blueberry', 'Dessert', 460, 'https://tinyurl.com/yobhzl7v');
	insert into yumride.products values(0,'Mango juice', 'Beverage', 330, 'https://tinyurl.com/ynlwt23d');
	insert into yumride.products values(0,'Strawberry Sundae', 'Dessert', 510, 'https://tinyurl.com/yqlekswk');
	insert into yumride.products values(0,'Lemonade juice', 'Beverage', 200, 'https://tinyurl.com/ytyww8e7');
	insert into yumride.products values(0,'Grilled Chicken Burger', 'Burger', 1590, 'https://tinyurl.com/yrwjh9tm');
	
	
	insert into yumride.orders values(0, 1, 65, 4, '2023-10-10');
	insert into yumride.orders values(0, 5, 672, 2, '2023-10-11');
	insert into yumride.orders values(0, 8, 627, 3, '2023-10-12');
	insert into yumride.orders values(0, 2, 77, 1, '2023-10-13');
	insert into yumride.orders values(0, 3, 27, 4, '2023-10-14');
	insert into yumride.orders values(0, 99, 65, 2, '2023-10-15');
	insert into yumride.orders values(0, 11, 62, 5, '2023-10-16');
	


