import numpy as np
import os
# import requests
# import sqlalchemy
# from sqlalchemy.ext.automap import automap_base
# from sqlalchemy.orm import Session
# from sqlalchemy import create_engine
import pandas.io.sql as pdsql
# from setup import my_user, my_password, db_name
from flask import Flask, jsonify, render_template, abort, redirect

#################################################
# Database Setup (NOT USED)
##################################################

# connection_string = f"{mysql_user}:{mysql_password}@localhost:3306/{db_name}?charset=utf8"
# engine = create_engine(f'mysql://{connection_string}')

# checking the table names
# engine.table_names()


#################################################
# Flask Setup
#################################################
app = Flask(__name__)


#################################################
# Flask Routes
#################################################

@app.route("/")
def home():
    return render_template("index.html")

@app.route("/indexTwo")
def indexTwo():
    return render_template("indexTwo.html")


if __name__ == '__main__':
    app.run(debug=True)
