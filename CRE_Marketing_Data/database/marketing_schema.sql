-- Building Optimization Tech Commercial Real Estate Marketing Schema
-- -----------------------------------------------------
-- Schema bot_cre_marketing
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `bot_cre_marketing` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `bot_cre_marketing` ;

-- -----------------------------------------------------
-- DROP TABLE
-- -----------------------------------------------------

-- DROP TABLE IF EXISTS ccim ;
-- DROP TABLE IF EXISTS franchise_tax_info ;
-- DROP TABLE IF EXISTS franchise_tax_info_date ;
-- DROP TABLE IF EXISTS ftoffdir ;
-- DROP TABLE IF EXISTS sales_tax_info ;
-- DROP TABLE IF EXISTS sales_tax_info_date ;

-- -----------------------------------------------------
-- SELECT STATEMENTS
-- -----------------------------------------------------

SELECT * FROM  ccim ;
SELECT * FROM  franchise_tax_info ;
SELECT * FROM  franchise_tax_info_date ;
SELECT * FROM  ftoffdir ;
SELECT * FROM  sales_tax_info ;
SELECT * FROM  sales_tax_info_date ;

SELECT COUNT(*) FROM  ftoffdir ;
SELECT COUNT(*) FROM  franchise_tax_info ;
SELECT COUNT(*) FROM  franchise_tax_info_date ;
SELECT COUNT(*) FROM  sales_tax_info ;
SELECT COUNT(*) FROM  sales_tax_info_date ;

SELECT * FROM  franchise_tax_info_date 
WHERE Taxpayer_City = 'HOUSTON';
SELECT * FROM  sales_tax_info_date 
WHERE Taxpayer_City = 'HOUSTON';
SELECT * FROM  franchise_tax_info 
WHERE Taxpayer_City = 'HOUSTON';
SELECT * FROM  sales_tax_info 
WHERE Taxpayer_City = 'HOUSTON';

SELECT COUNT(*) FROM  franchise_tax_info_date 
WHERE Taxpayer_City = 'HOUSTON';
SELECT COUNT(*) FROM  sales_tax_info_date 
WHERE Taxpayer_City = 'HOUSTON';
SELECT COUNT(*) FROM  franchise_tax_info 
WHERE Taxpayer_City = 'HOUSTON';
SELECT COUNT(*) FROM  sales_tax_info 
WHERE Taxpayer_City = 'HOUSTON';

-- -----------------------------------------------------
-- Remove Trailing spaces
-- -----------------------------------------------------
-------------- franchise_tax_info_date
-- UPDATE franchise_tax_info_date SET Taxpayer_Name = TRIM(Taxpayer_Name);
-- UPDATE franchise_tax_info_date SET Taxpayer_Address = TRIM(Taxpayer_Address);
-- UPDATE franchise_tax_info_date SET Taxpayer_City = TRIM(Taxpayer_City);
-- UPDATE franchise_tax_info_date SET Secretary_of_State_File_Number = TRIM(Secretary_of_State_File_Number);
-- UPDATE franchise_tax_info_date SET SOS_Charter_Date = TRIM(SOS_Charter_Date);
-- UPDATE franchise_tax_info_date SET Current_Exempt_Reason_Code = TRIM(Current_Exempt_Reason_Code);
-- UPDATE franchise_tax_info_date SET Agent_Name = TRIM(Agent_Name);
-- UPDATE franchise_tax_info_date SET Agent_Address = TRIM(Agent_Address);
-- UPDATE franchise_tax_info_date SET Agent_City = TRIM(Agent_City);
-- UPDATE franchise_tax_info_date SET Agent_State = TRIM(Agent_State);
-- UPDATE franchise_tax_info_date SET Agent_Zip_Code = TRIM(Agent_Zip_Code);
-- UPDATE franchise_tax_info_date SET SOS_Status_Date = TRIM(SOS_Status_Date);
 
-------------- sales_tax_info_date
-- UPDATE sales_tax_info_date SET Taxpayer_Name = TRIM(Taxpayer_Name);
-- UPDATE sales_tax_info_date SET Taxpayer_Address = TRIM(Taxpayer_Address);
-- UPDATE sales_tax_info_date SET Taxpayer_City = TRIM(Taxpayer_City);
-- UPDATE sales_tax_info_date SET Outlet_Name = TRIM(Outlet_Name);
-- UPDATE sales_tax_info_date SET Outlet_Address = TRIM(Outlet_Address);
-- UPDATE sales_tax_info_date SET Outlet_City = TRIM(Outlet_City);

