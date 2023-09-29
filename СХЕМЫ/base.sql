create table Users(
	id integer PRIMARY KEY autoincrement,
	login varchar(16) not null unique,
	password varchar(16) not null
);

create table Cheque(
	id integer primary key autoincrement,
	UserID integer not null,
	CardID integer not null
	foreign key(UserID) referenced Users(id),
	foreign key(CardID) referenced Card(id),
);

Create table Cart(
	id integer primary key autoincrement,
	ProductID integer not null,
	Amount integer not null,
	UserID integer not null
	foreign key(UserID) referenced User(id),
	foreign key(ProductID) referenced Product(id),
);

create table Personal(
   	id integer primary key autoincrement,
   	login varchar(16) not null unique,
   	password varchar(16) not null,
   	postID integer not null
   	foreign key (postID) references post(id),
);

create table Product(
	id integer primary key autoincrement,
	name varchar(100) not null,
	discription varchar(16) not null,
	price integer not null
); 

create table Suppliers(
	id integer primary key autoincrement,
	title varchar(16) not null,
	post varchar(16) not null,
	Address varchar(16) not null
);

create table Post(
	id integer primary key autoincrement,
	PostID integer  not null,
	Post_Name varchar(16) not null,
	foreign key (postID) references post(id),
);

create table Shop(
	id integer primary key autoincrement,
	ProductID integer not null,
	PersonallID integer not null,
	Location varchar(16) not null
	foreign key (ProductID) references product(id),
	foreign key (PersonallID) references Personall(id),
);

create table Warehouse(
	id integer primary key autoincrement,
	name varchar(16) not null,
	LocationID integer not null,
	foreign key (LocationID) references Location(id),
);

create table Location(
 	id integer primary key autoincrement,
 	Country varchar(16) not null,
 	City varchar(16) not null,
 	Address varchar(16) not null,


INSERT INTO Cheque (UserID, CardID)
 	VALUES (1,1);

INSERT INTO Cart (ProductID,Amount,UserID)
 	VALUES (1,222,1);

INSERT INTO Personal (login, password, postID)
	VALUES ('login1',123,1);

INSERT INTO Product (name, discription, price)
	VALUES ('Egor','discription1',20);

INSERT INTO Suppliers (title, post, Address)
	VALUES ('tittle1','Post1','Address1');

INSERT INTO Post (PostID, Post_Name)
	VALUES (1,'Post_Name1');

INSERT INTO Shop (ProductID, PersonallID, Location)
	VALUES (1,2,'Location1');

INSERT INTO Warehouse (name, LocationID)
	VALUES ('name1',1);

INSERT INTO Location (Country, City, Address)
	VALUES ('Country1','City1','Address1');