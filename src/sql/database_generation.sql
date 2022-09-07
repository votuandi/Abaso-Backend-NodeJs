#CREATE DATABASE & TABLES
CREATE DATABASE learn_nodejs;
USE learn_nodejs;

CREATE TABLE User(
	id varchar(15) NOT NULL,
    username varchar(10),
    password varchar(255)
);

CREATE TABLE Product(
	id int NOT NULL AUTO_INCREMENT,
    name varchar(255) NOT NULL,
    version varchar(255),
    intro LONGTEXT,
    property_names LONGTEXT,
    details LONGTEXT,
    additional_information LONGTEXT,
    UNIQUE (id),
    PRIMARY KEY (id)
);

CREATE TABLE SubProduct (
    id INT NOT NULL AUTO_INCREMENT,
    product_id INT,
    code VARCHAR(10),
    name VARCHAR(255) NOT NULL,
    src MEDIUMTEXT,
    intro LONGTEXT,
    properties LONGTEXT,
    infor LONGTEXT,
    origin_price INT,
    final_price INT,
    UNIQUE (id),
    PRIMARY KEY (id),
    FOREIGN KEY (product_id)
	REFERENCES Product (id)
);

#CREATE PROCEDURES
DELIMITER $$
DROP PROCEDURE IF EXISTS createProduct $$
CREATE PROCEDURE createProduct(
	IN __name varchar(255),    
	IN __version varchar(255),
	IN __intro LONGTEXT,
	IN __property_names LONGTEXT,
	IN __details LONGTEXT,
	IN __additional_information LONGTEXT,
    OUT last_insert_id INT
)
BEGIN
  DECLARE _name varchar(255) DEFAULT __name;
  DECLARE _version varchar(255)  DEFAULT __version;
  DECLARE _intro LONGTEXT DEFAULT __intro;
  DECLARE _property_names LONGTEXT DEFAULT __property_names;
  DECLARE _details LONGTEXT DEFAULT __details;
  DECLARE _additional_information LONGTEXT DEFAULT __additional_information;
  INSERT INTO product (name, version, intro, property_names, details, additional_information) VALUES (_name, _version, _intro, _property_names, _details, _additional_information); 
  SET last_insert_id = last_insert_id();
END $$
DELIMITER ;

DELIMITER $$
DROP PROCEDURE IF EXISTS createSubProduct $$
CREATE PROCEDURE createSubProduct(
	IN __product_id INT,    
	IN __code varchar(10),
	IN __name varchar(255),
	IN __src MEDIUMTEXT,
	IN __intro LONGTEXT,
    IN __properties LONGTEXT,
	IN __infor LONGTEXT,
    IN __origin_price INT,
    IN __final_price INT,
    OUT last_insert_id INT
)
BEGIN
  DECLARE _product_id INT DEFAULT __product_id;
  DECLARE _code varchar(10) DEFAULT __code;
  DECLARE _name varchar(255) DEFAULT __name;
  DECLARE _src MEDIUMTEXT DEFAULT __src;
  DECLARE _intro LONGTEXT DEFAULT __intro;
  DECLARE _properties LONGTEXT DEFAULT __properties;
  DECLARE _infor LONGTEXT DEFAULT __infor;
  DECLARE _origin_price INT DEFAULT __origin_price;
  DECLARE _final_price INT DEFAULT __final_price;
  
  INSERT INTO subproduct (product_id, code, name, src, intro, properties, infor, origin_price, final_price) VALUES (_product_id, _code, _name, _src, _intro, _properties, _infor, _origin_price, _final_price); 
  SET last_insert_id = last_insert_id();
  
END $$
DELIMITER ;

DELIMITER $$
DROP PROCEDURE IF EXISTS editSubProduct $$
CREATE PROCEDURE editSubProduct(
	IN __id int,
	IN __code varchar(10),
	IN __name varchar(255),
	IN __src MEDIUMTEXT,
	IN __intro LONGTEXT,
    IN __properties LONGTEXT,
	IN __infor LONGTEXT,
    IN __origin_price INT,
    IN __final_price INT
)
BEGIN
  DECLARE _id int DEFAULT __id;
  DECLARE _code varchar(10) DEFAULT __code;
  DECLARE _name varchar(255) DEFAULT __name;
  DECLARE _src MEDIUMTEXT DEFAULT __src;
  DECLARE _intro LONGTEXT DEFAULT __intro;
  DECLARE _properties LONGTEXT DEFAULT __properties;
  DECLARE _infor LONGTEXT DEFAULT __infor;
  DECLARE _origin_price INT DEFAULT __origin_price;
  DECLARE _final_price INT DEFAULT __final_price;
  UPDATE subproduct
  SET
	  code =  _code,
	  name = _name,
	  src = _src,
	  intro = _intro,
	  properties = _properties,
	  infor = _infor,
      origin_price = _origin_price,
      final_price = _final_price
  WHERE id = _id;
END $$
DELIMITER ;

DELIMITER $$
DROP PROCEDURE IF EXISTS removeSubProductById $$
CREATE PROCEDURE removeSubProductById(
	IN __id int
)
BEGIN
  DECLARE _id int DEFAULT __id;
  DELETE FROM subproduct
  WHERE id=_id;
END $$
DELIMITER ;

DELIMITER $$
DROP PROCEDURE IF EXISTS removeSubProductByProductId $$
CREATE PROCEDURE removeSubProductByProductId(
	IN __productId int
)
BEGIN
  DECLARE _productId int DEFAULT __productId;
  DELETE FROM subproduct
  WHERE product_id=_productId;
END $$
DELIMITER ;

DELIMITER $$
DROP PROCEDURE IF EXISTS removeProductById $$
CREATE PROCEDURE removeProductById(
	IN __id int
)
BEGIN
  DECLARE _id int DEFAULT __id;
  DELETE FROM product
  WHERE id=_id;
END $$
DELIMITER ;