-- -----------------------------------------------------
-- Table ccim
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS ccim (
  `index` BIGINT NULL DEFAULT NULL,
  `Business Name` VARCHAR(100),
  `First Name` VARCHAR(100) NULL DEFAULT NULL,
  `Last Name` VARCHAR(100) NULL DEFAULT NULL,
  `Mailing Address` VARCHAR(100) NULL DEFAULT NULL,
  `Mailing ZIP` FLOAT NULL DEFAULT NULL,
  `Phone` FLOAT NULL DEFAULT NULL,
  `Fax` FLOAT NULL DEFAULT NULL,
  `Main Line of Business` VARCHAR(100) NULL DEFAULT NULL,
  `Location Type` VARCHAR(100) NULL DEFAULT NULL,
  `Primary SIC Description` VARCHAR(100) NULL DEFAULT NULL,
  `NAICS 1 Description` VARCHAR(100) NULL DEFAULT NULL,
  `Public / Private` VARCHAR(100) NULL DEFAULT NULL,
  `Square Footage` VARCHAR(100) NULL DEFAULT NULL,
  `Website` VARCHAR(100) NULL DEFAULT NULL,
  `Year Established` FLOAT NULL DEFAULT NULL,
  `2017 Revenue/Yr` BIGINT NULL DEFAULT NULL,
  `2017 Employees` FLOAT NULL DEFAULT NULL,
  `Executive Email 1` VARCHAR(100) NULL DEFAULT NULL,
  `Est. Rent Annual Expense` VARCHAR(100) NULL DEFAULT NULL,
  INDEX `ix_ccim_index` (`index` ASC) VISIBLE);

-- -----------------------------------------------------
-- Table franchise_tax_info
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS franchise_tax_info (
  `Taxpayer_Number` BIGINT NULL DEFAULT NULL,
  `Taxpayer_Name` VARCHAR(100) NULL DEFAULT NULL,
  `Taxpayer_Address` VARCHAR(100) NULL DEFAULT NULL,
  `Taxpayer_City` VARCHAR(100) NULL DEFAULT NULL,
  `Taxpayer_State` VARCHAR(100) NULL DEFAULT NULL,
  `Taxpayer_Zip_Code` VARCHAR(100) NULL DEFAULT NULL,
  `Taxpayer_County_Code` BIGINT NULL DEFAULT NULL,
  `Taxpayer_Organizational_Type` VARCHAR(100) NULL DEFAULT NULL,
  `Taxpayer_Phone_Number` VARCHAR(100) NULL DEFAULT NULL,
  `Record_Type_Code` VARCHAR(100) NULL DEFAULT NULL,
  `Responsibility_Beginning_Date` BIGINT NULL DEFAULT NULL,
  `Responsibility_End_Date` FLOAT NULL DEFAULT NULL,
  `Responsibility_End_Reason_Code` BIGINT NULL DEFAULT NULL,
  `Secretary_of_State_File_Number` FLOAT NULL DEFAULT NULL,
  `SOS_Charter_Date` FLOAT NULL DEFAULT NULL,
  `SOS_Status_Date` FLOAT NULL DEFAULT NULL,
  `SOS_Status_Code` VARCHAR(100) NULL DEFAULT NULL,
  `Rigth_to_Tansact_Business_Code` VARCHAR(100) NULL DEFAULT NULL,
  `Current_Exempt_Reason_Code` FLOAT NULL DEFAULT NULL,
  `Exempt_Begin_Date` FLOAT NULL DEFAULT NULL,
  `NAICS_Code` FLOAT NULL DEFAULT NULL,
  `Taxpayer_Organizational_Name` VARCHAR(100) NULL DEFAULT NULL, -- added new column
  `Record_Type_Name` VARCHAR(100) NULL DEFAULT NULL, -- added new column
  `Responsibility_End_Reason_Name` VARCHAR(100) NULL DEFAULT NULL, -- added new column
  `SOS_Status_Name` VARCHAR(100) NULL DEFAULT NULL, -- added new column
  `Rigth_to_Tansact_Business_Name` VARCHAR(100) NULL DEFAULT NULL, -- added new column
  `DateTime` VARCHAR(100) NULL DEFAULT NULL);

