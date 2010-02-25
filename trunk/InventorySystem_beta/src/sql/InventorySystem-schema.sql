
# -----------------------------------------------------------------------
# user
# -----------------------------------------------------------------------
drop table if exists user;

CREATE TABLE user
(
		            user_id INTEGER (30) NOT NULL AUTO_INCREMENT,
		            employeenumber VARCHAR (9) NOT NULL,
		            firstname VARCHAR (30) NOT NULL,
		            middlename VARCHAR (30) NOT NULL,
		            lastname VARCHAR (30) NOT NULL,
		            username VARCHAR (30) NOT NULL,
		            password VARCHAR (10) NOT NULL,
		            contactnumber VARCHAR (12) NOT NULL,
		            division VARCHAR (80) NOT NULL,
		            type VARCHAR (5) NOT NULL,
		            status INTEGER NOT NULL,
    PRIMARY KEY(user_id,contactnumber)
);

# -----------------------------------------------------------------------
# supply
# -----------------------------------------------------------------------
drop table if exists supply;

CREATE TABLE supply
(
		            supply_id INTEGER (30) NOT NULL AUTO_INCREMENT,
		            type VARCHAR (30) NOT NULL,
		            name VARCHAR (50) NOT NULL,
		            quantity INTEGER (20) NOT NULL,
		            source VARCHAR (30),
		            location VARCHAR (80),
    PRIMARY KEY(supply_id)
);

# -----------------------------------------------------------------------
# manages
# -----------------------------------------------------------------------
drop table if exists manages;

CREATE TABLE manages
(
		            user_id INTEGER (30) NOT NULL,
		            supply_id INTEGER (30) NOT NULL,
    PRIMARY KEY(user_id,supply_id),
    FOREIGN KEY (user_id) REFERENCES user (user_id)
    ,
    FOREIGN KEY (supply_id) REFERENCES supply (supply_id)
    
);

# -----------------------------------------------------------------------
# orf
# -----------------------------------------------------------------------
drop table if exists orf;

CREATE TABLE orf
(
		            orf_id INTEGER (30) NOT NULL AUTO_INCREMENT,
		            status INTEGER NOT NULL,
		            user_id INTEGER (30) NOT NULL,
		            issue_date VARCHAR (30) NOT NULL,
    PRIMARY KEY(orf_id,user_id),
    FOREIGN KEY (user_id) REFERENCES user (user_id)
    
);

# -----------------------------------------------------------------------
# orf_supply
# -----------------------------------------------------------------------
drop table if exists orf_supply;

CREATE TABLE orf_supply
(
		            orf_id INTEGER (30) NOT NULL,
		            user_id INTEGER (30) NOT NULL,
		            supply_type VARCHAR (30) NOT NULL,
		            supply_name VARCHAR (50) NOT NULL,
		            quantity VARCHAR (20) NOT NULL,
		            price VARCHAR (20) NOT NULL,
    PRIMARY KEY(orf_id,user_id),
    FOREIGN KEY (user_id) REFERENCES user (user_id)
    ,
    FOREIGN KEY (orf_id) REFERENCES orf (orf_id)
    
);
  
  
  
  
  
