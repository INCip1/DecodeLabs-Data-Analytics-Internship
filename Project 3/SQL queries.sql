--- Create Database
CREATE DATABASE Decode_labs_project_3;

--- Create Table
CREATE TABLE orders_dataset(
	OrderID VARCHAR(50) PRIMARY KEY,
	"Date" DATE,
	CustomerId VARCHAR(50),
	Product VARCHAR(25),
	Quantity INT,
	UnitPrice NUMERIC,
	ShippingAddress VARCHAR(50),
	PaymentMethod VARCHAR(50),
	OrderStatus VARCHAR(50),
	TrackingNumber VARCHAR(50),
	ItemsInCart INT,
	CouponCode VARCHAR(50),
	ReferralSource VARCHAR(50),
	TotalPrice NUMERIC
);
copy orders_dataset FROM 'C:/Users/NEW USER/DecodeLabs/Data Analysis Intern ship/Project 3/Dataset for Data Analytics.csv' WITH (FORMAT CSV, HEADER TRUE, DELIMITER ',');


--- Check Newly Copied Table
SELECT * FROM orders_dataset;

--- Rename columns to snake case
ALTER TABLE orders_dataset RENAME COLUMN orderid TO order_id;
ALTER TABLE orders_dataset RENAME COLUMN "Date" TO order_date;
ALTER TABLE orders_dataset RENAME COLUMN customerid TO customer_id;
--- ALTER TABLE orders_dataset RENAME COLUMN product TO product;
--- ALTER TABLE orders_dataset RENAME COLUMN quantity TO quantity;
ALTER TABLE orders_dataset RENAME COLUMN unitprice TO unit_price;
ALTER TABLE orders_dataset RENAME COLUMN shippingaddress TO shipping_address;
ALTER TABLE orders_dataset RENAME COLUMN paymentmethod TO payment_method;
ALTER TABLE orders_dataset RENAME COLUMN orderstatus TO order_status;
ALTER TABLE orders_dataset RENAME COLUMN trackingnumber TO tracking_number;
ALTER TABLE orders_dataset RENAME COLUMN itemsincart TO items_in_cart;
ALTER TABLE orders_dataset RENAME COLUMN couponcode TO coupon_code;
ALTER TABLE orders_dataset RENAME COLUMN referralsource TO referral_source;
ALTER TABLE orders_dataset RENAME COLUMN totalprice TO total_price;

--- 1. What product has the highest Order Value ?
SELECT 
	product,
	ROUND(SUM(total_price), 2) AS "Total Order Value",
	ROUND(AVG(total_price), 2) AS "Average Order Value"
FROM orders_dataset
GROUP BY product
ORDER BY "Total Order Value" DESC;

--- 2. What Payment Method has the highest AOV ? 
SELECT 
	payment_method AS "Payment Method",
	ROUND(AVG(totalprice), 2) AS "Average Order Value"
FROM orders_dataset
GROUP BY payment_method
ORDER BY AVG(totalprice) DESC;

--- 3. Which Referral Source produces the highest delivered order rate?
SELECT
	referral_source,
	COUNT (order_status) AS "Total Orders",
	SUM(CASE WHEN order_status = 'Delivered' THEN 1 ELSE 0 END) AS "Delivered Orders",
	ROUND (
		100.0 * SUM(CASE WHEN order_status = 'Delivered' THEN 1 ELSE 0 END)
		/ COUNT(*),
		2
	) AS "Delivery Rate Percent"
FROM orders_dataset
GROUP BY referral_source
ORDER BY "Delivery Rate Percent" DESC;


--- 4. Do coupon users spend more than customers without coupons?
SELECT
	CASE 
		WHEN coupon_code = 'N/A' THEN 'Coupon not used'
		ELSE 'Coupon Used' 
	END AS "Coupon Usage",
	ROUND(AVG(total_price), 2) AS "Average Order Value"
	ROUND(AVG(total_price), 2) AS "Total Order Value"
	FROM orders_dataset
	GROUP BY
		CASE 
			WHEN coupon_code = 'N/A' THEN 'Coupon not used'
			ELSE 'Coupon Used'
		END
	ORDER BY "Average Order Value" DESC;

--- 5.  How did revenue trend by quarter?
SELECT 
	EXTRACT(YEAR FROM order_date) AS "Order Year",
	EXTRACT(QUARTER FROM order_date) AS "Order Quarter",
	ROUND(AVG(total_price), 2) AS "Average Order Value",
	ROUND(SUM(total_price), 2) AS "Total Order Value"
FROM orders_dataset
GROUP BY
	EXTRACT(YEAR FROM order_date),
	EXTRACT(QUARTER FROM order_date)
ORDER BY 
	"Order Year",
	"Order Quarter";

--- 6. How many Orders 


	