-- -----------------------------------------------------
-- Table franchise_tax_info_date
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS franchise_tax_info_date (
  `Taxpayer_Number` BIGINT NULL DEFAULT NULL,
  `Taxpayer_Name` VARCHAR(100) NULL DEFAULT NULL,
  `Taxpayer_Address` VARCHAR(100) NULL DEFAULT NULL,
  `Taxpayer_City` VARCHAR(100) NULL DEFAULT NULL,
  `Taxpayer_State` VARCHAR(100) NULL DEFAULT NULL,
  `Taxpayer_Zip_Code` VARCHAR(100) NULL DEFAULT NULL,
  `Taxpayer_County_Code` BIGINT NULL DEFAULT NULL,
  `Taxpayer_Organizational_Type` VARCHAR(100) NULL DEFAULT NULL,
  `Taxpayer_Phone_Number` VARCHAR(100) NULL DEFAULT NULL,
  `Record_Type_Code` VARCHAR(100) NULL DEFAULT NULL,
  `Responsibility_Beginning_Date` BIGINT NULL DEFAULT NULL,
  `Secretary_of_State_File_Number` VARCHAR(100) NULL DEFAULT NULL,
  `SOS_Charter_Date` VARCHAR(100) NULL DEFAULT NULL,
  `SOS_Status_Date` VARCHAR(100) NULL DEFAULT NULL,
  `Current_Exempt_Reason_Code` VARCHAR(100) NULL DEFAULT NULL,
  `Agent_Name` VARCHAR(100) NULL DEFAULT NULL,
  `Agent_Address` VARCHAR(100) NULL DEFAULT NULL,
  `Agent_City` VARCHAR(100) NULL DEFAULT NULL,
  `Agent_State` VARCHAR(100) NULL DEFAULT NULL,
  `Agent_Zip_Code` VARCHAR(100) NULL DEFAULT NULL,
  `Taxpayer_Organizational_Name` VARCHAR(100) NULL DEFAULT NULL, -- added new column
  `Record_Type_Name` VARCHAR(100) NULL DEFAULT NULL, -- added new column
  `DateTime` VARCHAR(100) NULL DEFAULT NULL);
  

-- -----------------------------------------------------
-- Table ftoffdir
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS ftoffdir (
  `Taxpayer_Number` BIGINT NULL DEFAULT NULL,
  `Sequence_Number` BIGINT NULL DEFAULT NULL,
  `Director_Latest_Year_Filed` VARCHAR(100) NULL DEFAULT NULL,
  `Director_Name` VARCHAR(100) NULL DEFAULT NULL,
  `Director_Title` VARCHAR(100) NULL DEFAULT NULL,
  `Director_Address` VARCHAR(100) NULL DEFAULT NULL,
  `Director_City` VARCHAR(100) NULL DEFAULT NULL,
  `Director_State` VARCHAR(100) NULL DEFAULT NULL,
  `Director_Zip_Code` VARCHAR(100) NULL DEFAULT NULL,
  `DateTime` VARCHAR(100) NULL DEFAULT NULL);
  
-- -----------------------------------------------------
-- Table sales_tax_info
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS sales_tax_info (
  `Taxpayer_Number` BIGINT NULL DEFAULT NULL,
  `Outlet_Number` BIGINT NULL DEFAULT NULL,
  `Taxpayer_Name` VARCHAR(100) NULL DEFAULT NULL,
  `Taxpayer_Address` VARCHAR(100) NULL DEFAULT NULL,
  `Taxpayer_City` VARCHAR(100) NULL DEFAULT NULL,
  `Taxpayer_State` VARCHAR(100) NULL DEFAULT NULL,
  `Taxpayer_Zip_Code` VARCHAR(100) NULL DEFAULT NULL,
  `Taxpayer_County_Code` BIGINT NULL DEFAULT NULL,
  `Taxpayer_Phone_Number` VARCHAR(100) NULL DEFAULT NULL,
  `Taxpayer_Organizational_Type` VARCHAR(100) NULL DEFAULT NULL,
  `Outlet_Name` VARCHAR(100) NULL DEFAULT NULL,
  `Outlet_Address` VARCHAR(100) NULL DEFAULT NULL,
  `Outlet_City` VARCHAR(100) NULL DEFAULT NULL,
  `Outlet_State` VARCHAR(100) NULL DEFAULT NULL,
  `Outlet_Zip_Code` VARCHAR(100) NULL DEFAULT NULL,
  `Outlet_County_Code` FLOAT NULL DEFAULT NULL,
  `Outlet_Phone_Number` VARCHAR(100) NULL DEFAULT NULL,
  `Outlet_NAICS_Code` FLOAT NULL DEFAULT NULL,
  `Outlet_Inside_Outside_City_Limits_Indicator` VARCHAR(100) NULL DEFAULT NULL,
  `Outlet_Permit_Issue_Date` FLOAT NULL DEFAULT NULL,
  `Outlet_First_Sales_Date` BIGINT NULL DEFAULT NULL,
  `Taxpayer_Organizational_Name` VARCHAR(100) NULL DEFAULT NULL, -- added new column
  `DateTime` VARCHAR(100) NULL DEFAULT NULL);

