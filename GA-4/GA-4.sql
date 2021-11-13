Create Database if not exists `travelonthego` ;
use `travelonthego`;

create table if not exists `passenger`(
`Passenger_nam` varchar(50) primary key,
`Category` varchar(50) ,
`Gender` CHAR,
`Boarding_City` varchar(10),
`Destination_City` varchar(10),
`Distance` INT NOT NULL,
`Bus_Type` varchar(10)
);


create table if not exists `price`(
`Distance` INT NOT NULL,
`Bus_Type` varchar(10),
`Price` INT NOT NULL
);

INSERT INTO `PASSENGER` VALUES("Sejal", "AC", 'F', "Bengaluru", "Chennai", 350, "Sleeper");
INSERT INTO `PASSENGER` VALUES("Anmol", "NON-AC", 'M', "Mumbai", "Hyderabad", 700, "Sitting");
INSERT INTO `PASSENGER` VALUES("Pallavi", "AC", 'F', "Panaji", "Bengaluru", 600, "Sleeper");
INSERT INTO `PASSENGER` VALUES("Khusboo", "AC", 'F', "Chennai", "Mumbai", 1500, "Sleeper");
INSERT INTO `PASSENGER` VALUES("Udit", "NON-AC", 'M', "Trivandrum", "Panaji", 1000, "Sleeper");
INSERT INTO `PASSENGER` VALUES("Ankur", "AC", 'M', "Nagpur", "Hyderabad", 500, "Sitting");
INSERT INTO `PASSENGER` VALUES("Hemant", "NON-AC", 'M', "Panaji", "Mumbai", 700, "Sleeper");
INSERT INTO `PASSENGER` VALUES("Manish", "NON-AC", 'M', "Hyderabad", "Bengaluru", 500, "Sitting");
INSERT INTO `PASSENGER` VALUES("Piyush", "AC", 'M', "Pune", "Nagpur", 700, "Sitting");


INSERT INTO `PRICE` VALUES(350, "Sleeper", 770);
INSERT INTO `PRICE` VALUES(500, "Sleeper", 1100);
INSERT INTO `PRICE` VALUES(600, "Sleeper", 1320);
INSERT INTO `PRICE` VALUES(700, "Sleeper", 1540);
INSERT INTO `PRICE` VALUES(1000, "Sleeper", 2200);
INSERT INTO `PRICE` VALUES(1200, "Sleeper", 2640);
INSERT INTO `PRICE` VALUES(350, "Sleeper", 434);
INSERT INTO `PRICE` VALUES(500, "Sitting", 620);
INSERT INTO `PRICE` VALUES(500, "Sitting", 620);
INSERT INTO `PRICE` VALUES(600, "Sitting", 744);
INSERT INTO `PRICE` VALUES(700, "Sitting", 868);
INSERT INTO `PRICE` VALUES(1000, "Sitting", 1240);
INSERT INTO `PRICE` VALUES(1200, "Sitting", 1488);
INSERT INTO `PRICE` VALUES(1500, "Sitting", 1860);