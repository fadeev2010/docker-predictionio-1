#!/usr/bin/env bash

APP_KEY=$(pio app list | grep recommender | awk {'print $7'})

# [ -z "$APP_KEY" ] && echo "Starting create new app" && pio app new recommender;


### DEMO: Import More Sample Data
pip install --upgrade pip
pip install -U setuptools
pip install predictionio

cd /opt/recommender
curl https://raw.githubusercontent.com/apache/spark/master/data/mllib/sample_movielens_data.txt --create-dirs -o data/sample_movielens_data.txt
python data/import_eventserver.py --access_key $APP_KEY