-- -----------------------------------------------------
-- Table sales_tax_info_date
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS sales_tax_info_date (
`Taxpayer_Number` BIGINT NULL DEFAULT NULL,
`Outlet_Number` VARCHAR(100) NULL DEFAULT NULL,
`Taxpayer_Name` VARCHAR(100) NULL DEFAULT NULL,
`Taxpayer_Address` VARCHAR(100) NULL DEFAULT NULL,
`Taxpayer_City` VARCHAR(100) NULL DEFAULT NULL,
`Taxpayer_State` VARCHAR(100) NULL DEFAULT NULL,
`Taxpayer_Zip_Code` VARCHAR(100) NULL DEFAULT NULL,
`Taxpayer_County_Code`INT NULL DEFAULT NULL,
`Taxpayer_Phone_Number` VARCHAR(100) NULL DEFAULT NULL,
`Outlet_Name` VARCHAR(100) NULL DEFAULT NULL,
`Outlet_Address` VARCHAR(100) NULL DEFAULT NULL,
`Outlet_City` VARCHAR(100) NULL DEFAULT NULL,
`Outlet_State` VARCHAR(100) NULL DEFAULT NULL,
`Outlet_Zip_Code` VARCHAR(100) NULL DEFAULT NULL,
`Outlet_County_Code` VARCHAR(100) NULL DEFAULT NULL,
`Outlet_Phone_Number` VARCHAR(100) NULL DEFAULT NULL,
`Permit_Type` VARCHAR(100) NULL DEFAULT NULL,
`Tax_Code` INT NULL DEFAULT NULL,
`Outlet_NAICS_Code` VARCHAR(100) NULL DEFAULT NULL,
`Permit_Issue_Date` VARCHAR(100) NULL DEFAULT NULL,
`First_Sale_Date` VARCHAR(100) NULL DEFAULT NULL,
`DateTime` VARCHAR(100) NULL DEFAULT NULL);


-- CREATE TABLE IF NOT EXISTS sales_tax_info_date (
--   `Agent_Address` VARCHAR(100) NULL DEFAULT NULL,
--   `Agent_City` VARCHAR(100) NULL DEFAULT NULL,
--   `Agent_Name` VARCHAR(100) NULL DEFAULT NULL,
--   `Agent_State` VARCHAR(100) NULL DEFAULT NULL,
--   `Agent_Zip_Code` VARCHAR(100) NULL DEFAULT NULL,
--   `Current_Exempt_Reason_Code` VARCHAR(100) NULL DEFAULT NULL,
--   `First_Sale_Date` FLOAT NULL DEFAULT NULL,
--   `Outlet_Address` VARCHAR(100) NULL DEFAULT NULL,
--   `Outlet_City` VARCHAR(100) NULL DEFAULT NULL,
--   `Outlet_County_Code` VARCHAR(100) NULL DEFAULT NULL,
--   `Outlet_NAICS_Code` VARCHAR(100) NULL DEFAULT NULL,
--   `Outlet_Name` VARCHAR(100) NULL DEFAULT NULL,
--   `Outlet_Number` VARCHAR(100) NULL DEFAULT NULL,
--   `Outlet_Phone_Number` VARCHAR(100) NULL DEFAULT NULL,
--   `Outlet_State` VARCHAR(100) NULL DEFAULT NULL,
--   `Outlet_Zip_Code` VARCHAR(100) NULL DEFAULT NULL,
--   `Permit_Issue_Date` FLOAT NULL DEFAULT NULL,
--   `Permit_Type` VARCHAR(100) NULL DEFAULT NULL,
--   `Record_Type_Code` VARCHAR(100) NULL DEFAULT NULL,
--   `Responsibility_Beginning_Date` FLOAT NULL DEFAULT NULL,
--   `SOS_Charter_Date` VARCHAR(100) NULL DEFAULT NULL,
--   `SOS_Status_Date` VARCHAR(100) NULL DEFAULT NULL,
--   `Secretary_of_State_File_Number` VARCHAR(100) NULL DEFAULT NULL,
--   `Tax_Code` FLOAT NULL DEFAULT NULL,
--   `Taxpayer_Address` VARCHAR(100) NULL DEFAULT NULL,
--   `Taxpayer_City` VARCHAR(100) NULL DEFAULT NULL,
--   `Taxpayer_County_Code` BIGINT NULL DEFAULT NULL,
--   `Taxpayer_Name` VARCHAR(100) NULL DEFAULT NULL,
--   `Taxpayer_Number` BIGINT NULL DEFAULT NULL,
--   `Taxpayer_Organizational_Type` VARCHAR(100) NULL DEFAULT NULL,
--   `Taxpayer_Phone_Number` VARCHAR(100) NULL DEFAULT NULL,
--   `Taxpayer_State` VARCHAR(100) NULL DEFAULT NULL,
--   `Taxpayer_Zip_Code` VARCHAR(100) NULL DEFAULT NULL,
--   `Taxpayer_Organizational_Name` VARCHAR(100) NULL DEFAULT NULL, -- added new column
--   `DateTime` VARCHAR(100) NULL DEFAULT NULL);
