CREATE TABLE Business (
	Business_id char(22),
	Address VARCHAR,
	City VARCHAR,
	Postal_code char(5),
	Latitude FLOAT,
	Longitude FLOAT,
	is_open BOOL,
	Stars FLOAT,
	Review_count INTEGER,
	PRIMARY KEY(Business_id)
);

CREATE TABLE User (
	User_id char(22),
	User_name VARCHAR,
	Average_stars FLOAT,
	Cool INTEGER,
	Fans INTEGER,
	Funny INTEGER,
	Tipcount INTEGER,
	Useful INTEGER,
	yelping_since DATETIME,
	PRIMARY KEY(User_id)
);

CREATE TABLE addtional_attribute (
	Business_id char(22),
	AA_Name VARCHAR,
	AA_Value VARCHAR,
	PRIMARY KEY(Business_id, AA_Name),
	FOREIGN KEY(Business_id) REFERENCES Business (Business_id)
);

CREATE TABLE friendship (
	first_User_id char(22),
	second_User_id char(22),
	PRIMARY KEY(first_User_id, second_User_id),
	FOREIGN KEY(first_User_id) REFERENCES User (User_id),
	FOREIGN KEY(second_User_id) REFERENCES User (second_User_id)
);