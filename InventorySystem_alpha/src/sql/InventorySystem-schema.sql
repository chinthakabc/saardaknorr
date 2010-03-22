
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
		            state INTEGER NOT NULL,
    PRIMARY KEY(user_id,contactnumber)
);

# -----------------------------------------------------------------------
# supply_genchem
# -----------------------------------------------------------------------
drop table if exists supply_genchem;

CREATE TABLE supply_genchem
(
		            supply_id INTEGER (30) NOT NULL AUTO_INCREMENT,
		            type VARCHAR (30) NOT NULL,
		            name VARCHAR (50) NOT NULL,
		            quantity INTEGER (20) NOT NULL,
		            amount VARCHAR (30),
		            unit VARCHAR (30),
    PRIMARY KEY(supply_id)
);

# -----------------------------------------------------------------------
# supply_biochem
# -----------------------------------------------------------------------
drop table if exists supply_biochem;

CREATE TABLE supply_biochem
(
		            supply_id INTEGER (30) NOT NULL AUTO_INCREMENT,
		            type VARCHAR (30) NOT NULL,
		            name VARCHAR (50) NOT NULL,
		            quantity INTEGER (20) NOT NULL,
		            amount VARCHAR (30),
		            unit VARCHAR (30),
    PRIMARY KEY(supply_id)
);

# -----------------------------------------------------------------------
# supply_phychem
# -----------------------------------------------------------------------
drop table if exists supply_phychem;

CREATE TABLE supply_phychem
(
		            supply_id INTEGER (30) NOT NULL AUTO_INCREMENT,
		            type VARCHAR (30) NOT NULL,
		            name VARCHAR (50) NOT NULL,
		            quantity INTEGER (20) NOT NULL,
		            amount VARCHAR (30),
		            unit VARCHAR (30),
    PRIMARY KEY(supply_id)
);

# -----------------------------------------------------------------------
# supply_anachem
# -----------------------------------------------------------------------
drop table if exists supply_anachem;

CREATE TABLE supply_anachem
(
		            supply_id INTEGER (30) NOT NULL AUTO_INCREMENT,
		            type VARCHAR (30) NOT NULL,
		            name VARCHAR (50) NOT NULL,
		            quantity INTEGER (20) NOT NULL,
		            amount VARCHAR (30),
		            unit VARCHAR (30),
    PRIMARY KEY(supply_id)
);

# -----------------------------------------------------------------------
# supply_orgchem
# -----------------------------------------------------------------------
drop table if exists supply_orgchem;

CREATE TABLE supply_orgchem
(
		            supply_id INTEGER (30) NOT NULL AUTO_INCREMENT,
		            type VARCHAR (30) NOT NULL,
		            name VARCHAR (50) NOT NULL,
		            quantity INTEGER (20) NOT NULL,
		            amount VARCHAR (30),
		            unit VARCHAR (30),
    PRIMARY KEY(supply_id)
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
    PRIMARY KEY(orf_id),
    FOREIGN KEY (user_id) REFERENCES user (user_id)
    
);

# -----------------------------------------------------------------------
# orf_supply
# -----------------------------------------------------------------------
drop table if exists orf_supply;

CREATE TABLE orf_supply
(
		            orf_supplyid INTEGER (100) NOT NULL AUTO_INCREMENT,
		            orf_id INTEGER (30) NOT NULL,
		            user_id INTEGER (30) NOT NULL,
		            supply_name VARCHAR (50) NOT NULL,
		            supply_type VARCHAR (50) NOT NULL,
		            quantity VARCHAR (20) NOT NULL,
		            status VARCHAR (20) NOT NULL,
		            amount VARCHAR (20),
		            unit VARCHAR (20),
		            price VARCHAR (20) NOT NULL,
    PRIMARY KEY(orf_supplyid),
    FOREIGN KEY (user_id) REFERENCES user (user_id)
    ,
    FOREIGN KEY (orf_id) REFERENCES orf (orf_id)
    
);

# -----------------------------------------------------------------------
# system_log
# -----------------------------------------------------------------------
drop table if exists system_log;

CREATE TABLE system_log
(
		            log_id INTEGER (30) NOT NULL AUTO_INCREMENT,
		            user_id INTEGER (30),
		            action VARCHAR (30) NOT NULL,
		            location VARCHAR (80),
		            previous_value INTEGER (30) NOT NULL,
		            current_value INTEGER (30) NOT NULL,
		            notes VARCHAR (100),
		            date VARCHAR (100) NOT NULL,
    PRIMARY KEY(log_id),
    FOREIGN KEY (user_id) REFERENCES user (user_id)
        ON DELETE SET NULL 
  
);
  
  
  
  
  
  
  
  
  
