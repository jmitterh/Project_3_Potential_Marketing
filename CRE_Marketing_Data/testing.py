# Imports
import sys
from zipfile import ZipFile
import pandas as pd
import pandas.io.sql as pdsql
import glob
import os
import datetime
# Imports for mySQL
from sqlalchemy import create_engine, event
from db_setup import mysql_user, mysql_password, db_name
from algorithms.sort import merge_sort

import mysql.connector

mydir = os.path.abspath('./MarketingTenant_data')
print(mydir)

# Defining header for marketing data. Marketing data comes with no header
ftact_date_head = ['Taxpayer_Number',
                   'Taxpayer_Name',
                   'Taxpayer_Address',
                   'Taxpayer_City',
                   'Taxpayer_State',
                   'Taxpayer_Zip_Code',
                   'Taxpayer_County_Code',
                   'Taxpayer_Organizational_Type',
                   'Taxpayer_Phone_Number',
                   'Record_Type_Code',
                   'Responsibility_Beginning_Date',
                   'Secretary_of_State_File_Number',
                   'SOS_Charter_Date',
                   'SOS_Status_Date',
                   'Current_Exempt_Reason_Code',
                   'Agent_Name',
                   'Agent_Address',
                   'Agent_City',
                   'Agent_State',
                   'Agent_Zip_Code']

ftact_head = ['Taxpayer_Number',
              'Taxpayer_Name',
              'Taxpayer_Address',
              'Taxpayer_City',
              'Taxpayer_State',
              'Taxpayer_Zip_Code',
              'Taxpayer_County_Code',
              'Taxpayer_Organizational_Type',
              'Taxpayer_Phone_Number',
              'Record_Type_Code',
              'Responsibility_Beginning_Date',
              'Responsibility_End_Date',
              'Responsibility_End_Reason_Code',
              'Secretary_of_State_File_Number',
              'SOS_Charter_Date',
              'SOS_Status_Date',
              'SOS_Status_Code',
              'Rigth_to_Tansact_Business_Code',
              'Current_Exempt_Reason_Code',
              'Exempt_Begin_Date',
              'NAICS_Code']

stact_head = ['Taxpayer_Number',
              'Outlet_Number',
              'Taxpayer_Name',
              'Taxpayer_Address',
              'Taxpayer_City',
              'Taxpayer_State',
              'Taxpayer_Zip Code',
              'Taxpayer_County_Code',
              'Taxpayer_Phone_Number',
              'Taxpayer_Organizational_Type',
              'Outlet_Name',
              'Outlet_Address',
              'Outlet_City',
              'Outlet_State',
              'Outlet_Zip_Code',
              'Outlet_County_Code',
              'Outlet_Phone_Number',
              'Outlet_NAICS_Code',
              'Outlet_Inside_Outside_City_Limits_Indicator',
              'Outlet_Permit_Issue_Date',
              'Outlet_First_Sales_Date']

stact_date_head = ['Taxpayer_Number',
                   'Outlet_Number',
                   'Taxpayer_Name',
                   'Taxpayer_Address',
                   'Taxpayer_City',
                   'Taxpayer_State',
                   'Taxpayer_Zip_Code',
                   'Taxpayer_County_Code',
                   'Taxpayer_Phone_Number',
                   'Outlet_Name',
                   'Outlet_Address',
                   'Outlet_City',
                   'Outlet_State',
                   'Outlet_Zip_Code',
                   'Outlet_County_Code',
                   'Outlet_Phone_Number',
                   'Permit_Type',
                   'Tax_Code',
                   'Outlet_NAICS_Code',
                   'Permit_Issue_Date',
                   'First_Sale_Date']

FTOFFDIR = ['Taxpayer_Number',
            'Sequence_Number',
            'Director_Latest_Year_Filed',
            'Director_Name',
            'Director_Title',
            'Director_Address',
            'Director_City',
            'Director_State',
            'Director_Zip_Code']


connection_string = f"{mysql_user}:{mysql_password}@localhost:3306/{db_name}"
engine = create_engine(f'mysql://{connection_string}', encoding='utf8')
# print(f"engin{engine.table_names()}")

currentDT = datetime.datetime.now()
DateTimeSent = currentDT.strftime("%Y-%m-%d %H:%M:%S")
dateCSV = currentDT.strftime("%Y-%m-%d")
print(dateCSV)
print(DateTimeSent)


# formattedData = os.path.abspath('HotelOccupancyTaxData/formattedData/'+ 'ftact_' + dateCSV + '.csv')
# df_ftact.to_csv(formattedData, index = False)
df = pd.read_csv('C:\\BOT\\Marketing_Project\\CRE_Marketing_Data\\HotelOccupancyTaxData\\formattedData\\ftact_2020-03-18.csv',low_memory=False)
df.to_sql(name='ftact', con=engine, if_exists='append', index=False, chunksize=1000)