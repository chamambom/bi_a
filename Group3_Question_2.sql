IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id(N'[dbo].[categories]')
AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE [dbo].[categories];

CREATE TABLE categories (
  [category_id] int NOT NULL IDENTITY,
  [category_department_id] int NOT NULL,
  [category_name] varchar(45) NOT NULL,
  PRIMARY KEY ([category_id])
)  ;




IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id(N'[dbo].[customers]')
AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE [dbo].[customers];

CREATE TABLE customers (
  [customer_id] int NOT NULL IDENTITY,
  [customer_fname] varchar(45) NOT NULL,
  [customer_lname] varchar(45) NOT NULL,
  [customer_email] varchar(45) NOT NULL,
  [customer_password] varchar(45) NOT NULL,
  [customer_street] varchar(255) NOT NULL,
  [customer_city] varchar(45) NOT NULL,
  [customer_state] varchar(45) NOT NULL,
  [customer_zipcode] varchar(45) NOT NULL,
  PRIMARY KEY ([customer_id])
)  ;

IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id(N'[dbo].[departments]')
AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE [dbo].[departments];

CREATE TABLE departments (
  [department_id] int NOT NULL IDENTITY,
  [department_name] varchar(45) NOT NULL,
  PRIMARY KEY ([department_id])
)  ;

IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id(N'[dbo].[order_items]')
AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE [retail_db].[order_items];

CREATE TABLE order_items (
  [order_item_id] int NOT NULL IDENTITY,
  [order_item_order_id] int NOT NULL,
  [order_item_product_id] int NOT NULL,
  [order_item_quantity] smallint NOT NULL,
  [order_item_subtotal] float NOT NULL,
  [order_item_product_price] float NOT NULL,
  PRIMARY KEY ([order_item_id])
)  ;

IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id(N'[dbo].[orders]')
AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE [dbo].[orders];

CREATE TABLE orders (
  [order_id] int NOT NULL IDENTITY,
  [order_date] datetime2(0) NOT NULL,
  [order_customer_id] int NOT NULL,
  [order_status] varchar(45) NOT NULL,
  PRIMARY KEY ([order_id])
)  ;


IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id(N'[dbo].[products]')
AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE [dbo].[products];

CREATE TABLE products (
  [product_id] int NOT NULL IDENTITY,
  [product_category_id] int NOT NULL,
  [product_name] varchar(45) NOT NULL,
  [product_description] varchar(255) NOT NULL,
  [product_price] float NOT NULL,
  [product_image] varchar(255) NOT NULL,
  PRIMARY KEY ([product_id])
)  ;




