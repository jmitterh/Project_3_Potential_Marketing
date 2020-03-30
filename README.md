
![](https://www.xendoo.com/wp-content/uploads/2019/02/Benefits-Owning-Your-Small-Business-Property-Blog-795x500.jpg)

# Project 3: Data-Estate

Team:
* Jean-Paul Mitterhofer
* Mahathi Veluri 
* Baoxing Wang
* Xiaodi Lin

## Project Description

A Dashboard of the potential tenants for Commercial Real-Estate Companies can target. Map of building locations with new and established companies based on zipcode. End goal: A list on the left side panel displaying company name, similar to a google map search. This can possibly change as we further understand our data.

## 


 ## Requirements
* MySQL Database
* MatPlotLib
* D3 javascript
* Tableau
* Machine Learning
## Installation

Use the package manager [pip](https://pip.pypa.io/en/stable/) to install the following:

```bash
pip install -r requirements.txt
```

## Folder And File Description

#### Repository folders and main file descrption:
1. CRE_Marketing_Data/
    * database/
        * marketing_schema.sql - *Script to run for the creation of our mysql database*
    * HotelOccupancyTaxData/*
        * formattedData/*
            * formatted Data Files - *stored in csv, files were too large to store in github*
        * Data Files - *stored in csv, these are the raw files shared in googledrive due to their large size*
    * BuildingData.ipynb - *hcad data munging to only have commercial building information*
    * CreatingDirectoryDescription.txt - *Instruction on creating folders to store data from the sources mentioned in this document*
    * db_setup.txt - *credentials used to connect to our Database. Change .txt to .py*
    * HotelTaxPayerData.ipynb - *Pulling our main source of companies filing for franchise tax permits from the comptroller website. This information is captured and added to the database*
    * HoustonData.ipynb - *Pulling our main source of data from our databse and munging it to provide only houston information with non-repeating values*
2. static/
    * img/ - *Folder to store any images used in our flask app html pages*
    * mystyle.css - *styles page of our html pages*
3. templates/
    * index.html - *Main page of our flask app*
    * prediction.html - *Page of our process of creating our ML*
    * visual.html - *Our data visually displayed page*
4. .gitignore - *files/folders to ignore from being pushed into the repository. Files such as vscode, pycache, and ipynb checkpoints. Also ignored the folders that stored the large csv files of our data.*
5. app.py - *Flask app initiation*
6. LICENSE - *MIT license description*
7. README.md - *This readme file*
8. requirments.txt *pip install dependencies for this application*

*  *asterisk represents folders that were ignored to our repository, but were used for our project.



#### Python Plotly and MYSQL
***Webpage:***
* *Home Page:* Brief introduction of who we are and what we are trying to do with application.
* *Predictions Page:* Visual description of what models we used for machine learning.
* *Visuals Page:* Our displays providing context to our target audience. 


## Sources
* [***Comptroller Of Public Accounts Secure Information and File Transfer***](https://comptroller.texas.gov/about/policies/open-records/)
 CPA SIFT - Texas Comptroller's Secure Information and File Transfer (SIFT) system. This tool will allow you to download secured files.
 Available datasets: 

    * Hotel Tax Receipts: Franchise Tax Permit


* [***Harris County Appraisal District - HCAD***](https://hcad.org/)
is a political subdivision of the State of Texas established in 1980 for the purpose of discovering and appraising property for ad valorem tax purposes for each taxing unit within the boundaries of the district.


## Type of ML Analysis
* ARIMA Model - Auto Regressive Integrated Moving Average, is a class of models that discribes a given time series based on its own past values; that is, its own lags and the lagged forecast errors, so that the equation can be used to forecast future values.



## Considerations
The data from the Comptroller consist of over 4 million datasets. We used google drive and MYSQL to store the data. The full amount of data could not be stored in GitHub due to the 50mb limit.


## License
[MIT](https://choosealicense.com/licenses/mit/)